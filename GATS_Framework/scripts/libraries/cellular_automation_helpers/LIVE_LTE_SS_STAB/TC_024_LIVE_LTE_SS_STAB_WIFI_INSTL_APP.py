import time

import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.logger as loggs
import cellular_automation_helpers.common_helper_functions.ui_automator as ui
import cellular_automation_helpers.common_helper_functions.common_functions as cf

class perform_install_app:
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def execute_install_app(self):
        # connecting to wifi.
        log.info("Connecting to wifi")
        status, msg = ad.wifi_enable(
            self.Data['serialId'], self.Data['testcase_config'][self.tst]['wifi_ssid'],
            self.Data['testcase_config'][self.tst]['wifi_password'])
        if not status:
            log.error(f"wifi not connected")
            return False, "wifi not connected"
        log.info(msg)

        log.info("Installing App")
        # Installing apps
        status, msg = ui.install_app(self.Data['serialId'], self.Data['testcase_config'][self.tst]['ping_App_link'])
        if not status:
            log.error("installing apk failed")
            return False, msg
        log.info(msg)

        # Changing wifi network
        log.info("Connecting to wifi")
        status, msg = ad.wifi_enable(self.Data['serialId'], self.Data['testcase_config'][self.tst]['wifi_ssid_new'],
                                     self.Data['testcase_config'][self.tst]['wifi_password_new'])
        if not status:
            log.error("wifi not connected")
            return False, "wifi not connected"
        log.info(msg)
        return True, "Test case executed successfully"

    def closeUp(self):
        log.info("Cleaning Apps")
        ui.closeApps(devId=self.Data['serialId'])


def SS_2(tst, yamlData):
    status, msg, noOfDevices = cf.comp_id(
        yamlData['testcase_config'][tst]["tempDevicesId"])
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
        install_app_obj = perform_install_app(tst, yamlData)
        status, msg = install_app_obj.execute_install_app()
        install_app_obj.closeUp()
    else:
        return None, "one Devices are needed to execute the test case, {0} device(s) connected".format(noOfDevices)
    return status, msg



def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_2(tst, yamlData)
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
