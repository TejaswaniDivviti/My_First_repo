*** Settings ***
Test Timeout    65 minutes
Library     BuiltIn
Library     Collections
Resource    ${EXECDIR}/../../../resources/platform/res_common.robot
Resource    ${EXECDIR}/../../../resources/cellular/res_common.robot

Variables   ${dict.yaml}/uiconfig.yaml

Test Setup  Run Keywords    
    ...  Setup Log   ${dict.project}    ${dict.milestone}    ${dict.session}    ${dict.device}    ${dict.iter}    LIVE_LTE_SS_STAB   @{TEST TAGS}
    ...  AND    Start Device Log   ${yamlData}    ${log_type}

Test Teardown  Run Keywords    
    ...  Stop Device Log    ${yamlData}    ${log_type}
    ...  AND    Remove Log Handler

Suite Teardown    Run Keyword    Fill Excel    ${log_type}

*** Variables ***
&{dict}     project=${1}     milestone=${2}     session=${3}     device=${4}
${log_type}    0

*** Test Cases ***

matter_tc_001
    [Documentation]    Performing Delta Testcases 500
    [Tags]             matter_tc_001
    matter_1           matter_tc_001    ${yamlData}    ${log_type}

TC_PLMN_Wifi_Operator
    [Documentation]    Performing Delta Testcases 500
    [Tags]             TC_PLMN_Wifi_Operator
    TC_SS_01           TC_PLMN_Wifi_Operator    ${yamlData}    ${log_type}

TC_bluetooth_wifi_on_off_10times
    [Documentation]    Performing Delta Testcases 500
    [Tags]             TC_bluetooth_wifi_on_off_10times
    SS_100000            TC_bluetooth_wifi_on_off_10times    ${yamlData}    ${log_type}


TC_01_wifi_SS
    [Documentation]    Performing Delta Testcases 500
    [Tags]             TC_01_wifi_SS
    LIVE_SS_1000        TC_01_wifi_SS    ${yamlData}    ${log_type}

TC_500_LIVE_MAP_SEARCH
    [Documentation]    Performing Delta Testcases 500
    [Tags]             TC_500_LIVE_MAP_SEARCH
    LIVE_SS_500        TC_500_LIVE_MAP_SEARCH    ${yamlData}    ${log_type}

TC_023_LIVE_LTE_SS_STAB_WIFI_UPD_APP
    [Documentation]    Performing Delta Testcases 1
    [Tags]             TC_023_LIVE_LTE_SS_STAB_WIFI_UPD_APP
    LIVE_SS__1         TC_023_LIVE_LTE_SS_STAB_WIFI_UPD_APP    ${yamlData}    ${log_type}

TC_024_LIVE_LTE_SS_STAB_WIFI_INSTL_APP
    [Documentation]    Performing Delta Testcases 2
    [Tags]             TC_024_LIVE_LTE_SS_STAB_WIFI_INSTL_APP
    LIVE_SS__2         TC_024_LIVE_LTE_SS_STAB_WIFI_INSTL_APP    ${yamlData}    ${log_type}

TC_025_LIVE_LTE_SS_STAB_CHG_WIFI_NW
    [Documentation]    Performing Delta Testcases 3
    [Tags]             TC_025_LIVE_LTE_SS_STAB_CHG_WIFI_NW
    LIVE_SS__3         TC_025_LIVE_LTE_SS_STAB_CHG_WIFI_NW    ${yamlData}    ${log_type}

TC_026_LIVE_LTE_SS_STAB_CHG_WIFI_PWD
    [Documentation]    Performing Delta Testcases 4
    [Tags]             TC_026_LIVE_LTE_SS_STAB_CHG_WIFI_PWD
    LIVE_SS__4         TC_026_LIVE_LTE_SS_STAB_CHG_WIFI_PWD    ${yamlData}    ${log_type}

TC_027_LIVE_LTE_SS_STAB_WIFI_YT
    [Documentation]    Performing Delta Testcases 5
    [Tags]             TC_027_LIVE_LTE_SS_STAB_WIFI_YT
    LIVE_SS__5         TC_027_LIVE_LTE_SS_STAB_WIFI_YT    ${yamlData}    ${log_type}

TC_028_LIVE_LTE_SS_STAB_TurnOFF_WIFI_YT
    [Documentation]    Performing Delta Testcases 6
    [Tags]             TC_028_LIVE_LTE_SS_STAB_TurnOFF_WIFI_YT
    LIVE_SS__6         TC_028_LIVE_LTE_SS_STAB_TurnOFF_WIFI_YT    ${yamlData}    ${log_type}

TC_029_LIVE_LTE_SS_STAB_TurnOFF_WIFI_ONL_GAME
    [Documentation]    Performing Delta Testcases 7
    [Tags]             TC_029_LIVE_LTE_SS_STAB_TurnOFF_WIFI_ONL_GAME
    LIVE_SS__7         TC_029_LIVE_LTE_SS_STAB_TurnOFF_WIFI_ONL_GAME    ${yamlData}    ${log_type}

TC_031_LIVE_LTE_SS_STAB_MOVoLTE_USB_Tether
    [Documentation]    Performing Delta Testcases 8
    [Tags]             TC_031_LIVE_LTE_SS_STAB_MOVoLTE_USB_Tether
    LIVE_SS__8         TC_031_LIVE_LTE_SS_STAB_MOVoLTE_USB_Tether    ${yamlData}    ${log_type}

TC_032_LIVE_LTE_SS_STAB_MTVoLTE_USB_Tether
    [Documentation]    Performing Delta Testcases 9
    [Tags]             TC_032_LIVE_LTE_SS_STAB_MTVoLTE_USB_Tether
    LIVE_SS__9         TC_032_LIVE_LTE_SS_STAB_MTVoLTE_USB_Tether    ${yamlData}    ${log_type}

TC_033_LIVE_LTE_SS_STAB_MOVT_USB_Tether
    [Documentation]    Performing Delta Testcases 10
    [Tags]             TC_033_LIVE_LTE_SS_STAB_MOVT_USB_Tether
    LIVE_SS__10        TC_033_LIVE_LTE_SS_STAB_MOVT_USB_Tether    ${yamlData}    ${log_type}

TC_034_LIVE_LTE_SS_STAB_MTVT_USB_Tether
    [Documentation]    Performing Delta Testcases 11
    [Tags]             TC_034_LIVE_LTE_SS_STAB_MTVT_USB_Tether
    LIVE_SS__11        TC_034_LIVE_LTE_SS_STAB_MTVT_USB_Tether    ${yamlData}    ${log_type}

TC_037_LIVE_LTE_SS_STAB_BT_USB_Tether
    [Documentation]    Performing Delta Testcases 12
    [Tags]             TC_037_LIVE_LTE_SS_STAB_BT_USB_Tether
    LIVE_SS__12        TC_037_LIVE_LTE_SS_STAB_BT_USB_Tether    ${yamlData}    ${log_type}

TC_041_LIVE_LTE_SS_STAB_APM_toggle_USB_Tether
    [Documentation]    Performing Delta Testcases 13
    [Tags]             TC_041_LIVE_LTE_SS_STAB_APM_toggle_USB_Tether
    LIVE_SS__13        TC_041_LIVE_LTE_SS_STAB_APM_toggle_USB_Tether    ${yamlData}    ${log_type}

TC_042_LIVE_LTE_SS_STAB_turnOFF_WIF_WIFINW
    [Documentation]    Performing Delta Testcases 14
    [Tags]             TC_042_LIVE_LTE_SS_STAB_turnOFF_WIF_WIFINW
    LIVE_SS__14        TC_042_LIVE_LTE_SS_STAB_turnOFF_WIF_WIFINW    ${yamlData}    ${log_type}

TC_043_LIVE_LTE_SS_STAB_SRCH_WIFI
    [Documentation]    Performing Delta Testcases 15
    [Tags]             TC_043_LIVE_LTE_SS_STAB_SRCH_WIFI
    LIVE_SS__15        TC_043_LIVE_LTE_SS_STAB_SRCH_WIFI    ${yamlData}    ${log_type}

TC_044_LIVE_LTE_SS_STAB_CHG_WIFI_UL
    [Documentation]    Performing Delta Testcases 16
    [Tags]             TC_044_LIVE_LTE_SS_STAB_CHG_WIFI_UL
    LIVE_SS__16        TC_044_LIVE_LTE_SS_STAB_CHG_WIFI_UL    ${yamlData}    ${log_type}

TC_045_LIVE_LTE_SS_STAB_WIFI_ONL_GAME
    [Documentation]    Performing Delta Testcases 17
    [Tags]             TC_045_LIVE_LTE_SS_STAB_WIFI_ONL_GAME
    LIVE_SS__17        TC_045_LIVE_LTE_SS_STAB_WIFI_ONL_GAME    ${yamlData}    ${log_type}

TC_046_LIVE_LTE_SS_STAB_WIFI_DL
    [Documentation]    Performing Delta Testcases 18
    [Tags]             TC_046_LIVE_LTE_SS_STAB_WIFI_DL
    LIVE_SS__18        TC_046_LIVE_LTE_SS_STAB_WIFI_DL    ${yamlData}    ${log_type}

TC_047_LIVE_LTE_SS_STAB_ONL_GAME_USB_Tether
    [Documentation]    Performing Delta Testcases 19
    [Tags]             TC_047_LIVE_LTE_SS_STAB_ONL_GAME_USB_Tether
    LIVE_SS__19        TC_047_LIVE_LTE_SS_STAB_ONL_GAME_USB_Tether    ${yamlData}    ${log_type}

TC_052_LIVE_LTE_SS_STAB_WIFI_UL
    [Documentation]    Performing Delta Testcases 20
    [Tags]             TC_052_LIVE_LTE_SS_STAB_WIFI_UL
    LIVE_SS__20        TC_052_LIVE_LTE_SS_STAB_WIFI_UL    ${yamlData}    ${log_type}

TC_053_LIVE_LTE_SS_STAB_DL_DCN_WIFI
    [Documentation]    Performing Delta Testcases 21
    [Tags]             TC_053_LIVE_LTE_SS_STAB_DL_DCN_WIFI
    LIVE_SS__21        TC_053_LIVE_LTE_SS_STAB_DL_DCN_WIFI    ${yamlData}    ${log_type}

TC_054_LIVE_LTE_SS_STAB_UL_DCN_WIFI
    [Documentation]    Performing Delta Testcases 22
    [Tags]             TC_054_LIVE_LTE_SS_STAB_UL_DCN_WIFI
    LIVE_SS__22        TC_054_LIVE_LTE_SS_STAB_UL_DCN_WIFI    ${yamlData}    ${log_type}

TC_055_LIVE_LTE_SS_STAB_DL_CN_WIFI
    [Documentation]    Performing Delta Testcases 23
    [Tags]             TC_055_LIVE_LTE_SS_STAB_DL_CN_WIFI
    LIVE_SS__23        TC_055_LIVE_LTE_SS_STAB_DL_CN_WIFI    ${yamlData}    ${log_type}

TC_056_LIVE_LTE_SS_STAB_UL_CN_WIFI
    [Documentation]    Performing Delta Testcases 24
    [Tags]             TC_056_LIVE_LTE_SS_STAB_UL_CN_WIFI
    LIVE_SS__24        TC_056_LIVE_LTE_SS_STAB_UL_CN_WIFI    ${yamlData}    ${log_type}

TC_057_LIVE_LTE_SS_STAB_FM_Radio
    [Documentation]    Performing Delta Testcases 25
    [Tags]             TC_057_LIVE_LTE_SS_STAB_FM_Radio
    LIVE_SS__25        TC_057_LIVE_LTE_SS_STAB_FM_Radio    ${yamlData}    ${log_type}

TC_058_LIVE_LTE_SS_STAB_CN_WIFI
    [Documentation]    Performing Delta Testcases 26
    [Tags]             TC_058_LIVE_LTE_SS_STAB_CN_WIFI
    LIVE_SS__26        TC_058_LIVE_LTE_SS_STAB_CN_WIFI    ${yamlData}    ${log_type}

TC_059_SS_WIFI_MT_VoLTE
    [Documentation]    Performing Delta Testcases 27
    [Tags]             TC_059_SS_WIFI_MT_VoLTE
    LIVE_SS__27        TC_059_SS_WIFI_MT_VoLTE    ${yamlData}    ${log_type}

