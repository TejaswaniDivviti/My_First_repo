# Download some files in DUT when connected to wifi
import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.logger as loggs
import cellular_automation_helpers.common_helper_functions.ui_automator as ui
import cellular_automation_helpers.common_helper_functions.common_functions as cf


class download_wifi:
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def wifi_download(self):
        """connect to wifi"""
        log.info("connect to wifi")
        status, output = ad.wifi_enable(self.Data['serialId'], self.Data['testcase_config'][self.tst]['ssid'], self.Data['testcase_config'][self.tst]['password'])
        if not status:
            log.info("unable to connect to wifi")
            return False, "unable to connect to wifi"

        # downloading files
        log.info("download files")
        status, output = ad.download_file(self.Data['serialId'], self.Data['testcase_config'][self.tst]['HTTP_DL_LINK'])
        if not status:
            log.info("downloading failed")
            return False, "downloading failed"

        return True, "downloading files"

    def CleanUp(self):
        ui.closeApps(self.Data['serialId'])

def SS_18(tst, yamlData):
    status, msg, noOfDevices = cf.comp_id(yamlData['testcase_config'][tst]["tempDevicesId"])
    if noOfDevices >= 1:
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
        download_wifi_obj = download_wifi(tst, yamlData)
        status, msg = download_wifi_obj.wifi_download()
        download_wifi_obj.CleanUp()
    else:
        return None, "one Devices are needed to execute the test case, {0} device(s) connected".format(noOfDevices)
    return status, msg


def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_18(tst, yamlData)
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
