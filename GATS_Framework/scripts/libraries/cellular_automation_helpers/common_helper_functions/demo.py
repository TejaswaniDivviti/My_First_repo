import time
import uiautomator2 as u2
#
d = u2.connect("92KAY01TTW")
print(d.dump_hierarchy())
status = d(resourceId="com.google.android.apps.tachyon:id/incoming_call_puck_icon").drag_to(textStartsWith="Incoming")



