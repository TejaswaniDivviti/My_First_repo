"""
Rear Camera + Video
"""

import time
import logging
import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.common_functions as cf
import cellular_automation_helpers.common_helper_functions.ui_automator as uf
import cellular_automation_helpers.common_helper_functions.adb_command_functions as adb

# Redirecting logs
log = logging.getLogger(__name__)


class perform_rear_cam_vid:
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def execute_rear_cam_vid(self):
        for i in range(10):
            # Opening Camera..
            status, msg = adb.open_camera_capture_image(self.Data['serialId'])

            if not status:
                return False, msg
            

            status, msg = adb.open_camera_capture_video(self.Data['serialId'])
            if not status:
                return False, msg
            

            status, msg = adb.open_camera_capture_image(self.Data['serialId'])
            if not status:
                return False, msg
            
        
        return True, "Executed"

    def close_Apps(self):
        uf.closeApps(self.Data['serialId'])

def SS_315(tst, yamlData):
    status, output, noofdevices = cf.comp_id(yamlData['testcase_config'][tst]["tempDevicesId"])
    if noofdevices >= 1:
        log.info("validating SS sim status")
        for i in range(1):
            if i==0:
                s_id=yamlData["serialId"]
            else:
                s_id = yamlData["testcase_config"][tst]["tempDevicesId"][i-1]
            status, msg = adb.validating_no_sims(s_id, 1)
            if not status:
                log.info(f"validating SS sim status failed for {s_id}\
                         device is failed")
                return status, msg
            log.info(f"validating SS sim successful for {s_id}")
        obj = perform_rear_cam_vid(tst, yamlData)
        status, msg = obj.execute_rear_cam_vid()
        obj.close_Apps()
    else:
        return None, "one Devices are needed to execute the test case, {0} device(s) connected".format(noofdevices) 
       
    return status, msg


def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_315(tst, yamlData)
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
