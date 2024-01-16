import time

import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.logger as loggs
import cellular_automation_helpers.common_helper_functions.ui_automator as ui
import cellular_automation_helpers.common_helper_functions.common_functions as cf


class wifi_upload:
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def execute_wifi_upload(self):
        # connecting to wifi.
        log.info("Enabling wifi")
        status, msg = ad.wifi_enable(self.Data['serialId'], self.Data['testcase_config'][self.tst]['wifi_ssid'],
                                     self.Data['testcase_config'][self.tst]['wifi_password'])
        if not status:
            log.info("wifi connectn failed")
            return False, msg
        log.info(msg)

        

        # uploading file
        log.info("uploading file")
        status, msg = ui.upload_file(self.Data['serialId'],self.Data['testcase_config'][self.tst]['upload_filename'])
        if not status:
            log.info("uploading file failed")
            return False, msg
        log.info(msg)


        # disconnecting wifi
        log.info("disconnecting wifi")
        status, msg = ad.wifi_disable(self.Data['serialId'])
        if not status:
            log.info("disconnecting wifi failed")
            return False, msg
        log.info(msg)


        # Checking the status of file upload
        # log.info("Checking the status of file upload")
        # status, msg = ui.check_upload_status(self.Data['serialId'])
        
        # log.info(msg)

        return True, "testcase Passed"

    def CleanUp(self):
        """disconnecting the call"""
        ui.closeApps(self.Data['serialId'])

def SS_22(tst, yamlData):
    status, output, noofdevices = cf.comp_id(yamlData['testcase_config'][tst]["tempDevicesId"])
    if noofdevices >= 1:
        log.info("validating SS sim status")
        for i in range(1):
            if i==0:
                s_id=yamlData["serialId"]
            else:
                s_id = yamlData["testcase_config"][tst]["tempDevicesId"][i-1]
            # status, msg = ad.validating_no_sims(s_id, 1)
            if not status:
                log.info(f"validating SS sim status failed for {s_id}\
                         device is failed")
                return status, msg
            log.info(f"validating SS sim successful for {s_id}")
        wifi_obj = wifi_upload(tst, yamlData)
        status, msg = wifi_obj.execute_wifi_upload()
        # wifi_obj.CleanUp()
    else:
        return None, "one Devices are needed to execute the test case, {0} device(s) connected".format(noofdevices)

    return status, msg


    
def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_22(tst, yamlData)
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
