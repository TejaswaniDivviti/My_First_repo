import logging
import time
from enum import Enum
import os
import re

import automation_helpers.globalconstants as gc
import cellular_automation_helpers.common_helper_functions.common_functions as cf

MAX_CALL_RINING_LIMIT = 20

log = logging.getLogger(__name__)


class CallStates(Enum):
    IDLE_CALL = 0
    INCOMING_CALL = 1
    CONNECTED_CALL = 2


def trigger_volte_call(deviceId, phoneNumber):
    """
        function name  : trigger_volte_call
        description    : this function is a used perform the volte call
        return         : return boolean, string
    """
    # Adb command for triggering Volte call
    cmd = f"adb -s {deviceId} shell am start -a android.intent.action.CALL -d tel:{phoneNumber}"
    log.info(f"Calling from device {deviceId} ===> {cmd}")
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, f"Triggering call failed due to {error}"
    return True, "Call Performed Successfully"


def trigger_vt_call(deviceId, phoneNumber):
    """
        function name  : trigger_vt_call
        description    : this function is a used perform the VT call
        return         : return boolean, string
    """
    # Adb command for triggering VT call
    cmd = f"adb -s {deviceId} shell am start -a android.intent.action.CALL -d tel:{phoneNumber} " \
          f"--ei android.telecom.extra.START_CALL_WITH_VIDEO_STATE 3"

    log.info(f"VT Calling from device {deviceId} ===> {cmd}")
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, f"Triggering VT call failed due to {error}"

    from uiautomator import Device
    try:
        devId = Device(deviceId)
        devId(textStartsWith='Speaker').click()
    except Exception as e:
        pass

    return True, "VT Call Performed Successfully"


def accept_call(deviceId):
    """
        function name  :  receive_call
        description    : This function used to pick the call.
        return         : return boolean, string(mCallState)
    """
    # adb command for accept call
    call_attend = f"adb -s {deviceId} shell input keyevent KEYCODE_CALL"
    log.debug(f"Receiving call in device {deviceId} ===> {call_attend}")
    (output, error, status) = cf.execute_commands(call_attend)

    if not status:
        return False, f"Receiving Call failed due to {error}"

    log.info("Call received Successfully")
    return True, "Call received Successfully"


def check_call_state(deviceId, phoneNumber):
    """
        function name  : fetch_call_state
        description    : this function is a used to fetch the call state.
        return         : return boolean, string(mCallState)
    """
    timer = 0
    while MAX_CALL_RINING_LIMIT >= timer:
        log.info(f"{timer}")
        print(timer)
        # adb command for fetching mCallState
        cmd = f"adb -s {deviceId} shell dumpsys telephony.registry | grep \"mCallState\|mCallIncomingNumber\"" \
              f" > {gc.IMAGE_FOLDER}/dump.txt"
        log.debug("Checking device {1} ===> {0}".format(cmd, deviceId))
        (output, error, status) = cf.execute_commands(cmd)

        if not status:
            return False, f"Executing the {cmd} failed, due to {error}"

        # fetching the mCallState value from dump.txt file
        status, mCallState = cf.fetch_call_state(phoneNumber)

        if not status:
            return False, f"fetching the call state of {deviceId} failed"

        if mCallState == CallStates.INCOMING_CALL.value:
            time.sleep(2)
            log.info(
                f"Call state fetched successfully and call state is {mCallState}")
            return True, mCallState
        time.sleep(1)
        timer += 1
        print(timer)
    return False, "Call not received"


def terminate_call(deviceId):
    """
        function name  :  terminating the call
        description    : This function used to disconnect the call.
        return         : return boolean, string(mCallState)
    """
    # adb command for disconnect the call
    disconnect_cmd = f"adb -s {deviceId} shell input keyevent KEYCODE_ENDCALL"
    log.debug("Terminating call in device {1} ===> {0}".format(
        disconnect_cmd, deviceId))
    (output, error, status) = cf.execute_commands(disconnect_cmd)

    if not status:
        return False, f"Terminating the call failed due to {error}"

    log.info("Call terminated Successfully")
    return True, "Call terminated Successfully"


def graceful_disconnection(deviceId):
    """
       function name  :  graceful_disconnection used for hard disconnect call.
       description    : This function used for hard disconnect call whenever failure occurs.
       return         : return
    """
    # Checking the Call state
    cmd = "adb -s {0} shell dumpsys telephony.registry | grep \"mCallState\|mCallIncomingNumber\" > " \
          "{1}/dump.txt".format(deviceId, gc.IMAGE_FOLDER)

    log.debug("Checking device {1} ===> {0}".format(cmd, deviceId))
    cf.execute_commands(cmd)

    # Validating the call state and Terminating call for call state > 0
    if getCallState() > CallStates.IDLE_CALL.value:
        terminate_call(deviceId)


def getCallState():
    """
       function name  :  checking_call_state
       description    : This function used check the call state before the disconnect call.
       return         : return integer
    """
    # Parsing for mCallState from dump.txt
    data1 = re.compile(r"(mCallState=([0-2]))")
    mCallState = []
    status = False
    f = open("{0}/dump.txt".format(gc.IMAGE_FOLDER), "r")
    for line in f:
        for match in re.findall(data1, line):
            callState = int(match[1])
            mCallState.append(str(callState))
    mCallState = [int(items) for items in mCallState]
    f.close()
    os.remove("{0}/dump.txt".format(gc.IMAGE_FOLDER))
    return max(mCallState)


