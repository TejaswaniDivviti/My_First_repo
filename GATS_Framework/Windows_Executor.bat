ECHO Execution Started.
mkdir temp
cd ./scripts/libraries/framework_utils/
set PATH=%PATH%;..\..\..\adb_tool
adb devices
python scheduler.py %1
cd ../../../
rmdir /s /q temp
ECHO Execution Completed.

