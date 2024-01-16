# Builtin module
import re
import os
import time
import logging
import subprocess
import datetime

import automation_helpers.globalconstants as gc
import cellular_automation_helpers.common_helper_functions.adb_command_functions as adb
import cellular_automation_helpers.common_helper_functions.ui_automator as ui

Log = logging.getLogger(__name__)

def updateTheYmal(args):
    for i in args['testcase_config']:
        for j in args['testcase_config'][i]:
            if args['testcase_config'][i].get(j) is None:
                args['testcase_config'][i][j] = args['common_args'][j]
            else:
                if args['common_args'].get(j) is None:
                    continue
                args['testcase_config'][i][j] = args['common_args'][j]
        for k in args['common_args']:
            args['testcase_config'][i][k] = args['common_args'][k]
    return args


def test_mode_air(status, Data):
    """To Turn ON Airplane Mode using adb
    Args:
        status: Mentions airplane to made ON/OFF
    """
    Log.info("Turning Airplane Mode {}..........".format(status))
    Log.info("==========>{}<=========".format(gc.IMAGE_FOLDER))
    airplane_on = "settings put global airplane_mode_on 1\n"
    airplane_off = "settings put global airplane_mode_on 0\n"
    am_command = "su 0 am broadcast -a android.intent.action.AIRPLANE_MODE\n"
    _proc = subprocess.Popen("adb -s {0} shell".format(Data["serialId"]), shell=True, stdin=subprocess.PIPE,
                             stdout=subprocess.PIPE)
    if status == 'ON':
        _proc.stdin.write(airplane_on.encode('utf-8'))
    else:
        _proc.stdin.write(airplane_off.encode('utf-8'))
    _proc.stdin.write(am_command.encode('utf-8'))
    _stdout, _stderr = _proc.communicate()
    # Log.info(print(_proc.returncode))
    if _proc.returncode == 0:
        return True, 'Successfully Turned on Airplane mode: {}'.format(_stdout)
    return False, 'Failed to Turn on Airplane Mode: {}'.format(_stderr)


def check_attach(Data):
    """Checking the device attach status
    Args:
        Data:yaml data read from user input for execution
    """
    Log.info("Checking Wether DUT Attach to the Network or Not..................")

    (output, error, status) = execute_commands(
        "adb -s {0} shell ifconfig > {1}/check.txt".format(Data["serialId"], gc.IMAGE_FOLDER))
    if status == True:
        with open("{0}/check.txt".format(gc.IMAGE_FOLDER), "r") as f:
            for l in f.readlines():
                if "255.255.255.0" in l:
                    res = re.findall(r"\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}", l)

                    if res[0]:
                        Log.info("=====> UE Attached <==== ")

                        Log.info("====> IP Address : {} <==== ".format(res[0]))
                    return True, "Attach is successfull"
            else:
                f.close()
                return False, "Attach is not successfull"
    else:
        return False, error


def execute_commands(cmd):
    proc = subprocess.Popen(cmd, shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
    (output, error) = proc.communicate()
    error = "return code --- >" + str(proc.returncode) + "\nerror --- >" + str(error)
    if proc.returncode == 0:
        return output, error, True
    else:
        return output, error, False


def get_input_path(file_name, module):
    """
    Gives the input path for the files
    :param file_name: ``file name``
    :author: Sayyuf Shaik
    :return:
    """

    return os.path.join(gc.IMAGE_FOLDER, '..', '..', 'inputs', module, file_name)


def comp_id(deviceId):
    cmd = "adb devices > {0}/device_name.txt".format(gc.IMAGE_FOLDER)
    proc = subprocess.Popen(cmd, shell=True, stdin=subprocess.PIPE,
                            stdout=subprocess.PIPE)
    (output, error) = proc.communicate()
    if proc.returncode == 0:
        status = []
        noOfDevices = 1
        with open("{0}/device_name.txt".format(gc.IMAGE_FOLDER)) as deviceFile:
            for line in deviceFile:
                for deviceNo in deviceId:
                    if deviceNo in line and "device" in line:
                        status.append(True)
                        noOfDevices += 1
            # (output, error, exec_status) = execute_commands("rm {0}/device_name.txt".format(gc.IMAGE_FOLDER))
        if all(status):
            for deviceNo in deviceId:
                prerequisites(deviceNo, 1)
            os.remove("{0}/device_name.txt".format(gc.IMAGE_FOLDER))
            return True, "Devices are connected", noOfDevices
        os.remove("{0}/device_name.txt".format(gc.IMAGE_FOLDER))
        return False, "Device are not connected", noOfDevices
    else:
        os.remove("{0}/device_name.txt".format(gc.IMAGE_FOLDER))
        return False, error, 0


def xml_file_parser(searchString, deviceId):
    Log.info("==dumping UI==")
    (output, error, status) = execute_commands(
        "adb -s {0} shell uiautomator dump".format(deviceId))

    if not status:
        return False, []

    Log.info("=Downloading the file from device=")
    (output, error, status) = execute_commands(
        "adb -s {0} pull sdcard/window_dump.xml {1}".format(deviceId,
                                                            gc.IMAGE_FOLDER))
    if not status:
        return False, []

    with open("{0}/window_dump.xml".format(gc.IMAGE_FOLDER), "r") as fd:
        s = ""
        d = fd.read()

        if searchString == "plane":
            x = re.search('\w+plane', d)
            if x:
                searchString = x.group() + " mode"
        Log.info(searchString)
        i = d.find(f'text="{searchString}"')

        if i == -1:
            s = f'content-desc="{searchString}'
            i = d.find(s)
            if i == -1:
                return False, []
        while d[i] != '>':
            i += 1
        else:
            i -= 3
            while d[i] != '=':
                i -= 1
                s += d[i]
    s = s[::-1]
    temp = re.findall(r'\d+', s)
    param = list(map(int, temp))

    if deviceId == "LGH8608e7508fe":
        res = param[:2]
    else:
        res = param[2:]
    return True, res


def xml_file_parser1(searchString, deviceId):
    Log.info("==dumping UI==")
    (output, error, status) = execute_commands("adb -s {0} shell uiautomator dump".format(deviceId))
    if not status:
        return False, []
    Log.info("=Downloading the file from device=")
    (output, error, status) = execute_commands(
        "adb -s {0} pull sdcard/window_dump.xml {1}".format(deviceId, gc.IMAGE_FOLDER))
    if not status:
        return False, []
    with open("{0}/window_dump.xml".format(gc.IMAGE_FOLDER), "r") as fd:
        s = ""
        e = fd.read()
        a = ""
        i = e.find(f'text="{searchString}"')

        while e[i] != '&':
            s += e[i]
            i += 1
        else:
            while e[i] != ':':
                i = i - 1
                a += e[i]
        a = a[-2::-1]
        return a


def fetch_call_state(mobileNumber):
    data1 = re.compile(r'(mCallState=([0-2]))')
    data2 = re.compile(r'(mCallIncomingNumber=(\+[0-9]{12}))')
    mCallState = []
    status = True
    with open("{0}/dump.txt".format(gc.IMAGE_FOLDER), "r") as fd:
        callData = fd.readlines()
        for line in callData:
            for match in re.findall(data1, line):
                callState = int(match[1])
                mCallState.append(str(callState))
            for match in re.findall(data2, line):
                if match[1][3:] == str(mobileNumber):
                    status = True
    os.remove("{0}/dump.txt".format(gc.IMAGE_FOLDER))
    mCallState = [int(items) for items in mCallState]
    return status, max(mCallState)



from sys import platform
def concurrency_call(sec, deviceId, mobileNumber):
    counter = sec
    start = time.time()
    while True:
        # it won't be blocked
        time.sleep(0.1)
        if platform == "linux" or platform == "linux2":
            cmd = f"adb -s {deviceId} shell dumpsys telephony.registry | grep \"mCallState\|mCallIncomingNumber\" > {gc.IMAGE_FOLDER}/dump.txt"
        else:
            cmd = f'adb -s {deviceId}  shell dumpsys telephony.registry | findstr /c:"mCallState" /c:"mCallIncomingNumber" > {gc.IMAGE_FOLDER}/dump.txt'
        os.system(cmd)
  
        status, mCallState = fetch_call_state(mobileNumber)
        if mCallState == 0:
            return False, "Concurrency of calling is failed !!"
        # When 1 sec or more has elapsed...
        if time.time() - start > 1:
            start = time.time()
            counter = counter - 1
            # print("%s seconds" %counter)
            # Countdown finished, ending loop
            if counter <= 0:
                break
    return True, "Concurrency calling performed sucessfully"


def disconnect_call(deviceId):
    cmd = "adb -s {0} shell dumpsys telephony.registry | grep \"mCallState\|mCallIncomingNumber\" > {1}/dump.txt".format(
        deviceId, gc.IMAGE_FOLDER)
    (output, error, status) = execute_commands(cmd)
    if fetch_call_state_1() == 1:
        (output, error, status) = execute_commands(
            f"adb -s {deviceId} shell input keyevent KEYCODE_ENDCALL")
    elif fetch_call_state_1() == 2:
        (output, error, status) = execute_commands(
            f"adb -s {deviceId} shell input keyevent KEYCODE_ENDCALL")
    else:
        pass


def getDeviceTemprature():
    with open("{0}/temp.txt".format(gc.IMAGE_FOLDER), "r") as fd:
        temp = re.findall(r'\d+', fd.read())
        res = list(map(int, temp))
        return res[0] / 10


def check_status_planemode(deviceId):
    # opening wireles settings
    Log.info("opening wireles settings")
    cmd = "adb -s {0} shell am start -a android.settings.WIRELESS_SETTINGS".format(deviceId)
    (output, error, status) = execute_commands(cmd)
    if not status:
        return False, "not executed"
    cmd = "adb -s {0} shell settings get global airplane_mode_on".format(deviceId)
    (output, error, status) = execute_commands(cmd)
    status = output.decode('utf-8')
    status = int(status[0])
    return status


def prerequisites(deviceID, sim_count):
    """
        function name  : prerequisites
        description    : this function will check SIM status and Network Status
        return         : return boolean, string(INFO)
    """
    # status = check_status_planemode(deviceID)
    # if status == 1:
    #     ui.toggle_airplane_mode(deviceID)
    # Local Variables
    network_operators_india = ["airtel", "Jio 4G", "Idea", "Vodafone","PLATINUM"]
    network_type = ["LTE", "EDGE", "CDMA", "GSM", "EVDO", "IWLAN"]

    # Error Values
    Error_msg_1 = f"Fetching Cellular Network. Sim not Attached with Any of the network type Given {network_type}"

    # Check the SIM Status
    cmd = f"adb -s {deviceID} shell getprop gsm.sim.operator.alpha"

    # Executing ADB command
    (output, error, status) = execute_commands(cmd)
    if not status:
        return False, f"Checking Sim Card Status Failed due to {error}"

    # Fetching String
    sim_output = output.decode("utf-8").replace("\n", "").split(",")

    # Checking SIM Card status on Each SIM
    if sim_count == 1:
        # Single Sim Checking
        if sim_output[0] not in network_operators_india:
            return False, f"Fetching SIM status Failed. Sim not inserted"
    else:
        # Dual Sim Checking
        if sim_output[0] not in network_operators_india:
            return False, f"Fetching SIM status Failed. Sim not inserted"
        if sim_output[1] not in network_operators_india:
            return False, f"Fetching SIM status Failed. Sim not inserted"

    Log.info(f" {sim_output[0]} Sim is Active ")
    # Check the Cellular Network Status
    cmd = f"adb -s {deviceID} shell getprop gsm.network.type"

    # Executing ADB command
    (output, error, status) = execute_commands(cmd)
    if not status:
        return False, f"Checking Network Type Failed due to {error}"

    # Fetching String
    cellular_output = output.decode("utf-8").replace("\n", "").split(",")

    # Checking Cellular Network Status on Each SIM
    if sim_count == 1:
        if cellular_output[0] not in network_type:
            return False, Error_msg_1
        Log.info(f"{sim_output[0]} Sim is Active and Connected {cellular_output[0]} networkType")

        enable_data(deviceID)
        return True, f"Devices is Active '{sim_output[0]}' sim is inserted and Connected to '{cellular_output[0]}' Network. " \

    else:
        if cellular_output[0] not in network_type:
            return False, Error_msg_1
        if cellular_output[1] not in network_type:
            if cellular_output[1] != "Unknown":
                return False, Error_msg_1
        enable_data(deviceID)
        Log.info(f"Devices is Active {sim_output} sims are inserted and Connected to {cellular_output} respective" \
                     f"Networks. ")
        return True, f"Devices is Active {sim_output} sims are inserted and Connected to {cellular_output} respective" \
                     f"Networks. "


def enable_data(deviceID):
    """enable  data"""
    Log.info("checking mobile data")
    status = adb.check_status_data(deviceID)
    if status < 0:
        Log.info("enable mobile data")
        output, status = adb.enable_data(deviceID)
        if not status:
            Log.info("unable to enable data")
            return False, "unable to enable data"
        Log.info(output)
    Log.info("Data is Enabled on deviceID")
    cmd = f'adb -s {deviceID} shell dumpsys telephony.registry | grep "mSignalStrength=SignalStrength:" >> {gc.IMAGE_FOLDER}/{deviceID}_signal_strength.txt'
    (output, err, status) = execute_commands(cmd)
    if not status:
        pass
    # status = check_status_planemode(deviceID)
    # if status == 1:
    #     ui.toggle_airplane_mode(deviceID)
    # cmd = f"adb -s {deviceID} shell settings put global airplane_mode_on 1"
    # (output, err, status) = execute_commands(cmd)
    # cmd = f"adb -s {deviceID} shell am broadcast -a android.intent.action.AIRPLANE_MODE"
    # (output, err, status) = execute_commands(cmd)
# import re
# def fetch_filtered_log():
#     # dir = os.getcwd()
#     # # dail_log name will be like this example:diag_log_20220413_1756171649852777833.txt
#     # dail_log_name = '<provide daillogname here>' #update this achyut
#     # # print(dir)
#     # # path=os.path.join(dir,"Pixel2A\MT_Call_Not_lifted\diag_log_20220413_1756171649852777833.txt")
#     # path=os.path.join(f"{gc.IMAGE_FOLDER}/iteration1/{dail_log_name}") #update this achyut
#     x = None
#     with open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/qxdm_logs.txt", "r")as f:
#         data = f.read()
    
#     list = re.findall("Response Code = (.*)\n", data)
#     returnList = []
#     for i in list:
#         returnList.append(i.split()[1])
#     print(returnList)

#     return returnList[-1]
#     #     text = f.readlines()
#     #     list = []
#     #     for i in text:
#     #         if "INVITE" in i.decode():
#     #             list.append(i.decode())
#     # for i in list:
#     #     x = re.search(r'IMS\s\w+:\s\w+\W\w+\s[0-9]{3}\W+.{7}',i)
#     #     print(x.group())
    
#     # with open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/LOGANALYSIS.txt", "w") as f: #update this achyut
#     #     f.write(x.group())
#     # if x is None:
#     #     return x
#     # return x.group()
    
def extract_IMS_SIP_INVITE():
    text = b"0x156E"
    t2 = b'INVITE'
    li = []
    l1 = []
    l2 = []
    idx = 0
    idx1 = 0
    with open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/qxdm_logs.txt", 'rb') as fd:
        t = fd.readlines()
        for i in t:
            if text in i:
                li.insert(idx, i)
                idx += 1
        for j in li:
            if t2 in j:
                l1.insert(idx1, j)
                idx1 += 1

        if len(l1) == 0:
            print("Logs Not Found")
        else:
            for i in l1:
                x = re.findall(r'IMS_SIP_INVITE\D\w+', i.decode())
                l2.append(" ".join(x))
                l = len(l2)
            for j in range(l):
                st = str(l2)
                with open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/Invite_logs", 'w') as fd:
                    fd.write(st)
            print('Successfully extracted mandatory logs in text file')
    return st
  
    
def fetch_filtered_log():
    # dir = os.getcwd()
    # # dail_log name will be like this example:diag_log_20220413_1756171649852777833.txt
    # dail_log_name = '<provide daillogname here>' #update this achyut
    # # print(dir)
    # # path=os.path.join(dir,"Pixel2A\MT_Call_Not_lifted\diag_log_20220413_1756171649852777833.txt")
    # path=os.path.join(f"{gc.IMAGE_FOLDER}/iteration1/{dail_log_name}") #update this achyut
    x = None
    with open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/qxdm_logs.txt", "rb")as f:
        text = f.readlines()
        list = []
        for i in text:
            if "INVITE" in i.decode():
                list.append(i.decode())
    for i in list:
        x = re.search(r'IMS\s\w+:\s\w+\W\w+\s[0-9]{3}\W+.{7}',i)
        print(x.group())
    
    with open(f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/LOGANALYSIS.txt", "w") as f: #update this achyut
        f.write(x.group())
    if x is None:
        return x
    return x.group()