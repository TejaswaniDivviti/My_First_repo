import logging
import os
import time

import automation_helpers.globalconstants as gc
import cellular_automation_helpers.common_helper_functions.adb_command_functions as ad
import cellular_automation_helpers.common_helper_functions.common_functions as cf

# from uiautomator import Device

import uiautomator2 as u2

def turnOnAeroplane(deviceId):
    log.info("enabling airplane mode")
    status = cf.check_status_planemode(deviceId)
    if status == 1:
        log.info("airplane mode is enabled")
    else:
        status, msg = toggle_airplane_mode(deviceId)
        if not status:
            log.error("apm not enabled")
            return False, "apm not enabled"
        log.info("apm enabled")
    time.sleep(5)

    return True, "airplane mode is enabled"


def turnOffAeroplane(deviceId):
    status = cf.check_status_planemode(deviceId)
    if status == 1:
        toggle_airplane_mode(deviceId)

    return True, "airplane mode is disabled"

log = logging.getLogger(__name__)
def send_max_images_mms_with_sim(deviceId, phoneNum, sim_no):
    try:
        devId = u2.connect(deviceId)
        cmd = f"adb -s {deviceId} shell am start -a android.intent.action.SENDTO -d sms:{phoneNum}"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Message app not openend")
            return False, "Message app not openend"
        log.info("Text message opened")

        # selecting the mentioned sim to send mms
        if not devId(resourceId="com.google.android.apps.messaging:id/send_message_button_container",
                     className="android.widget.LinearLayout").wait(timeout=5.0):
            return False, "failed to select sim"
        devId(resourceId="com.google.android.apps.messaging:id/send_message_button_container",
              className="android.widget.LinearLayout").click()

        if sim_no == 1:
            if not devId(index="0", className="android.widget.LinearLayout",
                         packageName="com.google.android.apps.messaging").child(index="0",
                                                                                resourceId="com.google.android.apps.messaging:id/name").wait(timeout=5.0):
                return False, "failed to select sim"
            devId(index="0", className="android.widget.LinearLayout").child(index="0",
                                                                            resourceId="com.google.android.apps.messaging:id/name").click()
        elif sim_no == 2:
            if not devId(index="1", className="android.widget.LinearLayout",
                         packageName="com.google.android.apps.messaging").child(index="0",
                                                                                resourceId="com.google.android.apps.messaging:id/name").wait(timeout=5.0):
                return False, "failed to select sim"
            devId(index="1", className="android.widget.LinearLayout").child(index="0",
                                                                            resourceId="com.google.android.apps.messaging:id/name").click()

        # clicking on plus btn
        if devId(className="android.widget.ImageView",
                 resourceId="com.google.android.apps.messaging:id/camera_gallery_button").wait(timeout=5.0):
            status = devId(className="android.widget.ImageView",
                           resourceId="com.google.android.apps.messaging:id/camera_gallery_button").click()
            if not status:
                log.info("Not clicked on gallery")
                return False, "Not clicked on gallery"
            log.info("clicked on gallery")
        elif devId(resourceId="com.google.android.apps.messaging:id/plus_button").wait(timeout=3.0):
            devId(resourceId="com.google.android.apps.messaging:id/plus_button").click()

            if devId(resourceId="com.google.android.apps.messaging:id/device_camera_picture_button").exists:
                devId(resourceId="com.google.android.apps.messaging:id/device_camera_picture_button").click()

        # capturing the max no of pics and attaching
        while not devId(text="Attachment limit reached", resourceId="android:id/alertTitle").wait(timeout=2.0):

            if devId(className="android.widget.ImageView",
                     resourceId="com.google.android.apps.messaging:id/shutter_button").wait(timeout=2.0):
                status = devId(className="android.widget.ImageView",
                               resourceId="com.google.android.apps.messaging:id/shutter_button").click()
                if status:
                    log.info("Not clicked")
                    return False, "Not clicked"
                log.info("clicked on button")

            if devId(resourceId="com.android.camera2:id/shutter_button").wait(timeout=5.0):
                devId(resourceId="com.android.camera2:id/shutter_button").click()

            if devId(resourceId="com.android.camera2:id/done_button").wait(timeout=4.0):
                devId(resourceId="com.android.camera2:id/done_button").click()

            if devId(textStartsWith="Attach").wait(timeout=5.0):
                status = devId(textStartsWith="Attach").click()
                if status:
                    log.info("Not clicked")
                    return False, "Not clicked"
                log.info("clicked on button")

        if devId(text="OK", resourceId="android:id/button1").wait(timeout=5.0):
            devId(text="OK", resourceId="android:id/button1").click()

        cmd = f"adb -s {deviceId} shell input keyevent 22"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Not clicked")
            return False, "Not clicked"
        log.info("clicked on button")
        cmd = f"adb -s {deviceId} shell input keyevent 22"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Not clicked")
            return False, "Not clicked"
        log.info("clicked on button")
        cmd = f"adb -s {deviceId} shell input keyevent 66"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Not clicked")
            return False, "Not clicked"
        log.info("clicked on button")
        return True, "mms sent successfully"
    except Exception as e:
        return False, f"Ui not met {e}"

def remove_sim_in_dsds(deviceId, sim):
    try:
        devId = u2.connect(deviceId)
        f"{gc.IMAGE_FOLDER}/{gc.DEVICE_NAME}/qxdm_logs.txt"
        if not devId.info.get('screenOn'):
            devId.screen_on()
        cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d tel:%2A%23%2A%234636%23%2A%23"
        (output, error, status) = cf.execute_commands(cmd)

        cmd = f"adb -s {deviceId} shell input keyevent 17"
        (output, error, status) = cf.execute_commands(cmd)
        if not devId(textStartsWith='Testing').exists:
            return False, "Opening test page failed"
        devId(textStartsWith='Phone information').click()
        devId(scrollable=True).scroll.to(text='Mobile Radio Power')

        # if devId(textStartsWith='Phone information').exists:
        #     time.sleep(2)
        #     devId(textStartsWith='Phone information').click()
        #     time.sleep(2)
        #     if not devId(textStartsWith='Mobile Radio Power').exists:
        #         return False, "Sim deactivating failed"
        #     devId(textStartsWith='Mobile Radio Power').click()
        #     time.sleep(5)




        if devId(textContains='Mobile Radio Power').wait(timeout=5.0):
            devId(text='Mobile Radio Power').click()

        time.sleep(15)





        closeApps(deviceId)
        return True, "toggled Radio (sim card) successfully"
    except Exception as e:
        closeApps(deviceId)
        return False, f"Ui not Met due to {e}"

def send_sms_with_sim(deviceId, phoneNumber, sim_no):

    try:
        devId = u2.connect(deviceId)
        cmd = f"adb -s {deviceId} shell am start -a android.intent.action.SENDTO -d sms:{phoneNumber}"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Message app not openend")
            return False, "Message app not openend"
        log.info("Text message opened")
        bol = devId(text="OK").wait(timeout=5.0)
        if bol:
            devId(text="OK").click()

        return True, "call forwarding success"



        content = "hi"
        if devId(resourceId="com.google.android.apps.messaging:id/compose_message_text",
                 className="android.widget.EditText").wait(timeout=10.0):
            print("exists")
            devId(resourceId="com.google.android.apps.messaging:id/compose_message_text",
                  className="android.widget.EditText").set_text(content)
        else:
            return False, "failed to write msg"

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
    except Exception as e:
        return False, f"Ui not met {e}"
    
def setting(self):
    setting = "adb shell am start -a android.settings.SETTINGS"
    subprocess.run(setting, shell = True,capture_output=True)
    time.sleep(3)


def send_mms_with_sim(deviceId, phoneNum, sim_no):
    try:
        devId = u2.connect(deviceId)
        cmd = f"adb -s {deviceId} shell am start -a android.intent.action.SENDTO -d sms:{phoneNum}"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Message app not openend")
            return False, "Message app not openend"
        log.info("Text message opened")

        # selecting the mentioned sim to send mms
        if not devId(resourceId="com.google.android.apps.messaging:id/send_message_button_container",
                     className="android.widget.LinearLayout").wait(timeout=10.0):
            return False, "failed to selectsim1"
        devId(resourceId="com.google.android.apps.messaging:id/send_message_button_container",
              className="android.widget.LinearLayout").click()
        if sim_no == 1:
            if not devId(index="0", className="android.widget.LinearLayout",
                         packageName="com.google.android.apps.messaging").child(index="0",
                                                                                resourceId="com.google.android.apps.messaging:id/name").wait(timeout=10.0):
                return False, "failed to select sim2"
            devId(index="0", className="android.widget.LinearLayout").child(index="0",
                                                                            resourceId="com.google.android.apps.messaging:id/name").click()
        elif sim_no == 2:
            if not devId(index="1", className="android.widget.LinearLayout",
                         packageName="com.google.android.apps.messaging").child(index="0",
                                                                                resourceId="com.google.android.apps.messaging:id/name").wait(timeout=10.0):
                return False, "failed to select sim3"
            devId(index="1", className="android.widget.LinearLayout").child(index="0",
                                                                            resourceId="com.google.android.apps.messaging:id/name").click()

        # clicking the image and attaching it to send mms
        if devId(className="android.widget.ImageView",
                 resourceId="com.google.android.apps.messaging:id/camera_gallery_button").wait(timeout=5.0):
            status = devId(className="android.widget.ImageView",
                           resourceId="com.google.android.apps.messaging:id/camera_gallery_button").click()
            if status:
                log.info("Not clicked on gallery")
                return False, "Not clicked on gallery"
            log.info("clicked on gallery")
        elif devId(resourceId="com.google.android.apps.messaging:id/plus_button").wait(timeout=10.0):
            devId(resourceId="com.google.android.apps.messaging:id/plus_button").click()
            if devId(resourceId="com.google.android.apps.messaging:id/device_camera_picture_button").wait(timeout=10.0):
                devId(resourceId="com.google.android.apps.messaging:id/device_camera_picture_button").click()


        if devId(className="android.widget.ImageView",
                 resourceId="com.google.android.apps.messaging:id/shutter_button").wait(timeout=10.0):

            status = devId(className="android.widget.ImageView",
                           resourceId="com.google.android.apps.messaging:id/shutter_button").click()
            if status:
                log.info("Not clicked")
                return False, "Not clicked"
            log.info("clicked on button")

        if devId(resourceId="com.android.camera2:id/shutter_button").wait(timeout=10.0):
            devId(resourceId="com.android.camera2:id/shutter_button").click()

        if devId(resourceId="com.android.camera2:id/done_button").wait(timeout=10.0):
            devId(resourceId="com.android.camera2:id/done_button").click()

        if devId(textStartsWith="Attach").wait(timeout=10.0):
            status = devId(textStartsWith="Attach").click()
            if status:
                log.info("Not clicked")
                return False, "Not clicked"
            log.info("clicked on button")

        cmd = f"adb -s {deviceId} shell input keyevent 22"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Not clicked")
            return False, "Not clicked"
        log.info("clicked on button")

        cmd = f"adb -s {deviceId} shell input keyevent 22"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Not clicked")
            return False, "Not clicked"
        log.info("clicked on button")
        cmd = f"adb -s {deviceId} shell input keyevent 66"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Not clicked")
            return False, "Not clicked"
        log.info("clicked on button")
        return True, "mms sent successfully"
    except Exception as e:
        return False, f"Ui Not met due to {e}"




def change_rat(deviceId, mode):
    try:
        cmd = f"adb -s {deviceId} shell am start -a android.settings.NETWORK_OPERATOR_SETTINGS"
        (output, error, status) = cf.execute_commands(cmd)

        dev = u2.connect(deviceId)
        # dev(text='Advanced').click()
        if dev(text='Preferred network type').wait(timeout=5.0):
            status = dev(text='Preferred network type').click()
        if dev(text='Preferred network mode').wait(timeout=3.0):
            status = dev(text='Preferred network mode').click()
        if mode == 1:
            dev(text='LTE/WCDMA/GSM auto').click()
        elif mode == 2:
            dev(text='3G/2G auto').click()
        elif mode == 3:
            dev(text='3G only').click()
        elif mode == 4:
            if dev(textContains='LTE').wait(timeout=5.0):
                dev(textContains='LTE').click()
        else:
            dev(text='2G only').click()
        return True, "changed rat successfully"
    except Exception as e:
        return False, f"Ui Not met due to {e}"

def change_RAT_DSDS(deviceId, simNo, mode):
    # mode=1 -> 4G
    # mode=2 -> 3G
    # mode=3 -> 2G
    # mode=4 -> 3G/2G
    try:
        return True, "successfully RAT changed"
        devId = u2.connect(deviceId)
        cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d tel:%2A%23%2A%234636%23%2A%23"
        (output, error, status) = cf.execute_commands(cmd)
        cmd = f"adb -s {deviceId} shell input keyevent 17"
        (output, error, status) = cf.execute_commands(cmd)
        if not devId(textStartsWith='Testing').wait(timeout=5.0):
            return False, "Opening test page failed"
        devId(textStartsWith='Testing').click()
        if simNo == 1:
            if devId(textStartsWith='Phone information1').wait(timeout=5.0):
                status = devId(textStartsWith='Phone information1').click()
                if status:
                    return False, "failed to click on Phone information1"

            elif devId(textStartsWith='Phone info').wait(timeout=2.0):
                devId(textStartsWith='Phone info').click()
            else:
                return False, "no phone info object found"


        elif simNo == 2:
            if devId(textStartsWith='Phone information2').wait(timeout=2.0):
                status = devId(textStartsWith='Phone information2').click()
                if  status:
                    return False, "failed to click on Phone information2"
            elif devId(textStartsWith='Phone info').wait(timeout=2.0):
                devId(textStartsWith='Phone info').click()
            else:
                return False, "no phone info object found"

        else:
            return False, "invalid simNo value"

        if not devId(resourceId="com.android.settings:id/preferredNetworkType").wait(timeout=3.0):
            return False, "failed to click on preferredNetworkType"

        # clicking on the object prefered network type
        devId(resourceId="com.android.settings:id/preferredNetworkType").click()

        # selecting the network type based on mode parameter
        # setting to 4G
        if mode == 1:
            devId(scrollable="true").scroll.to(text="LTE only")
            devId(text="LTE only").click()
        # setting to 3G
        elif mode == 2:
            devId(scrollable="true").scroll.to(text="WCDMA only")
            devId(text="WCDMA only").click()
        # setting to 2G
        elif mode == 3:
            devId(scrollable="true").scroll.to(text="GSM only")
            devId(text="GSM only").click()
        # setting to 4G/3G
        elif mode == 4:
            devId(scrollable="true").scroll.to(text="LTE/WCDMA")
            devId(text="LTE/WCDMA").click()
        else:
            return False, "invalid mode value"
        devId.press("home")

        return True, "successfully RAT changed"
    except Exception as e:
        return False, f"Ui Not met due to {e}"

def upload_file(deviceId, filename):
    (output, status, msg) = cf.execute_commands(f'adb -s {deviceId} shell am force-stop com.google.android.apps.nbu.files')
    devId = u2.connect(deviceId)
    """preload file into DUT"""
    log.info("loading file")

    # status, msg = ad.preload_file(deviceId, filename)
    # if not status:
    #     log.info("preloading files failed")
    #     return False, msg

    """install file manager"""
    status, msg = install_file_mgr(deviceId)
    if not status:
        log.info("installing file manager failed")
        return False, msg


    """transfer file"""
    status, msg = transfer_file(deviceId, filename)
    if not status:
        return False, msg
    closeApps(deviceId)
    
    """Upload file into drive"""

    status, msg = drive_upload(deviceId, filename)
    if not status:
        return False, msg
   
    # devId.press("home")
    return True, "Passed"

    

# def upload(devId):
#     devId = u2.connect(devId)
#     devId.press("home")
#     if devId(text = "Drive").exists():
#         devId(text = "Drive").click()
#     return True


def drive_upload(devId, file):
    devId = u2.connect(devId)
    try:
        res = (file[::-1].partition("/"))[::-1]
        file_name = res[2][::-1]
        if not devId.info.get('screenOn'):
            devId.screen_on()
        devId.press("home")
        if devId(text='Files').exists:
            devId(text='Files').click()
        
        devId.swipe_ext("up")
        devId.swipe_ext("up")
        devId.swipe_ext("up")
        devId(textStartsWith='Internal storage').click()
        devId(textStartsWith='DCIM').click()
        if devId(descriptionStartsWith=file_name).wait(timeout=5.0):
            devId(descriptionStartsWith=file_name).click()
        if devId(resourceId="com.google.android.apps.nbu.files:id/share").wait(timeout=10.0):
            devId(resourceId="com.google.android.apps.nbu.files:id/share").click()
        while devId(textContains='Bluetooth').exists == False:
            devId.swipe_ext("up")
        if devId(text = "Drive").exists():
            devId(text='Drive').click()
        else:
            devId.swipe_ext("up")
            devId(text='Drive').click()

        devId(text="Save").click()
        # devId.swipe_ext("down")
        devId.press("home")
        return True, "File is transferring"
    except Exception as e:
        devId.screenshot(f"{gc.IMAGE_FOLDER}/ERROR.png")
        return False, f"Ui not met {e}"


    """Earlier code"""
    # devId.press("home")
    # if devId(textContains='Drive').exists:
    #     devId(textContains='Drive').click()
    # elif devId(textContains='FILES').exists:
    #     devId(textContains='FILES').click()
    # if devId(text='Save').wait(timeout=10.0):
    #     devId(text='Save').click()
    # devId.open_notification()
    # while True:
    #     if devId(textContains='upload').wait(timeout=10.0) or devId(textContains='Upload').wait(timeout=10.0):
    #         break
    #     devId.swipe_ext("up", scale=5.0)
    # devId(textContains='Drive').click()
    # if devId(text='Resume').exists:
    #     devId(text='Resume').click()
    # if devId(textContains='Uploading').wait(timeout=10.0):
    #     return True, "Uploading File"
    # elif devId(textContains="Uploaded").exists:
    #     return True, "Uploading File"
    # return False, "Upload failed"


def sendEmail(deviceId, destMail):
    devId = u2.connect(deviceId)
    try:
        # Installing Gmail App
        status, msg = install_app(deviceId,
            "https://play.google.com/store/apps/details?id=com.google.android.gm&hl=en_IN&gl=US")
        if not status:
            return False, "opening Gmail failed"

        if not devId.info.get('screenOn'):
            devId.screen_on()
        resourceId = "com.google.android.gm:id/peoplekit_autocomplete_to_prefix"
        status = devId(text="Compose").click()
        devId(index="0", className="android.widget.EditText", packageName="com.google.android.gm").set_text(destMail)
        if devId(resourceId="com.google.android.gm:id/peoplekit_listview_contact_name").wait(timeout=2.0):
            devId(resourceId="com.google.android.gm:id/peoplekit_listview_contact_name").click()
        devId(text="Subject").set_text("Testing Mail")

        devId(text="Compose email").click()
        import os;os.system(f"adb -s {deviceId} shell input text Hello")
        devId(description="Send").click()
        return True, "Sending Email.."

    except Exception as e:
        return False, f"Ui not met {e}"

def remove_sim(deviceId):
    try:
        cmd = f"adb -s {deviceId} shell am start -a android.settings.NETWORK_OPERATOR_SETTINGS"
        (output, error, status) = cf.execute_commands(cmd)
        # dev = u2.connect(deviceId)
        devId = u2.connect(deviceId)
        if devId(text = "SIM1").exists():
            devId(text = "SIM1").click()

        devId(text = "Enable").click()
        time.sleep(3.0)
        # if not devId.info.get('screenOn'):
        #     devId.screen_on()
        # devId.press('home')
        # devId(scrollable=True).fling.toEnd()
        # cmd = f"adb -s {devId} shell am start -a android.settings.NETWORK_OPERATOR_SETTINGS"
        # (output, error, status) = cf.execute_commands(cmd)
        # devId(text = "Mobile network").click()
        # cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d tel:%2A%23%2A%234636%23%2A%23"

        # (output, error, status) = cf.execute_commands(cmd)
        # cmd = f"adb -s {deviceId} shell input keyevent 17"
        # time.sleep(5.0)
        # (output, error, status) = cf.execute_commands(cmd)
        # time.sleep(5.0)
        # if devId(text='Phone info').wait(timeout=5.0):
        #     if not devId(textStartsWith='Mobile Radio Power').wait(timeout=5.0):
        #         return False, "Sim deactivating/activating failed"
        #     devId(textStartsWith='Mobile Radio Power').click()
        #     return True, "sim act/deact success"

        # if not devId(text='Testing').exists:
        #     return False, "Opening test page failed"
        # elif devId(textStartsWith='Testing').exists:
        #     if devId(textStartsWith='Phone information').exists:

        #         devId(textStartsWith='Phone information').click()

        #         if not devId(textStartsWith='Mobile Radio Power').exists:
        #             devId(scrollable=True).scroll.to(textStartsWith="Mobile Radio Power")
        #             if not devId(textStartsWith='Mobile Radio Power').exists:
        #                 return False, "Sim deactivating failed"
        #         devId(textStartsWith='Mobile Radio Power').click()


        closeApps(deviceId)
        return True, "toggled Radio (sim card) successfully"
    except Exception as e:
        closeApps(deviceId)
        return False, f"Ui not Met due to {e}"


def perform_maps_task(devId, location):
    try:
        """enable gps"""
        log.info("enabling gps")

        status, msg = ad.enable_gps(devId)
        if not status:
            log.info("enabling GPS failed")
            return False, msg

        """opening google maps"""
        log.info("opening google maps")
        status, output = maps_navigate(devId, location)

        time.sleep(5)
        if not status:
            log.info("unable to navigate on maps")
            return False, "unable to navigate on maps"


        return True, "Maps"
        closeApps(devId)
        time.sleep(20)
    except Exception as e:
        closeApps(devId)
        time.sleep(20)

        return False, f"Ui not met {e}"


def bt_transfer(dev1, dev2, bt_dest):
    devId = u2.connect(dev1)
    devId2 = u2.connect(dev2)
    """Discoverable Bluetooth devices"""
    log.info("discover bt device 1")
    status, msg = ad.discover_bt(dev2)
    if not status:
        log.info("discover bt failed")
        return False, msg
    if devId(text='Bluetooth').wait(timeout=10.0):
        devId(text='Bluetooth').click()
    if not devId(text=bt_dest).wait(timeout=30.0):
        return False, "bt dest scanning failed"
    devId2.open_notification()
    if devId(text=bt_dest).exists(timeout=10.0):
        devId(text=bt_dest).click()

    if devId2(textStartsWith="Accept").wait(timeout=10.0):
        devId2(textStartsWith="Accept").click()
    elif devId2(textStartsWith="ACCEPT").wait(timeout=20.0):
        devId2(textStartsWith="ACCEPT").click()
    elif devId2(textStartsWith="ALLOW").wait(timeout=20.0):
        devId2(textStartsWith="ALLOW").click()
    else:
        return False, "Accepting File failed"
    devId.open_notification()
    

    if not devId(textContains="Sent files").wait(timeout=20.0):
        return False, "Bt sharing Failed"
    devId2.press("home")
    devId.press("home")
    return True, "File is transfering"



def perform_bluetooth_operation(dev1, dev2, bt_devid, bt_file, applink):
    try:
        (output, status, msg) = cf.execute_commands(f'adb -s {dev1} shell am force-stop com.google.android.apps.nbu.files')

        if ad.status_bt(dev1) == 0:
            """Enable Bluetooth"""
            print("""Enable Bluetooth""")
            log.info("enabling bt")
            status, msg = ad.enable_bluetooth(dev1)
            if not status:
                log.info("enabling bt failed")
                return False, msg

        if ad.status_bt(dev2) == 0:
            """Enable Bluetooth"""
            print("""Enable Bluetooth""")
            log.info("enabling bt")
            status, msg = ad.enable_bluetooth(dev2)
            if not status:
                log.info("enabling bt failed")
                return False, msg

        """preload file into DUT"""
        log.info("loading file")
        print("loading file")
        status, msg = ad.preload_file(dev1, bt_file)
        if not status:
            log.info("preloading files failed")
            return False, msg

        """install file manager"""
        print("Install file Manager")
        status, msg = install_file_mgr(dev1)
        if not status:
            log.info("installing file manager failed")
            return False, msg

        """transfer file"""
        status, msg = transfer_file(dev1, bt_file)
        if not status:
            return False, msg

        """Bt transfer"""
        status, msg = bt_transfer(dev1, dev2, bt_devid)
        if not status:
            return False, msg

        """Disable Bluetooth"""
        log.info("disabling bt device 1")
        status, msg = ad.disable_bluetooth(dev1)
        if not status:
            log.info("disabling bt failed")
            return False, msg

        """Disable Bluetooth"""
        log.info("disabling bt from device2")
        status, msg = ad.disable_bluetooth(dev2)
        if not status:
            log.info("disabling bt failed")
            return False, msg

        return True, "Performed successfully"
    except Exception as e:
        return False, f"Ui not met {e}"


def transfer_file(deviceId1, file):
    devId = u2.connect(deviceId1)
    try:
        res = (file[::-1].partition("/"))[::-1]
        file_name = res[2][::-1]
        if not devId.info.get('screenOn'):
            devId.screen_on()

        #devId2 = u2.connect(deviceId2)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        if devId(textContains='Continue').exists:
            devId(text='Continue').click()
        if devId(text='Allow').exists:
            devId(text='Allow').click()
        elif devId(text='ALLOW').exists:
            devId(text='ALLOW').click()
        # if devId(resourceId="com.google.android.apps.nbu.files:id/search_menu_item").exists:
        #     devId(resourceId="com.google.android.apps.nbu.files:id/search_menu_item").click()
        # time.sleep(1)
        # if devId(textStartsWith='Search').exists:
        #     devId(textStartsWith='Search').set_text(file_name)
        # devId.dump("hierarchy.xml")
        if devId(text='Browse').exists:
            devId(text='Browse').click()
        # devId(scrollable=True).fling.toEnd()
        devId.swipe_ext("up")
        devId.swipe_ext("up")
        devId(textStartsWith='Internal storage').click()
        devId(textStartsWith='DCIM').click()
        # if devId(textStartsWith=file_name,
        #          resourceId="com.google.android.apps.nbu.files:id/search_suggestion_text").exists:
        #     devId(textStartsWith=file_name,
        #           resourceId="com.google.android.apps.nbu.files:id/search_suggestion_text").click()
        # # devId(text=file).click()
        # if devId(resourceId="com.google.android.apps.nbu.files:id/share").exists:
        #     devId(resourceId="com.google.android.apps.nbu.files:id/share").click()
        if devId(descriptionStartsWith=file_name).wait(timeout=5.0):
            devId(descriptionStartsWith=file_name).click()
        if devId(resourceId="com.google.android.apps.nbu.files:id/share").wait(timeout=10.0):
            devId(resourceId="com.google.android.apps.nbu.files:id/share").click()
        while devId(textContains='Bluetooth').exists == False:
            devId.swipe_ext("up")
        devId(textContains='Bluetooth').click()
        time.sleep(4.0)
        if not devId(textContains='Bluetooth').exists:
            devId.swipe_ext("up", scale=10.0)
        devId(text="oppo").click()
        return True, "File is transferring"
    

    
    except Exception as e:
        devId.screenshot(f"{gc.IMAGE_FOLDER}/ERROR.png")
        return False, f"Ui not met {e}"
    



def install_file_mgr(deviceId):
    try:
        devId = u2.connect(deviceId)
        
        if not devId.info.get('screenOn'):
            devId.screen_on()
        # Installing file mgr
        app_link = "https://play.google.com/store/apps/details?id=com.google.android.apps.nbu.files"
        install_app(deviceId, app_link)
        time.sleep(2.0)
        devId.press("home")
        devId(text="Files").click()
        return True, "App installed"

    
        # if devId(text = "Open").exists():
        
        #     devId(text="Open").click()
        # return True, "App installed"
    except Exception as e:
        return False, f"Ui not met {e}"
    


def maps_navigate(deviceId, location):
    dev = u2.connect(deviceId)
    try:
        # Checking Devices State. Screen on or off

        # if not dev.info.get('screenOn'):
        #     dev.screen_on()
        # Adb Command for to Open Map Application
        cmd = f'adb -s {deviceId} shell am start -a android.intent.action.VIEW -d "https://www.google.com/maps/"'
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("unable to open maps")
            return False, "unable to open maps"

        # First Screen Of Map Application Clicking on Search Bar
        if not dev(resourceId="com.google.android.apps.maps:id/search_omnibox_text_box").wait(timeout=10.0):
                return False, "Opening Map Application Failed"
        status = dev(resourceId="com.google.android.apps.maps:id/search_omnibox_text_box").click()
        if status is not None:
            return False, "Clicking on search bar failed"

        # Second Screen Of Map Application, Entering the location in Search bar.
        status = dev(text="Search here", className="android.widget.EditText").set_text(location)

        # Third Screen Of Map Application, Clicking on location Which is given in Suggestion Box.
        if dev(text=location, className="android.widget.TextView").wait(timeout=5.0):
            status = dev(text=location, className="android.widget.TextView").click()
            if status is not None:
                log.info("unable to click on location")
                return False, "unable to click on location"

        # Fourth Screen Of Map App, Clicking on Direction Button
        # time.sleep(1)
        # status = dev(textStartsWith='Directions').click()
        # if status is not None:
        #     log.info("unable to click on direction")
        #     return False, "unable to click on Directions"

        # Fourth Screen Of Map App, Clicking on Start Navigation Button
        if dev(text='Start').wait(timeout=5.0):
            status = dev(text='Start').click()
            time.sleep(20)
            if status is not None:
                log.info("unable to click on start")
                return False, "unable to click on start"

        # Checking the Maps Status in Notification Bar
        log.info("checking maps status")
        status, output = ad.check_maps(deviceId, location)
        if not status:
            log.info("unable to navigate in maps")
            return False, "unable to navigate in maps"

        return True, f"navigating to {location}"
    except Exception as e:
        dev.screenshot(f"{gc.IMAGE_FOLDER}/Maps.png")

        return False, f"Ui not met {e}"


def toggle_hotspot(deviceId, username):
    dev = u2.connect(deviceId)
    try:
        username = ""
        if not dev.info.get('screenOn'):
            dev.screen_on()
        cmd = f"adb -s {deviceId} shell am start -n com.android.settings/.TetherSettings"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, 'Failed to open settings'

        # if dev(textStartsWith='Portable').exists(timeout=5.0):
        #     status = dev(textStartsWith="Portable").click()
        elif dev(textContains='hotspot').wait(timeout=10.0):
            status = dev(textContains='hotspot').click()
        else:
            return False, "Ui not Met"

        if dev(textStartsWith="Off").wait(timeout=10.0):

            status = dev(textStartsWith='Off').right(
                className="android.widget.Switch").click()

        elif dev(textStartsWith="On").wait(timeout=10.0):
            status = dev(textStartsWith='on').right(
                className="android.widget.Switch").click()
        else:
            return False, "ui not met"
        if status is not None:
            log.info("failed to open tethering")
            return False, "failed to open tethering"
        # time.sleep(5)
        dev.press("back")
        dev.press("home")
        return True, "hotspot active"
    except Exception as e:
        dev.screenshot(f"{gc.IMAGE_FOLDER}/hotspot.png")
        return False, f"Ui not met {e}"


def install_fm(deviceId):
    try:

        # Installing fm app
        # devId = Device(deviceId)
        status, msg = install_app(
            deviceId,
            "https://play.google.com/store/apps/details?id=com.jonathanpuckey.radiogarden")
        
        if not status:
            return False, msg
        # if devId.screen != 'on':
        #     devId.screen.on()
        # cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d https://play.google.com/store/apps/details?id=com.jonathanpuckey.radiogarden"
        # (output, error, status) = cf.execute_commands(cmd)
        # if not status:
        #     return False, "not executed"
        # time.sleep(5)
        # if devId(textStartsWith='Install').exists:
        #     status = devId(text='Install').click()
        #
        #     if not status:
        #         return False, "app not downloaded"
        #
        #     status = devId(text='Open').click()
        #     time.sleep(10)
        #     if not status:
        #         return False, "app not opened"
        #     status = devId(textStartsWith='Allow').click()
        #     time.sleep(5)
        #     if not status:
        #         return False, "app not opened"
        #     status = devId(textStartsWith='Press play').click()
        #     time.sleep(5)
        #     if not status:
        #         return False, "app not opened"
        # cmd = f"adb -s {deviceId} shell input keyevent 3"
        # (output, error, status) = cf.execute_commands(cmd)
        return True, "App installed"
    except Exception as e:

        return False, f"Ui not met {e}"


def check_fm_status(deviceId):
    try:
        # checking fm
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        status = devId.open_notification()
        if not devId(textStartsWith='Radio ').wait(timeout=5.0):
            return False, "fm is not playing"
        return True, "fm is playing"
    except Exception as e:
        return False, f"Ui not met {e}"


def play_fm_radio(deviceId):
    d = u2.connect(deviceId)
    try:
        # playing Fm radio
        if not d.info.get('screenOn'):
            d.screen_on()
        status, output = install_fm(deviceId)
        d.press("home")
        if d(textContains="MyRadio").exists():
            d(textContains = "MyRadio").click()
        
        # if not status:
        #     return False, output
        # cmd = f"adb -s {deviceId} shell am start -n com.jonathanpuckey.radiogarden/com.jonathanpuckey.radiogarden.MainActivity"
        # (output, error, status) = cf.execute_commands(cmd)
        # time.sleep(5)
        # if not status:
        #     log.info('Playing FM is failed')
        #     return False, 'Playing FM is failed'
        if d(textContains="Deny").wait(timeout=10.0):
            d(text="Deny").click()
        if d(className="android.widget.Image").exists(timeout=10.0):
            d(className="android.widget.Image").click()
        if d(textStartsWith="Explore").wait(timeout=5.0):
            status = d(textStartsWith="Explore").click()
        if d(textStartsWith="Explore").wait(timeout=5.0):
            status = d(textStartsWith="Explore").click()
        if d(textStartsWith="Search").wait(timeout=5.0):
            status = d(textStartsWith="Search").click()
            if status is not None:
                return False, "unable to click on search"
        status = d(resourceId="search-input").click()
        # if status is not None:
        #     return False, "unable to search"
        (output,status,msg) = cf.execute_commands(f'adb -s {deviceId} shell input text Kannada')

        if d(textStartsWith='Kannada ').wait(timeout=5.0):
            status = d(textStartsWith='Kannada ').click()
        # if status is not None:
        #     return False, "unable to click on fm station"
        # status = d(textStartsWith= "Explore").click()
        # if not status:
        #     return False, "unable to click on explore"
        # status, msg = check_fm_status(deviceId)
        # if not status:
        #     return False, "fm is not playing"
        if d(textContains="Unknown").exists:

            d.press("home")
        return True, 'Started playing FM'
    except Exception as e:
        d.screenshot(f"{gc.IMAGE_FOLDER}/radio.png")
        return False, f"Ui not met {e}"



def stream_floating_tube(deviceId):
    try:
        status, msg = install_app(deviceId,
                                  "https://play.google.com/store/apps/details?id=com.playtubevideo.floatingtubevideoplayer&hl=en_IN&gl=US")

        if not status:
            return False, msg

        status, msg = ad.open_app(
            deviceId,
            "https://play.google.com/store/apps/details?id=com.playtubevideo.floatingtubevideoplayer&hl=en_IN&gl=US")
        if not status:
            return False, msg
        log.info("app opened")

        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_on()

        if dev(resourceId="com.playtubevideo.floatingtubevideoplayer:id/search").exists(timeout=10.0):
            log.info("searchbar exists")
            status = dev(
                resourceId="com.playtubevideo.floatingtubevideoplayer:id/search").click()
            time.sleep(20)
            if status is not None:
                return False, "failed to type on search"
            log.info("clicked on search bar")
        else:
            return False, "No search bar"
        text = "audio songs"
        dev(resourceId="com.playtubevideo.floatingtubevideoplayer:id/search_src_text").set_text(text)

        if dev(resourceId="com.google.android.inputmethod.latin:id/key_pos_ime_action").exists(timeout=10.0):
            if not dev(resourceId="com.google.android.inputmethod.latin:id/key_pos_ime_action").click():
                return False, "search btn unsuccess"
        else:
            return False, "no search btn"

        if dev(
                text="S.P.Balasubrahmanyam Evergreen Kannada Hits Audio Songs Jukebox | SPB Kannada Old Hit Songs").wait(timeout=5.0):
            if not dev(
                    text="S.P.Balasubrahmanyam Evergreen Kannada Hits Audio Songs Jukebox | SPB Kannada Old Hit Songs").click():
                return False, "failure"
        else:
            return False, "video not found"
        log.info("video streaming")
        return True, "video streaming"
    except Exception as e:
        return False, f"Ui not met {e}"



def exit_fm(deviceId):
    cmd = f'adb -s {deviceId} shell am force-stop "com.jonathanpuckey.radiogarden"'
    (output, error, status) = cf.execute_commands(cmd)
    if not status:
        return False, "unable to quit fm"
    return True, "fm closed"


def make_third_party_audio_call(deviceId, name):
    dev = None
    try:

        dev = u2.connect(deviceId)
        if not dev.info.get('screenOn'):
            dev.screen_on()
            dev.press("recent")

        cmd = f"adb -s {deviceId} shell am start -n com.google.android.apps.tachyon/com.google.android.apps.tachyon.MainActivity"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "Application not opened"

        if dev(resourceId="com.google.android.apps.tachyon:id/home_screen_search_bar").exists(timeout=5.0):
            status = dev(
                resourceId="com.google.android.apps.tachyon:id/home_screen_search_bar").click()
            if status is not None:
                return False, "not clicked on search bar"

        if not dev(textStartsWith='Search contacts').wait(timeout=5.0):
            return False, "Search Contacts couldn't find"

        cmd = f"adb -s {deviceId} shell input text {name}"
        (output, error, status) = cf.execute_commands(cmd)


        if not dev(text=name, className="android.widget.TextView").exists:
            return False, "Ui Not available"

        status = dev(text=name, className="android.widget.TextView").click()

        if not dev(resourceId="com.google.android.apps.tachyon:id/voice_call_button").exists:
            return False, "Not clicked on video call"
        status = dev(
            resourceId="com.google.android.apps.tachyon:id/voice_call_button").click()

        return True, "completed successfully"
    except Exception as e:
        dev.screenshot(f"{gc.IMAGE_FOLDER}/audio.png")
        return False, f"Ui not met {e}"


def make_third_party_video_call(deviceId, contactName):
    dev = None
    try:
        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_on()
            dev.press("recent")
        cmd = f"adb -s {deviceId} shell am start -n com.google.android.apps.tachyon/com.google.android.apps.tachyon.MainActivity"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "Application not opened"

        if dev(resourceId="com.google.android.apps.tachyon:id/home_screen_search_bar").exists(timeout=5.0):
            status = dev(
                resourceId="com.google.android.apps.tachyon:id/home_screen_search_bar").click()
            if status is not None:
                return False, "not clicked on search bar"


        dev(textStartsWith='Search contacts').set_text(contactName)
        time.sleep(20)
        if not dev(text=contactName, className="android.widget.TextView").exists:
            return False, "Ui Not available"

        status = dev(text=contactName,
                     className="android.widget.TextView").click()

        if not dev(resourceId="com.google.android.apps.tachyon:id/video_call_button").exists:
            return False, "Not clicked on video call"
        status = dev(
            resourceId="com.google.android.apps.tachyon:id/video_call_button").click()

        return True, "completed successfully"
    except Exception as e:
        dev.screenshot(f"{gc.IMAGE_FOLDER}/video.png")
        return False, f"Ui not met {e}"


def lock_screen(deviceId):
    try:
        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_off()
        return True, "Passed"
    except Exception as e:
        pass


def unlockDevices(deviceId):
    try:
        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_on()
        dev.press("recent")
    except Exception as e:
        pass


def rcv_third_party_call(deviceId):
    # dev = Device(deviceId)
    dev = None
    try:
        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_on()

        status = dev.open_notification()

        # if dev(resourceId="com.google.android.apps.tachyon:id/incoming_call_ring_control_title").exists:
        #     dev(resourceId="com.google.android.apps.tachyon:id/incoming_call_ring_control_title").drag.to(
        #         textStartsWith="Incoming", steps=20)
        # elif dev(resourceId="com.google.android.apps.tachyon:id/incoming_call_puck_bg").exists:
        #     dev(resourceId="com.google.android.apps.tachyon:id/incoming_call_puck_bg").drag.to(
        #         textStartsWith="Incoming", steps=10)
        if dev(textStartsWith="Incoming").exists(timeout=10.0):
            dev(textStartsWith="Incoming").click()
        if dev(text="Answer").exists(timeout=10.0):
            dev(text="Answer").click()
        elif dev(text="ANSWER").exists:
            dev(text="ANSWER").click()

        elif dev(resourceId="com.google.android.apps.tachyon:id/incoming_call_puck_icon").exists(timeout=5.0):
            status = dev(resourceId="com.google.android.apps.tachyon:id/incoming_call_puck_icon").drag_to(textStartsWith="Incoming")

        return True, "call accepted"
    except Exception as e:
        dev.screenshot(f"{gc.IMAGE_FOLDER}/rcv_third_party_call.png")
        return False, f"Accepting call failed {e}"


def terminate_call_third_party_call(deviceId):
    dev = u2.connect(deviceId)
    try:
        if not dev.info.get('screenOn'):
            dev.screen_on()
        status = dev.open_notification()

        # dev(resourceId="com.google.android.apps.tachyon:id/incoming_call_puck_bg").long_click()
        # status = dev(
        #     resourceId="com.google.android.apps.tachyon:id/end_call_button").click()
        if dev(text="End call").wait(2.0):
            dev(text="End call").click()
        elif dev(text="END CALL").exists:
            dev(text="END CALL").click()
        return True, "Call Terminated"
    except Exception as e:
        dev.screenshot(f"{gc.IMAGE_FOLDER}/terminate_call_third_party_call.png")
        return False, f"failed due to {e}"


def updating_apps(deviceId):
    devId = u2.connect(deviceId)
    try:
        # devId = Device(deviceId)
        if devId.info.get('screenOn') != 'on':
            devId.screen_on()

        ad.launchApplication(deviceId, packageName="com.android.vending",
                             activityName="com.google.android.finsky.activities.MainActivity")

        if devId(text='Books').wait(timeout=5.0):
            devId(text='Books').click()
        if devId(index=1,
              resourceId="com.android.vending:id/0_resource_name_obfuscated",
              className="android.widget.ImageView",
              packageName="com.android.vending",
              ).wait(timeout=5.0):
            devId(index=1,
                  resourceId="com.android.vending:id/0_resource_name_obfuscated",
                  className="android.widget.ImageView",
                  packageName="com.android.vending",
                  ).click()

        if devId(textStartsWith='Manage apps').wait(timeout=5.0):
            devId(textStartsWith='Manage apps').click()

        if devId(text='All apps up to date').exists:
            return True, "All apps are up to date"
        else:
            if devId(text='Update all').wait(timeout=5.0):
                devId(text='Update all').click()
                while True:
                    if devId(text='All apps up to date').exists:
                        break
            else:
                return False, "Failed to update the apps"
        return True, "Executed successfully"
    except Exception as e:
        devId.screenshot(f"{gc.IMAGE_FOLDER}/update.png")
        return False, f"Ui not met {e}"


def check_upload_status(deviceId):
    devId = u2.connect(deviceId)
    try:
        if not devId.info.get('screenOn'):
            devId.screen_on()
        status = devId.open_notification()

        if not status:
            return False, "failed to open notification"

        if not devId(textStartsWith='LOCATE FILE').exists(timeout=5.0):
            status = devId(textStartsWith='Drive').click()
            status = devId(textStartsWith='LOCATE FILE').exists

        devId(textStartsWith="LOCATE FILE").swipe("right", 5)
        if devId(textStartsWith='CLEAR ALL').exists:
            status = devId(textStartsWith='CLEAR ALL').click()

        devId.press("home")
        return True, "file uploaded successfully"

    except Exception as e:
        # devId.screenshot(f"{gc.IMAGE_FOLDER}/upload_check.png")
        return False, f"Ui not met {e}"


def check_song_status(deviceId):
    # checking output
    devId = u2.connect(deviceId)

    if not devId.info.get('screenOn'):
        devId.screen_on()

    if not devId(textStartsWith='Music').exists(timeout=5.0):
        return False, "output not received"
    devId.press("home")
    return True, "output not received"


def closeApps(devId):
    d = u2.connect(devId)
    try:
        if d.info.get('screenOn') != 'on':
            d.screen_on()
        d.press('recent')
        if d(descriptionMatches="No recent items").exists:
            d(descriptionMatches="No recent items").click()
            return True, "Cleared"
        if d(text="Clear all").exists(timeout=2.0):
            d(text="Clear all").click()
        elif d(textStartsWith="CLEAR ALL").exists:
            d(textStartsWith="CLEAR ALL").click()
        elif d(resourceId="com.miui.home:id/clearAnimView").exists:
            if d(resourceId="com.miui.home:id/clearAnimView").exists:
                d.press("home")
                d.press('recent')
                if d(resourceId="com.miui.home:id/clearAnimView").exists:
                    d(resourceId="com.miui.home:id/clearAnimView").click()
        else:
            i = 0
            if d(scrollable=True).exists:
                while True:
                    if i > 10:
                        break
                    if d(textStartsWith="Clear").exists:
                        d(textStartsWith="Clear").click()
                        break
                    if d(textStartsWith="CLEAR ALL").exists:
                        d(textStartsWith="CLEAR ALL").click()
                        break
                    if d(resourceId="com.miui.home:id/clearAnimView").exists:
                        d(resourceId="com.miui.home:id/clearAnimView").click()
                        break
                    if d(descriptionMatches="No recent items").exists:
                        d(descriptionMatches="No recent items").click()
                        break
                    d(scrollable=True).scroll.horiz.backward(steps=10)
                    i += 1
        d.open_notification()

        if d(textStartsWith='CLEAR ALL').wait(timeout=1.0):
            d(textStartsWith='CLEAR ALL').click()
        elif d(textStartsWith="Clear").exists:
            d(textStartsWith="Clear").click()
        # d.press('recent')
        # if not d(descriptionMatches="No recent items").exists:
        #     closeApps(devId)
        # d(descriptionMatches="No recent items").click()
        d.press("home")
        return True, "Cleared"
    except Exception as e:
        return False, f"Ui not met {e}"

def install_app(deviceId, url):
    devId = u2.connect(deviceId)
    try:
        # Installing fm app
        if not devId.info.get('screenOn'):
            devId.screen_on()

        cmd = f'adb -s {deviceId} shell am start -a android.intent.action.VIEW -d "{url}"'
        (output, error, status) = cf.execute_commands(cmd)
        print(output,error,status)

        x = devId.dump_hierarchy()


        if not status:
            return False, "not executed"
        if devId(textStartsWith='Install').wait(timeout=3.0):
            status = devId(text='Install').click()
            
            while True:
                if not devId(text='Cancel').exists:
                    if devId(text='Play').exists:
                        devId(text='Play').click()
                        break

                    elif devId(text='Open').exists:
                        devId(text='Open').click()
                        break
                    else:
                        continue
            # if not status:
            #     return False, "app not downloaded"
            # status = devId(text='Open').click()
            # time.sleep(10)
            # if not status:
            #     return False, "app not opened"
            # status = devId(textStartsWith='Allow').click()
            # time.sleep(5)
            # if not status:
            #     return False, "app not opened"
            # status = devId(textStartsWith='Press play').click()
            # time.sleep(5)
            # if not status:
            #     return False, "app not opened"

        elif devId(text='Open').wait(timeout=5.0):
            print("Trying to click on open")
            print(f"{devId(text='Open').click()}")
        elif devId(text='Play').exists:
            devId(text='Play').click()
        elif devId(textStartsWith='Update').exists:
            status = devId(text='Update').click()
            while True:
                if not devId(text='Cancel').exists:
                    if devId(text='Play').exists:
                        devId(text='Play').click()
                        break
                    elif devId(text='Open').exists:
                        devId(text='Open').click()
                        break
                    else:
                        continue

        return True, "App installed"
    except Exception as e:
        devId.screenshot(f"{gc.IMAGE_FOLDER}/install_app.png")
        return False, f"Ui not met {e}"


# def upload_file(deviceId, filename):
#     devId = u2.connect(deviceId)
#     try:
#         status, msg = ad.preload_file(deviceId, filename)
#         if not status:
#             return status, msg
#
#         res = (filename[::-1].partition("/"))[::-1]
#         file_name = res[2][::-1]
#         # devId = Device(deviceId)
#
#         if not devId.info.get('screenOn'):
#             devId.screen_on()
#
#         status, output = install_app(
#             deviceId,
#             "https://play.google.com/store/apps/details?id=com.google.android.apps.docs&hl=en_IN&gl=US")
#
#         if not status:
#             return False, output
#         time.sleep(5)
#
#         status = devId(className="android.widget.ImageButton",
#                        resourceId="com.google.android.apps.docs:id/branded_fab").click()
#         time.sleep(3)
#         if status is not None:
#             return False, "command not executed"
#         status = devId(textStartsWith='Upload').click()
#
#         if status is not None:
#             return False, "Opening upload failed"
#         time.sleep(2)
#         if devId(resourceId="com.android.documentsui:id/option_menu_search").exists:
#             devId(resourceId="com.android.documentsui:id/option_menu_search").click()
#         elif devId(resourceId="com.google.android.documentsui:id/option_menu_search").exists:
#             devId(resourceId="com.google.android.documentsui:id/option_menu_search").click()
#         else:
#             devId(resourceId="com.google.android.documentsui:id/searchbar_title").click()
#
#         time.sleep(2)
#         if devId(textStartsWith="Search…").exists:
#             devId(textStartsWith="Search…")
#             (output, status, msg) = cf.execute_commands(f'adb -s {deviceId} shell input text {file_name}')
#         time.sleep(2)
#         devId(resourceId="android:id/title",
#               packageName="com.android.documentsui", text=f"{file_name}").click()
#         time.sleep(10)
#         log.info("Uploading started..")
#         return True, "Uploading started"
#     except Exception as e:
#         devId.screenshot(f"{gc.IMAGE_FOLDER}/upload_file.png")
#         return False, f"Ui not met {e}"


def ims_reg(deviceId):
    devId = u2.connect(deviceId)
    try:

        if not devId.info.get('screenOn'):
            devId.screen_on()
        devId.screen_on()
        devId.swipe_ext("up", scale=0.8)
        devId.shell(f"adb -s {deviceId} shell input keyevent KEYCODE_DEL")
        cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d tel:%2A%23%2A%234636%23%2A%23%2A"
        (output, error, status) = cf.execute_commands(cmd)
        log.info("performing keyevent")
        cmd = f"adb -s {deviceId} shell input keyevent KEYCODE_DEL"
        (output, error, status) = cf.execute_commands(cmd)
        cmd = f"adb -s {deviceId} shell input keyevent 17"
        (output, error, status) = cf.execute_commands(cmd)
        if not devId(textContains="Phone information").wait(timeout=5.0):
            return 0, "Phone information"
        devId(textContains="Phone information").click()
        if not devId(descriptionStartsWith="More").wait(timeout=5.0):
            return 0, "Phone information"
        devId(descriptionStartsWith="More").click()
        if not devId(textStartsWith="IMS Service Status").wait(timeout=5.0):
            return 0, "Phone information"
        devId(textStartsWith="IMS Service Status").long_click(duration=1.0)
        xml = devId.dump_hierarchy()
        with open(f"{gc.IMAGE_FOLDER}/hierarchy.xml", "w") as fd:
            fd.write(xml)
        with open(f"{gc.IMAGE_FOLDER}/hierarchy.xml", "r") as fd:
            s = ""
            d = fd.read()

            searchString = 'text="IMS Registration: Registered'
            s = d.find('text="IMS Registration: Registered')
            if s == -1:
                s = d.find('text="IMS Registration: Not Registered')
                if s == -1:
                    return True, "IMS registered"

                return False, "Ims not registered"

        closeApps(deviceId)
        return True, "IMS registered"
    except Exception as e:
        devId.screenshot(f"{gc.IMAGE_FOLDER}/ims.png")
        return False, f"Ui not met {e}"


def scan_wifi(deviceId):
    devId = u2.connect(deviceId)
    try:
        # turning on Wi-Fi
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        cmd = "adb -s {0} shell am start -a android.settings.SETTINGS".format(deviceId)
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, "Wireless settings not opened"

        if devId(textContains="Wi‑Fi").exists:
            status = devId(textContains="Wi‑Fi").click()

            if status is not None:
                return False, "Not clicked on wifi"

        # if not devId(textStartsWith='Saved networks').exists:
        #     return False, "Saved network not exists"
        # status = devId(textStartsWith='Saved networks').click()
        # time.sleep(3)
        # if not status:
        #     return False, "Not clicked on Saved networks"
        return True, "Testcase executed"
    except Exception as e:
        devId.screenshot(f"{gc.IMAGE_FOLDER}/scan_wifi.png")
        return False, f"Ui not met {e}"


def checking_status_tethering(deviceId):
    try:
        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_on()
        dev.open_notification()
        if dev(textStartsWith='Tethering').exists(timeout=10):
            status = dev(textStartsWith='Tethering').click()
            if status is not None:
                return False, "Tethering is not on"
        return True, "Tethering is on"
    except Exception as e:
        return False, f"Ui not met {e}"


def toggle_airplane_mode(deviceId):
    dev = u2.connect(deviceId)
    try:
        # toggling airplane mode
        log.info("toggling airplane mode")
        if not dev.info.get('screenOn'):
            dev.screen_on()
        if dev(textContains='plane').exists:
            status = dev(textContains='plane').click()
            if status is not None:
                log.info("not clicked on plane mode")
                return False, "not clicked on plane mode"
            time.sleep(10)
        return True, "clicked on plane mode"
    except Exception as e:
        dev.screenshot(f"{gc.IMAGE_FOLDER}/aeroplane_mode.png")
        return False, f"Ui not met {e}"


def installing_online_game(
        deviceId,
        http="https://play.google.com/store/apps/details?id=com.tfgco.games.sports.free.tennis.clash"):
    status, msg = install_app(deviceId,
                              "https://play.google.com/store/apps/details?id=com.tfgco.games.sports.free.tennis.clash")
    return status, msg


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

# for Oneplus
def online_game(deviceId):
    try:
        status, msg = install_app(deviceId,"https://www.agame.com/game/bubble-shooter-extreme")
                                #   "https://play.google.com/store/apps/details?id=com.tfgco.games.sports.free.tennis.clash")
        if not status:
            return False, msg
        devId = u2.connect(deviceId)

        # if not devId.info.get('screenOn'):
        #     devId.screen_on()
        if devId(text = "START GAME").exists():
            devId(text = "START GAME").click()
            time.sleep(5)

        if devId(text="PLAY").exists(timeout=3.0):
            devId(text="PLAY").click()
            time.sleep(30)

        cmd = f" adb -s {deviceId} shell input tap 100 100"
        (ouput, error, status) = cf.execute_commands(cmd)
        cmd = f" adb -s {deviceId} shell input tap 300 100"
        (ouput, error, status) = cf.execute_commands(cmd)
        cmd = f" adb -s {deviceId} shell input tap 850 100"
        (ouput, error, status) = cf.execute_commands(cmd)
        time.sleep(5)
        cmd = f" adb -s {deviceId} shell input tap 100 100"
        (ouput, error, status) = cf.execute_commands(cmd)  
        # if devId(className="android.view.View").exists(timeout=3.0):
        #     time.sleep(10)
        #     cmd = f" adb -s {deviceId} shell input tap 100 100"
        #     (ouput, error, status) = cf.execute_commands(cmd)
        #     if not status:
        #         log.info("unable to tap on screen")
        #         return False, "unable to tap on screen"
        #     time.sleep(5)

        #     cmd = f" adb -s {deviceId} shell input tap 100 100"
        #     (ouput, error, status) = cf.execute_commands(cmd)
        #     if not status:
        #         log.info("unable to tap on screen")
        #         return False, "unable to tap on screen"
        #     cmd = f" adb -s {deviceId} shell input tap 100 100"
        #     (ouput, error, status) = cf.execute_commands(cmd)
        #     if not status:
        #         log.info("unable to tap on screen")
        #         return False, "unable to tap on screen"
        #     time.sleep(5)

        #     cmd = f" adb -s {deviceId} shell input tap 100 100"
        #     (ouput, error, status) = cf.execute_commands(cmd)
        #     if not status:
        #         log.info("unable to tap on screen")
        #         return False, "unable to tap on screen"
        #     time.sleep(5)

        #     cmd = f" adb -s {deviceId} shell input tap 100 100"
        #     (ouput, error, status) = cf.execute_commands(cmd)
        #     if not status:
        #         log.info("unable to tap on screen")
        #         return False, "unable to tap on screen"
        return True, "playing game"
    except Exception as e:
        return False, f"Ui not met {e}"


def putCallOnHold(deviceId):
    """
        function name  : putCallOnHold
        description    : this function is a used to put call on hold
        return         : return boolean, string(mCallState)
    """
    d = u2.connect(deviceId)
    try:
        if not d.info.get('screenOn'):
            d.screen_on()
        if d(textStartsWith="Hol").exists:
            d(textStartsWith="Hol").click()
        else:
            d.click(50, 100)
            if not d(textStartsWith="Hol").exists:
                return True, "Put call on hold failed"
            d(textStartsWith="Hol").click()
        return True, "Hold performed successful"
    except Exception as e:
        d.screenshot(f"{gc.IMAGE_FOLDER}/hold.png")
        return False, f"Ui not met {e}"


def swap_call(deviceId):
    """
        function name  : putCallOnHold
        description    : this function is a used to swap calls
        return         : return boolean, string(mCallState)
    """
    d = u2.connect(deviceId)
    try:


        if not d.info.get('screenOn'):
            d.screen_on()
        if d(textStartsWith="Swap").exists:
            status = d(textStartsWith="Swap").click()
        else:
            status = d.click(50, 100)
            if not d(textStartsWith="Swap").exists:
                return False, "Put call on Swap failed"
            status = d(textStartsWith="Swap").click()
        return status, "Swap performed successful"
    except Exception as e:
        d.screenshot(f"{gc.IMAGE_FOLDER}/swap.png")
        return False, f"Ui not met {e}"


def merge_calls(deviceId):
    """
       function name  :  Merge calls
       description    : This function is used to merge calls.
       return         : return boolean, string
    """
    time.sleep(20.0)
    # Using UI automater
    # try:
    devId = u2.connect(deviceId)

        # if not devId.info.get('screenOn'):
        #     devId.screen_on()
        # status, msg = ad.open_app(deviceId)
        # if not status:
        #     return False, msg
        # log.info("app opened")
        # if devId(className="android.widget.EditText").wait(timeout=5.0):
        #     status = devId(className="android.widget.EditText").click()

        #     if status is not None:
        #         return False, "Failure to run"
        # devId(className="android.widget.EditText").set_text(host)
    if devId(resourceid="com.google.android.dialer:id/icon_view", className="android.widget.ImageView").exists():
        devId(resourceid="com.google.android.dialer:id/icon_view", className="android.widget.ImageView").click()
        # if devId(text="Start").exists:
        #     devId(text="Start").click()
    #     if status is not None:
    #         return False, "Merge failed"
    # except Exception as e:
    #     return False, f"Ui Not met due to {e}"

    return True, "ping is running"

def upgrade_call(deviceId):
    """
       function name  :  upgrade_call
       description    : This function is used to upgrade the calls
       return         : return boolean, string
    """
    # Using UI automater
    d = u2.connect(deviceId)
    if d(text="Video call").wait(timeout=10):
        d(textStartsWith="Video call").click()
    # try:

    #     # if not d.info.get('screenOn'):
    #     #     d.screen_on()
    #     if d(text="Video call").wait(timeout=10):
    #         d(textStartsWith="Video call").click()
    #     else:
    #         d.click(50, 100)
    #         if not d(textStartsWith="Video").exists:
    #             d.screenshot(f"{gc.IMAGE_FOLDER}/upgrade_call.png")
    #             return False, "Video call failed"
    #         d(textStartsWith="Video").click()

    #     return True, "upgrade_call performed successful"
    # except Exception as e:
    #     d.screenshot(f"{gc.IMAGE_FOLDER}/upgrade_call.png")
    #     return False, f"Ui not met {e}"
    # # try:
    # #     d = Device(deviceId)
    # #     status = d(textStartsWith="Video").click()
    # # except Exception as e:
    # #     return False, f"Execption occured {str(e)}"

    return True, "Merge performed successfully"


def play_next_video(deviceId):
    # playing next video in youtube
    try:
        cmd = f"adb -s {deviceId} shell input keyevent 87"
        os.system(cmd)

        # d = Device(deviceId)
        # if d.screen != "on":
        #     d.screen.on()
        # if d(resourceId="com.google.android.youtube:id/player_control_next_button").exists:
        #     status = d(
        #         resourceId="com.google.android.youtube:id/player_control_next_button").click()
        # else:
        #     status = d.click(50, 100)
        #     if not d(resourceId="com.google.android.youtube:id/player_control_next_button").exists:
        #         return False, "Failed playing next video"
        #     status = d(
        #         resourceId="com.google.android.youtube:id/player_control_next_button").click()

        return True, "Next Video played"
    except Exception as e:
        return False, f"Ui not met {e}"


def play_prev_video(deviceId):
    try:

        d = u2.connect(deviceId)

        if not d.info.get('screenOn'):
            d.screen_on()
        # playing next video in youtube
        cmd = f"adb -s {deviceId} shell input keyevent 88"
        os.system(cmd)

        # if d(resourceId="com.google.android.youtube:id/player_control_previous_button").exists:
        #     status = d(
        #         resourceId="com.google.android.youtube:id/player_control_previous_button").click()
        # else:
        #     time.sleep(10)
        #     cmd = f"adb -s {deviceId} shell input keyevent 87"
        #     os.system(cmd)
        #     if not d(resourceId="com.google.android.youtube:id/player_control_previous_button").exists:
        #         return False, "Failed playing next video"
        #     status = d(
        #         resourceId="com.google.android.youtube:id/player_control_previous_button").click()

        return True, "prev Video played"
    except Exception as e:
        return False, f"Ui not met {e}"


def downgrade_call(deviceId):
    """
       function name  :  downgrade_call
       description    : This function used for downgarde VT call.
       return         : return
    """
    d = u2.connect(deviceId)
    try:


        # if not d.info.get('screenOn'):
        #     d.screen_on()
        if d(textStartsWith="Audio").exists(timeout=10.0):
            status = d(textStartsWith="Audio").click()
        else:
            status = d.click(50, 100)
            if not d(textStartsWith="Audio").exists:
                d.screenshot(f"{gc.IMAGE_FOLDER}/downgrade_call.png")
                return False, "downgrading  call failed"
            status = d(textStartsWith="Audio").click()

        return True, "downgrade_call performed successful"
    except Exception as e:
        d.screenshot(f"{gc.IMAGE_FOLDER}/downgrade_call.png")
        return False, f"Ui not met {e}"
    # d = Device(deviceId)
    # try:
    #     status = d(textStartsWith="Audio").click()
    #     print("Hi 1")
    # except:
    #     try:
    #         status = d(textStartsWith="Audio-only").click()
    #         print("Hi 2")
    #     except:
    #         return False, "Downgrading Call failed"
    # print("hi 3")
    # return status, "Call Successfully Downgraded"


def acceptVT_call(deviceId2):
    """
       function name  :  downgrade_call
       description    : This function used for downgarde VT call.
       return         : return
    """
    d = u2.connect(deviceId2)
    # d.press("home")
    try:

        # if not d.info.get('screenOn'):
        #     d.screen_on()
        

        if d(textStartsWith="Accept").exists:
            d(textStartsWith="Accept").click()

        elif d(text="Answer").exists:
            d(text="Answer").click()

        elif d(textStartsWith="Accept").exists:
            d(textStartsWith="Accept").click()
        elif d(text="ANSWER").exists:
            d(text="ANSWER").click()
        else:
            d(resourceId="com.google.android.dialer:id/incoming_call_puck_bg").drag_to(
            text="Answer as voice call", duration=0.2)
    except:
        try:
            status = d(textStartsWith="ACCEPT").click()
        except:
            return False, "Accept Call failed"

    return True, "Call Successfully Downgraded"


def stop_maps_navigation(deviceId):
    d = u2.connect(deviceId)

    if not d.info.get('screenOn'):
        d.screen_on()
    d.open_notification()
    if d(text="EXIT NAVIGATION").exists:
        d(text="EXIT NAVIGATION").click()


def run_ping_app(deviceId, ping_link, host):
    try:
        devId = u2.connect(deviceId)

        # if not devId.info.get('screenOn'):
        #     devId.screen_on()
        status, msg = ad.open_app(deviceId, ping_link)
        if not status:
            return False, msg
        log.info("app opened")
        if devId(className="android.widget.EditText").wait(timeout=5.0):
            status = devId(className="android.widget.EditText").click()

            if status is not None:
                return False, "Failure to run"
        devId(className="android.widget.EditText").set_text(host)
        if devId(resourceId="com.google.android.inputmethod.latin:id/key_pos_ime_action",
              className="android.widget.FrameLayout").wait(timeout=5.0):
            status = devId(resourceId="com.google.android.inputmethod.latin:id/key_pos_ime_action",
                       className="android.widget.FrameLayout").click()
        if devId(text="Start").exists:
            devId(text="Start").click()
        if status is not None:
            return False, "Failure to run"
    except Exception as e:
        return False, f"Ui Not met due to {e}"

    return True, "ping is running"


def connect_bt_device(deviceId, bt_dest):
    devId = u2.connect(deviceId)

    if not devId.info.get('screenOn'):
        devId.screen_on()

    for i in range(3):
        if devId(textContains='Bluetooth').exists and devId(text='Off').exists:
            devId(textContains='Bluetooth').click()
            if devId(text='Off').exists:
                devId(text='Off').click()
        elif devId(text='Off').exists:
            devId(text='Off').click()
        if devId(textContains='Scan').exists:
            devId(textContains='Scan').click()
        elif devId(textContains='Refresh').exists:
            devId(textContains='Refersh').click()
        if devId(text=bt_dest).exists:
            devId(text=bt_dest).click()
            if devId(textContains='Ok').exists:
                devId(textContains='Ok').click()
            if devId(textContains='Pair').exists:
                devId(textContains='Pair').click()
            if devId(text='Connected').exists:
                return True, "Connected with BT device"
    return False, "Unable to connect with BT device"


def reg_vpn(deviceId):
    dev = u2.connect(deviceId)
    try:
        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_on()
        status, msg = install_app(
            deviceId,
            "https://play.google.com/store/apps/details?id=com.cloudflare.onedotonedotonedotone&hl=en_IN&gl=US")

        print(status)
        print(msg)
        if not status:
            return False, "VPN App not installed"
        if dev(text="Next").exists(timeout=10.0):
            dev(text="Next").click()
        if dev(text="Accept").wait(timeout=10.0):
            dev(text="Accept").click()

        if dev(resourceId="com.cloudflare.onedotonedotonedotone:id/launchSwitch").wait(timeout=10.0):
            dev(resourceId="com.cloudflare.onedotonedotonedotone:id/launchSwitch").click()

        if dev(text="Install VPN Profile").wait(timeout=10.0):
            dev(text="Install VPN Profile").click()

        if dev(text="OK").exists:
            dev(text="OK").click()

        if not dev(text="Connected").exists:
            log.info("Vpn Connected")
            return False, "VPN Not Connected"

        if dev(resourceId="com.cloudflare.onedotonedotonedotone:id/launchSwitch").exists:
            dev(resourceId="com.cloudflare.onedotonedotonedotone:id/launchSwitch").click()

        # if dev(text="Until I turn it back on").exists:
        #     dev(text="Until I turn it back on").click()

        dev(text="Until I turn it back on").click()
        if dev(text="Disconnected").exists:
            log.info("Vpn Disconnected")
        return True, "VPN Connected And Disconnect"
    except Exception as e:
        dev.screenshot(f"{gc.IMAGE_FOLDER}/VPN.png")
        return False, f"Ui Not met due to {e}"


def change_plmn(devId, plmn):
    return True, "Msg"


def rat_validation(deviceId, mode):
    try:
        search_str = ""
        if mode == 1:
            search_str += 'LTE/WCDMA/GSM auto'
        elif mode == 2:
            search_str += '3G/2G auto'
        elif mode == 3:
            search_str += '3G only'
        else:
            search_str += '2G only'
        cmd = f"adb -s {deviceId} shell am start -a android.settings.NETWORK_OPERATOR_SETTINGS"
        (output, error, status) = cf.execute_commands(cmd)
        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_on()
        if mode == 1:
            if not dev(text='LTE/WCDMA/GSM auto').exists:
                return False, "rat change failed"
        elif mode == 2:
            if not dev(text='3G/2G auto').exists:
                return False, "rat change failed"
        elif mode == 3:
            if not dev(text='3G only').exists:
                return False, "rat change failed"
        elif mode == 4:
            if not dev(text='LTE only').exists:
                return False, "rat change failed"
        else:
            if not dev(text='2G only').exists:
                return False, "rat validation done"
    except Exception as e:
        try:
            cmd = f"adb -s {deviceId} shell am start -a android.settings.NETWORK_OPERATOR_SETTINGS"
            (output, error, status) = cf.execute_commands(cmd)
            dev = u2.connect(deviceId)

            if not dev.info.get('screenOn'):
                dev.screen_on()
            # dev(text='Advanced').click()
            if dev(text='Preferred network type').exists:
                status = dev(text='Preferred network type').click()
            if dev(text='Preferred network mode').exists:
                status = dev(text='Preferred network mode').click()
            if mode == 1:
                dev(text='LTE/WCDMA/GSM auto').click()
            elif mode == 2:
                dev(text='3G/2G auto').click()
            elif mode == 3:
                dev(text='3G only').click()
            elif mode == 4:
                if dev(textContains='LTE').exists:
                    dev(textContains='LTE').click()
            else:
                dev(text='2G only').click()
            return True, "changed rat successfully"
        except Exception as e:
            return False, f"Ui Not met due to {e}"


def change_rat(deviceId, mode):
    try:
        cmd = f"adb -s {deviceId} shell am start -a android.settings.NETWORK_OPERATOR_SETTINGS"
        (output, error, status) = cf.execute_commands(cmd)
        dev = u2.connect(deviceId)

        if not dev.info.get('screenOn'):
            dev.screen_on()
        # dev(text='Advanced').click()
        if dev(text='Preferred network type').exists:
            status = dev(text='Preferred network type').click()
        if dev(text='Preferred network mode').exists:
            status = dev(text='Preferred network mode').click()
        if mode == 1:
            dev(text='LTE/WCDMA/GSM auto').click()
        elif mode == 2:
            dev(text='3G/2G auto').click()
        elif mode == 3:
            dev(text='3G only').click()
        elif mode == 4:
            if dev(textContains='LTE').exists:
                dev(textContains='LTE').click()
        else:
            dev(text='2G only').click()
        return True, "changed rat successfully"
    except Exception as e:
        return False, f"Ui Not met due to {e}"


def send_mms(deviceId, phoneNum):
    try:
        devId = u2.connect(deviceId)

        # if not devId.info.get('screenOn'):
        #     devId.screen_on()

        cmd = f"adb -s {deviceId} shell am start -a android.intent.action.SENDTO -d sms:{phoneNum}"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Message app not openend")
            return False, "Message app not openend"
        log.info("Text message opened")


        if devId(className="android.widget.ImageView",
                 resourceId="com.google.android.apps.messaging:id/camera_gallery_button").exists(timeout=5.0):

            status = devId(className="android.widget.ImageView",
                           resourceId="com.google.android.apps.messaging:id/camera_gallery_button").click()
            if status is not None:
                log.info("Not clicked on gallery")
                return False, "Not clicked on gallery"
            log.info("clicked on gallery")
        elif devId(resourceId="com.google.android.apps.messaging:id/plus_button").exists:
            devId(resourceId="com.google.android.apps.messaging:id/plus_button").click()
            if devId(resourceId="com.google.android.apps.messaging:id/device_camera_picture_button").exists:
                devId(resourceId="com.google.android.apps.messaging:id/device_camera_picture_button").click()

        if devId(className="android.widget.ImageView",
                 resourceId="com.google.android.apps.messaging:id/shutter_button").exists:
            status = devId(className="android.widget.ImageView",
                           resourceId="com.google.android.apps.messaging:id/shutter_button").click()
            # if not status:
            #     log.info("Not clicked")
            #     return False, "Not clicked"
            log.info("clicked on button")

        if devId(textContains="Gallery").exists:
            status = devId(textContains="Gallery").click()

        if devId(resourceId="com.android.camera2:id/shutter_button").exists:
            devId(resourceId="com.android.camera2:id/shutter_button").click()
        if devId(resourceId="com.android.camera2:id/done_button").exists:
            devId(resourceId="com.android.camera2:id/done_button").click()
        # devId(text = "left").click()
        
        time.sleep(5.0)
        if devId(text="Add").exists:
            status = devId(text="Add").click()
            if status is not None:
                log.info("Not clicked")
                return False, "Not clicked"
            log.info("clicked on button")
        if devId(text="MMS").exists:
            devId(text="MMS").click()
            return True, "MMS sending.."
        cmd = f"adb -s {deviceId} shell input keyevent 22"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Not clicked")
            return False, "Not clicked"
        log.info("clicked on button")

        cmd = f"adb -s {deviceId} shell input keyevent 22"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Not clicked")
            return False, "Not clicked"
        log.info("clicked on button")

        cmd = f"adb -s {deviceId} shell input keyevent 66"
        (ouput, error, status) = cf.execute_commands(cmd)
        if not status:
            log.info("Not clicked")
            return False, "Not clicked"
        log.info("clicked on button")
        return True, "Test case executed"
    except Exception as e:
        return False, f"Ui Not met due to {e}"


def disable_hotspot(deviceId):
    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        cmd = f"adb -s {deviceId} shell am start -n com.android.settings/.TetherSettings"
        (output, error, status) = cf.execute_commands(cmd)
        if not status:
            return False, 'Failed to open settings'
        # cmd = f"adb -s {deviceId} shell input keyevent 20"
        # (output, error, status) = cf.execute_commands(cmd)
        # if not status:
        #     return False, 'Failed to open hotspot'
        # object = devId(className="android.widget.CheckBox")
        # value = object.__getattr__("checked")
        # print(value)
        # if (value == 1):
        #     cmd = f"adb -s {deviceId} shell input keyevent 66"
        #     (output, error, status) = cf.execute_commands(cmd)
        #     if not status:
        #         return False, 'Failed to disable hotspot'
        # else:
        #     return False, 'Failed to disable hotspot'
        if devId(textContains="hotspot").exists(timeout=2.0):
            devId(textContains="hotspot").click()
        if devId(textContains="Off").exists(timeout=2.0):
            return True, "hotspot disabled"
        devId(textContains="On").click()

        return True, "hotspot disabled"
    except Exception as e:
        return False, f"Ui Not met due to {e}"


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


def open_multiple_applications(deviceId, Https_Link):
    import subprocess
    try:
        devId = u2.connect(deviceId)

        if not devId.info.get('screenOn'):
            devId.screen_on()
        temp_variable = 0
        while (temp_variable < len(Https_Link)):
            # opening play store
            cmd = f'adb -s {deviceId} shell am start -a android.intent.action.VIEW -d "{Https_Link[temp_variable]}"'
            (output, error, status) = cf.execute_commands(cmd)
            if not status:
                return False, "not executed"

            # installing apps
            if devId(textStartsWith='Install').wait(timeout=5.0):

                status = devId(text='Install').click()

            else:
                click =f"adb shell input tap 460 885"
                subprocess.run(click,shell=True,capture_output=True)
                time.sleep(3)

            

            #     if status is not None:
            #         return False, "app not downloaded"
            #     while not devId(textStartsWith='Uninstall').exists:
            #         pass

            # if devId(textStartsWith='OK').exists:

            #     status = devId(textStartsWith='OK').click()
            #     if status is not None:
            #         return False, "not clicked on ok"
            #     while not devId(textStartsWith='Uninstall').exists:
            #         pass

            # if devId(textStartsWith='Download').exists:
            #
            #     status = devId(text='Download').click()
            #     time.sleep(2)
            #     if not status:
            #         return False, "app not downloaded"
            #     while not devId(textStartsWith='Uninstall').exists:
            #         pass

            if devId(textStartsWith='Update').exists:
                status = devId(text='Update').click()
                if status is not None:
                    return False, "app not downloaded"
                while not devId(textStartsWith='Uninstall').exists:
                    pass
            # opening installed apps
            if devId(textStartsWith='Open').exists:
                pass
                # print("2")
                # status = devId(textStartsWith='Open').click()
                # if not status:
                #     return False, "unable to open app"

            if devId(textStartsWith='Play').exists:
                pass
            temp_variable += 1
        return True, "multiple apps are installing"
    except Exception as e:
        return False, f"Ui Not met due to {e}"


def uninstall_multiple_applications(deviceId, Https_Link):
    devId = u2.connect(deviceId)
    try:
        if not devId.info.get('screenOn'):
            devId.screen_on()
        temp_variable = 0

        while temp_variable < len(Https_Link):
            cmd = f"adb -s {deviceId} shell am start -a android.intent.action.VIEW -d {Https_Link[temp_variable]}"
            (output, error, status) = cf.execute_commands(cmd)
            if not status:
                return False, "not executed"

            while not devId(textStartsWith='Uninstall').wait(timeout=2.0):
                pass
            status = devId(text='Uninstall').click()
            if status is not None:
                return False, "app not downloaded"
            temp_variable += 1
        return True, "multiple apps are installing"
    except Exception as e:
        devId.screenshot(f"{gc.IMAGE_FOLDER}/error_unistall.png")
        return False, f"Ui Not met due to {e}"

def turn_on_torch(deviceId, status):
    try:
        log.info("turning on the torch")
        devId = u2.connect(deviceId)
        devId.press('home')
        devId.swipe_ext('down')
        time.sleep(1)
        devId.swipe_ext('down')
        time.sleep(1)
        devId(text='Flashlight').click()
        return True, f"Torch is {status}"
    except Exception as e:
        return False, f"Ui not met {e}"
    finally:
        devId.press('home')