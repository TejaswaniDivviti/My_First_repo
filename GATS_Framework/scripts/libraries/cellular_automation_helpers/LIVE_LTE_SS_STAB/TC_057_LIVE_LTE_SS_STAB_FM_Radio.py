#  play fm + mt vt calls

import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.common_functions as cf
import cellular_automation_helpers.common_helper_functions.ui_automator as uf
import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.logger as loggs
import time

class fm_call:
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def fm_mt_call(self):

        """play fm"""
        log.info("playing fm")
        status, output = uf.play_fm_radio(self.Data['serialId'])
        if not status:
            log.info("unable to play fm")
            return False, "unable to play fm"

        # performing MT call
        log.info("triggering call")
        status, msg = ad.perform_a2b_vt_call(self.Data['testcase_config'][self.tst]['tempDevicesId'][0],
                                             self.Data['serialId'],
                                             self.Data['testcase_config'][self.tst]['callB_no'],
                                             self.Data['testcase_config'][self.tst]['callA_no'])



        if not status:
            log.info("triggering mt call failed")
            return status, msg



        # Disconnecting the Call
        log.info("Terminating call @ M0 side")
        status, msg = ad.terminate_call(self.Data['serialId'])
        if not status:
            log.info("teriminating call failed")
            return False, msg

        return True, 'Test case executed successfully'

    def closeUp(self):
        # Graceful disconnection of call from Device A C and B
        # ad.graceful_disconnection(self.Data['testcase_config'][self.tst]['tempDevicesId'][0])
        # ad.graceful_disconnection(self.Data['serialId'])
        uf.closeApps(self.Data['serialId'])


def SS_25(tst, yamlData):
    status, output, noofdevices = cf.comp_id(yamlData['testcase_config'][tst]["tempDevicesId"])
    if noofdevices >= 2:
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
        fm_obj = fm_call(tst, yamlData)
        status, output = fm_obj.fm_mt_call()
        fm_obj.closeUp()
    else:
        return None, "Two Devices are needed to execute the test case, {0} device(s) connected".format(noofdevices)
    return status, output

def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_25(tst, yamlData)
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
