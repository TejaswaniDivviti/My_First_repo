# connect to wifi and update apps
import automation_helpers.globalconstants as gc
import logging

log = logging.getLogger(__name__)
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.logger as loggs
import cellular_automation_helpers.common_helper_functions.ui_automator as ui
import cellular_automation_helpers.common_helper_functions.common_functions as cf

class perform_update_app:
    def __init__(self, tst, yamlData):
        self.tst = tst
        self.Data = yamlData

    def execute_update_app(self):
        # # connecting to wifi.
        # log.info("Enabling wifi")
        # status, msg = ad.wifi_enable(self.Data['serialId'], self.Data['testcase_config'][self.tst]['wifi_ssid'],
        #                              self.Data['testcase_config'][self.tst]['wifi_password'])
        # if not status:
        #     log.info("wifi not connected")
        #     return False, "wifi not connected"
        # log.info(msg)

        # # Updating all apps
        # log.info("updating all apps")
        # status, msg = ui.updating_apps(self.Data['serialId'])
        # if not status:
        #     log.info("Updating application failed")
        #     return False, msg
        # log.info(msg)

        # # disconnecting wifi
        # log.info("disconnecting wifi")
        # status, msg = ad.wifi_disable(self.Data['serialId'])
        # if not status:
        #     log.info("disconnecting wifi failed")
        #     return False, "disconnecting wifi failed"
        # log.info(msg)

        status, msg = ad.perform_a2b_call(
            self.Data['serialId'],self.Data['testcase_config'][self.tst]['tempDevicesId'][0],
            self.Data['testcase_config'][self.tst]['callA_no'],
            self.Data['testcase_config'][self.tst]['callB_no']
            )

        if not status:
            return False, msg

        log.info("performing a2b call is success")

        # connecting to wifi.
        log.info("Enabling wifi")
        status, msg = ad.wifi_enable(self.Data['serialId'], self.Data['testcase_config'][self.tst]['ssid'],
                                     self.Data['testcase_config'][self.tst]['password'])
        if not status:
            log.info("wifi not connected")
            return False, "wifi not connected"


        # """download file"""
        # log.info("downloading file")
        # status, output = ad.download_file(self.Data['serialId'],self.Data['testcase_config'][self.tst]['HTTP_DL_LINK'])
        # if not status:
        #     log.info("unable to download file")
        #     return False, "unable to download file "

        # sending sms
        log.info("sending sms")
        status, msg = ad.send_sms(self.Data['serialId'], self.Data['testcase_config'][self.tst]['callB_no'])
        if not status:
            log.info("sending sms failed")
            return status, msg
        import time
        time.sleep(5)
        log.info("Test case executed successfully")

        # Disconnecting the Call
        log.info("Terminating call in device A")
        status, msg = ad.terminate_call(deviceId=self.Data['serialId'])
        if not status:
            return False, msg

        return True, "Executed successfully"
        return True, "Test case passed"

    def closeUp(self):
        ui.closeApps(devId=self.Data['serialId'])


def SS_1(tst, yamlData):
    try:
        status, msg, noOfDevices = cf.comp_id(
            yamlData['testcase_config'][tst]["tempDevicesId"])
        if noOfDevices >= 1:
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
            install_app_obj = perform_update_app(tst, yamlData)
            status, msg = install_app_obj.execute_update_app()
            # install_app_obj.closeUp()
        else:
            return None, "one Devices are needed to execute the test case, {0} device(s) connected".format(noOfDevices)
        return status, msg
    except Exception as e:
        return False, f"Testcase Failed {e}"



def run_tc(tst, yamlData):
	global log
	import cellular_automation_helpers.common_helper_functions.logger as loggs
	log = loggs.setup_logger("START")
	log.info(f"'{str(__name__).split('.')[2]}'Execution Started")
	status, msg =SS_1(tst, yamlData)
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
