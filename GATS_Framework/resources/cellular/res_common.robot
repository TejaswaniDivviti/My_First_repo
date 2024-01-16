*** Settings ***
Library      OperatingSystem
Library      BuiltIn
Library      Collections
Library      String
Library      interrupts.Interrupts
Variables    ${EXECDIR}/../../../variables/variables_framework.yaml


Library    ${EXECDIR}/../cellular_automation_helpers/common_helper_functions/common_functions.py
Library    ${EXECDIR}/../cellular_automation_helpers/common_helper_functions/device_reports.py
Library    ${EXECDIR}/../cellular_automation_helpers/common_helper_functions/excel_sheet.py


# LAB + OAI Testcases.
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_OAI_001.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_OAI_002.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_OAI_003.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_OAI_004.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_OAI_005.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_OAI_006.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_OAI_007.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_OAI_008.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_Call_009.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_Call_010.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_Call_011.py
Library    ${EXECDIR}/../cellular_automation_helpers/Stability_Live/TC_Stability_Live_Processing_01.py

# Single Sim Testcases.

Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/matter_tc_001.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_PLMN_Wifi_Operator.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_bluetooth_wifi_on_off_10times.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_500_LIVE_MAP_SEARCH.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_01_wifi_SS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_023_LIVE_LTE_SS_STAB_WIFI_UPD_APP.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_024_LIVE_LTE_SS_STAB_WIFI_INSTL_APP.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_025_LIVE_LTE_SS_STAB_CHG_WIFI_NW.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_026_LIVE_LTE_SS_STAB_CHG_WIFI_PWD.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_027_LIVE_LTE_SS_STAB_WIFI_YT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_028_LIVE_LTE_SS_STAB_TurnOFF_WIFI_YT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_029_LIVE_LTE_SS_STAB_TurnOFF_WIFI_ONL_GAME.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_031_LIVE_LTE_SS_STAB_MOVoLTE_USB_Tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_032_LIVE_LTE_SS_STAB_MTVoLTE_USB_Tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_033_LIVE_LTE_SS_STAB_MOVT_USB_Tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_034_LIVE_LTE_SS_STAB_MTVT_USB_Tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_037_LIVE_LTE_SS_STAB_BT_USB_Tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_041_LIVE_LTE_SS_STAB_APM_toggle_USB_Tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_042_LIVE_LTE_SS_STAB_turnOFF_WIF_WIFINW.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_043_LIVE_LTE_SS_STAB_SRCH_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_044_LIVE_LTE_SS_STAB_CHG_WIFI_UL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_045_LIVE_LTE_SS_STAB_WIFI_ONL_GAME.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_046_LIVE_LTE_SS_STAB_WIFI_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_047_LIVE_LTE_SS_STAB_ONL_GAME_USB_Tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_052_LIVE_LTE_SS_STAB_WIFI_UL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_053_LIVE_LTE_SS_STAB_DL_DCN_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_054_LIVE_LTE_SS_STAB_UL_DCN_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_055_LIVE_LTE_SS_STAB_DL_CN_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_056_LIVE_LTE_SS_STAB_UL_CN_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_057_LIVE_LTE_SS_STAB_FM_Radio.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_058_LIVE_LTE_SS_STAB_CN_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_059_SS_WIFI_MT_VoLTE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_060_LIVE_LTE_SS_STAB_WIFI_MO_thirdparty_VoLTE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_061_LIVE_LTE_SS_STAB_WIFI_MO_thirdparty_VT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_062_LIVE_LTE_SS_STAB_WIFI_MT_thirdparty_VT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_067_LIVE_LTE_SS_STAB_CHG_WIFI_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_068_LIVE_LTE_SS_STAB_BT_connectivity.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_069_LIVE_LTE_SS_STAB_CN_DCN_BT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_070_LIVE_LTE_SS_STAB_APM_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_071_LIVE_LTE_SS_STAB_APM_ON_OFF.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_072_LIVE_LTE_SS_STAB_APM_FM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_073_LIVE_LTE_SS_STAB_APM_VoLTE_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_074_LIVE_LTE_SS_STAB_APM_SMS_VoLTE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_075_LIVE_LTE_SS_STAB_APM_VoLTE_VT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_077_LIVE_LTE_SS_STAB_PLMN_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_080_LIVE_LTE_SS_STAB_DL_SRCH_PLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_081_LIVE_LTE_SS_STAB_USB_tether_PLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_082_LIVE_LTE_SS_STAB_USB_tether_FPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_083_LIVE_LTE_SS_STAB_USB_tether_RAT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_085_LIVE_LTE_SS_STAB_USB_tether_RAT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_086_LIVE_LTE_SS_STAB_USB_tether_RAT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_093_LIVE_LTE_SS_STAB_USB_tether_RAT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_095_LIVE_LTE_SS_STAB_PLMN_DL_RM_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_103_LIVE_LTE_SS_STAB_FPLMN_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_104_LIVE_LTE_SS_STAB_WIFI_UL_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_105_LIVE_LTE_SS_STAB_WIF_DL_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_106_LIVE_LTE_SS_STAB_WIFI_UL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_107_LIVE_LTE_SS_STAB_WIFI_DL_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_108_LIVE_LTE_SS_STAB_WIFI_DL_MOCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_109_LIVE_LTE_SS_STAB_WIFI_DL_MTCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_110_LIVE_LTE_SS_STAB_WIFI_UL_MOCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_111_LIVE_LTE_SS_STAB_WIFI_UL_MTCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_112_LIVE_LTE_SS_STAB_WIFI_UL_MOVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_113_LIVE_LTE_SS_STAB_WIFI_UL_MTVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_114_LIVE_LTE_SS_STAB_WIFI_DL_MOVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_115_LIVE_LTE_SS_STAB_WIFI_DL_MTVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_116_LIVE_LTE_SS_STAB_USB_Tether_PLMN_4GRAT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_118_LIVE_LTE_SS_STAB_CHG_WIFI_UL_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_119_LIVE_LTE_SS_STAB_CHG_WIFI_PWD_UL_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_120_LIVE_LTE_SS_STAB_DCN_WIFI_UL_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_122_LIVE_LTE_SS_STAB_USB_Tether_PLMN_RAT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_123_LIVE_LTE_SS_STAB_WIFI_DL_UL_CALLS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_124_LIVE_LTE_SS_STAB_WIFI_DL_UL_MTVoLTE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_125_LIVE_LTE_SS_STAB_WIFI_DL_UL_MOCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_126_LIVE_LTE_SS_STAB_WIFI_DL_UL_MTCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_127_LIVE_LTE_SS_STAB_WIFI_DL_MOVT_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_128_LIVE_LTE_SS_STAB_WIFI_DL_MTVT_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_129_LIVE_LTE_SS_STAB_WIFI_UL_MOVT_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_130_LIVE_LTE_SS_STAB_WIFI_UL_MTVT_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_132_LIVE_LTE_SS_STAB_USB_Tether_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_133_LIVE_LTE_SS_STAB_USB_Tether_USSD.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_144_LIVE_LTE_SS_STAB_WIFI_PLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_145_LIVE_LTE_SS_STAB_WIFI_MO_thirdpartyVoLTE_MOVoLTE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_146_LIVE_LTE_SS_STAB_WIFI_MT_thirdpartyVoLTE_MTVoLTE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_147_LIVE_LTE_SS_STAB_WIFI_MO_thirdpartyVT_MOVoLTE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_148_LIVE_LTE_SS_STAB_WIFI_MT_thirdpartyVT_MTVoLTE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_149_LIVE_LTE_SS_STAB_WIFI_MO_thirdpartyVoLTE_MOVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_150_LIVE_LTE_SS_STAB_WIFI_MT_thirdpartyVoLTE_MTVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_151_LIVE_LTE_SS_STAB_WIFI_MO_thirdpartyVT_MOVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_152_LIVE_LTE_SS_STAB_WIFI_MT_thirdpartyV_MTVTT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_153_SS_WIFI_SWITCH_Cellular_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_154_SS_WIFI_SWITCH_Cellular_UL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_155_SS_STAB_WIFI_SWITCH_Cellular_DL_UL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_156_LIVE_LTE_SS_STAB_WIFI_DL_UL_MOVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_157_LIVE_LTE_SS_STAB_WIFI_DL_UL_MTVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_158_LIVE_LTE_SS_STAB_RM_SIM_DL_BG.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_159_LIVE_LTE_SS_STAB_RM_SIM_UL_BG.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_167_LIVE_LTE_SS_STAB_DL_RAT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_168_LIVE_LTE_SS_STAB_VoLTE_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_169_LIVE_LTE_SS_STAB_RM_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_170_LIVE_LTE_SS_STAB_APM_VoLTECALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_171_LIVE_LTE_SS_STAB_VoLTE_SMS_DL_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_174_LIVE_LTE_SS_STAB_APM_MO_MT_CALLS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_175_LIVE_LTE_SS_STAB_APM_PING_CALLS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_176_LIVE_LTE_SS_STAB_APM_BT_data.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_177_LIVE_LTE_SS_STAB_APM_CN_DCN_BT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_178_LIVE_LTE_SS_STAB_WIFI_Hotspot.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_184_LIVE_LTE_SS_STAB_CONF_MOVT_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_185_LIVE_LTE_SS_STAB_CONF_MTVoLTE_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_186_LIVE_LTE_SS_STAB_CONF_MTVT_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_187_LIVE_LTE_SS_STAB_MOVT_CONF_VoLTE_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_188_LIVE_LTE_SS_STAB_MTVT_CONF_VoLTE_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_189_LIVE_LTE_SS_STAB_CONF_MO_Long.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_190_LIVE_LTE_SS_STAB_CONF_MT_Long.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_191_LIVE_LTE_SS_STAB_CONF_MOVT_Long.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_192_LIVE_LTE_SS_STAB_CONF_MT_Long.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_194_LIVE_LTE_SS_STAB_CONF_MT_Long_VTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_197_LIVE_LTE_SS_STAB_PLMN_MOCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_198_LIVE_LTE_SS_STAB_RM_SIM_MAPS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_199_LIVE_LTE_SS_STAB_LOCK_pattern.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_200_LIVE_LTE_SS_STAB_CAM_SWITCH.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_201_LIVE_LTE_SS_STAB_CAM_ZOOM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_202_LIVE_LTE_SS_STAB_APP.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_203_LIVE_LTE_SS_STAB_DL_CALLS_MOBILEDATA.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_204_LIVE_LTE_SS_STAB_CAM_SWITCH_CALLS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_205_LIVE_LTE_SS_STAB_VT_UP_downgrade.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_207_LIVE_LTE_SS_STAB_CALLS_RM_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_208_LIVE_LTE_SS_STAB_MOCALL_DATA_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_209_LIVE_LTE_SS_STAB_CAM_CONF_MO.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_210_LIVE_LTE_SS_STAB_FM_MOCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_211_LIVE_LTE_SS_STAB_FM_MOCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_212_LIVE_LTE_SS_STAB_FM_YT_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_213_LIVE_LTE_SS_STAB_FM_GAME_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_214_LIVE_LTE_SS_STAB_ONL_GAME_CALLS_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_216_LIVE_LTE_SS_STAB_CALLS_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_217_LIVE_LTE_SS_STAB_CALLS_SMS_YT_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_218_LIVE_LTE_SS_STAB_PING_MOCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_219_LIVE_LTE_SS_STAB_DL_CALLS_NW_CHG.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_221_LIVE_LTE_SS_STAB_MOCALL_PING_BROW_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_222_LIVE_LTE_SS_STAB_PING_Up_Downgrade_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_224_LIVE_LTE_SS_STAB_CALLS_DL_data.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_225_LIVE_LTE_SS_STAB_MOCALL_PING_RST_device.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_230_LIVE_LTE_SS_STAB_STREAM_MOSMS_MOCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_231_LIVE_LTE_SS_STAB_DL_BROW_MTCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_232_LIVE_SS_PING_DL_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_233_LIVE_LTE_SS_PING_CALL_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_234_LIVE_LTE_SS_STAB_INSTL_APP_APP_VTCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_235_LIVE_SS__INSTL_APP_GAME.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_236_LIVE_LTE_SS_STAB_INSTL_APP_SWITCH_Data.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_237_LIVE_LTE_SS_STAB_INSTL_APP_SHARE_FILE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_238_LIVE_LTE_SS_STAB_INSTL_APP_SHARE_FILE_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_239_LIVE_LTE_SS_STAB_INSTL_APP_SHARE_FILE_FM_GAME.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_241_LIVE_LTE_SS_STAB_UPgrade_CALL_DL_YT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_242_LIVE_LTE_SS_STAB_SMS_RM_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_243_LIVE_LTE_SS_STAB_PING_PLMN_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_244_LIVE_LTE_SS_STAB_APP_GAME_LOCK_device.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_245_LIVE_LTE_SS_STAB_APP_GAME_Notif.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_246_LIVE_LTE_SS_STAB_APP_GAME_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_247_LIVE_LTE_SS_STAB_APP_GAME_Mobile_date.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_248_LIVE_LTE_SS_STAB_APP_GAME_VTCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_249_LIVE_LTE_SS_STAB_APP_GAME_RM_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_250_LIVE_LTE_SS_STAB_APP_GAME_VOL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_252_LIVE_LTE_SS_STAB_APP_YT_rec_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_253_LIVE_LTE_SS_STAB_APP_YT_NOTIF.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_255_LIVE_LTE_SS_STAB_APP_MP.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_256_LIVE_LTE_SS_STAB_APP_MP_CALLS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_257_LIVE_LTE_SS_STAB_CALL_VoLTE_VTCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_258_LIVE_LTE_SS_STAB_CALL_MOVT_MAPS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_259_LIVE_LTE_SS_STAB_CALL_MOVoLTE_MAPS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_260_LIVE_LTE_SS_STAB_DATA_MOBILEDATA.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_261_LIVE_LTE_SS_STAB_DATA_MOBILEDATA_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_264_LIVE_LTE_SS_STAB_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_265_LIVE_LTE_SS_STAB_SWITCH_CAM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_266_LIVE_LTE_SS_STAB_CALL_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_268_LIVE_LTE_SS_STAB_APP_MP_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_269_LIVE_LTE_SS_STAB_APP_MP_Transfer_FILE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_270_LIVE_LTE_SS_STAB_APP_MP_VOL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_272_LIVE_LTE_SS_STAB_APP_MP_REC_Audio.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_273_LIVE_LTE_SS_STAB_APP_MP_SCANFM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_282_LIVE_LTE_SS_STAB_SMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_284_LIVE_LTE_SS_STAB_APP_Game.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_285_LIVE_LTE_SS_STAB_APP_ONL_GAME_CN_DCN_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_286_LIVE_LTE_SS_STAB_APP_ONL_GAME_APP.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_287_LIVE_LTE_SS_STAB_APP_YT_CALLS_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_288_LIVE_LTE_SS_STAB_APP_YT_REC_VT_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_289_LIVE_LTE_SS_STAB_APP_CHG_VIDEO_YT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_290_LIVE_LTE_SS_STAB_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_291_LIVE_LTE_SS_STAB_WIFI_CN_DCN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_292_LIVE_LTE_SS_STAB_WIFI_MOCALLS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_293_LIVE_LTE_SS_STAB_WIFI_MTCALLS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_294_LIVE_LTE_SS_STAB_INTL_APP_Share_file_FM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_295_LIVE_LTE_SS_STAB_WIFI_PLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_296_LIVE_LTE_SS_STAB_WIFI_DCN_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_297_LIVE_LTE_SS_STAB_WIFI_DCN_UL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_298_LIVE_LTE_SS_STAB_APP_MAPS_YT_MOCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_299_LIVE_LTE_SS_STAB_APP_MAPS_YT_MYTCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_300_LIVE_LTE_SS_STAB_APP_MAPS_ONL_GAME.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_301_LIVE_LTE_SS_STAB_APP_MAPS_ONL_GAME_MOCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_302_LIVE_LTE_SS_STAB_APP_MAPS_ONL_GAME_MTCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_305_LIVE_LTE_SS_STAB_PLMN_MTCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_306_LIVE_LTE_SS_STAB_MTCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_307_LIVE_LTE_SS_STAB_MTVT_MAPS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_308_LIVE_LTE_SS_STAB_MTVoLTE_MAPS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_309_LIVE_LTE_SS_STAB_MTVoLTE_VTCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_313_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_314_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_315_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_316_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_317_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_318_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_319_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_320_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_321_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_322_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_323_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_324_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_325_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_326_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_327_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_328_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_329_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_330_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_331_LIVE_LTE_SS_STAB_MTCALL_DATA_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_332_LIVE_LTE_SS_STAB_VTSMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_333_LIVE_LTE_SS_STAB_MT_CONF.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_334_LIVE_LTE_SS_STAB_MTCALL_FM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_335_LIVE_LTE_SS_STAB_FM_MTCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_336_LIVE_LTE_SS_STAB_CALL_SMS_YT_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_337_LIVE_LTE_SS_STAB_PING_MTCALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_338_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_339_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_340_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_341_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_342_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_343_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_344_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_345_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_346_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_347_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_348_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_349_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_350_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_351_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_352_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_353_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_354_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_355_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_356_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_357_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_358_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_359_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_360_LIVE_LTE_SS_STAB_APP_STRESS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_362_LIVE_LTE_SS_STAB_MTCALL_PING_RST_Device.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_364_LIVE_LTE_SS_STAB_MTCALL_HeadPhone.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_365_LIVE_LTE_SS_STAB_MTCALL_BT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_366_LIVE_LTE_SS_STAB_APP_FM_SCAN_MOCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_367_LIVE_LTE_SS_STAB_APP_FM_SCAN_MTCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_368_LIVE_LTE_SS_STAB_APP_FM_SCAN_MOSMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_369_LIVE_LTE_SS_STAB_APP_FM_SCAN_MTSMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_370_LIVE_LTE_SS_STAB_Call_SMS_DL_MMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_371_LIVE_LTE_SS_STAB_APP_MIN_MAX.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_372_LIVE_LTE_SS_STAB_CALL_SMS_MMS_PLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_374_LIVE_LTE_SS_STAB_CALL_SMS_MMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_375_LIVE_LTE_SS_STAB_CALLS_SMS_MMS_DL_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_376_LIVE_LTE_SS_STAB_APP_MP_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_377_DATA_MO_LONG_PING_STREAM_UL_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_378_LIVE_LTE_SS_STAB_DATA_DL_MTSMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_379_LIVE_LTE_SS_STAB_LIVE_Stream_SMS_MTCALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_383_LIVE_LTE_SS_STAB_SIM_status.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_384_LIVE_LTE_SS_STAB_VPN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_386_LIVE_LTE_SS_STAB_NW.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_389_LIVE_LTE_SS_STAB_MOSMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_390_LIVE_LTE_SS_STAB_WIFI_REG.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_391_LIVE_LTE_SS_STAB_APM_WIFICALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_392_LIVE_LTE_SS_STAB_APM_WIFI_REG.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_393_LIVE_LTE_SS_STAB_BT_FIle_transfer.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_394_LIVE_LTE_SS_STAB_BT_Headset.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_395_LIVE_LTE_SS_STAB_VoLTE_CONF.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_396_LIVE_LTE_SS_STAB_VT_CONF.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_399_LIVE_LTE_SS_STAB_BROW_MTVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_400_LIVE_LTE_SS_STAB_BROW_MTVoLTE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_402_LIVE_LTE_SS_STAB_SMS_MMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_403_LIVE_LTE_SS_STAB_tether_PLMN_SMS_MMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_404_LIVE_LTE_SS_STAB_YT_MMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_405_LIVE_LTE_SS_STAB_SMS_MMS_PLMN_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_406_LIVE_LTE_SS_STAB_CALL_DL_e911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_409_LIVE_LTE_SS_STAB_PING_CALL_RST_device.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_410_SS__Call_DL_enable_disable_SUB.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_416_LIVE_LTE_SS_STAB_Upgrade_Call_PING_VoWIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_424_LIVE_LTE_SS_STAB_ACT_DEACT_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_425_LIVE_LTE_SS_STAB_ACT_DEACT_SIM1_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_426_LIVE_LTE_SS_STAB_ACT_DEACT_SIM1_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_430_LIVE_LTE_SS_STAB_CALL_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_445_LIVE_LTE_SS_STAB_WIFI_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_446_LIVE_LTE_SS_STAB_turnOFF_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_447_LIVE_LTE_SS_STAB_turnOFF_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_449_LIVE_LTE_SS_STAB_DL_WIFI_Coverage.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_450_LIVE_LTE_SS_STAB_UL_WIFI_Coverage.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_451_LIVE_LTE_SS_STAB_WIFI_UL_Calls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_452_LIVE_LTE_SS_STAB_WIFI_DL_Calls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_453_LIVE_LTE_SS_STAB_WIFI_UL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_454_LIVE_LTE_SS_STAB_WIFI_DL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_456_LIVE_LTE_SS_STAB_WIFI_MMS_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_457_LIVE_LTE_SS_STAB_WIFI_MMS_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_458_LIVE_LTE_SS_STAB_MOMMS_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_459_LIVE_LTE_SS_STAB_MOMMS_UL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_461_LIVE_LTE_SS_STAB_MPLMN_DL_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_462_LIVE_LTE_SS_STAB_MPLMN_UL_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_463_LIVE_LTE_SS_STAB_RM_Sim_MOVoLTECall_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_464_LIVE_LTE_SS_STAB_RM-Sim_MTVoLTECall_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_464_LIVE_LTE_SS_STAB_RM_Sim_MTVoLTECall_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_465_LIVE_LTE_SS_STAB_RM_Sim_MOVTCall_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_466_LIVE_LTE_SS_STAB_RM_Sim_MTVTCall_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_467_LIVE_LTE_SS_STAB_MOVoLTE_CONF_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_468_LIVE_LTE_SS_STAB_MTVoLTE_CONF_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_469_LIVE_LTE_SS_STAB_MPLMN_MTVTcall_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_470_LIVE_SS_Long_Call_data_transfer.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_471_LIVE_LTE_SS_STAB_MPLMN_data.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_472_LIVE_LTE_SS_STAB_MPLMN_data_Calls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_49_LIVE_LTE_SS_STAB_REAR_CAM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_APM_002.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_browser_033.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Camera_034.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Camera_035.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Camera_036.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Camera_037.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Camera_038.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Concurrency_025.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Concurrency_026.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Concurrency_027.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Concurrency_028.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Concurrency_029.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_DOU_040.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Reboot_001.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_003.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_004.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_005.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_006.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_007.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_008.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_009.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_010.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_011.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_012.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Volte_013.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VoWLAN_031.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VoWLAN_032.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_014.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_015.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_016.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_017.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_018.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_019.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_020.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_021.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_022.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_023.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_VT_024.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_SS_STAB/TC_Stability_Live_Wifi_030.py


# Dual Sim Testcases.
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_9_LIVE_LTE_DSDS_STAB_DL_data_Deact_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_103_LIVE_LTE_DSDS_STAB_CALLS_SMS_MMS_PLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_105_LIVE_LTE_DSDS_STAB_CALLS_SMS_MMS_DL_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_106_LIVE_LTE_DSDS_STAB_Upgrade_Call_SMS_MMS_Ping_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_107_LIVE_LTE_DSDS_STAB_SMS_MMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_108_LIVE_LTE_DSDS_STAB_DL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_10_LIVE_LTE_DSDS_STAB_DL_data_Deact_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_110_LIVE_LTE_DSDS_STAB_SMS_MMS_DL_Ping.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_111_LIVE_LTE_DSDS_STAB_SMS_MMS_PLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_112_LIVE_LTE_DSDS_STAB_SMS_MMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_113_LIVE_LTE_DSDS_STAB_tether_PLMN_SMS_MMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_114_LIVE_LTE_DSDS_STAB_YT_MMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_115_LIVE_LTE_DSDS_STAB_SMS_MMS_PLMN_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_116_LIVE_LTE_DSDS_STAB_DL_CALLS_CHG_NW.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_118_LIVE_LTE_DSDS_STAB_CALLS_DL_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_119_LIVE_LTE_DSDS_STAB_CALLS_PING_BROW_e911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_121_LIVE_LTE_DSDS_STAB_Ping_Upgrade_downgrade_call.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_125_LIVE_LTE_DSDS_STAB_Calls_Ping_RST_UE.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_127_LIVE_LTE_DSDS_STAB_CALLS_SMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_12_LIVE_LTE_DSDS_STAB_CALL_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_134_LIVE_LTE_DSDS_STAB_Upgrade_Call_BROW_Toggle_sub_Power_OFF_ON.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_140_LIVE_LTE_DSDS_STAB_MO_MT_headphone.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_141_LIVE_LTE_DSDS_STAB_MO_MT_BT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_142_LIVE_LTE_DSDS_STAB_MO_MT_BT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_143_LIVE_LTE_DSDS_STAB_Toggle_SIM1_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_144_LIVE_LTE_DSDS_STAB_Toggle_SIM1_SIM2_MOSMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_145_LIVE_LTE_DSDS_STAB_Toggle_SIM1_SIM2_MOSMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_146_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_147_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_148_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_149_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_150_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_151_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_152_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_153_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_154_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_155_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_156_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_157_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_158_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_159_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_161_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_162_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_163_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_164_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_165_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_166_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_167_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_168_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_169_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_170_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_171_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_172_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_173_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_174_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_175_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_176_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_177_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_178_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_179_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_180_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_181_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_182_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_183_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_184_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_185_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_186_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_187_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_188_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_189_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_18_LIVE_LTE_DSDS_STAB_Switch_DATA.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_190_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_191_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_192_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_193_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_194_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_195_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_196_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_197_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_198_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_199_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_19_LIVE_LTE_DSDS_STAB_Switch_DATA_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_200_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_201_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_202_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_203_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_204_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_205_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_206_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_207_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_208_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_209_LIVE_LTE_DSDS_STAB_Modem_APP_Stress.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_20_LIVE_LTE_DSDS_STAB__DL_Switch_DATA.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_210_LIVE_LTE_DSDS_STAB_DL_MPLMN_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_211_LIVE_LTE_DSDS_STAB_DL_MPLMN_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_215_LIVE_LTE_DSDS_STAB_MPLMN_MMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_216_LIVE_LTE_DSDS_STAB_MPLMN_MMS_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_217_LIVE_LTE_DSDS_STAB_DL_RAT_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_218_LIVE_LTE_DSDS_STAB_DL_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_219_LIVE_LTE_DSDS_STAB_VoLTEcall_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_21_LIVE_LTE_DSDS_STAB_INSTL_APP_Switch_DATA.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_221_LIVE_LTE_DSDS_STAB_Stream_MO_MT_SMS_MO_MT_Call.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_222_LIVE_LTE_DSDS_STAB_FM_VTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_223_LIVE_LTE_DSDS_STAB_FM_VTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_224_LIVE_LTE_DSDS_STAB_SIM_Act_Deact.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_226_LIVE_LTE_DSDS_STAB_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_227_LIVE_LTE_DSDS_STAB_USB_tether.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_228_LIVE_LTE_DSDS_STAB_DL_BROW_MTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_229_LIVE_LTE_DSDS_STAB_DL_BROW_MTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_22_LIVE_LTE_DSDS_STAB_INSTL_APP_Share_File.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_230_LIVE_LTE_DSDS_STAB_WIFI_Connectivity.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_231_LIVE_LTE_DSDS_STAB_WIFI_Connectivity.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_232_LIVE_LTE_DSDS_STAB_Open_APP.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_233_LIVE_LTE_DSDS_STAB_APM_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_236_LIVE_LTE_DSDS_STAB_Toggle_Data_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_23_LIVE_LTE_DSDS_STAB_FM_RM_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_245_LIVE_LTE_DSDS_STAB_Calls_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_24_LIVE_LTE_DSDS_STAB_DL_CALL_Switch_data.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_250_LIVE_LTE_DSDS_STAB_Ping_DL_UL_Stream_Call_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_251_LIVE_LTE_DSDS_STAB_Enable_Disable_Lock.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_252_LIVE_LTE_DSDS_STAB_Switch_Data.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_253_LIVE_LTE_DSDS_STAB_Switch_Data_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_254_LIVE_LTE_DSDS_STAB_DL_Switch_Data.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_255_LIVE_LTE_DSDS_STAB_DL_Switch_Data_WIFI.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_257_LIVE_LTE_DSDS_STAB_INSTL_APP_APP_VTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_258_LIVE_LTE_DSDS_STAB_INSTL_APP_APP_VTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_259_LIVE_LTE_DSDS_STAB_INSTL_APP_Game.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_260_LIVE_LTE_DSDS_STAB_INSTL_APP_Game.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_262_LIVE_LTE_DSDS_STAB_INSTL_APP_Switch_DATA.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_263_LIVE_LTE_DSDS_STAB_INSTL_APP_Switch_DATA.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_264_LIVE_LTE_DSDS_STAB_INSTL_APP_Share_File.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_265_LIVE_LTE_DSDS_STAB_INSTL_APP_Share_File_Calls_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_266_LIVE_LTE_DSDS_STAB_INSTL_APP_Share_File_Call_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_267_LIVE_LTE_DSDS_STAB_INSTL_APP_Share_File_FM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_268_LIVE_LTE_DSDS_STAB_INSTL_APP_Share_File_FM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_269_LIVE_LTE_DSDS_STAB_INSTL_APP_Share_File_Call_FM_Game.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_26_LIVE_LTE_DSDS_STAB_CALL_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_270_LIVE_LTE_DSDS_STAB_INSTL_APP_Share_File_FM_Game.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_275_LIVE_LTE_DSDS_STAB_INSTL_APP_Hotspot_Game_Calls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_276_LIVE_LTE_DSDS_STAB_FM_RM_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_277_LIVE_LTE_DSDS_STAB_FM_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_278_LIVE_LTE_DSDS_STAB_FM_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_279_LIVE_LTE_DSDS_STAB_FM_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_27_LIVE_LTE_DSDS_STAB_MMS_RM_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_280_LIVE_LTE_DSDS_STAB_FM_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_281_LIVE_LTE_DSDS_STAB_FM_YT_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_282_LIVE_LTE_DSDS_STAB_FM_YT_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_283_LIVE_LTE_DSDS_STAB_FM_YT_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_285_LIVE_LTE_DSDS_STAB_ONL_Game_Calls_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_286_LIVE_LTE_DSDS_STAB_ONL_Game_Calls_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_287_LIVE_LTE_DSDS_STAB_DL_Calls_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_288_LIVE_LTE_DSDS_STAB_DL_Calls_E911.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_28_LIVE_LTE_DSDS_STAB_ONL_Game_INC_DEC_VOL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_290_LIVE_LTE_DSDS_STAB_DL_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_291_LIVE_LTE_DSDS_STAB_DL_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_292_LIVE_LTE_DSDS_STAB_DL_MPLMN_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_294_LIVE_LTE_DSDS_STAB_DL_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_295_LIVE_LTE_DSDS_STAB_DL_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_296_LIVE_LTE_DSDS_STAB_DL_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_298_LIVE_LTE_DSDS_STAB_Switch_CAM_Calls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_299_LIVE_LTE_DSDS_STAB_Upgrade_Call_DL_YT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_29_LIVE_LTE_DSDS_STAB_ONL_Game_E911call.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_2_LIVE_LTE_DSDS_STAB_SIM_Act_Deactivation.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_300_LIVE_LTE_DSDS_STAB_Upgrade_Call_DL_YT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_301_LIVE_LTE_DSDS_STAB_Upgrade_Downgrade_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_302_LIVE_LTE_DSDS_STAB_Upgrade_Downgrade_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_303_LIVE_LTE_DSDS_STAB_Calls_DL_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_304_LIVE_LTE_DSDS_STAB_Calls_DL_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_305_LIVE_LTE_DSDS_STAB_Calls_SMS_DL_MMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_30_LIVE_LTE_DSDS_STAB_YT_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_311_LIVE_LTE_DSDS_STAB_PLMN_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_312_LIVE_LTE_DSDS_STAB_MMS_SMS_Switch_DATA.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_313_LIVE_LTE_DSDS_STAB_MMS_SMS_Switch_DATA.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_314_LIVE_LTE_DSDS_STAB_ONL_Game_LOCK.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_315_LIVE_LTE_DSDS_STAB_ONL_Game_NOTIF.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_316_LIVE_LTE_DSDS_STAB_ONL_Game_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_317_LIVE_LTE_DSDS_STAB_ONL_Game_Turnoff_DATA.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_319_LIVE_LTE_DSDS_STAB_ONL_Game_Open_Close_APP.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_31_LIVE_LTE_DSDS_STAB_YT_recVT_Call.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_320_LIVE_LTE_DSDS_STAB_ONL_Game_VTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_321_LIVE_LTE_DSDS_STAB_ONL_Game_RM_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_323_LIVE_LTE_DSDS_STAB_CHG_Video_YT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_326_LIVE_LTE_DSDS_STAB_MTVTcall_MAPS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_327_LIVE_LTE_DSDS_STAB_MTVTcall_MAPS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_328_LIVE_LTE_DSDS_STAB_MTVTcall_MAPS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_329_LIVE_LTE_DSDS_STAB_MTVTcall_MAPS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_32_LIVE_LTE_DSDS_STAB_CHG_VT_YT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_330_LIVE_LTE_DSDS_STAB_MTVoLTEcall_MAPS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_331_LIVE_LTE_DSDS_STAB_Maps_YT_MTVOLTECalls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_332_LIVE_LTE_DSDS_STAB_Maps_YT_MTVOLTECalls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_333_LIVE_LTE_DSDS_STAB_Maps_ONL_Game.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_334_LIVE_LTE_DSDS_STAB_Maps_ONL-Game.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_334_LIVE_LTE_DSDS_STAB_Maps_ONL_Game.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_335_LIVE_LTE_DSDS_STAB_Maps_ONL_Game_MTVoLTEcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_336_LIVE_LTE_DSDS_STAB_Maps_ONL_Game_MTVoLTEcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_337_LIVE_LTE_DSDS_STAB_Maps_ONL_Game_FM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_338_LIVE_LTE_DSDS_STAB_Maps_ONL_Game_FM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_339_LIVE_LTE_DSDS_STAB_Maps_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_33_LIVE_LTE_DSDS_STAB_REC_VT_Exit_YT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_340_LIVE_LTE_DSDS_STAB_Maps_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_341_LIVE_LTE_DSDS_STAB_Maps_VTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_342_LIVE_LTE_DSDS_STAB_Maps_VTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_343_LIVE_LTE_DSDS_STAB_Maps_RM_SIM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_345_LIVE_LTE_DSDS_STAB_Maps_Disable_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_346_LIVE_LTE_DSDS_STAB_Maps_Disable_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_347_LIVE_LTE_DSDS_STAB_Maps_Disable_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_348_LIVE_LTE_DSDS_STAB_Maps_Disable_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_349_LIVE_LTE_DSDS_STAB_Maps_MTCALL_PLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_34_LIVE_LTE_DSDS_STAB_YT_NOTIF.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_352_LIVE_LTE_DSDS_STAB_FPLMN_SIM2_MTCall_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_353_LIVE_LTE_DSDS_STAB_FPLMN_SIM2_MTCall_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_354_LIVE_LTE_DSDS_STAB_FPLMN_SIM1_MTCall_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_355_LIVE_LTE_DSDS_STAB_FPLMN_SIM1_MTCall_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_364_LIVE_LTE_DSDS_STAB_FPLMN_DL_Files_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_365_LIVE_LTE_DSDS_STAB_FPLMN_DL_Files_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_366_LIVE_LTE_DSDS_STAB_FPLMN_SIM2_DL_Files_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_367_LIVE_LTE_DSDS_STAB_FPLMN_SIM1_DL_Files_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_368_LIVE_LTE_DSDS_STAB_FPLMN_SIM1_DL_Files_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_369_LIVE_LTE_DSDS_STAB_FPLMN_APM_Calls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_36_LIVE_LTE_DSDS_STAB_MP.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_370_LIVE_LTE_DSDS_STAB_FPLMN_APM_Calls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_371_LIVE_LTE_DSDS_STAB_FPLMN_APM_Calls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_372_LIVE_LTE_DSDS_STAB_FPLMN_APM_Calls.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_377_LIVE_LTE_DSDS_STAB_MOVoLTE_Long_CONF_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_378_LIVE_LTE_DSDS_STAB_MOVoLTE_Long_CONF_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_379_LIVE_LTE_DSDS_STAB_MTVoLTE_Long_CONF_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_37_LIVE_LTE_DSDS_STAB_MP_CALL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_380_LIVE_LTE_DSDS_STAB_MTVoLTE_Long_CONF_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_38_LIVE_LTE_DSDS_STAB_MP_CALL_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_393_LIVE_LTE_DSDS_STAB_Call_FWD_MTVoLTE_CONF_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_394_LIVE_LTE_DSDS_STAB_Call_FWD_MTVoLTE_CONF_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_39_LIVE_LTE_DSDS_STAB_MP_Transfer_file.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_3_LIVE_LTE_DSDS_STAB_Act_Deact_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_401_LIVE_LTE_DSDS_STAB_VoLTE_CONF_E911call.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_405_LIVE_LTE_DSDS_STAB_VoLTE_CONF_E911call.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_406_LIVE_LTE_DSDS_STAB_VoLTE_CONF_E911call.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_40_LIVE_LTE_DSDS_STAB_MP_VOL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_413_LIVE_LTE_DSDS_STAB_Call_FWD_PING_MTCALL_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_414_LIVE_LTE_DSDS_STAB_Call_FWD_PING_MTCALL_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_415_LIVE_LTE_DSDS_STAB_Call_FWD_PING_MTVTCALL_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_416_LIVE_LTE_DSDS_STAB_Call_FWD_PING_MTVTCALL_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_417_LIVE_LTE_DSDS_STAB_Call_FWD_PING_MOCALL_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_418_LIVE_LTE_DSDS_STAB_Call_FWD_PING_MOCALL_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_419_LIVE_LTE_DSDS_STAB_Call_FWD_PING_MOVTCALL_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_41_LIVE_LTE_DSDS_STAB_MP_REC_audio.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_420_LIVE_LTE_DSDS_STAB_Call_FWD_PING_MOVTCALL_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_421_LIVE_LTE_DSDS_STAB_Call_FWD_MO_CONF_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_422_LIVE_LTE_DSDS_STAB_Call_FWD_MO_CONF_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_423_LIVE_LTE_DSDS_STAB_Call_FWD_MO_CONF_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_424_LIVE_LTE_DSDS_STAB_Call_FWD_MO_CONF_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_425_LIVE_LTE_DSDS_STAB_Call_FWD_MTVoLTEcall_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_426_LIVE_LTE_DSDS_STAB_Call_FWD_MTVoLTEcall_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_427_LIVE_LTE_DSDS_STAB_Call_FWD_MTVTcall_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_428_LIVE_LTE_DSDS_STAB_Call_FWD_MTVTcall_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_429_LIVE_LTE_DSDS_STAB_Call_FWD_RM_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_42_LIVE_LTE_DSDS_STAB_MP_REC_VT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_430_LIVE_LTE_DSDS_STAB_Call_FWD_RM_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_433_LIVE_LTE_DSDS_STAB_Call_FWD_MTSMS_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_434_LIVE_LTE_DSDS_STAB_Call_FWD_MTSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_435_LIVE_LTE_DSDS_STAB_Call_FWD_SIM1_MTSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_436_LIVE_LTE_DSDS_STAB_Call_FWD_SIM2_MTSMS_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_437_LIVE_LTE_DSDS_STAB_Call_FWD_APM_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_438_LIVE_LTE_DSDS_STAB_Call_FWD_APM_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_449_LIVE_LTE_DSDS_STAB_Call_FWD_deact_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_450_LIVE_LTE_DSDS_STAB_Call_FWD_deact_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_453_LIVE_LTE_DSDS_STAB_Call_FWD_CALL_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_454_LIVE_LTE_DSDS_STAB_Call_FWD_CALL_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_455_LIVE_LTE_DSDS_STAB_Call_FWD_CALL_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_456_LIVE_LTE_DSDS_STAB_Call_FWD_CALL_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_457_LIVE_LTE_DSDS_STAB_Call_FWD_VTCALL_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_458_LIVE_LTE_DSDS_STAB_Call_FWD_VTCALL_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_459_LIVE_LTE_DSDS_STAB_Call_FWD_VTCALL_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_460_LIVE_LTE_DSDS_STAB_Call_FWD_VTCALL_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_461_LIVE_LTE_DSDS_STAB_Call_FWD_VTCALL_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_462_LIVE_LTE_DSDS_STAB_Call_FWD_VTCALL_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_463_LIVE_LTE_DSDS_STAB_Call_FWD_VTCALL_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_464_LIVE_LTE_DSDS_STAB_Call_FWD_VTCALL_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_4_LIVE_LTE_DSDS_STAB_Act_Deact_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_606_LIVE_LTE_DSDS_STAB_WIFI_UL_MOVoLTE_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_607_LIVE_LTE_DSDS_STAB_WIFI_UL_MTVoLTE_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_608_LIVE_LTE_DSDS_STAB_WIFI_DL_MOVoLTE_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_609_LIVE_LTE_DSDS_STAB_WIFI_DL_MTVoLTE_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_610_LIVE_LTE_DSDS_STAB_WIFI_DL_MOSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_611_LIVE_LTE_DSDS_STAB_WIFI_UL_MTSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_612_LIVE_LTE_DSDS_STAB_WIFI_DL_MOSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_613_LIVE_LTE_DSDS_STAB_WIFI_DL_MTSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_614_LIVE_LTE_DSDS_STAB_WIFI_DL_MOCall_MOSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_615_LIVE_LTE_DSDS_STAB_WIFI_DL_MTCall_MTSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_616_LIVE_LTE_DSDS_STAB_WIFI_UL_MOCall_MOSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_617_LIVE_LTE_DSDS_STAB_WIFI_UL_MOCall_MOSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_618_LIVE_LTE_DSDS_STAB_WIFI_UL_MOVT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_619_LIVE_LTE_DSDS_STAB_WIFI_UL_MTVT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_620_LIVE_LTE_DSDS_STAB_WIFI_DL_MOVT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_621_LIVE_LTE_DSDS_STAB_WIFI_DL_MTVT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_622_LIVE_LTE_DSDS_STAB_WIFI_UL_DL_MOVoLTE_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_623_LIVE_LTE_DSDS_STAB_WIFI_UL_DL_MOVoLTE_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_624_LIVE_LTE_DSDS_STAB_WIFI_UL_DL_MOVoLTE_MOSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_625_LIVE_LTE_DSDS_STAB_WIFI_UL_DL_MTVoLTE_MOSMS_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_626_LIVE_LTE_DSDS_STAB_WIFI_MMS_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_627_LIVE_LTE_DSDS_STAB_WIFI_MMS_MTSMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_628_LIVE_LTE_DSDS_STAB_WIFI_DL_MOVT_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_629_LIVE_LTE_DSDS_STAB_WIFI_DL_MTVT_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_630_LIVE_LTE_DSDS_STAB_WIFI_UL_MOVT_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_631_LIVE_LTE_DSDS_STAB_WIFI_UL_MTVT_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_632_LIVE_LTE_DSDS_STAB_WIFI_UL_DL_MTVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_633_LIVE_LTE_DSDS_STAB_WIFI_UL_DL_MOVT_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_634_LIVE_LTE_DSDS_STAB_WIFI_UL_DL_MTVT_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_635_LIVE_LTE_DSDS_STAB_WIFI_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_636_LIVE_LTE_DSDS_STAB_WIFI_MO_thirdParty_audio_MOVoLTEcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_637_LIVE_LTE_DSDS_STAB_WIFI_MT_thirdParty_audio_MTVoLTEcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_638_LIVE_LTE_DSDS_STAB_WIFI_MO_thirdParty_VT_MOVoLTEcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_639_LIVE_LTE_DSDS_STAB_WIFI_MO_thirdParty_VT_MTVoLTEcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_640_LIVE_LTE_DSDS_STAB_WIFI_MO_thirdParty_audio_MOVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_641_LIVE_LTE_DSDS_STAB_WIFI_MO_thirdParty_audio_MTVT.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_642_LIVE_LTE_DSDS_STAB_WIFI_MO_thirdParty_VT_MOVTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_643_LIVE_LTE_DSDS_STAB_WIFI_MO_thirdParty_VT_MTVTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_644_LIVE_LTE_DSDS_STAB_WIFI_MO_MMS_DL_files.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_645_LIVE_LTE_DSDS_STAB_WIFI_MO_MMS_UL_files.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_646_LIVE_LTE_DSDS_STAB_RM_SIM_DL_files.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_647_LIVE_LTE_DSDS_STAB_RM_SIM_UL_files.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_648_LIVE_LTE_DSDS_STAB_Switch_DATA_Mobile_NW_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_649_LIVE_LTE_DSDS_STAB_Switch_DATA_Mobile_NW_UL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_650_LIVE_LTE_DSDS_STAB_Switch_DATA_Mobile_NW_DL_UL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_651_LIVE_LTE_DSDS_STAB_WIFI_Hotspot.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_655_LIVE_LTE_DSDS_STAB_USB_tether_MO_VoLTEcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_656_LIVE_LTE_DSDS_STAB_USB_tether_MT_VoLTEcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_657_LIVE_LTE_DSDS_STAB_USB_tether_MO_VTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_658_LIVE_LTE_DSDS_STAB_USB_tether_MT_VTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_659_LIVE_LTE_DSDS_STAB_USB_tether_Data_toggle.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_660_LIVE_LTE_DSDS_STAB_USB_tether_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_661_LIVE_LTE_DSDS_STAB_USB_tether_FPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_662_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_663_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_664_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_665_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_666_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_667_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_668_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_669_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_670_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_671_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_672_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_673_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_674_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_675_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_676_LIVE_LTE_DSDS_STAB_USB_tether_RAT_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_677_LIVE_LTE_DSDS_STAB_USB_tether_DL_Files_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_678_LIVE_LTE_DSDS_STAB_USB_tether_UL_Files_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_679_LIVE_LTE_DSDS_STAB_USB_tether_DL_Files_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_680_LIVE_LTE_DSDS_STAB_USB_tether_UL_Files_PLMN_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_681_LIVE_LTE_DSDS_STAB_USB_tether_MTcall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_682_LIVE_LTE_DSDS_STAB_USB_tether_MTcall_MPLMN_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_683_LIVE_LTE_DSDS_STAB_USB_tether_USSD_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_688_LIVE_LTE_DSDS_STAB_USB_tether_MOVoLTE_CONF.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_689_LIVE_LTE_DSDS_STAB_USB_tether_MTVoLTE_CONF.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_68_LIVE_LTE_DSDS_STAB_CALLS_MMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_690_LIVE_LTE_DSDS_STAB_USB_tether_MTVTCall.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_691_LIVE_LTE_DSDS_STAB_USB_tether_e911call.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_692_LIVE_LTE_DSDS_STAB_USB_tether_e911call_longpresspower.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_693_LIVE_LTE_DSDS_STAB_Long_call_data_transfer.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_695_LIVE_LTE_DSDS_STAB_Long_call_SIM1_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_696_LIVE_LTE_DSDS_STAB_Long_call_SIM2_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_697_LIVE_LTE_DSDS_STAB_Long_call_SIM2_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_698_LIVE_LTE_DSDS_STAB_Long_call_SIM1_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_699_LIVE_LTE_DSDS_STAB_Long_call_SIM2_SIM1.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_6_LIVE_LTE_DSDS_STAB_Act_Deact_SIM2_Call.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_700_LIVE_LTE_DSDS_STAB_Long_call_SIM2_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_701_LIVE_LTE_DSDS_STAB_PLMN_SIM2_DATA_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_702_LIVE_LTE_DSDS_STAB_PLMN_SIM2_Short_Call_DATA_SIM2.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_71_LIVE_LTE_DSDS_STAB_MUL_MO_MTcall_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_72_LIVE_LTE_DSDS_STAB_CALLS_SMS_MMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_73_LIVE_LTE_DSDS_STAB_CALLS_SMS_YTDL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_75_LIVE_LTE_DSDS_STAB_PING_DL_YT_Calls_MMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_77_LIVE_LTE_DSDS_STAB_CALLS_MMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_79_LIVE_LTE_DSDS_STAB_PINGS_CALLS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_80_LIVE_LTE_DSDS_STAB_PINGS_CALLS_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_82_LIVE_LTE_DSDS_STAB_CALLS_SMS_MMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_84_LIVE_LTE_DSDS_STAB_CALLS_SMS_MMS_DL_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_86_LIVE_LTE_DSDS_STAB_CALLS_SMS_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_87_LIVE_LTE_DSDS_STAB_CALLS_SMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_88_LIVE_LTE_DSDS_STAB_CALLS_SMS_MMS_DL_Pings.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_89_LIVE_LTE_DSDS_STAB_CALLS_CALLS_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_8_LIVE_LTE_DSDS_STAB_Act_Deact_SIM2_SMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_91_LIVE_LTE_DSDS_STAB_Long_CALL_Ping_stream_UL_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_93_LIVE_LTE_DSDS_STAB_MUl_MO_MT_Calls_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_94_LIVE_LTE_DSDS_STAB_CALLS_SMS_MMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_95_LIVE_LTE_DSDS_STAB_CALLS_SMS_YT_DL.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_96_LIVE_LTE_DSDS_STAB_CALLS_SMS_MPLMN.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_97_LIVE_LTE_DSDS_STAB_Ping_DL_YT_CALLS_MMS.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_99_LIVE_LTE_DSDS_STAB_CALLS_MMS_APM.py
Library    ${EXECDIR}/../cellular_automation_helpers/LIVE_LTE_DSDS_STAB/TC_9_LIVE_LTE_DSDS_STAB_DL_data_Deact_SIM1.py


*** Keywords ***
Start device Log
    [Arguments]       ${yamlData}              ${log_type}
    ${yamlData}       updateTheYmal            ${yamlData}
    Log To Console    "Starting Modem Logs"
    device_logging    ${yamlData}              ${TEST NAME}    ${log_type}    START

Stop device Log
    [Arguments]       ${yamlData}               ${log_type}
    Log To Console    "Stopping Modem Logs" 
    device_logging    ${yamlData}               ${TEST NAME}    ${log_type}    STOP

Fill Excel
    [Arguments]     ${log_type}
    Log             "Creating Excel Sheet"
    create_excel    ${log_type}

###### =========== Single Sim Test Cases ================= ##########
matter_1

    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    run_test
    ${adb_res}        ${msg}                run_test       ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART


TC_SS_01

    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS_TC_1
    ${adb_res}        ${msg}                SS_TC_1       ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}

SS_100000

    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS_100000
    ${adb_res}        ${msg}                SS_1000000       ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}

LIVE_SS_1000

    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS_10000
    ${adb_res}        ${msg}                SS_1000         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}

LIVE_SS_500
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS_5000
    ${adb_res}        ${msg}                SS_500         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}

LIVE_SS__1
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__1
    ${adb_res}        ${msg}                SS__1          ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__2
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__2
    ${adb_res}        ${msg}                SS__2          ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__3
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__3
    ${adb_res}        ${msg}                SS__3          ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__4
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__4
    ${adb_res}        ${msg}                SS__4          ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__5
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__5
    ${adb_res}        ${msg}                SS__5          ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__6
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__6
    ${adb_res}        ${msg}                SS__6          ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__7
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__7
    ${adb_res}        ${msg}                SS__7          ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__8
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__8
    ${adb_res}        ${msg}                SS__8          ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__9
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__9
    ${adb_res}        ${msg}                SS__9          ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__10
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__10
    ${adb_res}        ${msg}                SS__10         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__11
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__11
    ${adb_res}        ${msg}                SS__11         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__12
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__12
    ${adb_res}        ${msg}                SS__12         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__13
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__13
    ${adb_res}        ${msg}                SS__13         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__14
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__14
    ${adb_res}        ${msg}                SS__14         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__15
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__15
    ${adb_res}        ${msg}                SS__15         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__16
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__16
    ${adb_res}        ${msg}                SS__16         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__17
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__17
    ${adb_res}        ${msg}                SS__17         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__18
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__18
    ${adb_res}        ${msg}                SS__18         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__19
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__19
    ${adb_res}        ${msg}                SS__19         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__20
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__20
    ${adb_res}        ${msg}                SS__20         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__21
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__21
    ${adb_res}        ${msg}                SS__21         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__22
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__22
    ${adb_res}        ${msg}                SS__22         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__23
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__23
    ${adb_res}        ${msg}                SS__23         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__24
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__24
    ${adb_res}        ${msg}                SS__24         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__25
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__25
    ${adb_res}        ${msg}                SS__25         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__26
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__26
    ${adb_res}        ${msg}                SS__26         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__27
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__27
    ${adb_res}        ${msg}                SS__27         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__28
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__28
    ${adb_res}        ${msg}                SS__28         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__29
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__29
    ${adb_res}        ${msg}                SS__29         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__30
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__30
    ${adb_res}        ${msg}                SS__30         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__31
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__31
    ${adb_res}        ${msg}                SS__31         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__32
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__32
    ${adb_res}        ${msg}                SS__32         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__33
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__33
    ${adb_res}        ${msg}                SS__33         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__34
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__34
    ${adb_res}        ${msg}                SS__34         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__35
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__35
    ${adb_res}        ${msg}                SS__35         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__36
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__36
    ${adb_res}        ${msg}                SS__36         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__37
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__37
    ${adb_res}        ${msg}                SS__37         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__38
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__38
    ${adb_res}        ${msg}                SS__38         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__39
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__39
    ${adb_res}        ${msg}                SS__39         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__40
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__40
    ${adb_res}        ${msg}                SS__40         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__41
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__41
    ${adb_res}        ${msg}                SS__41         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__42
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__42
    ${adb_res}        ${msg}                SS__42         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__43
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__43
    ${adb_res}        ${msg}                SS__43         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__44
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__44
    ${adb_res}        ${msg}                SS__44         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__45
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__45
    ${adb_res}        ${msg}                SS__45         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__46
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__46
    ${adb_res}        ${msg}                SS__46         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__47
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__47
    ${adb_res}        ${msg}                SS__47         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__48
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__48
    ${adb_res}        ${msg}                SS__48         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__49
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__49
    ${adb_res}        ${msg}                SS__49         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__50
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__50
    ${adb_res}        ${msg}                SS__50         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__51
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__51
    ${adb_res}        ${msg}                SS__51         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__52
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__52
    ${adb_res}        ${msg}                SS__52         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__53
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__53
    ${adb_res}        ${msg}                SS__53         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__54
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__54
    ${adb_res}        ${msg}                SS__54         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__55
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__55
    ${adb_res}        ${msg}                SS__55         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__56
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__56
    ${adb_res}        ${msg}                SS__56         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__57
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__57
    ${adb_res}        ${msg}                SS__57         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__58
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__58
    ${adb_res}        ${msg}                SS__58         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__59
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__59
    ${adb_res}        ${msg}                SS__59         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__60
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__60
    ${adb_res}        ${msg}                SS__60         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__61
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__61
    ${adb_res}        ${msg}                SS__61         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__62
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__62
    ${adb_res}        ${msg}                SS__62         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__63
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__63
    ${adb_res}        ${msg}                SS__63         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__64
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__64
    ${adb_res}        ${msg}                SS__64         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__65
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__65
    ${adb_res}        ${msg}                SS__65         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__66
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__66
    ${adb_res}        ${msg}                SS__66         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__67
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__67
    ${adb_res}        ${msg}                SS__67         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__68
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__68
    ${adb_res}        ${msg}                SS__68         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__69
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__69
    ${adb_res}        ${msg}                SS__69         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__70
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__70
    ${adb_res}        ${msg}                SS__70         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__71
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__71
    ${adb_res}        ${msg}                SS__71         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__72
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__72
    ${adb_res}        ${msg}                SS__72         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__73
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__73
    ${adb_res}        ${msg}                SS__73         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__74
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__74
    ${adb_res}        ${msg}                SS__74         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__75
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__75
    ${adb_res}        ${msg}                SS__75         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__76
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__76
    ${adb_res}        ${msg}                SS__76         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__77
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__77
    ${adb_res}        ${msg}                SS__77         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__78
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__78
    ${adb_res}        ${msg}                SS__78         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__79
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__79
    ${adb_res}        ${msg}                SS__79         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__80
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__80
    ${adb_res}        ${msg}                SS__80         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__81
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__81
    ${adb_res}        ${msg}                SS__81         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__82
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__82
    ${adb_res}        ${msg}                SS__82         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__83
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__83
    ${adb_res}        ${msg}                SS__83         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__84
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__84
    ${adb_res}        ${msg}                SS__84         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__85
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__85
    ${adb_res}        ${msg}                SS__85         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__86
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__86
    ${adb_res}        ${msg}                SS__86         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__87
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__87
    ${adb_res}        ${msg}                SS__87         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__88
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__88
    ${adb_res}        ${msg}                SS__88         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__89
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__89
    ${adb_res}        ${msg}                SS__89         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__90
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__90
    ${adb_res}        ${msg}                SS__90         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__91
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__91
    ${adb_res}        ${msg}                SS__91         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__92
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__92
    ${adb_res}        ${msg}                SS__92         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__93
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__93
    ${adb_res}        ${msg}                SS__93         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__94
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__94
    ${adb_res}        ${msg}                SS__94         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__95
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__95
    ${adb_res}        ${msg}                SS__95         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__96
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__96
    ${adb_res}        ${msg}                SS__96         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__97
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__97
    ${adb_res}        ${msg}                SS__97         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__98
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__98
    ${adb_res}        ${msg}                SS__98         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__99
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__99
    ${adb_res}        ${msg}                SS__99         ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__100
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__100
    ${adb_res}        ${msg}                SS__100        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__101
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__101
    ${adb_res}        ${msg}                SS__101        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__102
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__102
    ${adb_res}        ${msg}                SS__102        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__103
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__103
    ${adb_res}        ${msg}                SS__103        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__104
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__104
    ${adb_res}        ${msg}                SS__104        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__105
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__105
    ${adb_res}        ${msg}                SS__105        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__106
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__106
    ${adb_res}        ${msg}                SS__106        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__107
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__107
    ${adb_res}        ${msg}                SS__107        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__108
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__108
    ${adb_res}        ${msg}                SS__108        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__109
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__109
    ${adb_res}        ${msg}                SS__109        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__110
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__110
    ${adb_res}        ${msg}                SS__110        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__111
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__111
    ${adb_res}        ${msg}                SS__111        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__112
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__112
    ${adb_res}        ${msg}                SS__112        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__113
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__113
    ${adb_res}        ${msg}                SS__113        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__114
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__114
    ${adb_res}        ${msg}                SS__114        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__115
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__115
    ${adb_res}        ${msg}                SS__115        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__116
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__116
    ${adb_res}        ${msg}                SS__116        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__117
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__117
    ${adb_res}        ${msg}                SS__117        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__118
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__118
    ${adb_res}        ${msg}                SS__118        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__119
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__119
    ${adb_res}        ${msg}                SS__119        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__120
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__120
    ${adb_res}        ${msg}                SS__120        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__121
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__121
    ${adb_res}        ${msg}                SS__121        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__122
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__122
    ${adb_res}        ${msg}                SS__122        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__123
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__123
    ${adb_res}        ${msg}                SS__123        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__124
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__124
    ${adb_res}        ${msg}                SS__124        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__125
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__125
    ${adb_res}        ${msg}                SS__125        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__126
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__126
    ${adb_res}        ${msg}                SS__126        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__127
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__127
    ${adb_res}        ${msg}                SS__127        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__128
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__128
    ${adb_res}        ${msg}                SS__128        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__129
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__129
    ${adb_res}        ${msg}                SS__129        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__130
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__130
    ${adb_res}        ${msg}                SS__130        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__131
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__131
    ${adb_res}        ${msg}                SS__131        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__132
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__132
    ${adb_res}        ${msg}                SS__132        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__133
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__133
    ${adb_res}        ${msg}                SS__133        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__134
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__134
    ${adb_res}        ${msg}                SS__134        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__135
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__135
    ${adb_res}        ${msg}                SS__135        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__136
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__136
    ${adb_res}        ${msg}                SS__136        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__137
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__137
    ${adb_res}        ${msg}                SS__137        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__138
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__138
    ${adb_res}        ${msg}                SS__138        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__139
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__139
    ${adb_res}        ${msg}                SS__139        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__140
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__140
    ${adb_res}        ${msg}                SS__140        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__141
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__141
    ${adb_res}        ${msg}                SS__141        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__142
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__142
    ${adb_res}        ${msg}                SS__142        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__143
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__143
    ${adb_res}        ${msg}                SS__143        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__144
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__144
    ${adb_res}        ${msg}                SS__144        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__145
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__145
    ${adb_res}        ${msg}                SS__145        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__146
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__146
    ${adb_res}        ${msg}                SS__146        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__147
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__147
    ${adb_res}        ${msg}                SS__147        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__148
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__148
    ${adb_res}        ${msg}                SS__148        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__149
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__149
    ${adb_res}        ${msg}                SS__149        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__150
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__150
    ${adb_res}        ${msg}                SS__150        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__151
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__151
    ${adb_res}        ${msg}                SS__151        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__152
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__152
    ${adb_res}        ${msg}                SS__152        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__153
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__153
    ${adb_res}        ${msg}                SS__153        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__154
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__154
    ${adb_res}        ${msg}                SS__154        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__155
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__155
    ${adb_res}        ${msg}                SS__155        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__156
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__156
    ${adb_res}        ${msg}                SS__156        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__157
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__157
    ${adb_res}        ${msg}                SS__157        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__158
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__158
    ${adb_res}        ${msg}                SS__158        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__159
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__159
    ${adb_res}        ${msg}                SS__159        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__160
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__160
    ${adb_res}        ${msg}                SS__160        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__161
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__161
    ${adb_res}        ${msg}                SS__161        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__162
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__162
    ${adb_res}        ${msg}                SS__162        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__163
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__163
    ${adb_res}        ${msg}                SS__163        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__164
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__164
    ${adb_res}        ${msg}                SS__164        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__165
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__165
    ${adb_res}        ${msg}                SS__165        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__166
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__166
    ${adb_res}        ${msg}                SS__166        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__167
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__167
    ${adb_res}        ${msg}                SS__167        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__168
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__168
    ${adb_res}        ${msg}                SS__168        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__169
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__169
    ${adb_res}        ${msg}                SS__169        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__170
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__170
    ${adb_res}        ${msg}                SS__170        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__171
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__171
    ${adb_res}        ${msg}                SS__171        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__172
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__172
    ${adb_res}        ${msg}                SS__172        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__173
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__173
    ${adb_res}        ${msg}                SS__173        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__174
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__174
    ${adb_res}        ${msg}                SS__174        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__175
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__175
    ${adb_res}        ${msg}                SS__175        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__176
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__176
    ${adb_res}        ${msg}                SS__176        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__177
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__177
    ${adb_res}        ${msg}                SS__177        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__178
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__178
    ${adb_res}        ${msg}                SS__178        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__179
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__179
    ${adb_res}        ${msg}                SS__179        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__180
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__180
    ${adb_res}        ${msg}                SS__180        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__181
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__181
    ${adb_res}        ${msg}                SS__181        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__182
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__182
    ${adb_res}        ${msg}                SS__182        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__183
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__183
    ${adb_res}        ${msg}                SS__183        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__184
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__184
    ${adb_res}        ${msg}                SS__184        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__185
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__185
    ${adb_res}        ${msg}                SS__185        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__186
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__186
    ${adb_res}        ${msg}                SS__186        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__187
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__187
    ${adb_res}        ${msg}                SS__187        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__188
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__188
    ${adb_res}        ${msg}                SS__188        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__189
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__189
    ${adb_res}        ${msg}                SS__189        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__190
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__190
    ${adb_res}        ${msg}                SS__190        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__191
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__191
    ${adb_res}        ${msg}                SS__191        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__192
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__192
    ${adb_res}        ${msg}                SS__192        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__193
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__193
    ${adb_res}        ${msg}                SS__193        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__194
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__194
    ${adb_res}        ${msg}                SS__194        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__195
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__195
    ${adb_res}        ${msg}                SS__195        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__196
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__196
    ${adb_res}        ${msg}                SS__196        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__197
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__197
    ${adb_res}        ${msg}                SS__197        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__198
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__198
    ${adb_res}        ${msg}                SS__198        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__199
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__199
    ${adb_res}        ${msg}                SS__199        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__200
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__200
    ${adb_res}        ${msg}                SS__200        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__201
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__201
    ${adb_res}        ${msg}                SS__201        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__202
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__202
    ${adb_res}        ${msg}                SS__202        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__203
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__203
    ${adb_res}        ${msg}                SS__203        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__204
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__204
    ${adb_res}        ${msg}                SS__204        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__205
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__205
    ${adb_res}        ${msg}                SS__205        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__206
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__206
    ${adb_res}        ${msg}                SS__206        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__207
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__207
    ${adb_res}        ${msg}                SS__207        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__208
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__208
    ${adb_res}        ${msg}                SS__208        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__209
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__209
    ${adb_res}        ${msg}                SS__209        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__210
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__210
    ${adb_res}        ${msg}                SS__210        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__211
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__211
    ${adb_res}        ${msg}                SS__211        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__212
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__212
    ${adb_res}        ${msg}                SS__212        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__213
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__213
    ${adb_res}        ${msg}                SS__213        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__214
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__214
    ${adb_res}        ${msg}                SS__214        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__215
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__215
    ${adb_res}        ${msg}                SS__215        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__216
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__216
    ${adb_res}        ${msg}                SS__216        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__217
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__217
    ${adb_res}        ${msg}                SS__217        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__218
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__218
    ${adb_res}        ${msg}                SS__218        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__219
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__219
    ${adb_res}        ${msg}                SS__219        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__220
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__220
    ${adb_res}        ${msg}                SS__220        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__221
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__221
    ${adb_res}        ${msg}                SS__221        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__222
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__222
    ${adb_res}        ${msg}                SS__222        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__223
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__223
    ${adb_res}        ${msg}                SS__223        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__224
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__224
    ${adb_res}        ${msg}                SS__224        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__225
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__225
    ${adb_res}        ${msg}                SS__225        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__226
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__226
    ${adb_res}        ${msg}                SS__226        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__227
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__227
    ${adb_res}        ${msg}                SS__227        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__228
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__228
    ${adb_res}        ${msg}                SS__228        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__229
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__229
    ${adb_res}        ${msg}                SS__229        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__230
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__230
    ${adb_res}        ${msg}                SS__230        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__231
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__231
    ${adb_res}        ${msg}                SS__231        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__232
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__232
    ${adb_res}        ${msg}                SS__232        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__233
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__233
    ${adb_res}        ${msg}                SS__233        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__234
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__234
    ${adb_res}        ${msg}                SS__234        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__235
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__235
    ${adb_res}        ${msg}                SS__235        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__236
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__236
    ${adb_res}        ${msg}                SS__236        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__237
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__237
    ${adb_res}        ${msg}                SS__237        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__238
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__238
    ${adb_res}        ${msg}                SS__238        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__239
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__239
    ${adb_res}        ${msg}                SS__239        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__240
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__240
    ${adb_res}        ${msg}                SS__240        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__241
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__241
    ${adb_res}        ${msg}                SS__241        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__242
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__242
    ${adb_res}        ${msg}                SS__242        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__243
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__243
    ${adb_res}        ${msg}                SS__243        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__244
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__244
    ${adb_res}        ${msg}                SS__244        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__245
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__245
    ${adb_res}        ${msg}                SS__245        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__246
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__246
    ${adb_res}        ${msg}                SS__246        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__247
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__247
    ${adb_res}        ${msg}                SS__247        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__248
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__248
    ${adb_res}        ${msg}                SS__248        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__249
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__249
    ${adb_res}        ${msg}                SS__249        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__250
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__250
    ${adb_res}        ${msg}                SS__250        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__251
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__251
    ${adb_res}        ${msg}                SS__251        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__252
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__252
    ${adb_res}        ${msg}                SS__252        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__253
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__253
    ${adb_res}        ${msg}                SS__253        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__254
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__254
    ${adb_res}        ${msg}                SS__254        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__255
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__255
    ${adb_res}        ${msg}                SS__255        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__256
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__256
    ${adb_res}        ${msg}                SS__256        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__257
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__257
    ${adb_res}        ${msg}                SS__257        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__258
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__258
    ${adb_res}        ${msg}                SS__258        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__259
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__259
    ${adb_res}        ${msg}                SS__259        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__260
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__260
    ${adb_res}        ${msg}                SS__260        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__261
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__261
    ${adb_res}        ${msg}                SS__261        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__262
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__262
    ${adb_res}        ${msg}                SS__262        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__263
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__263
    ${adb_res}        ${msg}                SS__263        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__264
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__264
    ${adb_res}        ${msg}                SS__264        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__265
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__265
    ${adb_res}        ${msg}                SS__265        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__266
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__266
    ${adb_res}        ${msg}                SS__266        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__267
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__267
    ${adb_res}        ${msg}                SS__267        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__268
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__268
    ${adb_res}        ${msg}                SS__268        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__269
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__269
    ${adb_res}        ${msg}                SS__269        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__270
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__270
    ${adb_res}        ${msg}                SS__270        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__271
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__271
    ${adb_res}        ${msg}                SS__271        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__272
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__272
    ${adb_res}        ${msg}                SS__272        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__273
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__273
    ${adb_res}        ${msg}                SS__273        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__274
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__274
    ${adb_res}        ${msg}                SS__274        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__275
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__275
    ${adb_res}        ${msg}                SS__275        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__276
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__276
    ${adb_res}        ${msg}                SS__276        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__277
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__277
    ${adb_res}        ${msg}                SS__277        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__278
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__278
    ${adb_res}        ${msg}                SS__278        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__279
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__279
    ${adb_res}        ${msg}                SS__279        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__280
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__280
    ${adb_res}        ${msg}                SS__280        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__281
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__281
    ${adb_res}        ${msg}                SS__281        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__282
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__282
    ${adb_res}        ${msg}                SS__282        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__283
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__283
    ${adb_res}        ${msg}                SS__283        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__284
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__284
    ${adb_res}        ${msg}                SS__284        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__285
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__285
    ${adb_res}        ${msg}                SS__285        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__286
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__286
    ${adb_res}        ${msg}                SS__286        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__287
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__287
    ${adb_res}        ${msg}                SS__287        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__288
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__288
    ${adb_res}        ${msg}                SS__288        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__289
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__289
    ${adb_res}        ${msg}                SS__289        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__290
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__290
    ${adb_res}        ${msg}                SS__290        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__291
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__291
    ${adb_res}        ${msg}                SS__291        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__292
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__292
    ${adb_res}        ${msg}                SS__292        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__293
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__293
    ${adb_res}        ${msg}                SS__293        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__294
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__294
    ${adb_res}        ${msg}                SS__294        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__295
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__295
    ${adb_res}        ${msg}                SS__295        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__296
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__296
    ${adb_res}        ${msg}                SS__296        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__297
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__297
    ${adb_res}        ${msg}                SS__297        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__298
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__298
    ${adb_res}        ${msg}                SS__298        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__299
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__299
    ${adb_res}        ${msg}                SS__299        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__300
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__300
    ${adb_res}        ${msg}                SS__300        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__301
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__301
    ${adb_res}        ${msg}                SS__301        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__302
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__302
    ${adb_res}        ${msg}                SS__302        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__303
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__303
    ${adb_res}        ${msg}                SS__303        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__304
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__304
    ${adb_res}        ${msg}                SS__304        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__305
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__305
    ${adb_res}        ${msg}                SS__305        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__306
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__306
    ${adb_res}        ${msg}                SS__306        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__307
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__307
    ${adb_res}        ${msg}                SS__307        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__308
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__308
    ${adb_res}        ${msg}                SS__308        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__309
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__309
    ${adb_res}        ${msg}                SS__309        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__310
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__310
    ${adb_res}        ${msg}                SS__310        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__311
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__311
    ${adb_res}        ${msg}                SS__311        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__312
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__312
    ${adb_res}        ${msg}                SS__312        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__313
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__313
    ${adb_res}        ${msg}                SS__313        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__314
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__314
    ${adb_res}        ${msg}                SS__314        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__315
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__315
    ${adb_res}        ${msg}                SS__315        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__316
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__316
    ${adb_res}        ${msg}                SS__316        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__317
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__317
    ${adb_res}        ${msg}                SS__317        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__318
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__318
    ${adb_res}        ${msg}                SS__318        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__319
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__319
    ${adb_res}        ${msg}                SS__319        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__320
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__320
    ${adb_res}        ${msg}                SS__320        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__321
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__321
    ${adb_res}        ${msg}                SS__321        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__322
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__322
    ${adb_res}        ${msg}                SS__322        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__323
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__323
    ${adb_res}        ${msg}                SS__323        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__324
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__324
    ${adb_res}        ${msg}                SS__324        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__325
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__325
    ${adb_res}        ${msg}                SS__325        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__326
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__326
    ${adb_res}        ${msg}                SS__326        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__327
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__327
    ${adb_res}        ${msg}                SS__327        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__328
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__328
    ${adb_res}        ${msg}                SS__328        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__329
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__329
    ${adb_res}        ${msg}                SS__329        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__330
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__330
    ${adb_res}        ${msg}                SS__330        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__331
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__331
    ${adb_res}        ${msg}                SS__331        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__332
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__332
    ${adb_res}        ${msg}                SS__332        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__333
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__333
    ${adb_res}        ${msg}                SS__333        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__334
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__334
    ${adb_res}        ${msg}                SS__334        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__335
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__335
    ${adb_res}        ${msg}                SS__335        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__336
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__336
    ${adb_res}        ${msg}                SS__336        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__337
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__337
    ${adb_res}        ${msg}                SS__337        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__338
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__338
    ${adb_res}        ${msg}                SS__338        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__339
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__339
    ${adb_res}        ${msg}                SS__339        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__340
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__340
    ${adb_res}        ${msg}                SS__340        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__341
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__341
    ${adb_res}        ${msg}                SS__341        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__342
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__342
    ${adb_res}        ${msg}                SS__342        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__343
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__343
    ${adb_res}        ${msg}                SS__343        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__344
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__344
    ${adb_res}        ${msg}                SS__344        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__345
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__345
    ${adb_res}        ${msg}                SS__345        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__346
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__346
    ${adb_res}        ${msg}                SS__346        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__347
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__347
    ${adb_res}        ${msg}                SS__347        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__348
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__348
    ${adb_res}        ${msg}                SS__348        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__349
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__349
    ${adb_res}        ${msg}                SS__349        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__350
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__350
    ${adb_res}        ${msg}                SS__350        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__351
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__351
    ${adb_res}        ${msg}                SS__351        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__352
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__352
    ${adb_res}        ${msg}                SS__352        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__353
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__353
    ${adb_res}        ${msg}                SS__353        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}
LIVE_SS__354
    [Arguments]       ${tst}                ${yamlData}    ${log_type}
    Log To Console    SS__354
    ${adb_res}        ${msg}                SS__354        ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}          ${adb_res}     ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console        ${msg}
    ...               ELSE
    ...               device_logging        ${yamlData}    ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}            msg=${msg}

# Dual Sim Testcases Starts Here

LIVE_DSDS_3000
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS_3900
    ${adb_res}        ${msg}                      DSDS_390    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}



LIVE_DSDS__2
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__2
    ${adb_res}        ${msg}                      DSDS__2    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__3
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__3
    ${adb_res}        ${msg}                      DSDS__3    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__4
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__4
    ${adb_res}        ${msg}                      DSDS__4    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__5
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__5
    ${adb_res}        ${msg}                      DSDS__5    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__6
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__6
    ${adb_res}        ${msg}                      DSDS__6    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__7
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__7
    ${adb_res}        ${msg}                      DSDS__7    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__8
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__8
    ${adb_res}        ${msg}                      DSDS__8    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__9
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__9
    ${adb_res}        ${msg}                      DSDS__9    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__10
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__10
    ${adb_res}        ${msg}                      DSDS__10    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__11
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__11
    ${adb_res}        ${msg}                      DSDS__11    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__12
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__12
    ${adb_res}        ${msg}                      DSDS__12    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__13
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__13
    ${adb_res}        ${msg}                      DSDS__13    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__14
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__14
    ${adb_res}        ${msg}                      DSDS__14    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__15
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__15
    ${adb_res}        ${msg}                      DSDS__15    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__16
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__16
    ${adb_res}        ${msg}                      DSDS__16    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__17
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__17
    ${adb_res}        ${msg}                      DSDS__17    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__18
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__18
    ${adb_res}        ${msg}                      DSDS__18    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__19
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__19
    ${adb_res}        ${msg}                      DSDS__19    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__20
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__20
    ${adb_res}        ${msg}                      DSDS__20    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__21
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__21
    ${adb_res}        ${msg}                      DSDS__21    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__22
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__22
    ${adb_res}        ${msg}                      DSDS__22    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__23
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__23
    ${adb_res}        ${msg}                      DSDS__23    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__24
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__24
    ${adb_res}        ${msg}                      DSDS__24    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__25
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__25
    ${adb_res}        ${msg}                      DSDS__25    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__26
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__26
    ${adb_res}        ${msg}                      DSDS__26    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__27
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__27
    ${adb_res}        ${msg}                      DSDS__27    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__28
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__28
    ${adb_res}        ${msg}                      DSDS__28    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__29
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__29
    ${adb_res}        ${msg}                      DSDS__29    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__30
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__30
    ${adb_res}        ${msg}                      DSDS__30    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__31
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__31
    ${adb_res}        ${msg}                      DSDS__31    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__32
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__32
    ${adb_res}        ${msg}                      DSDS__32    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__33
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__33
    ${adb_res}        ${msg}                      DSDS__33    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__34
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__34
    ${adb_res}        ${msg}                      DSDS__34    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__35
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__35
    ${adb_res}        ${msg}                      DSDS__35    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__36
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__36
    ${adb_res}        ${msg}                      DSDS__36    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__37
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__37
    ${adb_res}        ${msg}                      DSDS__37    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__38
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__38
    ${adb_res}        ${msg}                      DSDS__38    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__39
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__39
    ${adb_res}        ${msg}                      DSDS__39    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__40
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__40
    ${adb_res}        ${msg}                      DSDS__40    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__41
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__41
    ${adb_res}        ${msg}                      DSDS__41    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__42
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__42
    ${adb_res}        ${msg}                      DSDS__42    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__43
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__43
    ${adb_res}        ${msg}                      DSDS__43    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__44
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__44
    ${adb_res}        ${msg}                      DSDS__44    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__45
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__45
    ${adb_res}        ${msg}                      DSDS__45    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__46
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__46
    ${adb_res}        ${msg}                      DSDS__46    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__47
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__47
    ${adb_res}        ${msg}                      DSDS__47    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__48
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__48
    ${adb_res}        ${msg}                      DSDS__48    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__49
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__49
    ${adb_res}        ${msg}                      DSDS__49    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__50
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__50
    ${adb_res}        ${msg}                      DSDS__50    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__51
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__51
    ${adb_res}        ${msg}                      DSDS__51    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__52
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__52
    ${adb_res}        ${msg}                      DSDS__52    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__53
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__53
    ${adb_res}        ${msg}                      DSDS__53    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__54
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__54
    ${adb_res}        ${msg}                      DSDS__54    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__55
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__55
    ${adb_res}        ${msg}                      DSDS__55    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__56
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__56
    ${adb_res}        ${msg}                      DSDS__56    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__57
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__57
    ${adb_res}        ${msg}                      DSDS__57    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__58
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__58
    ${adb_res}        ${msg}                      DSDS__58    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__59
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__59
    ${adb_res}        ${msg}                      DSDS__59    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__60
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__60
    ${adb_res}        ${msg}                      DSDS__60    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__61
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__61
    ${adb_res}        ${msg}                      DSDS__61    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__62
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__62
    ${adb_res}        ${msg}                      DSDS__62    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__63
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__63
    ${adb_res}        ${msg}                      DSDS__63    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__64
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__64
    ${adb_res}        ${msg}                      DSDS__64    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__65
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__65
    ${adb_res}        ${msg}                      DSDS__65    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__66
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__66
    ${adb_res}        ${msg}                      DSDS__66    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__67
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__67
    ${adb_res}        ${msg}                      DSDS__67    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__68
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__68
    ${adb_res}        ${msg}                      DSDS__68    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__69
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__69
    ${adb_res}        ${msg}                      DSDS__69    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__70
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__70
    ${adb_res}        ${msg}                      DSDS__70    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__71
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__71
    ${adb_res}        ${msg}                      DSDS__71    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__72
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__72
    ${adb_res}        ${msg}                      DSDS__72    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__73
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__73
    ${adb_res}        ${msg}                      DSDS__73    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__74
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__74
    ${adb_res}        ${msg}                      DSDS__74    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__75
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__75
    ${adb_res}        ${msg}                      DSDS__75    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__76
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__76
    ${adb_res}        ${msg}                      DSDS__76    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__77
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__77
    ${adb_res}        ${msg}                      DSDS__77    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__78
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__78
    ${adb_res}        ${msg}                      DSDS__78    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__79
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__79
    ${adb_res}        ${msg}                      DSDS__79    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__80
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__80
    ${adb_res}        ${msg}                      DSDS__80    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__81
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__81
    ${adb_res}        ${msg}                      DSDS__81    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__82
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__82
    ${adb_res}        ${msg}                      DSDS__82    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__83
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__83
    ${adb_res}        ${msg}                      DSDS__83    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__84
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__84
    ${adb_res}        ${msg}                      DSDS__84    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__85
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__85
    ${adb_res}        ${msg}                      DSDS__85    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__86
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__86
    ${adb_res}        ${msg}                      DSDS__86    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__87
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__87
    ${adb_res}        ${msg}                      DSDS__87    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__88
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__88
    ${adb_res}        ${msg}                      DSDS__88    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__89
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__89
    ${adb_res}        ${msg}                      DSDS__89    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__90
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__90
    ${adb_res}        ${msg}                      DSDS__90    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__91
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__91
    ${adb_res}        ${msg}                      DSDS__91    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__92
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__92
    ${adb_res}        ${msg}                      DSDS__92    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__93
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__93
    ${adb_res}        ${msg}                      DSDS__93    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__94
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__94
    ${adb_res}        ${msg}                      DSDS__94    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__95
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__95
    ${adb_res}        ${msg}                      DSDS__95    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__96
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__96
    ${adb_res}        ${msg}                      DSDS__96    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__97
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__97
    ${adb_res}        ${msg}                      DSDS__97    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__98
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__98
    ${adb_res}        ${msg}                      DSDS__98    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__99
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__99
    ${adb_res}        ${msg}                      DSDS__99    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__100
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__100
    ${adb_res}        ${msg}                      DSDS__100    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__101
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__101
    ${adb_res}        ${msg}                      DSDS__101    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__102
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__102
    ${adb_res}        ${msg}                      DSDS__102    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__103
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__103
    ${adb_res}        ${msg}                      DSDS__103    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__104
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__104
    ${adb_res}        ${msg}                      DSDS__104    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__105
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__105
    ${adb_res}        ${msg}                      DSDS__105    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__106
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__106
    ${adb_res}        ${msg}                      DSDS__106    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__107
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__107
    ${adb_res}        ${msg}                      DSDS__107    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__108
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__108
    ${adb_res}        ${msg}                      DSDS__108    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__109
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__109
    ${adb_res}        ${msg}                      DSDS__109    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__110
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__110
    ${adb_res}        ${msg}                      DSDS__110    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__111
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__111
    ${adb_res}        ${msg}                      DSDS__111    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__112
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__112
    ${adb_res}        ${msg}                      DSDS__112    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__113
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__113
    ${adb_res}        ${msg}                      DSDS__113    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__114
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__114
    ${adb_res}        ${msg}                      DSDS__114    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__115
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__115
    ${adb_res}        ${msg}                      DSDS__115    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__116
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__116
    ${adb_res}        ${msg}                      DSDS__116    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__117
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__117
    ${adb_res}        ${msg}                      DSDS__117    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__118
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__118
    ${adb_res}        ${msg}                      DSDS__118    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__119
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__119
    ${adb_res}        ${msg}                      DSDS__119    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__120
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__120
    ${adb_res}        ${msg}                      DSDS__120    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__121
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__121
    ${adb_res}        ${msg}                      DSDS__121    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__122
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__122
    ${adb_res}        ${msg}                      DSDS__122    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__123
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__123
    ${adb_res}        ${msg}                      DSDS__123    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__124
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__124
    ${adb_res}        ${msg}                      DSDS__124    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__125
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__125
    ${adb_res}        ${msg}                      DSDS__125    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__126
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__126
    ${adb_res}        ${msg}                      DSDS__126    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__127
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__127
    ${adb_res}        ${msg}                      DSDS__127    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__128
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__128
    ${adb_res}        ${msg}                      DSDS__128    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__129
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__129
    ${adb_res}        ${msg}                      DSDS__129    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__130
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__130
    ${adb_res}        ${msg}                      DSDS__130    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__131
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__131
    ${adb_res}        ${msg}                      DSDS__131    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__132
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__132
    ${adb_res}        ${msg}                      DSDS__132    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__133
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__133
    ${adb_res}        ${msg}                      DSDS__133    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__134
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__134
    ${adb_res}        ${msg}                      DSDS__134    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__135
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__135
    ${adb_res}        ${msg}                      DSDS__135    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__136
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__136
    ${adb_res}        ${msg}                      DSDS__136    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__137
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__137
    ${adb_res}        ${msg}                      DSDS__137    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__138
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__138
    ${adb_res}        ${msg}                      DSDS__138    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__139
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__139
    ${adb_res}        ${msg}                      DSDS__139    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__140
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__140
    ${adb_res}        ${msg}                      DSDS__140    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__141
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__141
    ${adb_res}        ${msg}                      DSDS__141    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__142
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__142
    ${adb_res}        ${msg}                      DSDS__142    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__143
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__143
    ${adb_res}        ${msg}                      DSDS__143    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__144
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__144
    ${adb_res}        ${msg}                      DSDS__144    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__145
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__145
    ${adb_res}        ${msg}                      DSDS__145    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__146
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__146
    ${adb_res}        ${msg}                      DSDS__146    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__147
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__147
    ${adb_res}        ${msg}                      DSDS__147    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__148
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__148
    ${adb_res}        ${msg}                      DSDS__148    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__149
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__149
    ${adb_res}        ${msg}                      DSDS__149    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__150
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__150
    ${adb_res}        ${msg}                      DSDS__150    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__151
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__151
    ${adb_res}        ${msg}                      DSDS__151    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__152
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__152
    ${adb_res}        ${msg}                      DSDS__152    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__153
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__153
    ${adb_res}        ${msg}                      DSDS__153    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__154
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__154
    ${adb_res}        ${msg}                      DSDS__154    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__155
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__155
    ${adb_res}        ${msg}                      DSDS__155    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__156
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__156
    ${adb_res}        ${msg}                      DSDS__156    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__157
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__157
    ${adb_res}        ${msg}                      DSDS__157    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__158
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__158
    ${adb_res}        ${msg}                      DSDS__158    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__159
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__159
    ${adb_res}        ${msg}                      DSDS__159    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__160
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__160
    ${adb_res}        ${msg}                      DSDS__160    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__161
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__161
    ${adb_res}        ${msg}                      DSDS__161    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__162
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__162
    ${adb_res}        ${msg}                      DSDS__162    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__163
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__163
    ${adb_res}        ${msg}                      DSDS__163    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__164
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__164
    ${adb_res}        ${msg}                      DSDS__164    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__165
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__165
    ${adb_res}        ${msg}                      DSDS__165    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__166
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__166
    ${adb_res}        ${msg}                      DSDS__166    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__167
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__167
    ${adb_res}        ${msg}                      DSDS__167    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__168
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__168
    ${adb_res}        ${msg}                      DSDS__168    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__169
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__169
    ${adb_res}        ${msg}                      DSDS__169    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__170
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__170
    ${adb_res}        ${msg}                      DSDS__170    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__171
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__171
    ${adb_res}        ${msg}                      DSDS__171    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__172
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__172
    ${adb_res}        ${msg}                      DSDS__172    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__173
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__173
    ${adb_res}        ${msg}                      DSDS__173    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__174
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__174
    ${adb_res}        ${msg}                      DSDS__174    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__175
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__175
    ${adb_res}        ${msg}                      DSDS__175    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__176
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__176
    ${adb_res}        ${msg}                      DSDS__176    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__177
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__177
    ${adb_res}        ${msg}                      DSDS__177    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__178
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__178
    ${adb_res}        ${msg}                      DSDS__178    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__179
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__179
    ${adb_res}        ${msg}                      DSDS__179    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__180
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__180
    ${adb_res}        ${msg}                      DSDS__180    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__181
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__181
    ${adb_res}        ${msg}                      DSDS__181    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__182
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__182
    ${adb_res}        ${msg}                      DSDS__182    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__183
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__183
    ${adb_res}        ${msg}                      DSDS__183    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__184
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__184
    ${adb_res}        ${msg}                      DSDS__184    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__185
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__185
    ${adb_res}        ${msg}                      DSDS__185    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__186
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__186
    ${adb_res}        ${msg}                      DSDS__186    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__187
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__187
    ${adb_res}        ${msg}                      DSDS__187    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__188
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__188
    ${adb_res}        ${msg}                      DSDS__188    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__189
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__189
    ${adb_res}        ${msg}                      DSDS__189    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__190
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__190
    ${adb_res}        ${msg}                      DSDS__190    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__191
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__191
    ${adb_res}        ${msg}                      DSDS__191    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__192
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__192
    ${adb_res}        ${msg}                      DSDS__192    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__193
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__193
    ${adb_res}        ${msg}                      DSDS__193    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__194
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__194
    ${adb_res}        ${msg}                      DSDS__194    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__195
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__195
    ${adb_res}        ${msg}                      DSDS__195    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__196
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__196
    ${adb_res}        ${msg}                      DSDS__196    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__197
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__197
    ${adb_res}        ${msg}                      DSDS__197    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__198
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__198
    ${adb_res}        ${msg}                      DSDS__198    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__199
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__199
    ${adb_res}        ${msg}                      DSDS__199    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__200
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__200
    ${adb_res}        ${msg}                      DSDS__200    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__201
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__201
    ${adb_res}        ${msg}                      DSDS__201    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__202
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__202
    ${adb_res}        ${msg}                      DSDS__202    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__203
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__203
    ${adb_res}        ${msg}                      DSDS__203    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__204
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__204
    ${adb_res}        ${msg}                      DSDS__204    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__205
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__205
    ${adb_res}        ${msg}                      DSDS__205    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__206
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__206
    ${adb_res}        ${msg}                      DSDS__206    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__207
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__207
    ${adb_res}        ${msg}                      DSDS__207    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__208
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__208
    ${adb_res}        ${msg}                      DSDS__208    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__209
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__209
    ${adb_res}        ${msg}                      DSDS__209    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__210
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__210
    ${adb_res}        ${msg}                      DSDS__210    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__211
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__211
    ${adb_res}        ${msg}                      DSDS__211    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__212
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__212
    ${adb_res}        ${msg}                      DSDS__212    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__213
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__213
    ${adb_res}        ${msg}                      DSDS__213    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__214
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__214
    ${adb_res}        ${msg}                      DSDS__214    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__215
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__215
    ${adb_res}        ${msg}                      DSDS__215    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__216
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__216
    ${adb_res}        ${msg}                      DSDS__216    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__217
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__217
    ${adb_res}        ${msg}                      DSDS__217    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__218
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__218
    ${adb_res}        ${msg}                      DSDS__218    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__219
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__219
    ${adb_res}        ${msg}                      DSDS__219    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__220
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__220
    ${adb_res}        ${msg}                      DSDS__220    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__221
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__221
    ${adb_res}        ${msg}                      DSDS__221    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__222
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__222
    ${adb_res}        ${msg}                      DSDS__222    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__223
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__223
    ${adb_res}        ${msg}                      DSDS__223    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__224
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__224
    ${adb_res}        ${msg}                      DSDS__224    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__225
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__225
    ${adb_res}        ${msg}                      DSDS__225    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__226
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__226
    ${adb_res}        ${msg}                      DSDS__226    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__227
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__227
    ${adb_res}        ${msg}                      DSDS__227    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__228
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__228
    ${adb_res}        ${msg}                      DSDS__228    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__229
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__229
    ${adb_res}        ${msg}                      DSDS__229    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__230
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__230
    ${adb_res}        ${msg}                      DSDS__230    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__231
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__231
    ${adb_res}        ${msg}                      DSDS__231    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__232
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__232
    ${adb_res}        ${msg}                      DSDS__232    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__233
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__233
    ${adb_res}        ${msg}                      DSDS__233    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__234
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__234
    ${adb_res}        ${msg}                      DSDS__234    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__235
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__235
    ${adb_res}        ${msg}                      DSDS__235    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__236
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__236
    ${adb_res}        ${msg}                      DSDS__236    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__237
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__237
    ${adb_res}        ${msg}                      DSDS__237    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__238
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__238
    ${adb_res}        ${msg}                      DSDS__238    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__239
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__239
    ${adb_res}        ${msg}                      DSDS__239    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__240
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__240
    ${adb_res}        ${msg}                      DSDS__240    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__241
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__241
    ${adb_res}        ${msg}                      DSDS__241    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__242
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__242
    ${adb_res}        ${msg}                      DSDS__242    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__243
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__243
    ${adb_res}        ${msg}                      DSDS__243    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__244
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__244
    ${adb_res}        ${msg}                      DSDS__244    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__245
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__245
    ${adb_res}        ${msg}                      DSDS__245    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__246
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__246
    ${adb_res}        ${msg}                      DSDS__246    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__247
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__247
    ${adb_res}        ${msg}                      DSDS__247    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__248
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__248
    ${adb_res}        ${msg}                      DSDS__248    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__249
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__249
    ${adb_res}        ${msg}                      DSDS__249    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__250
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__250
    ${adb_res}        ${msg}                      DSDS__250    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__251
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__251
    ${adb_res}        ${msg}                      DSDS__251    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__252
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__252
    ${adb_res}        ${msg}                      DSDS__252    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__253
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__253
    ${adb_res}        ${msg}                      DSDS__253    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__254
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__254
    ${adb_res}        ${msg}                      DSDS__254    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__255
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__255
    ${adb_res}        ${msg}                      DSDS__255    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__256
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__256
    ${adb_res}        ${msg}                      DSDS__256    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__257
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__257
    ${adb_res}        ${msg}                      DSDS__257    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__258
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__258
    ${adb_res}        ${msg}                      DSDS__258    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__259
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__259
    ${adb_res}        ${msg}                      DSDS__259    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__260
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__260
    ${adb_res}        ${msg}                      DSDS__260    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__261
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__261
    ${adb_res}        ${msg}                      DSDS__261    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__262
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__262
    ${adb_res}        ${msg}                      DSDS__262    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__263
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__263
    ${adb_res}        ${msg}                      DSDS__263    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__264
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__264
    ${adb_res}        ${msg}                      DSDS__264    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__265
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__265
    ${adb_res}        ${msg}                      DSDS__265    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__266
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__266
    ${adb_res}        ${msg}                      DSDS__266    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__267
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__267
    ${adb_res}        ${msg}                      DSDS__267    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__268
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__268
    ${adb_res}        ${msg}                      DSDS__268    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__269
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__269
    ${adb_res}        ${msg}                      DSDS__269    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__270
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__270
    ${adb_res}        ${msg}                      DSDS__270    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__271
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__271
    ${adb_res}        ${msg}                      DSDS__271    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__272
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__272
    ${adb_res}        ${msg}                      DSDS__272    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__273
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__273
    ${adb_res}        ${msg}                      DSDS__273    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__274
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__274
    ${adb_res}        ${msg}                      DSDS__274    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__275
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__275
    ${adb_res}        ${msg}                      DSDS__275    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__276
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__276
    ${adb_res}        ${msg}                      DSDS__276    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__277
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__277
    ${adb_res}        ${msg}                      DSDS__277    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__278
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__278
    ${adb_res}        ${msg}                      DSDS__278    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__279
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__279
    ${adb_res}        ${msg}                      DSDS__279    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__280
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__280
    ${adb_res}        ${msg}                      DSDS__280    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__281
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__281
    ${adb_res}        ${msg}                      DSDS__281    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__282
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__282
    ${adb_res}        ${msg}                      DSDS__282    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__283
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__283
    ${adb_res}        ${msg}                      DSDS__283    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__284
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__284
    ${adb_res}        ${msg}                      DSDS__284    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__285
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__285
    ${adb_res}        ${msg}                      DSDS__285    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__286
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__286
    ${adb_res}        ${msg}                      DSDS__286    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__287
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__287
    ${adb_res}        ${msg}                      DSDS__287    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__288
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__288
    ${adb_res}        ${msg}                      DSDS__288    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__289
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__289
    ${adb_res}        ${msg}                      DSDS__289    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__290
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__290
    ${adb_res}        ${msg}                      DSDS__290    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__291
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__291
    ${adb_res}        ${msg}                      DSDS__291    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__292
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__292
    ${adb_res}        ${msg}                      DSDS__292    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__293
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__293
    ${adb_res}        ${msg}                      DSDS__293    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__294
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__294
    ${adb_res}        ${msg}                      DSDS__294    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__295
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__295
    ${adb_res}        ${msg}                      DSDS__295    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__296
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__296
    ${adb_res}        ${msg}                      DSDS__296    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__297
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__297
    ${adb_res}        ${msg}                      DSDS__297    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__298
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__298
    ${adb_res}        ${msg}                      DSDS__298    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__299
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__299
    ${adb_res}        ${msg}                      DSDS__299    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__300
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__300
    ${adb_res}        ${msg}                      DSDS__300    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__301
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__301
    ${adb_res}        ${msg}                      DSDS__301    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__302
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__302
    ${adb_res}        ${msg}                      DSDS__302    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__303
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__303
    ${adb_res}        ${msg}                      DSDS__303    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__304
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__304
    ${adb_res}        ${msg}                      DSDS__304    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__305
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__305
    ${adb_res}        ${msg}                      DSDS__305    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__306
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__306
    ${adb_res}        ${msg}                      DSDS__306    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__307
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__307
    ${adb_res}        ${msg}                      DSDS__307    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__308
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__308
    ${adb_res}        ${msg}                      DSDS__308    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__309
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__309
    ${adb_res}        ${msg}                      DSDS__309    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__310
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__310
    ${adb_res}        ${msg}                      DSDS__310    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__311
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__311
    ${adb_res}        ${msg}                      DSDS__311    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__312
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__312
    ${adb_res}        ${msg}                      DSDS__312    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__313
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__313
    ${adb_res}        ${msg}                      DSDS__313    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__314
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__314
    ${adb_res}        ${msg}                      DSDS__314    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__315
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__315
    ${adb_res}        ${msg}                      DSDS__315    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__316
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__316
    ${adb_res}        ${msg}                      DSDS__316    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__317
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__317
    ${adb_res}        ${msg}                      DSDS__317    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__318
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__318
    ${adb_res}        ${msg}                      DSDS__318    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__319
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__319
    ${adb_res}        ${msg}                      DSDS__319    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__320
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__320
    ${adb_res}        ${msg}                      DSDS__320    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__321
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__321
    ${adb_res}        ${msg}                      DSDS__321    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__322
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__322
    ${adb_res}        ${msg}                      DSDS__322    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__323
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__323
    ${adb_res}        ${msg}                      DSDS__323    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__324
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__324
    ${adb_res}        ${msg}                      DSDS__324    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__325
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__325
    ${adb_res}        ${msg}                      DSDS__325    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__326
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__326
    ${adb_res}        ${msg}                      DSDS__326    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__327
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__327
    ${adb_res}        ${msg}                      DSDS__327    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__328
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__328
    ${adb_res}        ${msg}                      DSDS__328    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__329
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__329
    ${adb_res}        ${msg}                      DSDS__329    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__330
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__330
    ${adb_res}        ${msg}                      DSDS__330    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__331
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__331
    ${adb_res}        ${msg}                      DSDS__331    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__332
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__332
    ${adb_res}        ${msg}                      DSDS__332    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__333
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__333
    ${adb_res}        ${msg}                      DSDS__333    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__334
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__334
    ${adb_res}        ${msg}                      DSDS__334    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__335
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__335
    ${adb_res}        ${msg}                      DSDS__335    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__336
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__336
    ${adb_res}        ${msg}                      DSDS__336    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__337
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__337
    ${adb_res}        ${msg}                      DSDS__337    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__338
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__338
    ${adb_res}        ${msg}                      DSDS__338    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__339
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__339
    ${adb_res}        ${msg}                      DSDS__339    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__340
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__340
    ${adb_res}        ${msg}                      DSDS__340    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__341
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__341
    ${adb_res}        ${msg}                      DSDS__341    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__342
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__342
    ${adb_res}        ${msg}                      DSDS__342    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__343
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__343
    ${adb_res}        ${msg}                      DSDS__343    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__344
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__344
    ${adb_res}        ${msg}                      DSDS__344    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__345
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__345
    ${adb_res}        ${msg}                      DSDS__345    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__346
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__346
    ${adb_res}        ${msg}                      DSDS__346    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__347
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__347
    ${adb_res}        ${msg}                      DSDS__347    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__348
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__348
    ${adb_res}        ${msg}                      DSDS__348    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__349
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__349
    ${adb_res}        ${msg}                      DSDS__349    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__350
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__350
    ${adb_res}        ${msg}                      DSDS__350    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__351
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__351
    ${adb_res}        ${msg}                      DSDS__351    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__352
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__352
    ${adb_res}        ${msg}                      DSDS__352    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__353
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__353
    ${adb_res}        ${msg}                      DSDS__353    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__354
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__354
    ${adb_res}        ${msg}                      DSDS__354    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__355
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__355
    ${adb_res}        ${msg}                      DSDS__355    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__356
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__356
    ${adb_res}        ${msg}                      DSDS__356    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__357
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__357
    ${adb_res}        ${msg}                      DSDS__357    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__358
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__358
    ${adb_res}        ${msg}                      DSDS__358    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__359
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__359
    ${adb_res}        ${msg}                      DSDS__359    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__360
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__360
    ${adb_res}        ${msg}                      DSDS__360    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__361
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__361
    ${adb_res}        ${msg}                      DSDS__361    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__362
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__362
    ${adb_res}        ${msg}                      DSDS__362    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__363
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__363
    ${adb_res}        ${msg}                      DSDS__363    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__364
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__364
    ${adb_res}        ${msg}                      DSDS__364    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__365
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__365
    ${adb_res}        ${msg}                      DSDS__365    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__366
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__366
    ${adb_res}        ${msg}                      DSDS__366    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__367
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__367
    ${adb_res}        ${msg}                      DSDS__367    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__368
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__368
    ${adb_res}        ${msg}                      DSDS__368    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__369
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__369
    ${adb_res}        ${msg}                      DSDS__369    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__370
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__370
    ${adb_res}        ${msg}                      DSDS__370    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__371
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__371
    ${adb_res}        ${msg}                      DSDS__371    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__372
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__372
    ${adb_res}        ${msg}                      DSDS__372    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__373
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__373
    ${adb_res}        ${msg}                      DSDS__373    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__374
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__374
    ${adb_res}        ${msg}                      DSDS__374    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__375
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__375
    ${adb_res}        ${msg}                      DSDS__375    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__376
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__376
    ${adb_res}        ${msg}                      DSDS__376    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__377
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__377
    ${adb_res}        ${msg}                      DSDS__377    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__378
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__378
    ${adb_res}        ${msg}                      DSDS__378    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__379
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__379
    ${adb_res}        ${msg}                      DSDS__379    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__380
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__380
    ${adb_res}        ${msg}                      DSDS__380    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__381
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__381
    ${adb_res}        ${msg}                      DSDS__381    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__382
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__382
    ${adb_res}        ${msg}                      DSDS__382    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__383
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__383
    ${adb_res}        ${msg}                      DSDS__383    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__384
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__384
    ${adb_res}        ${msg}                      DSDS__384    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__385
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__385
    ${adb_res}        ${msg}                      DSDS__385    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__386
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__386
    ${adb_res}        ${msg}                      DSDS__386    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__387
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__387
    ${adb_res}        ${msg}                      DSDS__387    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__388
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__388
    ${adb_res}        ${msg}                      DSDS__388    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__389
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DSDS__389
    ${adb_res}        ${msg}                      DSDS__389    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}
LIVE_DSDS__390
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    DDSDS_232
    ${adb_res}        ${msg}                      DSDS_232    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

############## 4g OAI ##############

OAI_4G_LIVE_LOG_001
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_LIVE_LOG_001"
    ${adb_res}        ${msg}                      LOG_01    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_LIVE_LOG_002
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_LIVE_LOG_002"
    ${adb_res}        ${msg}                      LOG_02    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_LIVE_LOG_003
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_LIVE_LOG_003"
    ${adb_res}        ${msg}                     LOG_03    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_01
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_01"
    ${adb_res}        ${msg}                      kpiOai01    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_02
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_02"
    ${adb_res}        ${msg}                      kpiOai02    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_03
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_03"
    ${adb_res}        ${msg}                      kpiOai03    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_04
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_04"
    ${adb_res}        ${msg}                      kpiOai04    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_05
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_05"
    ${adb_res}        ${msg}                      kpiOai05    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_06
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_06"
    ${adb_res}        ${msg}                      kpiOai06    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_07
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_07"
    ${adb_res}        ${msg}                      kpiOai07    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_08
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_08"
    ${adb_res}        ${msg}                      kpiOai08    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_09
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_09"
    ${adb_res}        ${msg}                      kpiOai09    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_10
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_010"
    ${adb_res}        ${msg}                      kpiOai10    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}

OAI_4G_Live_KPI_011
    [Arguments]       ${tst}                      ${yamlData}              ${log_type}
    Log To Console    "OAI_4G_Live_KPI_011"
    ${adb_res}        ${msg}                      kpiOai11    ${tst}          ${yamlData}
    Fetch_result      ${TEST NAME}                ${adb_res}        ${msg}
    Log               ${adb_res}
    Run Keyword If    ${adb_res} == True
    ...               Log To Console              ${msg}
    ...               ELSE
    ...               device_logging              ${yamlData}              ${TEST NAME}    $${log_type}    RESTART
    Should Be True    ${adb_res}                  msg=${msg}