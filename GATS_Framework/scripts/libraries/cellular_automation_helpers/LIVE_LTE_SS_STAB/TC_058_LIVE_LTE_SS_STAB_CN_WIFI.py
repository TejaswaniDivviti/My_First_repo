# Connect to open Wifi
import time

import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.logger as loggs
import cellular_automation_helpers.common_helper_functions.ui_automator as ui
import cellular_automation_helpers.common_helper_functions.common_functions as cf


class Open_wifi:
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def connect_wifi(self):
        """checking dut is registered to network or not"""
        log.info("connecting to wifi")
        status, output = ad.wifi_enable(self.Data['serialId'], self.Data['testcase_config'][self.tst]['wifi_ssid'],self.Data['testcase_config'][self.tst]['wifi_password'])
        if not status:
            log.info("unable to connect to wifi")
            return False, output
        log.info(output)
        

        """connecting to other wifi network"""
        log.info("connecting to open wifi")
        status, output = ad.wifi_enable(self.Data['serialId'], self.Data['testcase_config'][self.tst]['wifi_ssid_new'],self.Data['testcase_config'][self.tst]['wifi_password_new'])
        if not status:
            log.info("unable to connect to wifi")
            return False, output
        log.info(output)

        return True, "Testcase passed"

    def CleanUp(self):
        ui.closeApps(self.Data['serialId'])

def SS_26(tst, yamlData):
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
        wifi = Open_wifi(tst, yamlData)
        status, msg = wifi.connect_wifi()
        wifi.CleanUp()
    else:
        return None, "one Devices are needed to execute the test case, {0} device(s) connected".format(noofdevices)
    return status, output




def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_26(tst, yamlData)
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
