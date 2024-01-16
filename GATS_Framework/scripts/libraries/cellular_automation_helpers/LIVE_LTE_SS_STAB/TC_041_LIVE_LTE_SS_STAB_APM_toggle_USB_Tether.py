# Enable and disable apm when Dut is in USB tethering mode
import time

import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.logger as loggs
import cellular_automation_helpers.common_helper_functions.ui_automator as uf
import cellular_automation_helpers.common_helper_functions.common_functions as cf
import cellular_automation_helpers.common_helper_functions.ui_automator as ui

class perform_apm_tethering:
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def execute_apm_tethering(self):
        # enabling usb tethering
        log.info("enabling usb tethering")
        status, msg = ad.usb_tethering_on(self.Data['serialId'])
        if not status:
            log.info("Usb not enabled")
            return status, msg
        log.info(msg)

        # enabling airplane mode
        log.info("enabling airplane mode")
        status = cf.check_status_planemode(self.Data['serialId'])
        if status == 1:
            log.info("airplane mode is enabled")
        else:
            status, msg = uf.toggle_airplane_mode(self.Data['serialId'])
            if not status:
                log.info("apm not enabled")
                return False, "apm not enabled"
            log.info("apm enabled")
        

        # disabling airplane mode
        log.info("disabling airplane mode")
        status = cf.check_status_planemode(self.Data['serialId'])
        if status == 0:
            log.info("airplane mode is disabled")
        else:
            status, msg = uf.toggle_airplane_mode(self.Data['serialId'])
            if not status:
                log.info("apm not disabled")
                return False, "apm not disabled"
            log.info("apm disabled")
        
        return True, "test case executed"

    def closeUp(self):
        status = cf.check_status_planemode(self.Data['serialId'])
        if status == 1:
            uf.toggle_airplane_mode(self.Data['serialId'])
        ui.closeApps(devId=self.Data['serialId'])
        
def SS_13(tst, yamlData):
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
        apm_obj = perform_apm_tethering(tst, yamlData)
        status, msg = apm_obj.execute_apm_tethering()
        apm_obj.closeUp()
    else:
        return None, "one Devices are needed to execute the test case, {0} device(s) connected".format(noOfDevices)
    return status, msg



def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_13(tst, yamlData)
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
