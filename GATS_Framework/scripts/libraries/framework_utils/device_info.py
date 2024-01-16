import platform
import subprocess
import os
import logging

#sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
import sys

LOG = logging.getLogger(__name__)

BASE_DIR = ''
with open('../base_path.txt', mode='rt') as fp:
    BASE_DIR = fp.read()

class UnknownDeviceConfig(Exception):
    pass


class DeviceNotConnected(Exception):
    pass


def execute_adb_cmd(device_id):
    """
    This function is used to get device details using adb getprop
    :param device_id: Device id of android device to be tested
    :return: list:[android version, manufacturer, product model, product name]
    """
    try:
        # import pdb;pdb.set_trace()
        l1 = []
        command = ""
        if platform.system() != 'Windows':
            command = 'adb -s {0} shell getprop | grep "build.version.release\|' \
                      'product.manufacturer\|product.model\|product.name"'.\
                format(device_id)
            print(command)
        else:
            command = 'adb -s {0} shell getprop | findstr "build.version.release product.manufacturer product.model product.name"'.\
            format(device_id)


        out, msg = subprocess.Popen(
            command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE
        ).communicate()
        # os.system('adb -s {0} shell getprop | findstr "build.version.release product.manufacturer product.model product.name"')
        
        adb_output = out.decode()
        print(adb_output)
        p = adb_output.split("\n")
        p.remove('')
        for i in p:
            li = i.split(":")
            l1.append(li[1].replace("[", "").replace("]", "").strip())
        if not l1:
            with open(BASE_DIR + "/temp/devices_issue.txt", "w") as fd:
                fd.write(f"{device_id} Device Not Found")
            raise Exception("Please Connect Base Devices")
        return l1
        # adb_output = out.decode("utf-8").replace("\n", ",")
        # print(adb_output)
        # if adb_output == "":
        #     raise DeviceNotConnected
        # for r in (("[", "\'"), ("ro.", ""), (" ", ""), ("]", "\'")):
        #     adb_output = adb_output.replace(*r)
        # adb_substring = (adb_output[:len(adb_output) - 1])
        # # Splitting the string based on , we get key value pairs
        # list1 = adb_substring.split(",")
        # for i in list1:
        #     # Get Key Value pairs separately to store in dictionary
        #     key_value = i.split(":")
        #     res = key_value[1].strip('\'').split(".")[0]
        #     l1.append(res)
        #
        # return l1
    except IndexError as index_errror:
        LOG.exception("Exception due to :{}", format(index_errror))

def locate_config(device_info_list, variables_root_path):
    try:
        
        merged_info = "android_version_{0}/{1}/{2}/{3}".\
            format(device_info_list[0], device_info_list[1], device_info_list[2], device_info_list[3])
        
        if os.path.exists(os.path.join(variables_root_path, "variables",
                                       merged_info)):
            #return os.path.join(variables_root_path, merged_info)
            return "variables/{0}/uiconfig.yaml".format(merged_info)

        print("To add config for this device, create following directory structure under variables directory")
        print(merged_info)
        raise UnknownDeviceConfig
    except IndexError as index_errror:
        LOG.exception("Exception due to :{}", format(index_errror))
