# Connect to wifi while downloading some files in DUT
import time

import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.logger as loggs
import cellular_automation_helpers.common_helper_functions.ui_automator as ui
import cellular_automation_helpers.common_helper_functions.common_functions as cf


class Download_connect_wifi:
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def download_files(self):
        """enable  data"""
        log.info("checking mobile data")
        # status = ad.check_status_data(self.Data['serialId'])
        # if status < 0:
        # log.info("enable mobile data")
        output, status = ad.enable_data(self.Data['serialId'])
        if not status:
            log.info("unable to enable data")
            return False, output


        # downloading file
        log.info("downloading file")
        status, msg = ad.download_file(self.Data['serialId'],self.Data['testcase_config'][self.tst]['HTTP_DL_LINK'])
        if not status:
            log.info("downloading file failed")
            return False, msg
        log.info(msg)
        

        # Connecting to wifi
        log.info("enable and connect to wifi")
        output, status = ad.wifi_enable(self.Data['serialId'], self.Data['testcase_config'][self.tst]['wifi_ssid'],
                                        self.Data['testcase_config'][self.tst]['wifi_password'])
        if not status:
            log.info("wifi is not enabled")
            return False, output
        log.info("wifi is connected")

        
        return True, 'Test case executed successfully'

    def CleanUp(self):
        """disconnecting the call"""
        ui.closeApps(self.Data['serialId'])

def SS_23(tst, yamlData):
    status, output, noofdevices = cf.comp_id(yamlData['testcase_config'][tst]["tempDevicesId"])
    if noofdevices >= 1:
        log.info("validating SS sim status")
        for i in range(1):
            if i==0:
                s_id=yamlData["serialId"]
            else:
                s_id = yamlData["testcase_config"][tst]["tempDevicesId"][i-1]
            status, msg = ad.validating_no_sims(s_id, 1)
            if not status:
                log.info(f"validating SS sim status failed for {s_id}\
                         device is failed")
                return status, msg
            log.info(f"validating SS sim successful for {s_id}")
        download_file = Download_connect_wifi(tst, yamlData)
        status, msg = download_file.download_files()
        download_file.CleanUp()
    else:
        return None, "one Devices are needed to execute the test case, {0} device(s) connected".format(noofdevices)

    return status, msg


def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_23(tst, yamlData)
	# logging status
	log.info(f"Execution Status ====> {status}")
	if not status:
		log.info(f"Execution Result ====> Testcase Failed due to {msg}")
	else:
		log.info(f"Execution Result ====> Testcase Executed and Passed successfully")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Completed")
	print("In iteration_{2} \n: status --> {0} \nDisplay Message --> {1}\n".format(status, msg, gc.CURRENT_TC_COUNT))
	loggs.setup_logger("STOP")
	return status, msg
