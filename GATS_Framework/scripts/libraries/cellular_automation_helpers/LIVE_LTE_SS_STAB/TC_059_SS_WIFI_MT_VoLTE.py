import time

import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.common_functions as cf
import cellular_automation_helpers.common_helper_functions.logger as loggs
import cellular_automation_helpers.common_helper_functions.ui_automator as ui


class Voice_call:
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def third_party_call(self):
        # ui.unlockDevices(self.Data['serialId'])

        # Connecting to wifi network
        log.info("enable and connect to wifi")
        status,msg = ad.wifi_enable(self.Data['serialId'], self.Data['testcase_config'][self.tst]['wifi_ssid'],self.Data['testcase_config'][self.tst]['wifi_password'])
        if not status:
            log.info('connecting to wifi is failed')
            return False, msg
        log.info(msg)
        

        # making a third party video call
        log.info('triggering MT third-party voice call')
        status, output = ui.make_third_party_audio_call(self.Data['testcase_config'][self.tst]['tempDevicesId'][0],
                                                        self.Data['testcase_config'][self.tst]['contact_name_MO'])
        if not status:
            log.info("failed to trigger mt third party audio call")
            return False, output
        log.info(output)
        

        log.info("call accept on devA")
        status, output = ui.rcv_third_party_call(self.Data['serialId'])
        if not status:
            log.info("failed to accept call")
            return False, output
        log.info(output)
        
        

        # terminate call
        status, output = ui.terminate_call_third_party_call(self.Data['testcase_config'][self.tst]['tempDevicesId'][0])
        if not status:
            log.info(output)
            return False, output
        
        log.info(output)

        return True, 'Test case executed successfully'

    def closeUp(self):
        ui.terminate_call_third_party_call(self.Data['serialId'])
        ui.closeApps(self.Data['serialId'])
        ui.closeApps(self.Data['testcase_config'][self.tst]['tempDevicesId'][0])
        


def SS_27(tst, yamlData):
    status, msg, noOfDevices = cf.comp_id(yamlData['testcase_config'][tst]["tempDevicesId"])
    if noOfDevices >= 2:
        log.info("validating SS sim status")
        for i in range(2):
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
        third_party_call = Voice_call(tst, yamlData)
        status, msg = third_party_call.third_party_call()
        third_party_call.closeUp()
    else:
        return None, "Two Devices are needed to execute the test case, {0} device(s) connected".format(noOfDevices)

    return status, msg


def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_27(tst, yamlData)
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
