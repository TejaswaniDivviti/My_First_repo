import logging
import os
import re
from threading import Thread
import time
from enum import Enum
from sys import platform

from matplotlib import cm
import automation_helpers.globalconstants as gc
import cellular_automation_helpers.common_helper_functions.common_functions as cf
import cellular_automation_helpers.common_helper_functions.time_rsrp_rsrq_snr as tm
# from uiautomator import Device
import uiautomator2 as u2

MAX_CALL_RINING_LIMIT = 25
log = logging.getLogger(__name__)


class CallStates(Enum):
    IDLE_CALL = 0
    INCOMING_CALL = 1
    CONNECTED_CALL = 2
def plmn_search_with_sim(deviceId, sim_no):
    # return True, "Plmn Passed"
    cmd = f"adb -s {deviceId} shell am start -a android.settings.NETWORK_OPERATOR_SETTINGS"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "not exected"

    devId = u2.connect(deviceId)
    devId = u2.connect(deviceId)
    if devId(text='SIM1').wait(timeout=5.0):
        devId(text='SIM1').click()
        if devId(text='Carrier').wait(timeout=9.0):
            devId(text='Carrier').click()
            time.sleep(50)
            devId.press("home")
            if status:
                return False, "failed to open Carrier"
    elif devId(text='SIM2').wait(timeout=5.0):
        devId(text='SIM2').click()
        if status:
            return False, "failed to click Sim2"
    return True, "Plmn Search completed"

    if sim_no == 1:
        if not devId(className="android.widget.FrameLayout", index="0").wait(timeout=5.0):
            return False, "SIM1 not found"
        obj = devId(className="android.widget.FrameLayout", index="0")
        status = obj.__getattr__("selected")
        if status:
            st = devId(className="android.widget.FrameLayout", index="0").click()
            if st:
                return False, "unable to select sim1"
    elif sim_no == 2:
        if not devId(className="android.widget.FrameLayout", index="1").wait(timeout=5.0):
            return False, "SIM2 not found"
        obj = devId(className="android.widget.FrameLayout", index="1")
        status = obj.__getattr__("selected")
        if  status:
            st = devId(className="android.widget.FrameLayout", index="1").click()
            if  st:
                return False, "unable to select sim2"


def set_sim_for_calls(deviceId, sim_no):
    try:

        devId = u2.connect(deviceId)
        # getting the operators name
        out, err, stat = cf.execute_commands(f"adb -s {deviceId} shell getprop gsm.sim.operator.alpha")
        if not stat:
            log.info("sim cmd not executed")
            return False, "sim cmd not executed"
        out1 = str(out)
        out2 = out1.strip("'b\\n")
        sim = out2.split(",")

        # launching the settings
        out, err, stat = cf.execute_commands(f"adb -s {deviceId} shell am start -a android.settings.SETTINGS")
        print(stat)
        if not stat:
            log.info("failed to launch settings")
            return False, "failed to launch settings"


        # for mia3
        if devId(text="Network & internet").wait(timeout=5.0):
            devId(text="Network & internet").click()

            if not devId(text="SIM cards").wait(timeout=5.0):
                return False, "no SIM cards option"
            devId(text="SIM cards").click()


            if not devId(text="Calls").wait(timeout=5.0):
                return False, "no Calls option"

            devId(text="Calls").click()


            # enabling sims for calls based on sim number
            if sim_no == 1:
                if not devId(text=f"{sim[0]}").wait(timeout=5.0):
                    return False, "sim1 not found"
                devId(text=f"{sim[0]}").click()
                return True, "sim1 enabled for calls"
            elif sim_no == 2:
                if not devId(text=f"{sim[1]}").wait(timeout=5.0):
                    return False, "sim2 not found"
                devId(text=f"{sim[1]}").click()
                return True, "sim2 enabled for calls"
            else:
                return False, "not valid sim number"

        # for mi10t
        elif devId(text="SIM cards & mobile networks").wait(timeout=5.0):
            devId(text="SIM cards & mobile networks").click()
            if sim_no == 1:

                if devId(description="SIM 1 for calls", resourceId="com.android.phone:id/sim1",
                         className="android.widget.ImageView").wait(timeout=5.0):
                    devId(description="SIM 1 for calls", resourceId="com.android.phone:id/sim1",
                          className="android.widget.ImageView").click()
                else:
                    return False, "selecting sim1 for calls failed"
            elif sim_no == 2:

                if devId(description="SIM 2 for calls", resourceId="com.android.phone:id/sim2",
                         className="android.widget.ImageView").wait(timeout=5.0):
                    devId(description="SIM 2 for calls", resourceId="com.android.phone:id/sim2",
                          className="android.widget.ImageView").click()
                else:
                    return False, "selecting sim2 for call failed"
            else:
                return False, "not valid sim number"

     #for oneplusnord
        elif devId(text="Wi-Fi & Network").wait(timeout=5.0):
            devId(text="Wi-Fi & Network").click()
            devId(text="SIM & Network").wait(timeout=5.0)
            devId(text="SIM & Network").click()
            devId(text="Voice call").wait(timeout=5.0)
            devId(text="Voice call").click()
            if sim_no == 1:
                print('forr sim1')
                devId(index='1', text="SIM 1  (airtel)", resourceId="android:id/text1",className="android.widget.CheckedTextView").click()
                
                
            elif sim_no == 2:
                print('for sim2')
                devId(index='2', text="SIM 2  (airtel)", resourceId="android:id/text1",className="android.widget.CheckedTextView").click()
                
              
            else:
                return False, "not valid sim number"


        # for Lava
        elif devId(text="More").wait(timeout=5.0):
            devId(text="More").click()
            if sim_no == 1:
                devId(index="0", className="android.widget.LinearLayout").child(index="0",
                                                                                resourceId="android:id/title",
                                                                                className="android.widget.TextView").click()
                devId(text="Calls preference").click()
                devId(index="0", resourceId="android:id/text1", className="android.widget.CheckedTextView").click()
            elif sim_no == 2:

                devId(index="1", className="android.widget.LinearLayout").child(index="0",
                                                                                resourceId="android:id/title",
                                                                                className="android.widget.TextView").click()
                devId(text="Calls preference").click()
                devId(index="1", resourceId="android:id/text1", className="android.widget.CheckedTextView").click()
            else:
                return False, "not valid sim number"

        else:
            return False, "failed to find settings to enable sim for calls"

        devId.press("home")

        return True, "setting sim for calls success"
    except Exception as e:
        return False, f"Ui not met {e}"

def set_sim_for_sms(deviceId, sim_no):
    print(deviceId, sim_no)
   
    try:
        devId = u2.connect(deviceId)
        # getting the operators name
        out, err, stat = cf.execute_commands(f"adb -s {deviceId} shell getprop gsm.sim.operator.alpha")
        if not stat:
            log.info("sim cmd not executed")
            return False, "sim cmd not executed"
        out1 = str(out)
        out2 = out1.strip("'b\\n")
        sim = out2.split(",")

        # launching the settings
        out, err, stat = cf.execute_commands(f"adb -s {deviceId} shell am start -a android.settings.SETTINGS")
        print(stat)
        if not stat:
            log.info("failed to launch settings")
            return False, "failed to launch settings"


        # for mia3
        if devId(text="Network & internet").wait(timeout=5.0):
            devId(text="Network & internet").click()

            if not devId(text="SIM cards").wait(timeout=5.0):
                return False, "no SIM cards option"
            devId(text="SIM cards").click()


            if not devId(text="Calls").wait(timeout=5.0):
                return False, "no Calls option"

            devId(text="Calls").click()


            # enabling sims for calls based on sim number
            if sim_no == 1:
                if not devId(text=f"{sim[0]}").wait(timeout=5.0):
                    return False, "sim1 not found"
                devId(text=f"{sim[0]}").click()
                return True, "sim1 enabled for calls"
            elif sim_no == 2:
                if not devId(text=f"{sim[1]}").wait(timeout=5.0):
                    return False, "sim2 not found"
                devId(text=f"{sim[1]}").click()
                return True, "sim2 enabled for calls"
            else:
                return False, "not valid sim number"

        # for mi10t
        elif devId(text="SIM cards & mobile networks").wait(timeout=5.0):
            devId(text="SIM cards & mobile networks").click()
            if sim_no == 1:

                if devId(description="SIM 1 for calls", resourceId="com.android.phone:id/sim1",
                         className="android.widget.ImageView").wait(timeout=5.0):
                    devId(description="SIM 1 for calls", resourceId="com.android.phone:id/sim1",
                          className="android.widget.ImageView").click()
                else:
                    return False, "selecting sim1 for calls failed"
            elif sim_no == 2:

                if devId(description="SIM 2 for calls", resourceId="com.android.phone:id/sim2",
                         className="android.widget.ImageView").wait(timeout=5.0):
                    devId(description="SIM 2 for calls", resourceId="com.android.phone:id/sim2",
                          className="android.widget.ImageView").click()
                else:
                    return False, "selecting sim2 for call failed"
            else:
                return False, "not valid sim number"

     #for oneplusnord
        elif devId(text="Wi-Fi & Network").wait(timeout=5.0):
            devId(text="Wi-Fi & Network").click()
            devId(text="SIM & Network").wait(timeout=5.0)
            devId(text="SIM & Network").click()
            devId(text="Voice call").wait(timeout=5.0)
            devId(text="Voice call").click()
            if sim_no == 1:
                print('forr sim1')
                devId(index='1', text="SIM 1  (airtel)", resourceId="android:id/text1",className="android.widget.CheckedTextView").click()
                
                
            elif sim_no == 2:
                print('for sim2')
                devId(index='2', text="SIM 2  (airtel)", resourceId="android:id/text1",className="android.widget.CheckedTextView").click()
                
              
            else:
                return False, "not valid sim number"


        # for Lava
        elif devId(text="More").wait(timeout=5.0):
            devId(text="More").click()
            if sim_no == 1:
                devId(index="0", className="android.widget.LinearLayout").child(index="0",
                                                                                resourceId="android:id/title",
                                                                                className="android.widget.TextView").click()
                devId(text="Calls preference").click()
                devId(index="0", resourceId="android:id/text1", className="android.widget.CheckedTextView").click()
            elif sim_no == 2:

                devId(index="1", className="android.widget.LinearLayout").child(index="0",
                                                                                resourceId="android:id/title",
                                                                                className="android.widget.TextView").click()
                devId(text="Calls preference").click()
                devId(index="1", resourceId="android:id/text1", className="android.widget.CheckedTextView").click()
            else:
                return False, "not valid sim number"

        else:
            return False, "failed to find settings to enable sim for calls"

        devId.press("home")

        return True, "setting sim for calls success"
    except Exception as e:
        return False, f"Ui not met {e}"
    
        

def open_web_browser(url):
    try:
        return True, "passed"
        import subprocess
        r = requests.get(url)
        result = r.status_code
        if result == 200:
            p = subprocess.Popen(["google-chrome", url])
            time.sleep(10)
            p.kill()
            return True, "Opened Browser"
        return False, "Opening browser failed"
    except Exception as e:
        return False, e

def call_forwarding(deviceId, sim_no, call_forward_num):
    # setting sim for calls before call forwarding
    status, msg = set_sim_for_calls(deviceId, sim_no)
    if not status:
        return False, "failed to set sim for calls"

    # call forwarding
    devId = u2.connect(deviceId)
    cmd = f"adb -s {deviceId} shell am start -a android.intent.action.CALL  -d tel:%2A21%2A{call_forward_num}%23"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "failed to open dialpad and set USSD code"

    while not devId(text="OK").wait(timeout=5.0):
        devId(text="OK").click()

    return True, "call forwarding success"


def disable_call_forwarding(deviceId, sim_no):
    # setting sim for calls before call forwarding
    status, msg = set_sim_for_calls(deviceId, sim_no)
    if not status:
        return False, "failed to set sim for calls"

    # call forwarding
    devId = u2.connect(deviceId)
    cmd = f"adb -s {deviceId} shell am start -a android.intent.action.CALL  -d tel:%2321%23"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "failed to open dialpad and set USSD code"

    while not devId(text="OK").wait(timeout=5.0):
        devId(text="OK").click()

    return True, "call forwarding disabled successfully"

def toggle_USB_tethering(deviceId):
    status, msg = usb_tethering_on(deviceId)
    if not status:
        return True, msg
    # # opening the settings
    # cmd = f"adb -s {deviceId} shell am start -n com.android.settings/.TetherSettings"
    # (output, error, status) = cf.execute_commands(cmd)
    # if not status:
    #     return False, "command not executed"
    # devId = u2.connect(deviceId)
    # if devId(textStartsWith="USB tethering").exists:
    #     devId(textStartsWith="USB tethering").click()
    # else:
    #     return False, "USB thetering object not found"
    return True, "USB tethering toggled successfully"

def enable_data_with_simNo(deviceId, sim_no):
    return True, "Enabled data successfully"

    devId = u2.connect(deviceId)
    # getting the operators name
    out, err, stat = cf.execute_commands(f"adb -s {deviceId} shell getprop gsm.sim.operator.alpha")
    if not stat:
        log.info("sim cmd not executed")
        return False, "sim cmd not executed"
    out1 = str(out)
    out2 = out1.strip("'b\\n")
    sim = out2.split(",")

    # launching the settings
    out, err, stat = cf.execute_commands(f"adb -s {deviceId} shell am start -a android.settings.SETTINGS")
    if not stat:
        log.info("failed to launch settings")
        return False, "failed to launch settings"

    # for Mi1A3
    if devId(text="Network & internet").wait(timeout=5.0):
        devId(text="Network & internet").click()

        if not devId(text="SIM cards").wait(timeout=5.0):
            return False, "no SIM cards option"
        devId(text="SIM cards").click()


        if not devId(text="Cellular data").wait(timeout=5.0):
            return False, "no Cellular data option"
        devId(text="Cellular data").click()

        # enabling mobile data based on sim number
        if sim_no == 1:
            if not devId(text=f"{sim[0]}").wait(timeout=5.0):
                return False, "sim1 not found"
            devId(text=f"{sim[0]}").click()

            return True, "sim1 mobile data enabled"
        elif sim_no == 2:
            if not devId(text=f"{sim[1]}").wait(timeout=5.0):
                return False, "sim2 not found"
            devId(text=f"{sim[1]}").click()

            return True, "sim2 mobile data enabled"
        else:
            return False, "not valid sim number"

    # for Mi10t
    elif devId(text="SIM cards & mobile networks").wait(timeout=5.0):
        devId(text="SIM cards & mobile networks").click()
        if sim_no == 1:
            if devId(description="Data SIM 1", resourceId="com.android.phone:id/sim1",
                     className="android.widget.ImageView").wait(timeout=5.0):
                devId(description="Data SIM 1", resourceId="com.android.phone:id/sim1",
                      className="android.widget.ImageView").click()
            else:
                return False, "selecting sim1 for data failed"
        elif sim_no == 2:
            if devId(description="Data SIM 2", resourceId="com.android.phone:id/sim2",
                     className="android.widget.ImageView").wait(timeout=5.0):
                devId(description="Data SIM 2", resourceId="com.android.phone:id/sim2",
                      className="android.widget.ImageView").click()
            else:
                return False, "selecting sim2 for data failed"
        else:
            return False, "not valid sim number"

    # for Lava
    elif devId(text="More").wait(timeout=5.0):
        devId(text="More").click()
        if sim_no == 1:
            devId(index="0", className="android.widget.LinearLayout").child(index="0", resourceId="android:id/title",
                                                                            className="android.widget.TextView").click()
            devId(text="Mobile data").click()
            if devId(textStartsWith="USE").wait(timeout=5.0):
                devId(textStartsWith="USE").click()
                return True, "successfully data enabled"
        elif sim_no == 2:
            devId(index="1", className="android.widget.LinearLayout").child(index="0", resourceId="android:id/title",
                                                                            className="android.widget.TextView").click()
            devId(text="Mobile data").click()
            if devId(textStartsWith="USE").wait(timeout=5.0):
                devId(textStartsWith="USE").click()
                return True, "successfully data enabled"
        else:
            return False, "not valid sim number"

    else:
        return False, "failed to find settings to enabled data"

    # enabling mobile data
    status, msg = enable_data(deviceId)
    if not status:
        return False, msg

    devId.press.back()
    devId.press("home")

    return True, "Enabled data successfully"



def fplmn_with_sim(deviceId, sim_no):
    # for normal plmn search
    # opening network settings
    
    cmd = f"adb -s {deviceId} shell am start -a android.settings.SETTINGS"
    (output, error, status) = cf.execute_commands(cmd)
    devId = u2.connect(deviceId)
    if devId(text="More").exists:
        devId(text="More").click()
        if sim_no == 1:
            devId(index="0", className="android.widget.LinearLayout").child(index="0", resourceId="android:id/title",
                                                                            className="android.widget.TextView").click()
            # devId(text="Mobile data").click()
            # if devId(textStartsWith="USE").exists:
            #     devId(textStartsWith="USE").click()
            #     return True, "successfully data enabled"
        elif sim_no == 2:
            devId(index="1", className="android.widget.LinearLayout").child(index="0", resourceId="android:id/title",
                                                                            className="android.widget.TextView").click()
            # devId(text="Mobile data").click()
            # if devId(textStartsWith="USE").exists:
            #     devId(textStartsWith="USE").click()
            #     return True, "successfully data enabled"
        else:
            return False, "not valid sim number"

    # if sim_no == 1:
    #     if not devId(className="android.widget.FrameLayout", index="0").exists:
    #         return False, "SIM1 not found"
    #     obj = devId(className="android.widget.FrameLayout", index="0")
    #     status = obj.__getattr__("selected")
    #     if not status:
    #         st = devId(className="android.widget.FrameLayout", index="0").click()
    #         if not st:
    #             return False, "unable to select sim1"
    # elif sim_no == 2:
    #     if not devId(className="android.widget.FrameLayout", index="1").exists:
    #         return False, "SIM2 not found"
    #     obj = devId(className="android.widget.FrameLayout", index="1")
    #     status = obj.__getattr__("selected")
    #     if not status:
    #         st = devId(className="android.widget.FrameLayout", index="1").click()
    #         if not st:
    #             return False, "unable to select sim2"

    time.sleep(3)

    devId(scrollable=True).scroll.toEnd()
    if devId(text='Automatically select network').exists:
        devId(text='Automatically select network').click()
        devId(text='OK').click()
        while True:
            if devId(textContains='forbidden').exists:
                devId(textContains='forbidden').click()
                while True:
                    if devId(textContains='OK').exists:
                        devId(textContains='OK').click()
                        break
                break

    else:
        return False, "not clicked on networks"
    # Mi 10 T
    # # Searching all available networks
    # if devId(text='Advanced').exists:
    #     print("advanced exists")
    #     devId(text='Advanced').click()
    #     print("clicked on adv")
    #     if devId(text='Automatically select network').exists:
    #         print("automatic exists")
    #         if devId(text='Automatically select network').click():
    #             time.sleep(60)
    #         else:
    #             return False, "not clicked on networks"
    # elif devId(text='Automatically select network').exists:
    #     if devId(text='Automatically select network').click():
    #         time.sleep(30)
    #     else:
    #         return False, "not clicked on networks"
    # else:
    #     return False, "networks not found"

    # For FPLMN
    # if not devId(textContains='forbidden').exists:
    #     return False, "unable find forbidden network"
    # status = devId(textContains='forbidden').click()
    # if not status:
    #     return False, "unable to select forbidden network"

    return True, "PLMN selected successfully"

    
def enable_call_forward(deviceId, sim_no):
    devId = u2.connect(deviceId)
    # Enabling call forward
    ussd = f"%2A21%2A{sim_no}%23"
    status, msg = trigger_volte_call(
        deviceId=deviceId,
        phoneNumber=ussd)
    if not status:
        return False, "Call forwarding failed"
    if devId(textContains='OK').wait(timeout=10.0):
        devId(textContains='OK').click()
    if devId(textContains='Ok').wait(timeout=10.0):
        devId(textContains='Ok').click()
    return True, f"Enable Call Forwarding to {sim_no}"


def disable_call_forward(deviceId):
    devId = u2.connect(deviceId)
    # Disabling call forward
    ussd = f"%23%2321%23"
    status, msg = trigger_volte_call(
        deviceId=deviceId,
        phoneNumber=ussd)
    if not status:
        return False, "Executed failed"
    if devId(textContains='OK').wait(timeout=5.0):
        devId(textContains='OK').click()
    if devId(textContains='Ok').wait(timeout=5.0):
        devId(textContains='Ok').click()
    return True, f"Call Forwarding Disabled "

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
    time.sleep(5)
    if not status:
        return False, f"Triggering call failed due to {error}"
    # time.sleep(10)
    return True, "Call Performed Successfully"


def trigger_vt_call(deviceId, phoneNumber):
    """
        function name  : trigger_vt_call
        description    : this function is a used perform the VT call
        return         : return boolean, string
        
    """
    # Adb command for triggering VT call
    cmd = f"adb -s {deviceId} shell am start -a android.intent.action.CALL -d tel:{phoneNumber} --ei android.telecom.extra.START_CALL_WITH_VIDEO_STATE 3"

    log.info(f"VT Calling from device {deviceId} ===> {cmd}")
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, f"Triggering VT call failed due to {error}"

    return True, "VT Call Performed Successfully"


def accept_call(deviceId):
    """
        function name  :  receive_call
        description    : This function used to pick the call.
        return         : return boolean, string(mCallState)
    """
    # adb command for accept call
    call_attend = f"adb -s {deviceId} shell input keyevent KEYCODE_CALL"
    # log.debug(f"Receiving call in device {deviceId} ===> {call_attend}")
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
        # adb command for fetching mCallState
        if platform == "linux" or platform == "linux2":
            cmd = f"adb -s {deviceId} shell dumpsys telephony.registry | grep \"mCallState\|mCallIncomingNumber\" > {gc.IMAGE_FOLDER}/dump.txt"
        else:
            cmd = f'adb -s {deviceId}  shell dumpsys telephony.registry | findstr /c:"mCallState" /c:"mCallIncomingNumber" > {gc.IMAGE_FOLDER}/dump.txt'
        
        log.debug("Checking device {1} ===> {0}".format(cmd, deviceId))
        
        (output, error, status) = cf.execute_commands(cmd)

        if not status:
            return False, f"Executing the {cmd} failed, due to {error}"

        # print(timer)
        # fetching the mCallState value from dump.txt file
        status, mCallState = cf.fetch_call_state(phoneNumber)

        if not status:
            return False, f"fetching the call state of {deviceId} failed"

        if mCallState == CallStates.INCOMING_CALL.value:
            log.info(
                f"Call state fetched successfully and call state is {mCallState}")
            return True, mCallState
        time.sleep(1)
        print(timer)
        timer += 1

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


# def checking_call_state():
#     """
#        function name  :  checking_call_state
#        description    : This function used check the call state before the disconnect call.
#        return         : return integer
#     """
#     # Parsing for mCallState from dump.txt
#     data1 = re.compile(r'(mCallState=([0-2]))')
#     mCallState = []
#     status = False
#     for line in open("{0}/dump.txt".format(gc.IMAGE_FOLDER), "r"):
#         for match in re.findall(data1, line):
#             callState = int(match[1])
#             mCallState.append(str(callState))
#     mCallState = [int(items) for items in mCallState]
#     return max(mCallState)


def graceful_disconnection(deviceId):
    """
       function name  :  graceful_disconnection used for hard disconnect call.
       description    : This function used for hard disconnect call whenever failure occurs.
       return         : return
    """
    # Checking the Call state
    if platform == "linux" or platform == "linux2":
        (output, error, status) = cf.execute_commands(
            f"adb -s {deviceId} shell dumpsys telephony.registry | grep \"mCallState\|mCallIncomingNumber\"")
    else:
        (output, error, status) = cf.execute_commands(
            f"adb -s {deviceId} shell dumpsys telephony.registry | findstr \"mCallState\|mCallIncomingNumber\"")
    # adb command for fetching mCallState

    with open(f"{gc.IMAGE_FOLDER}/dump.txt", "w") as fd:
        fd.write(output.decode("utf-8"))

    # log.debug("Checking device {1} ===> {0}".format(cmd, deviceId))
    # cf.execute_commands(cmd)

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


def check_transfer_status(deviceId):
    try:
        # checking transfer
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        
        devId.press("back")
        status = devId.open_notification()
        if not status:
            log.info("failed to open notification")
            return False, "failed to open notification"
        
        if not devId(textContains='share').exists:
            return False, "transfer failed"
        return True, "Transferred successfully"
    except Exception as e:
        return False, f"Ui not met {e}"


def remove_prefile(deviceId, file, file_path2):
    cmd = f"adb -s {deviceId} shell rm {file_path2}/{file}"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "Remove file failed"
    return True, "Removed Successfully"


def preload_file(deviceId, file_path):
    res = (file_path[::-1].partition("/"))[::-1]
    file = res[2][::-1]
    path = res[0][::-1]
    cmd = f"adb -s {deviceId} push ../../../inputs/others/{file} {path}/"
    (output, error, status) = cf.execute_commands(cmd)
    time.sleep(10)
    if not status:
        return False, "Preloading file failed"
    return True, "Preloaded file Successfully"


def install_multiple_applications(deviceId, Https_Link):
    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        temp_variable = 0
        
        while (temp_variable < len(Https_Link)):
            cmd = f'adb -s {deviceId} shell am start -a android.intent.action.VIEW -d "{Https_Link[temp_variable]}"'
            (output, error, status) = cf.execute_commands(cmd)
            if not status:
                return False, "not executed"
            time.sleep(5)
            
            if devId(textStartsWith='Install').exists:
                status = devId(text='Install').click()
                
                if not status:
                    return False, "app not downloaded"
            elif devId(textStartsWith='Update').exists:
                status = devId(text='Update').click()
                
                if not status:
                    return False, "app not downloaded"
            elif devId(textStartsWith='Open').exists:
                log.info("app exists")
            else:
                log.info("unable to install app")
                return False, f"unable to install app {temp_variable + 1}"
            temp_variable = temp_variable + 1
        return True, "multiple apps are installing"
    except Exception as e:
        return False, f"Ui not met {e}"

def floating_tube_status(deviceId):
    cmd = f"adb -s {deviceId} shell pidof -s com.playtubevideo.floatingtubevideoplayer"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "floating tube is not running..."

    output = output.decode("utf-8")

    cmd = f"adb shell dumpsys audio | grep {output}"
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, "floating tube is not running"
    value = ""
    value += output.decode("utf-8")

    res = value.find("started")
    if res < 0:
        return False, "video is not playing .."
    return True, "video is playing.."


def verify_voice(deviceId):
    cmd = f"adb -s {deviceId} shell dumpsys audio > status.txt"
    (output, status, msg) = cf.execute_commands(cmd)
    # Open the file for reading
    with open('status.txt') as fd:
        for line in fd:
            match = re.search(r' In ring or call: (\S+)', line)
            if match:
                status = match.group(1)
                return status


def recent_task(deviceId):
    for i in range(5):
        # open Recent task
        app_cmd = f"adb -s {deviceId} shell input keyevent KEYCODE_APP_SWITCH"
        (output, error, status) = cf.execute_commands(app_cmd)
        if not status:
            return False, "recent task failed"
        

        app_cmd = f"adb -s {deviceId} shell input keyevent 20"
        (output, error, status) = cf.execute_commands(app_cmd)
        if not status:
            return False, "recent task failed"
        

        app_cmd = f"adb -s {deviceId} shell input keyevent KEYCODE_ENTER"
        (output, error, status) = cf.execute_commands(app_cmd)
        if not status:
            return False, "recent task failed"

        return True, "Open All recent application"


def open_multi_app(deviceId):
    # browser
    app_cmd = f"adb -s {deviceId} shell am start -n com.android.chrome/com.google.android.apps.chrome.Main"
    (output, error, status) = cf.execute_commands(app_cmd)
    if not status:
        return False, "Opening app failed"
    

    # camera
    app_cmd = f"adb -s {deviceId} shell am start -n com.android.camera/.Camera"
    (output, error, status) = cf.execute_commands(app_cmd)
    if not status:
        return False, "Opening app failed"
    

    # Message
    app_cmd = f"adb -s {deviceId} shell am start -n com.android.mms/.ui.MmsTabActivity"
    (output, error, status) = cf.execute_commands(app_cmd)
    if not status:
        return False, "Opening app failed"
    

    # Youtube
    app_cmd = f"adb -s {deviceId} shell am start -n com.google.android.youtube/com.google.android.apps.youtube.app.WatchWhileActivity "
    (output, error, status) = cf.execute_commands(app_cmd)
    if not status:
        return False, "Opening app failed"
    

    # Whatsapp
    app_cmd = f"adb -s {deviceId} shell am start -n com.whatsapp/.Conversation "
    (output, error, status) = cf.execute_commands(app_cmd)
    if not status:
        return False, "Opening app failed"
    

    return True, "Open All Applcation Successfully"


def connect_vpn(deviceId):
    # Installing VPN
    devId = u2.connect(deviceId)

    if not devId.info.get('screenOn'):
        devId.screen_on()
    cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d " \
          f"https://play.google.com/store/apps/details?id=com.fortinet.forticlient_vpn "
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "not executed"
    

    if not devId(text='Install').exists:
        devId(text='Open').click()
        
        cmd = f"adb -s {deviceId} shell pm grant com.fortinet.forticlient_vpn android.permission.READ_EXTERNAL_STORAGE"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "not executed"
        
        if devId(text='No, Thank You').exists:
            devId(text='No, Thank You').click()
        if devId(text='OK').exists:
            devId(text='OK').click()
        if devId(text='OK').exists:
            devId(text='OK').click()
    else:
        devId(text='Install').click()
        
        devId(text='Open').click()
        
        cmd = f"adb shell pm grant com.fortinet.forticlient_vpn android.permission.READ_EXTERNAL_STORAGE"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "not executed"
        if devId(text='No, Thank You').exists:
            devId(text='No, Thank You').click()
        if devId(text='OK').exists:
            devId(text='OK').click()
        if devId(text='OK').exists:
            devId(text='OK').click()

    return True, "VPN Opened successfully"


def enable_gps(devId):
    (output, error, status) = cf.execute_commands(
        f"adb -s {devId} shell settings put secure location_mode 3")
    if not status:
        return False, "failed to enable gps"
    return True, "enabled gps"


def disable_gps(devId):
    (output, error, status) = cf.execute_commands(
        f"adb -s {devId} shell settings put secure location_mode 0")
    if not status:
        return False, "failed to disable gps"
    return True, "disabled gps"


def open_camera_capture_video(deviceId):
    cam_cmd = f"adb -s {deviceId} shell am start -a android.media.action.VIDEO_CAPTURE"
    (output, error, status) = cf.execute_commands(cam_cmd)
    if not status:
        return False, "Opening camera failed"

    log.debug("Opening Camera ==> {0}".format(cam_cmd))

    

    log.info("starting Capturing video")
    vid_cmd = f"adb -s {deviceId} shell input keyevent 25"
    (output, error, status) = cf.execute_commands(vid_cmd)

    if not status:
        return False, "video starting failed"

    

    log.info("stopping Capturing video")
    vid_cmd = f"adb -s {deviceId} shell input keyevent 25"
    (output, error, status) = cf.execute_commands(vid_cmd)

    if not status:
        return False, "video stoping failed"

    log.debug("Captured picture ==> {0}".format(vid_cmd))
    return True, "video Captured Successfully"


def check_browse_status(deviceId):
    """
        function name : check browse status
        description : Checking for the browsing status
        return : returns boolean and string
    """
    return True, "video is playing..."


def stop_browsing(deviceId):
    """
        function : stop browsing
        description : stops browsing and will return to home screen
        return : returns boolean, string
    """
    # adb command for returning to home screen
    log.info("adb command for returning to home screen")
    cmd = f'adb -s {deviceId} shell input keyevent 4'
    (output, error, status) = cf.execute_commands(cmd)
    cmd = f'adb -s {deviceId} shell input keyevent 4'
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "not returned to home screen"
    else:
        return True, "returned to home screen"


def zoom_camera(deviceId):
    #  send event to pinch screen
    try:
        d = u2.connect(deviceId)

        if not d.info.get('screenOn'):
            d.press("home")
            d.screen_on()
        d().gesture((100, 200), (300, 200), (300, 600), (600, 900))
        d().gesture((300, 600), (600, 900), (100, 200), (300, 200))
        # d().gesture(, , (600, 200), (100, 600), , )
        # d().gesture((600, 900), (300, 600), (100, 600), (600, 200), (300, 200), (100, 200))
    # cam_cmd = f"adb -s {deviceId} push ../../../inputs/others/sendevent_input.sh sdcard/"
    # (output, error, status) = cf.execute_commands(cam_cmd)
    # if not status:
    #     return False, f"pushing Failed{error}"

    # # zoom out camera
    # cam_cmd = f"adb -s {deviceId} shell sh sdcard/sendevent_input.sh"
    # (output, error, status) = cf.execute_commands(cam_cmd)
    # time.sleep(40)
    # if not status:
    #     return False, "Camera Failed"
    except Exception as e:
        return False, f"{e}"
    return True, "Camera Opened"


def browse_data(deviceId, HTTP_LINK):
    """
        function name : Browsing data
        description : This funstion is used to browse some data.
        return : return boolean and string
    """
    # adb command for browsing data
    log.info("adb command for browsing data")
    cmd = f'adb -s {deviceId} shell am start -a android.intent.action.VIEW {HTTP_LINK}'
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, "Browsing not done"

    return True, "Browsing is executed"


def sim_status(deviceId):
    cmd = f"adb -s {deviceId} shell am start -a android.settings.NETWORK_OPERATOR_SETTINGS"
    (output, status, msg) = cf.execute_commands(cmd)
    if not status:
        return False, "Opening SIM Setting failed"
    time.sleep(5.0)
    return True, "Showing SIM Status successfully"


def install_app(deviceId, https_link):
    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        # Installing app
        cmd = f'adb -s {deviceId} shell am start -a android.intent.action.VIEW -d "{https_link}"'
        (output, error, status) = cf.execute_commands(cmd)

        if not status:
            return False, "cmd not executed"
        

        if devId(text="Install").exists:
            status = devId(text='Install').click()
            if devId(text="OK").exists:
                devId(text="OK").click()
            
            if not status:
                return False, "app not installed"

        if devId(text="Update").exists:
            return True, "app exists"
        elif devId(text="Open").exists:
            return True, "app exists"
        return True, "app installed"
    except Exception as e:
        return False, f"Ui not met {e}"


def open_app(deviceId, https_link):
    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        # Installing app
        cmd = f'adb -s {deviceId} shell am start -a android.intent.action.VIEW -d "{https_link}"'
        (output, error, status) = cf.execute_commands(cmd)

        if not status:
            return False, "cmd not executed"
        

        if devId(text="Install").exists:
            return False, "app not installed"

        if devId(text="Update").exists:
            status = devId(text="Update").click()
            if not status:
                return False, "failed to update app"
            
            if devId(text="Open").exists:
                if devId(text="Open").click():
                    return True, "app opened"
                else:
                    return False, "failed to open app"

        elif devId(text="Open").exists:
            if devId(text="Open").click():
                return True, "app opened"
            else:
                return False, "failed to open app"
        return True, "Opened"
    except Exception as e:
        return False, f"Ui not met {e}"


def enable_hotspot(deviceId):
    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        cmd = f"adb -s {deviceId} shell am start -n com.android.settings/.TetherSettings"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "opening setting failed"
        devId(textContains="hotspot").click()
        
        return True, "enabling hotspot successfully"
    except Exception as e:
        return False, f"Ui not met {e}"


def enable_bluetooth(deviceId):
    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.press("home")
            devId.screen_on()

        cmd = f"adb -s {deviceId} shell am start -a android.bluetooth.adapter.action.REQUEST_ENABLE"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "Enabling bluetooth failed"
        if devId(textStartsWith='Allow').wait(timeout=5.0):
            devId(textStartsWith='Allow').click()
        if devId(textStartsWith='ALLOW').wait(timeout=5.0):
            devId(textStartsWith='ALLOW').click()
        elif devId(textStartsWith='ALL').exists:
            devId(textStartsWith='ALL').click()
        return True, "Enabled bluetooth successfully"
    except Exception as e:
        return False, f"Ui not met {e}"


def disable_bluetooth(deviceId):
    try:
        cmd = f"adb -s {deviceId} shell am start -a android.bluetooth.adapter.action.REQUEST_DISABLE"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "Disabled Bluetooth Failed"
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
            devId.press("home")
        if devId(textStartsWith='All').wait(timeout=5.0):
            devId(textStartsWith='All').click()
        elif devId(textStartsWith='ALL').exists:
            devId(textStartsWith='ALL').click()
        return True, "Disabled bluetooth successfully"
    except Exception as e:
        return False, f"Ui not met {e}"


def status_bt(deviceId):
    cmd = f"adb -s {deviceId} shell settings get global bluetooth_on"
    (output, error, status) = cf.execute_commands(cmd)
    status = output.decode("utf-8").rstrip()
    return int(status)


def play_fm_radio(deviceId):
    try:
        # playing Fm radio
        status, output = install_fm(deviceId)
        if not status:
            return False, "unable to install fm"
        cmd = f"adb -s {deviceId} shell am start -n com.jonathanpuckey.radiogarden/com.jonathanpuckey.radiogarden.MainActivity"
        (output, error, status) = cf.execute_commands(cmd)
        time.sleep(10.0)
        if not status:
            log.info('Playing FM is failed')
            return False, 'Playing FM is failed'
        status, output = check_fm_status(deviceId)
        if not status:
            cmd = f"adb -s {deviceId} shell input keyevent 85"
            (output, error, status) = cf.execute_commands(cmd)
            
        return True, 'Started playing FM'
    except Exception as e:
        return False, f"Ui not met {e}"


def check_fm_status(deviceId):
    try:
        # checking fm
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        status = devId.open_notification()
        if not status:
            log.info("failed to open notification")
            return False, "failed to open notification"
        
        if not devId(textStartsWith='Radio ').wait(timeout=5.0):
            
            devId.press("home")
            return False, "fm is not playing"
        devId.press("home")
        return True, "fm is playing"
    except Exception as e:
        return False, f"Ui not met {e}"

def Emergency_call(deviceId):
    
    # adb cmd to long press power button
    cmd = f"adb -s {deviceId} shell input keyevent --longpress KEYCODE_POWER"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
         return None, "cmd failed in Emergency_call"
    time.sleep(2)
    #devId = Device(deviceId)
    devId = u2.connect(deviceId)
    # clicking on emergency using uiautomator
    if not devId(textContains="Emergency").exists:
        return False, "Emergency option not found"
 
    if not devId(textContains="Emergency").click():
        return False, "not clicked on Emergency"
  
    return True, "Emergeny call success"


def install_fm(deviceId):
    try:
        # Installing fm app
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d https://play.google.com/store/apps/details?id=com.jonathanpuckey.radiogarden"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "not executed"
        if devId(textStartsWith='Install').wait(timeout=5.0):
            status = devId(text='Install').click()
            if not status:
                return False, "app not downloaded"
            if devId(text='Open').exists(timeout=60.0):
                status = devId(text='Open').click()
                if not status:
                    return False, "app not opened"
            status = devId(textStartsWith='Allow').click()
            
            if not status:
                return False, "app not opened"
            status = devId(textStartsWith='Press play').click()
            
            if not status:
                return False, "app not opened"
        cmd = f"adb -s {deviceId} shell input keyevent 3"
        (output, error, status) = cf.execute_commands(cmd)
        return True, "App installed"
    except Exception as e:
        return False, f"Ui not met {e}"


def transfer_file(deviceId, dest_dev_id, bt_dest, file):
    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        devId(text="Recent files").click()
        
        devId(textStartsWith=file).click()
        devId(resourceId='com.inno.filemanager:id/shareBut').click()
        
        devId(text='Bluetooth').click()
        
        if devId(text=bt_dest).exists:
            devId(text=bt_dest).click()
        else:
            return False, "Sacnning Failed"
        status, msg = accept_pair_request(dest_dev_id)
        if not status:
            return False, "accept failed"
        status, msg = check_status_transfer(dest_dev_id)
        if not status:
            log.info("transferring failed")
            return False, "Transferring files failed"
        return True, "TransferFile successfully"
    except Exception as e:
        return False, f"Ui not met {e}"


def check_status_transfer(deviceId):
    try:

        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        status = devId.open_notification()
        
        if not status:
            log.info("failed to open notification")
            return False, "failed to open notification"
        if devId(textStartsWith='receiving').exists:
            return True, "sending files"
        elif devId(textStartsWith='File received').exists:

            return True, "sent files"
        elif devId(textStartsWith='Files received').exists:

            return True, "sent files"
        devId.press("home")
        return False, "sending file failed"
    except Exception as e:
        return False, f"Ui not met {e}"


def check_status_transfer(deviceId):
    try:

        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        status = devId.open_notification()
        
        if not status:
            log.info("failed to open notification")
            return False, "failed to open notification"
        if devId(textStartsWith='receiving').exists:
            return True, "sending files"
        elif devId(textStartsWith='File received').exists:

            return True, "sent files"
        elif devId(textStartsWith='Files received').exists:

            return True, "sent files"
        devId.press("home")
        return False, "sending file failed"
    except Exception as e:
        return False, f"Ui not met {e}"


# def transfer_file(deviceId, bt_dest, file):
#     devId = Device(deviceId)
#     devId(text="Recent files").click()
#     
#     devId(text=file).click()
#     devId(resourceId='com.inno.filemanager:id/shareBut').click()
#     
#     devId(text='Bluetooth').click()
#     
#     if devId(textStartsWith=bt_dest).exists:
#         devId(text=bt_dest).click()
#     else:
#         return False, "Sacnning Failed"

#     return True, "TransferFile successfully"


def check_pair(deviceId, bt_dest_dev_id):
    try:
        d = u2.connect(deviceId)

        if not d.info.get('screenOn'):
            d.screen_on()
        status = d(textStartsWith=bt_dest_dev_id).right(
            description="Details button").click()
        if not status:
            return False, "unable to click on details button"
        if not d(textStartsWith='UNPAIR').exists:
            return False, "device not paired"
        d(textStartsWith='UNPAIR').click()
        return True, "unpaired"
    except Exception as e:
        return False, f"Ui not met {e}"


def accept_pair_request(deviceId):
    try:
        
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        if devId(textStartsWith='OK').exists:
            status = devId(textStarsWith='OK').click()
            if not status:
                log.info("pairing failed")
                return False, "pairing failed"
        if devId(textStartsWith='ACCEPT').exists:
            status = devId(textStartsWith='ACCEPT').click()
            if not status:
                log.info("pairing failed")
                return False, "pairing failed"
        return True, "paired"
    except Exception as e:
        return False, f"Ui not met {e}"


def preload_audio(devId, audio_file_path):
    res = (audio_file_path[::-1].partition("/"))[::-1]
    file = res[2][::-1]
    path = res[0][::-1]
    log.info("Preloading Audio Files to Device")
    (output, error, status) = cf.execute_commands(
        f"adb -s {devId} push ../../../inputs/audio/{file} {path}/")
    if not status:
        return False, "Unable to preload audio files"
    return True, "Preloaded Audio Files"


def disable_data(deviceId):
    cmd = f"adb -s {deviceId} shell svc data disable"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "Not disabled"
    status = check_status_data(deviceId)
    if status < 0:
        return False, "mobile data is disabled"
    return True, "mobile data is enabled"

def play_songs(deviceId, filepath):
    log.info("Preloading audion file into DUT")
    status, msg = preload_audio(deviceId, filepath)
    if not status:
        return False, "Preloading audio failed"
    # playing songs
    log.info("playing songs")
    cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d file:///{filepath} -t audio/mp3"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "unable to play audio"
    return True, "playing audio"


def increase_volume(deviceId):
    cmd = f"adb -s {deviceId} shell input keyevent 24"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "unable to increase volume"
    return True, "increased volume"


def decrease_volume(deviceId):
    cmd = f"adb -s {deviceId} shell input keyevent 25"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "unable to decrease volume"
    return True, "decreased volume"


# def fetch_call_state(deviceId):
#     cmd = "adb -s {0} shell dumpsys telephony.registry | grep \"mCallState\|mCallIncomingNumber\" > {1}/dump.txt".format(
#         deviceId, gc.IMAGE_FOLDER)
#     (output, error, status) = cf.execute_commands(cmd)
#     if not status:
#         return status, output
#
#     data = re.compile(r'(mCallState=([0-2]))')
#     mCallState = []
#     for line in open("{0}/dump.txt".format(gc.IMAGE_FOLDER), "r"):
#         for match in re.findall(data, line):
#             callState = int(match[1])
#             mCallState.append(str(callState))
#     mCallState = [int(items) for items in mCallState]
#     return max(mCallState)

def fetch_call_state(deviceId, phoneNumber):
    """
        function name  : fetch_call_state
        description    : this function is a used to fetch the call state.
        return         : return boolean, string(mCallState)
    """
    log.debug("Checking device")
    if platform == "linux" or platform == "linux2":
        (output, error, status) = cf.execute_commands(f"adb -s {deviceId} shell dumpsys telephony.registry | grep \"mCallState\|mCallIncomingNumber\"")
    else:
        (output, error, status) = cf.execute_commands(f"adb -s {deviceId} shell dumpsys telephony.registry | grep \"mCallState\|mCallIncomingNumber\"")
    # adb command for fetching mCallState

    with open(f"{gc.IMAGE_FOLDER}/dump.txt", "w") as fd:
        fd.write(output.decode("utf-8"))
    if not status:
        return False, f"Executing the shell dumpsys telephony.registry failed, due to {error}"

    # fetching the mCallState value from dump.txt file
    status, mCallState = cf.fetch_call_state(phoneNumber)

    if not status:
        return False, f"fetching the call state of {deviceId} failed"

    log.info(f"Call state fetched successfully and call state is {mCallState}")
    return True, mCallState


def open_screen(deviceId):
    log.info("opening the screen")
    cmd = f"adb -s {deviceId} shell input keyevent 26"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "unable to open screen"
    cmd = f"adb -s {deviceId} shell input keyevent 82"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "unable to open screen"
    return True, "screen opened"


def installing_online_game(deviceId):
    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d https://play.google.com/store/apps/details?id=com.tfgco.games.sports.free.tennis.clash"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "not executed"
        
        if devId(textStartsWith='Install').exists:
            status = devId(text='Install').click()
            
            if not status:
                return False, "app not downloaded"
        return True, "game installed"
    except Exception as e:
        return False, f"Ui not met {e}"


def game_status(deviceId):
    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        if devId(textStartsWith='Connection Error').exists:
            log.info("unable to play game")
            return False, "unable to play game"
        return True, "playing game"
    except Exception as e:
        return False, f"Ui not met {e}"


def send_third_party_output(deviceId, ContactName):
    try:
        # sending third party app output
        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_on()
        cmd = f"adb -s {deviceId} shell am start -n com.google.android.apps.tachyon/com.google.android.apps.tachyon.MainActivity"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, 'Failed to open third party apk'

        name = ContactName[:3]
        status = dev(text='Search contacts or dial').click()
        if not status:
            log.info("failed to open search bar")
            return False, "failed to open search bar"
        status = dev(text='Search contacts or dial').set_text(name)
        if not status:
            log.info("failed to enter name")
            return False, "failed to enter name"
        status = dev(textStartsWith=ContactName).click()
        if not status:
            log.info("failed to select contact")
            return False, "failed to select contact"
        
        if dev(textStartsWith='send').exists:
            status = dev(text='Send').click()
            if not status:
                log.info("failed to send output")
                return False, "failed to send output"
        else:
            cmd = f"adb -s {deviceId} shell input keyevent 23"
            (output, error, status) = cf.execute_commands(cmd)
            if not status:
                return False, 'Failed to click'
            cmd = f"adb -s {deviceId} shell input keyevent 20"
            (output, error, status) = cf.execute_commands(cmd)
            if not status:
                return False, 'Failed to select output'
            cmd = f"adb -s {deviceId} shell input keyevent 66"
            (output, error, status) = cf.execute_commands(cmd)
            if not status:
                return False, 'Failed to send'
        return True, "output sent"
    except Exception as e:
        return False, f"{e}"


def run_ping(deviceId):
    """
        function name : run ping
        description running pings
        return : returns boolean and string
    """
    # running pings
    cmd = f"adb -s {deviceId} shell ping -w 5 google.com"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        log.info("unable to ping")
        return False, "unable to ping"
    return True, "pinging to google.com"


def download_file(deviceId, HTTP_DL_LINK):
    
    try:
        # start downloading the file
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        start_download_command = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d {HTTP_DL_LINK}"
        (output, error, status) = cf.execute_commands(start_download_command)
        if not status:
            return False, "downloading failed"
        if devId(textStartsWith='OK').wait(timeout=20.0):
            status = devId(text='OK').click()
            if status is not None:
                return False, "app not downloaded"
        if devId(text='Download').wait(timeout=20.0):
            status = devId(text='Download').click()
            if status is not None:
                return False, "app not downloaded"
        if devId(text='Download again').wait(timeout=20.0):
            status = devId(text='Download again').click()
            if status is not None:
                return False, "app not downloaded"
        return True, "Downloading.."
    except Exception as e:
        return False, f"Ui not met {e}"


def check_download_status(deviceId):
    # check wheter the file is downloading or not
    cmd = f"adb -s {deviceId} shell dumpsys activity services | grep download"
    (output, error, status) = cf.execute_commands(cmd)
    if output == b'':
        return False, "downloading failed"
    return True, "downloading"


def set_lock(deviceId, code):
    print(code)
    lock_cmd = f"adb -s {deviceId} shell locksettings clear --old {code}"
    (output, error, status) = cf.execute_commands(lock_cmd)
    if not status:
        return False, "Set lock Failed"

    lock_cmd = f"adb -s {deviceId} shell locksettings set-pin {code}"
    (output, error, status) = cf.execute_commands(lock_cmd)
    if not status:
        return False, "Set lock Failed"
    lock_cmd = f"adb -s {deviceId} shell input keyevent 26"
    (output, error, status) = cf.execute_commands(lock_cmd)
    if not status:
        return False, "Set lock Failed"
    return True, "Locked successfully"


def disable_lock(deviceId, code):
    devId = u2.connect(deviceId)

    if not devId.info.get('screenOn'):
        devId.screen_on()
    # lock_cmd = f"adb -s {deviceId} shell input keyevent 26"
    # (output, error, status) = cf.execute_commands(lock_cmd)
    # if not status:
    #     return False, "Set lock Failed"

    # lock_cmd = f"adb -s {deviceId} shell input touchscreen swipe 250 800 250 400 300"
    # (output, error, status) = cf.execute_commands(lock_cmd)
    # if not status:
    #     return False, "swipe Failed"
    devId.swipe_ext("up", scale=0.8)

    lock_cmd = f"adb -s {deviceId} shell input text {code}"
    (output, error, status) = cf.execute_commands(lock_cmd)
    if not status:
        return False, "Code has failed"
    # if devId(text='OK').exists:
    #     devId(text='OK').click()

    lock_cmd = f"adb -s {deviceId} shell locksettings clear --old {code}"
    (output, error, status) = cf.execute_commands(lock_cmd)
    if not status:
        return False, "disable lock failed"

    lock_cmd = f"adb -s {deviceId} shell input keyevent 26"
    (output, error, status) = cf.execute_commands(lock_cmd)
    if not status:
        return False, "Set lock Failed"

    lock_cmd = f"adb -s {deviceId} shell input keyevent 26"
    (output, error, status) = cf.execute_commands(lock_cmd)
    if not status:
        return False, "Set lock Failed"

    lock_cmd = f"adb -s {deviceId} shell input touchscreen swipe 250 800 250 400 300"
    (output, error, status) = cf.execute_commands(lock_cmd)
    if not status:
        return False, "swipe Failed"

    return True, "Disabled Lock Successfully"


def check_status_data(deviceId):
    wifi_disable(deviceId)
    #if platform == "linux" or platform == "linux2":
     #   (output, error, status) = cf.execute_commands(f'adb -s {deviceId} shell dumpsys telephony.registry | grep "mDataConnectionState "')
    #else:
    #    (output, error, status) = cf.execute_commands(f'adb -s {deviceId} shell dumpsys telephony.registry | findstr "mDataConnectionState "')
    # cmd = f"adb -s {deviceId} shell dumpsys connectivity | sed -e '/[0-9] NetworkAgentInfo.*CONNECTED/p' -e '/Tether state:/,/Hardware offload:/p' -n"
    # cmd = f'adb -s {deviceId} shell dumpsys telephony.registry | grep "mDataConnectionState "'
    # (output, error, status) = cf.execute_commands(cmd)
    output = ""
    if platform == "linux" or platform == "linux2":
        (output, error, status) = cf.execute_commands(f'adb -s {deviceId} shell svc data enable')
    #else:
    #   (output, error, status) = cf.execute_commands(f'adb -s {deviceId} shell svc data disable')
    if output == 0:
        return -1
    else:
        return 1

    '''
    value = ""
    value = output.decode("utf-8")
    if "2" not in value:
        return -1
    return 1
    '''
    # if res < 0:
    #     return False, "Mobile data is disabled"
    # return True, "Mobile data is enabled"


def record_screen(deviceId, time):
    cmd = f"adb -s {deviceId} shell screenrecord  --time-limit {time} /sdcard/yt_record.mp4"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "Data enabling failed"
    return True, "Start to recording"




def open_bt_settings(deviceId):
    if status_bt == 0:
        cmd = f"adb -s {deviceId} shell am start -a android.settings.BLUETOOTH_SETTINGS"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "opening BT setting failed"
    else:
        return True, "BT settings opened successfully"


def enable_data(deviceId):
    cmd = f"adb -s {deviceId} shell svc data enable"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "Not enabled"
    return True, "mobile data enabled"


def check_status_wifi(devId):
    cmd = f"adb -s {devId} shell settings get global wifi_on"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "failed to check wifi"
    out = int(output)
    return True, out


def plmn_search(deviceId):
    cmd = f"adb -s {deviceId} shell am start -a android.settings.NETWORK_OPERATOR_SETTINGS"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "not exected"
    
    return True, "Msg"
    devId = u2.connect(deviceId)

    if not devId.info.get('screenOn'):
        devId.screen_on()

    # Searching all available networks
    if devId(text='Advanced').exists:
        if devId(text='Automatically select network').exists:
            if devId(text='Automatically select network').click():
                devId(textContains="CellOne").exists(timeout=120.0) or devId(textContains="Vodafone IN").exists(timeout=120.0)
            else:
                return False, "not clicked on networks"
    elif devId(text='Automatically select network').exists:
        if devId(text='Automatically select network').click():
            devId(textContains="CellOne").exists(timeout=120.0) or devId(textContains="Vodafone IN").exists(
                timeout=120.0)

        else:
            return False, "not clicked on networks"
    else:
        return False, "networks not found"
    return True, "plmn search success"


# def apm_enable(deviceId):
#     cmd = f"adb -s {deviceId} shell settings put global airplane_mode_on 1"
#     (output, error, status) = cf.execute_commands(cmd)
#     if not status:
#         return False, "unable to enable Airplane mode"
#     return True, f"Enabled Airplane mode"
def changerat(devId, rat):
    return True, "Msg"


def closeMap(deviceId):
    try:
        log.info("checking maps status")
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        
        status = devId.open_notification()
        if not devId(textStartsWith="EXIT NAVIGATION").exists:
            return False, "unable to navigate"
        print("navigating")
        devId(textStartsWith="EXIT NAVIGATION").click()
        devId.press("home")
    except Exception as e:
        return False, f"Ui not met {e}"


def check_maps(deviceId, location):
    try:
        log.info("checking maps status")
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        status = devId.open_notification()
        if not status:
            log.info("failed to open notification")
            return False, "failed to open notification"
        if not devId(textStartsWith=location).wait(timeout=10.0):
            return False, "unable to navigate"
        print("navigating")
        devId(textStartsWith=location).click()
        return True, f"navigating to {location}"
    except Exception as e:
        return False, f"Ui not met {e}"


def upgrade_call(deviceId):
    """
       function name  :  upgrade_call
       description    : This function used for upgarde the volte call.
       return         : return boolean, string
    """
    # adb command for downgrade the call
    log.info("Dumping the Coordinates for Video call, Because to perform Upgard the call")

    status, coordinates = cf.xml_file_parser("Video call", deviceId)
    if not status and coordinates == []:
        return False, "Fetching the coordinates for Video call failed"

    log.info("Tapping on Video call")
    status, msg = tap_command(deviceId, coordinates[0], coordinates[1])

    if not status:
        return False, "Tapping on Video call failed"

    return True, "Call Successfully Upgraded"


# def downgrade_call(deviceId):
#     """
#        function name  :  downgrade_call
#        description    : This function used for downgarde VT call.
#        return         : return
#     """
#     # adb command for downgrade the call
#     # log.info("Dumping the Coordinates for Audio call, Because to perform downgard the call")
#
#     # status, coordinates = cf.xml_file_parser("Audio", deviceId)
#     # print(coordinates)
#
#     # if not status and coordinates == []:
#     #     return False, "Fetching the coordinates for Audio call failed"
#
#     # return True, coordinates
#     # log.info("Tapping on Audio call")
#     # status, msg = tap_command(deviceId, coordinates[0], coordinates[1])
#
#     # if not status:
#     #     return False, "Tapping on Audio call failed"
#
#     devId = u2.connect(deviceId)
#
#     if not devId.info.get('screenOn'):
#         devId.screen_on()
#     d(resourceId="com.google.android.dialer:id/videocall_downgrade_call_button").click()
#
#     return True, "Call Successfully Downgraded"


def change_wifi_connection(deviceId, ssid, password):
    wifi_disable(deviceId)
    if password is None:
        cmd = f'adb -s {deviceId} shell am start -n com.steinwurf.adbjoinwifi/.MainActivity 'f'-e ssid {ssid}'
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "Not enabled"
        else:
            return True, "Enabled successfully"
    else:
        cmd = f'adb -s {deviceId} shell am start -n com.steinwurf.adbjoinwifi/.MainActivity -e ssid {ssid} -e password_type WPA -e password {password}'
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "Not enabled"
        else:
            return True, "Enabled successfully"


def check_status_download(deviceId):
    # # check wheter the file is downloading or not
    # cmd = f"adb -s {deviceId} shell dumpsys activity services | grep download"
    # (output, error, status) = cf.execute_commands(cmd)
    # if output == b'':
    #     return False, "downloading failed"
    return True, "downloading"


def maps_navigate(deviceId, location):
    try:
        cmd = f'adb -s {deviceId} shell am start -a android.intent.action.VIEW -d "https://www.google.com/maps/"'
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("uunable to open maps")
            return False, "unable to open maps"
        
        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_on()
        if not dev(textStartsWith="Search").exists:
            log.info("unable to click on search")
            return False, "unable to click on search"
        status = dev(textStartsWith="Search").click()
        if not status:
            log.info("unable to click on search")
            return False, "unable to click on search"
        
        status = dev(textStartsWith='Search').set_text(location[:-1])
        if not status:
            log.info("failed to enter name")
            return False, "failed to enter name"
        status = dev(text=location).click()
        if not status:
            log.info("unable to click on location")
            return False, "unable to click on location"
        if not dev(textStartsWith='Directions').exists:
            log.info("unable to click on direction")
            return False, "unable to click on directions"
        status = dev(textStartsWith='Directions').click()
        if not status:
            log.info("unable to click on direction")
            return False, "unable to click on Directions"
        status = dev(text='Start').click()
        if not status:
            log.info("unable to click on start")
            return False, "unable to click on start"
        log.info("checking maps status")
        status, output = check_maps(deviceId, location)
        if not status:
            log.info("unable to navigate in maps")
            return False, "unable to navigate in maps"

        return True, f"navigating to {location}"
    except Exception as e:
        return False, f"Ui not met {e}"


def wifi_enable(deviceId, ssid, password):
    devId = u2.connect(deviceId)
    if not check_app_status(deviceId, "com.steinwurf.adbjoinwifi"):
        status, msg = installing_wifi_apk(deviceId)
        if not status:
            return False, msg

    # Checking the wifi status and enabling
    (output, error, status) = cf.execute_commands(
        f'adb -s {deviceId} shell dumpsys wifi')
    if not status:
        return False, f"Checking the Wifi state failed due to {str(error)}"
    wifi_status = output.decode("utf-8")
    if wifi_status != "Wi-Fi is enabled":
        cf.execute_commands(f'adb -s {deviceId} shell svc wifi enable')
    if password is None:
        cf.execute_commands(
            f'adb -s {deviceId} shell am start -n com.steinwurf.adbjoinwifi/.MainActivity 'f'-e ssid {ssid}')

    else:
        # execute_commands(f'adb -s {deviceId} shell am start -n com.steinwurf.adbjoinwifi/.MainActivity 'f'-e
        # ssid {ssid}')
        cmd = f"adb -s {deviceId} shell am start -n com.steinwurf.adbjoinwifi/.MainActivity -e ssid {ssid} -e password_type WPA -e password {password}"
        cf.execute_commands(cmd)
        # execute_commands(f'adb -s {deviceId} shell am start -n com.steinwurf.adbjoinwifi/.MainActivity \-e ssid {ssid} -e password_type WEP|WPA -e 'f'password {password}')
    if devId(textContains="ALLOW").exists:
        devId(textContains="ALLOW").click()
    return True, 'wifi is enabled successfully'


def upload_file(deviceId, filename):
    devId = u2.connect(deviceId)

    if not devId.info.get('screenOn'):
        devId.screen_on()
    cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW https://play.google.com/store/apps/details?id=com.google.android.apps.docs"
    (output, status, error) = cf.execute_commands(cmd)
    if not status:
        return False, "Not clicked on above link"
    

    if devId(text='Update').exists:
        status = devId(text='update').click()
        # if not status:
        #     return False, "not clicked on update"
    

    if devId(text='Open').exists:
        status = devId(text='Open').click()
        # if not status:
        #     return False, "drive not opened"
    

    status = devId(className="android.widget.ImageButton",
                   resourceId="com.google.android.apps.docs:id/branded_fab").click()
    
    # if not status:
    #     return False, "command not executed"

    status = devId(textStartsWith='Upload').click()
    # if not status:
    #     return False, "Opening upload failed"
    

    if devId(text=filename).exists:
        status = devId(textStartsWith=filename).click()
        # if not status:
        #     log.info("Not uploaded")
        #     return False, "Not executed"
    

    log.info("Uploading started..")
    return True, "Uploading started"


def check_upload_status(deviceId):
    devId = u2.connect(deviceId)

    if not devId.info.get('screenOn'):
        devId.screen_on()
    
    status = devId.open_notification()
    if not status:
        log.info("failed to open notification")
        return False, "failed to open notification"
    
    if devId(text='1 file uploaded').exists:
        status = devId(text='1 file uploaded').click()
        # if not status:
        #     log.info("file not uploaded")
        #     return False, "file not uploaded"
    elif devId(text='1 upload paused').exists:
        status = devId(text='1 upload paused').click()
        # if not status:
        #     log.info("file not paused")
        #     return False, "file not paused"
        log.info("Uploading of file paused")
    else:
        log.info("file not uploaded")
        return False, "File not uploaded"
    return True, "file uploaded successfully"


def installing_wifi_apk(deviceId):
    cmd = cf.execute_commands(f'adb -s {deviceId} install ./inputs/others/wifi.apk')
    if not cmd:
        return False, "Installing the Apk failed"
    return True, "Apk installed Successfully"


# def installing_apk(deviceId):
#     # Installing wifi related apk
#
#     status, msg = download_file(deviceId)
#     return True, msg


def rebootDevice(deviceId):
    """
        function name  : putCallOnHold
        description    : this function is a used to fetch the call state.
        return         : return boolean, string(mCallState)
    """
    (output, error, status) = cf.execute_commands(f"adb -s {deviceId} reboot")
    

    if not status:
        return False, f"Rebooting the devices failed due to {error}"

    log.info("Devices Reboot started successfully")
    return True, "Devices Reboot started successfully"


def putCallOnHold(deviceId):
    """
        function name  : putCallOnHold
        description    : this function is a used to fetch the call state.
        return         : return boolean, string(mCallState)
    """

    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        status = devId(text="Hold").click()

    except Exception as e:
        return False, f"Execption occured {str(e)}"
    if not status:
        return False, "Tapping on Hold failed"

    return True, "Hold performed successful"


# def swap_call(deviceId):
#     """
#         function name  : putCallOnHold
#         description    : this function is a used to fetch the call state.
#         return         : return boolean, string(mCallState)
#     """
#     d = Device(deviceId)
#     status = d(text="Swap").click()
#     if not status:
#         return False, "Tapping on Hold failed"
#
#     return True, "Hold performed successful"


def launchApplication(deviceId, packageName, activityName):
    """
        function name  : putCallOnHold
        description    : this function is a used to fetch the call state.
        return         : return boolean, string(mCallState)
    """
    cmd = f'adb -s {deviceId} shell am start -n {packageName}/{activityName}'
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, "launching application"
    return True, "Game Launched"


def check_battery_level(deviceId):
    cmd = f'adb -s {deviceId} shell dumpsys battery | grep level'
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, f"Checking BATTERY level failed due to {error}"

    return True, f'Battery level is {output.decode("utf-8")}'


def memory_utiliztion(deviceId):
    cmd = f'adb -s {deviceId} shell vmstat'
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, f"Checking MEMORY utilization failed failed due to {error}"

    return True, f'Memory Utilization {output.decode("utf-8")}'


def cpu_usage(deviceId):
    cmd = f'adb -s {deviceId} shell top -m 10'
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, f"Checking CPU usage failed failed due to {error}"

    return True, f'CPU usage {output.decode("utf-8")}'


def wifi_disable(deviceId):
    # disabling wifi
    cmd = f"adb -s {deviceId} shell svc wifi disable"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, error
    return True, "Wifi Turn Off"
    # # fetching state of wifi connection
    # cmd = f"adb -s {deviceId} shell dumpsys wifi | grep 'Wi-Fi is'"
    # (output, error, status) = cf.execute_commands(cmd)
    # if not status:
    #     return False, error
    # res = output.decode("utf-8")
    # return True, res


def usb_tethering_on(deviceId):
    cmd = "adb -s {0} shell service call connectivity 34 i32 1 s16 text".format(deviceId)
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "usb tethering was not on"
    return True, "usb tethering was on"


def check_music_status(deviceId):
    # checking fm
    devId = u2.connect(deviceId)

    if not devId.info.get('screenOn'):
        devId.screen_on()
    
    status = devId.open_notification()
    if not status:
        log.info("failed to open notification")
        return False, "failed to open notification"
    
    if not devId(textStartsWith='Music ').exists:
        print("not found")
        return False, "Music is not playing"
    devId.press("home")
    return True, "Music is playing"


def exit_fm(deviceId):
    cmd = f'adb -s {deviceId} shell am force-stop "com.jonathanpuckey.radiogarden"'
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "unable to quit fm"
    return True, "fm closed"


'''def check_youtube_status(deviceId):
    cmd = f"adb -s {deviceId} shell pidof -s com.google.android.youtube"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "youtube is not running..."
    output = output.decode("utf-8")
    cmd = f"adb -s {deviceId} shell dumpsys audio | grep {output}"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "youtube is not running"
    value = ""
    value += output.decode("utf-8")
    res = value.find("started")
    if res < 0:
        return False, "video is not playing .."
    return True, "video is playing..."
'''

def start_youtube(deviceId, link):
    cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d {link} "
    # log.debug("Opening youtube and playing video ===> {0}".format(start_video_command))
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "opening youtube failed"
    # status, output = check_youtube_status(deviceId)
    # print("GC", output)
    # print("status", status)
    # if not status:
    #     log.info("unable to play video")
    #     return False, "unable to play  video"
    return True, "youtube opened"


def stream_video(deviceId, exec_status, http_link):
    """
        function name  : Streaming Video, stream youtube video.
        return         : return boolean, status message
    """

    if exec_status == "START":
        start_video_command = str(
            "adb -s {0} shell am start -a android.intent.action.VIEW -d {1} ".format(deviceId, http_link))
        (output, error, status) = cf.execute_commands(start_video_command)
        if not status:
            return False, "Error while opening Youtube"
        return True, "Youtube video is streaming"

    elif exec_status == "STOP":
        stop_video_command = str(
            "adb -s {0} shell am force-stop com.google.android.youtube".format(deviceId))
        (output, error, status) = cf.execute_commands(stop_video_command)
        if not status:
            return False, "Error while closing Youtube"
        return True, "Youtube video is closed"

    return True, ""


def imsRegistrationValidator(deviceId):
    """
        function name  : imsRegistrationValidator
        description    : this function is a used to fetch the ims state.
        return         : return boolean, string(mCallState)
    """
    log.info("Checking the ims registration")
    (output, error, status) = cf.execute_commands(
        f"adb -s {deviceId} logcat -d | grep  'RcsEngine.updateRcsImsState:' >> {gc.IMAGE_FOLDER}/ims.txt")

    if not status:
        return False, str(error)

    # ims status in last line so fetching the info
    with open(f"{gc.IMAGE_FOLDER}/ims.txt", 'r') as fd:
        data = fd.readlines()
        for lastline in data:
            pass
    print(lastline)
    if 'REGISTRATION_SUCCESSFUL' not in lastline:
        os.remove(f"{gc.IMAGE_FOLDER}/ims.txt")

        return False, "Ims registration failed"

    os.remove(f"{gc.IMAGE_FOLDER}/ims.txt")

    return True, "Ims registration Done"


def capture_front_cam(deviceId):
    cmd = f"adb -s {deviceId} shell am start -a android.media.action.STILL_IMAGE_CAMERA --ez android.intent.extra.USE_FRONT_CAMERA true"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "opening cam failed"
    time.sleep(5)

    cmd = f'adb -s {deviceId} shell input tap 542 1795'
    (output, error, status) = cf.execute_commands(cmd)
    print(status)
    if not status:
        return False, "capturing from cam failed"
    
    return True, "captured using front camera"


def capture_back_cam(deviceId):
    cmd = f"adb -s {deviceId} shell am start -a android.media.action.STILL_IMAGE_CAMERA --ez android.intent.extra.USE_BACK_CAMERA true"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "opening cam failed"
    time.sleep(5)
    cmd = f'adb -s {deviceId} shell input keyevent 27'
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "capturing from cam failed"
    
    return True, "captured using BACK camera"


# def fetch_call_state(deviceId, phoneNumber):
#     """
#         function name  : fetch_call_state
#         description    : this function is a used to fetch the call state.
#         return         : return boolean, string(mCallState)
#     """
#     # adb command for fetching mCallState
#     cmd = f"adb -s {deviceId} shell dumpsys telephony.registry | grep \"mCallState\|mCallIncomingNumber\""
#
#     with open()
#     log.debug("Checking device {1} ===> {0}".format(cmd, deviceId))
#     (output, error, status) = cf.execute_commands(cmd)
#
#     if not status:
#         return False, f"Executing the {cmd} failed, due to {error}"
#
#     # fetching the mCallState value from dump.txt file
#     status, mCallState = cf.fetch_call_state(phoneNumber)
#
#     if not status:
#         return False, f"fetching the call state of {deviceId} failed"
#
#     return True, mCallState


def lock_screen(deviceId):
    """
           function name  :  lock_screen.
           description    : This function used for lock the screen.
           return         : return
    """
    print("locking screen")
    # Locking the phone
    (output, error, status) = cf.execute_commands(
        f"adb -s {deviceId} shell input keyevent 26")
    log.debug("Locked the Screen")
    if not status:
        return False, "Locking Screen failed MO side"

    return True, "Successfully locked the screenshot."


def tap_command(deviceId, x, y):
    """
           function name  :  graceful_disconnection used for hard disconnect call.
           description    : This function used for hard disconnect call whenever failure occurs.
           return         : return
    """
    # adb command for Tap
    (output, error, status) = cf.execute_commands(
        f"adb -s {deviceId} shell input tap {x} {y}")

    

    if not status:
        return False, f"Tapping on {x}, {y} failed due to {error} in device {deviceId}"

    return True, "Tapped Successful"


# def graceful_disconnection(deviceId):
#     """
#        function name  :  graceful_disconnection used for hard disconnect call.
#        description    : This function used for hard disconnect call whenever failure occurs.
#        return         : return
#     """
#     call.


# def toggle_hotspot(deviceId, username):
#     dev = Device(deviceId)
#     cmd = f"adb -s {deviceId} shell am start -n com.android.settings/.TetherSettings"
#     (output, error, status) = cf.execute_commands(cmd)
#     if not status:
#         return False, 'Failed to open settings'
#     
#     if not dev(textStartsWith='Portable').exists:
#         return False, "portable  hotspot not exists"
#     status = dev(textStartsWith="Portable").click()
#     
#     if not status:
#         log.info("failed to open tethering")
#         return False, "failed to open tethering"
#     print(username)
#     if not dev(textStartsWith=username).exists:
#         return False, "username not exists"
#     status = dev(textStartsWith=username).right(
#         className="android.widget.Switch").click()
#     if not status:
#         log.info("failed to open tethering")
#         return False, "failed to open tethering"
#     
#     dev.press("back")
#     dev.press("home")
#     return True, "hotspot active"
#
#
# def turnon_hotsopt(devId):
#    return True, "msg"

def perform_a2b_call(deviceId1, deviceId2, callA, callB):
    """
       function name  :  perform_a2b_call
       description    : This function perform call from devices A to B , B Accept the call.
       return         : return
    """
 # Triggering the Call from Device A
    status, msg = trigger_volte_call(
        deviceId=deviceId1,
        phoneNumber=callB)

    if not status:
        return False, msg

    # Receiving the Call in Devices B
    log.info("Receiving call in device B")
    status, msg = accept_call(deviceId=deviceId2)
    if not status:
        return False, msg

    # status, msg = cf.concurrency_call(8, deviceId1, callB)
    # if not status:
    #     return False, "Concurrency of Call got disconnected!!"

    return True, msg


def perform_a2b_vt_call(deviceId1, deviceId2, callA, callB, duration=None):
    """
       function name  :  perform_a2b_vt_call
       description    : This function perform VT call from devices A to B , B Accept the VTcall.
       return         : return boolean, string
    """
    # Triggering the Call from Device A
    status, msg = trigger_vt_call(
        deviceId=deviceId1,
        phoneNumber=callB)

    if not status:
        return False, msg
    time.sleep(10)

    # fetching the call state of Devices B
    status, mCallState = check_call_state(
        deviceId=deviceId2,
        phoneNumber=callA
    )

    if not status:
        return False, mCallState

    # Receiving the Call in Devices B
    if mCallState != CallStates.INCOMING_CALL.value:
        return False, "Call not received in devices B"

    log.info("Receiving call in device B")
    status, msg = accept_call(deviceId=deviceId2)

    if not status:
        return False, msg

    return True, msg


def start_video_capture(deviceId):
    # video recording
    log.info("recording video")
    cmd = f"adb -s {deviceId} shell am start -a android.media.action.VIDEO_CAPTURE"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "unable to open camera"
    cmd = f"adb -s {deviceId} shell input keyevent 27"
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "unable to click on capture"
    return True, "playing audio"


def stop_video_capture(deviceId):
    cmd = f"adb -s {deviceId} shell input keyevent 27"
    (output, error, status) = cf.execute_commands(cmd)
    print(status)
    if not status:
        return False, "unable to stop capture"
    return True, "stopped video recording"


def play_audio(deviceId, audio_file_path, fileFormate):
    """
       function name  :  play_audio
       description    : This function used to play audio file
       return         : return
    """
    status, msg = play_songs(deviceId, audio_file_path)
    if not status:
        return False, "Playing Audio Failed"
    return True, f"This {audio_file_path} audio file played successfully"


def play_video(deviceId, video_file_path, fileFormate):
    """
       function name  :  play_video
       description    : This function perform VT call from devices A to B , B Accept the VTcall.
       return         : return boolean, string
    """
    cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d {video_file_path} -t {fileFormate}"
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, f"playing audio command failed due to {error}"
    

    return True, f"This {video_file_path} audio file played successfully"


def stop_media(deviceId):
    """
       function name  :  stop_media
       description    : This function used to stop the media file playing
       return         : return boolean, string
    """
    log.info("Stopping Media File")
    cmd = f"adb -s {deviceId} shell input keyevent 3"
    (output, error, status) = cf.execute_commands(cmd)

    if not status:
        return False, f"Stopping media command failed due to {error}"

    
    return True, "Media Stopped Successfully"


def open_camera(deviceId):
    cam_cmd = f"adb -s {deviceId} shell am start -a android.media.action.IMAGE_CAPTURE"
    (output, error, status) = cf.execute_commands(cam_cmd)
    if not status:
        return False, "Camera Failed"
    return True, "Camera Opened"


def change_mode(deviceId, ssid, password):
    # changing mode
    status, msg = check_status_data(deviceId)
    if not status:
        status = enable_data(deviceId)
        if not status:
            log.info("data is disabled")
            return False, "data is disabled"
        status = wifi_disable(deviceId)
        if not status:
            log.info("unable to disable wifi")
            return False, "unable to disable wifi"
    else:
        status = wifi_enable(deviceId, ssid, password)
        if not status:
            log.info("unable enable wifi")
            return False, "unable to enable wifi"
        status = disable_data(deviceId)
        if not status:
            log.info("unable to data is disabled")
            return False, "unable to data is disabled"

    if not status:
        log.info("unable change mode")
        return False, "unable to change mode"
    return True, "changed mode"


def open_camera_capture_image(deviceId):
    cam_cmd = f"adb -s {deviceId} shell am start -a android.media.action.IMAGE_CAPTURE"
    (output, error, status) = cf.execute_commands(cam_cmd)
    if not status:
        return False, "Opening camera failed"

    log.debug("Opening Camera ==> {0}".format(cam_cmd))
    

    log.info("Captured picture")
    img_cmd = f"adb -s {deviceId} shell input keyevent 25"
    (output, error, status) = cf.execute_commands(img_cmd)

    if not status:
        return False, "Capturing command failed"

    log.debug("Captured picture ==> {0}".format(img_cmd))
    return True, "Picture Captured Successfully"


def check_device_heat(deviceId):
    (output, error, status) = cf.execute_commands(
        f'adb -s {deviceId} shell dumpsys battery | '
        f'grep "temperature:" >> {gc.IMAGE_FOLDER}/temp.txt')

    if not status:
        return False, "temperature measuring command Failed in A side"

    temp1 = cf.getDeviceTemprature()

    return True, temp1


def send_sms(deviceId, phoneNumber):
    devId = u2.connect(deviceId)
    (output, error, status) = cf.execute_commands(
        f'adb -s {deviceId} shell am start -a android.intent.action.SENDTO -d sms:"{phoneNumber}" --es sms_body HELLO --ez exit_on_sent true')

    if not status:
        return False, "Opening SMS App failed"
    if devId(text='SMS').wait(timeout=5.0):
        devId(text='SMS').click()
        return True, "SMS is sending.."
    (output, error, status) = cf.execute_commands(
        f"adb -s {deviceId} shell input keyevent 22")

    if not status:
        return False, "Clicking on Next 1 failed"

    (output, error, status) = cf.execute_commands(
        f"adb -s {deviceId} shell input keyevent 22")

    if not status:
        return False, "Clicking on Next 2 failed"
    (output, error, status) = cf.execute_commands(
        f"adb -s {deviceId} shell input keyevent 66")

    if not status:
        return False, "Clicking on Send failed"
    return True, "Success"


def check_app_status(deviceId, pkg_name):
    if platform == "linux" or platform == "linux2":
        (output, error, status) = cf.execute_commands(f"adb -s {deviceId} shell pm list packages | grep {pkg_name}")
    else:
        (output, error, status) = cf.execute_commands(f"adb -s {deviceId} shell pm list packages | findstr {pkg_name}")
    if not status:
        return False
    if pkg_name == output.decode('utf-8').partition(":")[2].strip():
        return True
    return False


def discover_bt(deviceId):
    devId = u2.connect(deviceId)
    cmd = f'adb -s {deviceId} shell am start -a android.bluetooth.adapter.action.REQUEST_DISCOVERABLE'
    (output, error, status) = cf.execute_commands(cmd)
    
    if devId(textStartsWith='Allow').wait(timeout=5.0):
        devId(textStartsWith='Allow').click()
    elif devId(textStartsWith='ALL').exists:
        devId(textStartsWith='ALL').click()
    if not status:
        return False, "Discover BT Failed"
    return True, "Discover BT Enable"


def enable_vowifi(deviceId):
    try:
        cmd = f"adb -s {deviceId} shell am start -a android.settings.NETWORK_OPERATOR_SETTINGS"
        (output, error, status) = cf.execute_commands(cmd)
        # dev = u2.connect(deviceId)
        devId = u2.connect(deviceId)
        devId.swipe_ext("up")
        if devId(text = "Advanced").exists():
            devId(text = "Advanced").click()
        devId.swipe_ext("up")

        devId(text = "Wi-Fi calling").click()
        time.sleep(1.0)
        if devId(textStartsWith = "Off").exists():
            devId(textStartsWith = "Off").click()
        time.sleep(3.0)


        # closeApps(deviceId)
        return True, "toggled Radio (sim card) successfully"
    except Exception as e:
        # closeApps(deviceId)
        return False, f"Ui not Met due to {e}"

def bt_car():
    return None, "Bt car needed"


def bt_headset(deviceId):
    return None, "Bt car needed"


def validating_no_sims(deviceId, sim_no):
    out, err, stat = cf.execute_commands(f"adb -s {deviceId} shell getprop gsm.sim.operator.alpha")
    if not stat:
        # log.info("sim cmd not executed")
        return False, "sim cmd not executed"
    out1 = str(out)
    out2 = out1.strip("'b\\n")
    #out2 = out1.strip("\\n'b")
    sim = out2.split(",")
    
    if "" in sim:
        if len(sim) == sim_no:
            return True, f"{len(sim)} sim's inserted"
        else:
            return None, f"Required {sim_no} sim but {len(sim)} sim is inserted"
    else:
        return True, f"Sim 1 is inserted"
    '''
    if len(sim) >= sim_no:
        return True, f"{len(sim)} sim's inserted"
    else:
        return None, f"Required {sim_no} sim but {len(sim)} sim is inserted"
    '''


import json
import cellular_automation_helpers.common_helper_functions.variables as variables
import inspect
from datetime import datetime
import subprocess
from multiprocessing import Process
import cellular_automation_helpers.common_helper_functions.graph_plot_script as graph_plot_script


# def start_pixel_logger():
#     log.info(
#         "====>Start pixel logger : \" adb shell am start -n com.android.pixellogger/com.android.pixellogger.ui.main.MainActivity\"<====")
#     print("starting pixel logger...")
#     os.system("adb shell am start -n com.android.pixellogger/com.android.pixellogger.ui.main.MainActivity > logger.txt")
#
#     f = open("logger.txt", 'r')
#     for l in f.readlines():
#         if "Error:" in l:
#             print("error while running the pixel logger!!!")
#             cmd = l
#             f.close()
#             os.system("rm logger.txt")
#             error_json("errorCode_52", cmd, lineno(9))
#     else:
#         f.close()
#         os.system("rm logger.txt")
#     variables.t1 = datetime.now().strftime("%H-%M-%S-%f")
#     log.info("t1 = {}".format(variables.t1))
#     os.system("adb shell input tap 960 1676")
#     time.sleep(10)
#     return True, "Pixel logger as be started"


# Stopping the Server if any is the running, with there process id
def stop_server():
    # print("killing iperf server if any...")
    os.system('ps -ef | grep \"iperf3 -s -p 8080\" > iperf.txt')
    res = open('iperf.txt', 'r').readline().split()[1]
    str1 = "pkill -9 iperf3"
    if res:
        os.system(str1)
    # print("killed procces id", res)
    return True, "Stopped Server"


def error_json(errorCode, cmd=None, err=None, errorpath=None):
    jsonFile = open("./bin/libraries/cellular_automation_helpers/common_helper_functions/errorsJson.json", "r")
    errors = json.load(jsonFile)
    for jsonKeys in errors.keys():
        if errorCode == jsonKeys:
            if (cmd != None) or (err != None):
                print("rising exception")
                err = errors[jsonKeys].format(fcmd=cmd, ferr=err)

            else:
                print("raising expection in else")
                err = errors[jsonKeys]

            if errorpath != None:
                errorReason = errorpath + "\n" + err
            else:
                errorReason = err
            log.error(errorReason)
            raise Exception(errorReason)


def lineno(sub_line):
    path = os.getcwd() + "/" + os.path.basename(__file__) + ": line no: " + str(
        inspect.currentframe().f_back.f_lineno - sub_line)
    return path


def airplanemode_onoff():
    # Calling the check_airplane_mode function, if return 'ON' or 'OFF' which we are storing in the Status.
    status = check_airplanemode()
    print("Airplane mode =", status)

    if status == 'OFF':
        # If Airplane mode 'OFF' we are turning airplane mode 'ON' while Calling the function Airplanemode()
        airplane_mode('ON')

    # start_pixel_logger function start the pixel logger aplication in the
    # start_pixel_logger()

    # Turning Airplane Mode Off
    airplane_mode("OFF")
    time.sleep(10)
    return True, "Turned ON and OFF airplane_mode"


def check_airplanemode():
    log.info("====> Checking Airplane mode : \"adb shell settings get global airplane_mode_on\" <====")
    os.system("adb shell settings get global airplane_mode_on > check.txt")
    # subprocess.Popen("adb shell settings get global airplane_mode_on > check.txt",stdout=subprocess.PIPE)
    res = open("check.txt", "r")
    result = int(res.readline())
    res.close()
    if result == 1:
        return 'ON'
    else:
        return 'OFF'


def airplane_mode(status):
    # To Turn ON Airplane Mode using adb
    print("Turning Airplane mode", status)
    log.info("====> Turning Airplane Mode {} : \"settings put global airplane_mode_on 0\" <====".format(status))
    # To Turn ON Airplane Mode using adb
    airplane_on = "settings put global airplane_mode_on 1\n"
    airplane_off = "settings put global airplane_mode_on 0\n"
    am_command = "am broadcast -a android.intent.action.AIRPLANE_MODE\n"
    process = subprocess.Popen("adb shell su", shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
    if status == 'ON':
        process.stdin.write(airplane_on.encode('utf-8'))
    else:
        process.stdin.write(airplane_off.encode('utf-8'))
    process.stdin.write(am_command.encode('utf-8'))
    process.communicate()


def server():
    print("starting iperf server for {0} as {1}...".format(gc.TCP_UDP, gc.IPERF_TYPE))
    print(gc.TCP_UDP, gc.IPERF_TYPE)
    cmd = "iperf3 -s -p 9900 -1 >> {0}/server_{1}_{2}.txt".format(gc.IMAGE_FOLDER, gc.TCP_UDP, gc.IPERF_TYPE)
    log.info(f'====>  Iperf Server started: {cmd} <====')
    print(cmd)
    variables.t2 = datetime.now().strftime("%H-%M-%S-%f")
    log.info("t2 = {}".format(variables.t2))

    # (output, error, status) = cf.execute_commands(cmd)
    os.system(cmd)
    time.sleep(10)


def client(devId):
    log.info("====> Iperf client Started : \"iperf3 -c 172.16.30.60 -t 30 -p 9900 -b 10M\"<====")
    print("Starting client iperf for {} as {} at {}M Bandwidth...".format(gc.TCP_UDP, gc.IPERF_TYPE,
                                                                  gc.BANDWIDTH))
    cmd = ""
    if gc.TCP_UDP == "TCP":
        if gc.IPERF_TYPE == "UL":
            cmd = f"adb -s {devId} shell iperf3 -c {gc.IP_ADDR} -t 30 -p 9900 -b {gc.BANDWIDTH}M > {gc.IMAGE_FOLDER}/client_TCP_UL.txt"
            print(cmd)
        elif gc.IPERF_TYPE == "DL":
            cmd = f"adb -s {devId} shell iperf3 -c {gc.IP_ADDR} -w 1M -t 30 -R -p 9900 -b {gc.BANDWIDTH}M  > {gc.IMAGE_FOLDER}/client_TCP_DL.txt"
            print(cmd)

    elif gc.TCP_UDP == "UDP":
        if gc.IPERF_TYPE == "UL":
            cmd = f"adb -s {devId} shell iperf3 -c {gc.IP_ADDR} -t 30 -p 9900 -u -b {gc.BANDWIDTH}M  >  " \
                  f"{gc.IMAGE_FOLDER}/client_UDP_UL.txt"
            # print(cmd)

        elif gc.IPERF_TYPE == "DL":
            cmd = f"adb -s {devId} shell iperf3 -c {gc.IP_ADDR} -t 30 -R -p 9900 -u -b {gc.BANDWIDTH}M  " \
                  f"> {gc.IMAGE_FOLDER}/client_UDP_DL.txt"
            # print(cmd)

    log.info(cmd)
    time.sleep(10)
    os.system(cmd)
    log.info("exiting client iperf...")
    print("Exiting iperf client...")


def perform_throughput(devID, ip_addr, protocolType, iperfType, bandwidth):
    
    # assigne Values
    gc.TCP_UDP = protocolType
    gc.IPERF_TYPE = iperfType
    gc.BANDWIDTH = bandwidth
    gc.IP_ADDR = ip_addr

    # Creating Process
    p1 = Thread(target=server)
    p2 = Thread(target=client, args=(devID,))
    if check_attach(devID):
        # stop_server()
        p1.start()
        p2.start()
        p1.join()
        p2.join()
        variables.t3 = datetime.now().strftime("%H-%M-%S-%f")
        log.info("t3 = {}".format(variables.t3))

    else:
        log.info("====> DUT is not attached <====")
        print("DUT not Attached to network")
        error_json("errorCode_54")

    f = ""
    # Opening the the File if iperf3 is not running correctly.

    try:
        f = open("{2}/client_{0}_{1}.txt".format(gc.TCP_UDP, gc.IPERF_TYPE, gc.IMAGE_FOLDER), "r")
    except FileNotFoundError:
        log.info(" ====> File Not Found Error <====")
        print("File Not Found ")
        cmd = "{2}/client_{0}_{1}.txt".format(gc.TCP_UDP, gc.IPERF_TYPE, gc.IMAGE_FOLDER)
        error_json("errorCode_53", cmd, lineno(6))

    for l in f.readlines():
        if "iperf3: error" in l:
            cmd = l
            # stop_pixel_logger()
            error_json("errorCode_52", cmd)
    f.close()
    return True, "Calculated the Throughput"


def check_attach(devId):
    log.info(" ====> Checking Wether DUT Attach to the Network or Not : \" adb shell ifconfig \"<====")
    print("Checking client IP address...")
    os.system(f"adb -s {devId} root")
    time.sleep(10)
    os.system(f"adb -s {devId} shell ifconfig > check.txt")
    f = open("check.txt", "r")
    for l in f:
        if "255.255.255" in l:
            res = re.findall(r"\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}", l)
            print("DUT is attachetd to the ip :", res[0])
            if res[0]:
                log.info("=====> UE Attached <==== ")
                log.info("====> IP Address : {} <==== ".format(res[0]))
            return True
    else:
        f.close()
        return False


# def stop_pixel_logger():
#     log.info(" ====> Stop pixel logger : \" adb shell am force-stop com.android.pixellogger \" <==== ")
#
#     print("stopping pixel logger...")
#     os.system("adb shell input tap 960 1676")
#     time.sleep(15)
#     variables.t4 = datetime.now().strftime("%H-%M-%S-%f")
#     log.info("t4 = {}".format(variables.t4))
#     os.system("adb shell am force-stop com.android.pixellogger > logger.txt")
#     f = open("logger.txt", 'r')
#     for l in f.readlines():
#         if "Error:" in l:
#             print("error while stopping the pixel logger!!!")
#             cmd = l
#             f.close()
#             os.system("rm logger.txt")
#             error_json("errorCode_52", cmd, lineno(8))
#     else:
#         f.close()
#         os.system("rm logger.txt")
#     print("Pixel logger as be stopped")
#     return True, "Pixel logger as be stopped"

def plot_graph():
    # Creating excel workbook
    workbook = graph_plot_script.workbook_creation()

    # Updating the Sheet
    graph_plot_script.sheet_update(workbook, "Interval", "Transfer", "throughput")

    # Closing the excel workbook
    workbook.close()

    # Plotting the graph
    try:
        test_df = pd.read_excel("{2}/throughput_{0}_{1}.xlsx".format(gc.TCP_UDP, gc.IPERF_TYPE, gc.IMAGE_FOLDER))
    except FileNotFoundError:
        log.error(" ====> ecxel file not created <====")
        print("excel file not created")
        cmd = "{2}/throughput_{0}_{1}.xlsx".format(gc.TCP_UDP, gc.IPERF_TYPE, gc.IMAGE_FOLDER)
        error_json("errorCode_53", cmd, lineno(5))

    plt.title("{1} Throughput {0}(Mbps)".format(gc.TCP_UDP, gc.IPERF_TYPE))
    plt.xlabel('Time(seconds)')
    plt.ylabel('Mbps')
    plt.plot(test_df.Iteration, test_df.Transfer_in_MBites, marker='o')
    plt.savefig("{2}/throughput_{0}_{1}.png".format(gc.TCP_UDP, gc.IPERF_TYPE, gc.IMAGE_FOLDER))
    plt.close()
    return True, "Plotted throughput"



import matplotlib.pyplot as plt
import pandas as pd


def workbook_mcs_cqi():
    # Creating excel Workbook
    print(" =====>  MCS_CQI Excel Workbook created Successfully !!!!<=====")
    workbook = tm.workbook_creation("MCS_CQI")

    # Updating excel Workbook
    # time_rsrp_rsrq_snr.sheet_update(workbook,"KPI_parameters" ,"Filtered RSRP", "Filtered RSRQ", "FTL SNR Rx[0]")
    tm.sheet_update_mcs_cqi(workbook, "MCS_CQI", "CQI CW0", "CQI CW1")

    # Closing excel Workbook
    print(" =====>  MCS_CQI Excel Workbook closed Successfully !!!!<=====")
    workbook.close()

    test_df = pd.read_excel(f"{gc.IMAGE_FOLDER}/MCS_CQI.xlsx")

    # print(test_df,type(test_df),test_df.CQI_CW0)
    plt.title("CQI Vs MCS")
    plt.ylabel("CQI")
    plt.xlabel("MCS")
    test_df = test_df.dropna()
    mcs_64 = []
    mcs_16 = []
    mcs_qpsk = []
    cqi_cw0_64 = []
    cqi_cw0_16 = []
    cqi_cw0_qpsk = []
    for x, y in zip(test_df.MCS, test_df.CQI):

        if 10 < y < 16:
            mcs_64.append(x), cqi_cw0_64.append(y)

        elif 6 < y < 11:
            mcs_16.append(x), cqi_cw0_16.append(y)

        else:
            mcs_qpsk.append(x), cqi_cw0_qpsk.append(y)

    plt.plot(mcs_64, cqi_cw0_64, color='green', label="High CQI")
    plt.plot(mcs_16, cqi_cw0_16, color='blue', label="Mid CQI")
    plt.plot(mcs_qpsk, cqi_cw0_qpsk, color='red', label="low CQI")
    plt.legend(bbox_to_anchor=(1.0, 1.0), loc='upper left')

    plt.savefig(f"{gc.IMAGE_FOLDER}/MCS_CQI.png")
    plt.close()
    return True, "MCS_CQI Drawn"


def rsrp_snr(time, rsrp, snr):
    fig, ax = plt.subplots(constrained_layout=True)
    ax.plot(time, snr, color='yellow')
    ax.set_title("RSRP VS SNR with TIME(TM1)")
    ax.set_xlabel("Time(sec)")
    ax.set_ylabel("SNR(dBm)")
    ax.set_ylim(0, 40)

    ax1 = ax.twinx()
    ax1.plot(time, rsrp, color="red")
    ax1.tick_params(axis="y", labelcolor="red")
    ax1.set_ylabel("RSRP(dB)")
    ax1.set_ylim(-110, -70)
    
    fig.tight_layout()
    plt.savefig(f"{gc.IMAGE_FOLDER}/rsrp_vs_snr.png")
    plt.close()


def rsrq_snr(time, rsrq, snr):
    fig, ax = plt.subplots(constrained_layout=True)

    ax.plot(time, snr, color='red')
    ax.set_title("RSRQ VS SNR")
    ax.set_xlabel("Time(sec)")
    ax.set_ylabel("RSRQ(dB)")
    ax.set_ylim(0, 40)

    ax1 = ax.twinx()

    ax1.plot(time, rsrq, color="green")
    ax1.tick_params(axis="y", labelcolor="red")
    ax1.set_ylabel("RSRP(dB)")
    fig.tight_layout()

    plt.savefig(f"{gc.IMAGE_FOLDER}/rsrq_vs_snr.png")
    plt.close()


def workbook_rsrq_snr():
    # Creating excel Workbook
    print(" =====>  Excel Workbook created Successfully !!!!<=====")
    workbook = tm.workbook_creation("rsrp_rsrq_snr")
    # Updating excel Workbook
    tm.sheet_update_rsrp_rsrq_snr(workbook, "rsrp_rsrq_snr", "Filtered RSRP", "Filtered RSRQ",
                                  "FTL SNR Rx[0]")

    # Closing excel Workbook
    print(" =====>  Excel Workbook closed Successfully !!!!<=====")
    workbook.close()

    test_df = pd.read_excel(f"{gc.IMAGE_FOLDER}/rsrp_rsrq_snr.xlsx")
    time = []
    rsrp = []
    rsrq = []
    snr = []
    test_df = test_df.dropna()
    for a, b, c, d in zip(test_df.time, test_df.RSRP, test_df.RSRQ, test_df.SNR):
        if str(datetime.strptime(a, "%H:%M:%S.%f").time()) is not None:
            time.append(str(datetime.strptime(a, "%H:%M:%S.%f").time()))
        rsrp.append(int(b))
        rsrq.append(int(c))
        snr.append(int(d))

    # rsrp_snr(time, rsrp, snr)
    rsrq_snr(time, rsrq, snr)

    return True, "Graph Plotted"


def workbook_rsrp_snr():
    # Creating excel Workbook
    print(" =====>  Excel Workbook created Successfully !!!!<=====")
    workbook = tm.workbook_creation("rsrp_rsrq_snr")
    

    # Updating excel Workbookp
    tm.sheet_update_rsrp_rsrq_snr(workbook, "rsrp_rsrq_snr", "Filtered RSRP", "Filtered RSRQ",
                                  "FTL SNR Rx[0]")

    # Closing excel Workbook
    print(" =====>  Excel Workbook closed Successfully !!!!<=====")
    workbook.close()

    test_df = pd.read_excel(f"{gc.IMAGE_FOLDER}/rsrp_rsrq_snr.xlsx")
    time = []
    rsrp = []
    rsrq = []
    snr = []
    E = 0
    test_df = test_df.dropna()
    for a, b, c, d in zip(test_df.time, test_df.RSRP, test_df.RSRQ, test_df.SNR):
        if str(datetime.strptime(a, "%H:%M:%S.%f").time()) is not None:
            time.append(str(datetime.strptime(a, "%H:%M:%S.%f").time()))
        # time.append(a)
        rsrp.append(int(b))
        rsrq.append(int(c))
        snr.append(int(d))
        E += 1
    rsrp_snr(time, rsrp, snr)
    return True, "Graph Plotted"


def plot_snr_cqi(cqi, snr):
    plt.title("snr_cqi(TM1)")
    plt.xlabel("cqi")
    plt.ylabel("snr(dBm)")
    plt.plot(snr, cqi, color='red')
    plt.savefig(f"{gc.IMAGE_FOLDER}/snr_cqi.png")
    plt.close()


def workbook_cqi_snr():
    # Creating excel Workbook
    print(" =====>  CQI_SNR Excel Workbook created Successfully !!!!<=====")
    workbook = tm.workbook_creation("CQI_SNR")

    # Updating excel Workbook
    # time_rsrp_rsrq_snr.sheet_update(workbook,"KPI_parameters" ,"Filtered RSRP", "Filtered RSRQ", "FTL SNR Rx[0]")
    tm.sheet_update_cqi_snr(workbook, "cqi_snr", "CQI CW0", "FTL SNR Rx[0]")

    # Closing excel Workbook
    print(" =====>  CQI_SNR Excel Workbook closed Successfully !!!!<=====")
    workbook.close()
    #
    test_df = pd.read_excel(f"{gc.IMAGE_FOLDER}/CQI_SNR.xlsx")
    snr = []
    cqi = []
    test_df = test_df.dropna()
    for a, b in zip(test_df.SNR, test_df.cqi):
        snr.append(int(a))
        cqi.append(int(b))

    plot_snr_cqi(cqi, snr)

    return True, "Graph Plotted"


def plot_rsrp_cqi(cqi, rsrp):
    plt.title("RSRP vs CQI")
    plt.xlabel("cqi")
    plt.ylabel("RSRp(dB)")
    plt.plot(rsrp, cqi, color='Green')
    plt.savefig(f"{gc.IMAGE_FOLDER}/rsrp_cqi.png")
    plt.close()


def workbook_CQI_RSRP():
    # Creating excel Workbook
    print(" =====>  CQI_SNR Excel Workbook created Successfully !!!!<=====")
    workbook = tm.workbook_creation("CQI_RSRP")

    # Updating excel Workbook
    # time_rsrp_rsrq_snr.sheet_update(workbook,"KPI_parameters" ,"Filtered RSRP", "Filtered RSRQ", "FTL SNR Rx[0]")
    tm.sheet_update_CQI_RSRP(workbook, "cqi_snr", "CQI CW0", "Filtered RSRP")

    # Closing excel Workbook
    print(" =====>  CQI_SNR Excel Workbook closed Successfully !!!!<=====")
    workbook.close()

    test_df = pd.read_excel(f"{gc.IMAGE_FOLDER}/CQI_RSRP.xlsx")
    rsrp = []
    cqi = []
    test_df = test_df.dropna()
    import math
    for a, b in zip(test_df.RSRP, test_df.CQI):
        if math.isnan(b):
            break
        rsrp.append(int(a))
        cqi.append(int(b))
    plot_rsrp_cqi(cqi, rsrp)

    return True, "Graph Plotted"


def start_pixel_logger(deviceId):
    """Staring the pixel logger Application
    """
    cmd = "adb -s {0} shell am start -n com.android.pixellogger/com.android.pixellogger.ui.main.MainActivity > logger.txt".format(
        deviceId)
    (output, error, status) = cf.execute_commands(cmd)
    if status == True:
        with open("logger.txt", 'r') as f:
            for l in f.readlines():
                if "Error:" in l:

                    f.close()
                    os.remove("logger.txt")
                    return False, 'Unable to open pixel logger apk'
                else:
                    f.close()
                    os.remove("logger.txt")
            time.sleep(5)
            # (output, error, status) = cf.execute_commands("adb -s {0} shell input tap 960 1984".format(deviceId))
            devId = u2.connect(deviceId)
            if devId(resourceId = 'com.android.pixellogger:id/stopFab').exists:
                return True, "Pixel logger running"
            if devId(resourceId = 'com.android.pixellogger:id/startFab').exists:
                devId(resourceId = 'com.android.pixellogger:id/startFab').click()
    else:
        return False, 'Unable to open pixel logger apk'

    time.sleep(20)

    return True, 'Pixel logger has been started'


def stop_pixel_logger(deviceId):
    """Stopping the Pixel logger application
    """
    (output, error, status) = cf.execute_commands(
        "adb -s {0} shell am start -n com.android.pixellogger/com.android.pixellogger.ui.main.MainActivity".format(
            deviceId))
    devId = u2.connect(deviceId)
    if devId(resourceId = 'com.android.pixellogger:id/startFab').exists:
        return True, "logger already stopped"
    if devId(resourceId = 'com.android.pixellogger:id/stopFab').exists:
        devId(resourceId = 'com.android.pixellogger:id/stopFab').click()
    # (output, error, status) = cf.execute_commands("adb -s {0} shell input tap 960 1984".format(deviceId))
    time.sleep(25)
    (output, error, status) = cf.execute_commands(
        "adb -s {0} shell am force-stop com.android.pixellogger > logger.txt".format(deviceId))

    if status == True:
        with open("logger.txt", 'r') as f:
            for l in f.readlines():
                if "Error:" in l:
                    f.close()
                    (output, error, status) = cf.execute_commands("rm logger.txt")
                    return False, 'error while stopping the pixel logger!!!'
                else:
                    f.close()
                (output, error, status) = cf.execute_commands("rm logger.txt")
        (output, error, status) = cf.execute_commands(
            "adb -s {0} pull /storage/emulated/0/Android/data/com.android.pixellogger/files/logs/diag_logs/ {1}/{0}".format(
                deviceId, gc.IMAGE_FOLDER))
        log.info(gc.IMAGE_FOLDER, deviceId)
        gc.DEVICE_NAME = deviceId
        (output, error, status) = cf.execute_commands(
            " adb -s {0} shell rm /storage/emulated/0/Android/data/com.android.pixellogger/files/logs/diag_logs/*".format(
                deviceId))

        return True, 'Pixel logger is stopped'
    else:
        return False, "error while stopping the pixel logger!!!"