# Perform MT vt call after enabling usb tethering mode
import time

import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.common_functions as cf
import cellular_automation_helpers.common_helper_functions.logger as loggs
import cellular_automation_helpers.common_helper_functions.ui_automator as ui


class perform_call_tethering():
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def execute_call_tethering(self):
        
        # enabling usb tethering
        log.info("enabling usb tethering")
        status, msg = ad.usb_tethering_on(self.Data['serialId'])
        if not status:
            log.info("Usb not enabled")
            return status, msg
        log.info(msg)

        # performing mt vt  call
        log.info("performing mt vt  call")
        status, msg = ad.perform_a2b_vt_call(self.Data['testcase_config'][self.tst]['tempDevicesId'][0],
                                             self.Data['serialId'], self.Data['testcase_config'][self.tst]['callB_no'],
                                             self.Data['testcase_config'][self.tst]['callA_no'])

        if not status:
            log.info("mt vt call failed")
            return status, msg
        log.info(msg)
        
        

        # Disconnecting the Call
        log.info("Terminating call in device A")
        status, msg = ad.terminate_call(deviceId=self.Data['serialId'])
        if not status:
            return False, msg
        log.info(msg)

        

        return True, "Test Case executed"

    def closeUp(self):
        # Graceful disconnection of call from Device A and B
        ad.graceful_disconnection(deviceId=self.Data['serialId'])
        ad.graceful_disconnection(deviceId=self.Data['testcase_config'][self.tst]['tempDevicesId'][0])
        ui.closeApps(self.Data['serialId'])

def SS_11(tst, yamlData):
    status, msg, noOfDevices = cf.comp_id(yamlData['testcase_config'][tst]["tempDevicesId"])
    if noOfDevices >= 2:
        log.info("validating SS sim status")
        for i in range(2):
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
        tethering_obj = perform_call_tethering(tst, yamlData)
        status, msg = tethering_obj.execute_call_tethering()
        tethering_obj.closeUp()
    else:
        return None, "Two Devices are needed to execute the test case, {0} device(s) connected".format(noOfDevices)
    return status, msg


def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_11(tst, yamlData)
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
