.class public Lcom/oplus/providers/AppSettings;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/providers/AppSettings$System;,
        Lcom/oplus/providers/AppSettings$Secure;,
        Lcom/oplus/providers/AppSettings$Global;,
        Lcom/oplus/providers/AppSettings$Nonpersist;,
        Lcom/oplus/providers/AppSettings$NameValueCache;,
        Lcom/oplus/providers/AppSettings$NameValueTable;,
        Lcom/oplus/providers/AppSettings$ContentProviderHolder;
    }
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION_RESTORE:Ljava/lang/String; = "accelerometer_rotation_restore"

.field public static final ACM_ENABLED:Ljava/lang/String; = "acm_enabled"

.field public static final ALARM_ALERT:Ljava/lang/String; = "alarm_alert"

.field public static final ANC:Ljava/lang/String; = "anc"

.field public static final ANR_DEBUGGING_MECHANISM:Ljava/lang/String; = "anr_debugging_mechanism"

.field public static final ANR_DEBUGGING_MECHANISM_STATUS:Ljava/lang/String; = "anr_debugging_mechanism_status"

.field public static final ASSISTED_GPS_CONFIGURABLE_LIST:Ljava/lang/String; = "assisted_gps_configurable_list"

.field public static final ASSISTED_GPS_NETWORK:Ljava/lang/String; = "assisted_gps_network"

.field public static final ASSISTED_GPS_POSITION_MODE:Ljava/lang/String; = "assisted_gps_position_mode"

.field public static final ASSISTED_GPS_RESET_TYPE:Ljava/lang/String; = "assisted_gps_reset_type"

.field public static final ASSISTED_GPS_SUPL_HOST:Ljava/lang/String; = "assisted_gps_supl_host"

.field public static final ASSISTED_GPS_SUPL_PORT:Ljava/lang/String; = "assisted_gps_supl_port"

.field private static final AUTHORITY:Ljava/lang/String;

.field public static final AUTO_ANSWER_TIMEOUT:Ljava/lang/String; = "auto_answer"

.field public static final AUTO_REDAIL_ENABLED:Ljava/lang/String; = "auto_redial"

.field public static final AUTO_REDAIL_SETTING:Ljava/lang/String; = "auto_redail_setting"

.field public static final AUTO_TIME_GPS:Ljava/lang/String; = "auto_time_gps"

.field public static final BASE_VOICE_WAKEUP_COMMAND_KEY:Ljava/lang/String; = "voice_wakeup_app"

.field public static final BATTERY_PERCENTAGE:Ljava/lang/String; = "battery_percentage"

.field public static final BG_POWER_SAVING_ENABLE:Ljava/lang/String; = "background_power_saving_enable"

.field public static final BLUETOOTH_STATE:Ljava/lang/String; = "bluetooth_state"

.field public static final BOOT_AUTHENTICATION_ENABLE:Ljava/lang/String; = "boot_authentication_enable"

.field public static final BOOT_AUTHENTICATION_PASSWORD:Ljava/lang/String; = "boot_authentication_password"

.field public static final BOOT_UP_SELECT_MODE:Ljava/lang/String; = "boot_up_select_mode"

.field public static final BOOT_UP_SELECT_MODE_DEFAULT:I = 0x0

.field public static final BREATHE_LIGHT:Ljava/lang/String; = "breathe_light"

.field public static final BREATH_LIGHT:Ljava/lang/String; = "breath_light"

.field public static final BUTTON_LIGHT_MODE:Ljava/lang/String; = "button_light_mode"

.field public static final BUTTON_LIGHT_TIMEOUT:Ljava/lang/String; = "button_light_timeout"

.field public static final CALENDAR_REMINDER_SOUND:Ljava/lang/String; = "calendar_sound"

.field public static final CALENDAR_REMINDER_SOUND_URI:Landroid/net/Uri;

.field public static final CALENDAR_REMINDER_SOUND_VIBRATE_TYPE:Ljava/lang/String; = "calendar_sound_vibrate_type"

.field private static final CALL_METHOD_TAG_KEY:Ljava/lang/String; = "_tag"

.field public static final CALL_VIBRATE_METHOD:Ljava/lang/String; = "call_vibrate_method"

.field public static final CRO_SETTING:Ljava/lang/String; = "cro_setting"

.field public static final CRO_SETTING_DISABLE:J = 0x0L

.field public static final CRO_SETTING_ENABLE:J = 0x1L

.field public static final CT_TIME_DISPLAY_MODE:Ljava/lang/String; = "ct_time_display_mode"

.field public static final CURRENT_NETWORK_CALL:Ljava/lang/String; = "current_network_call"

.field public static final CURRENT_NETWORK_SMS:Ljava/lang/String; = "current_network_sms"

.field public static final CURRENT_WALLPAPER_NAME:Ljava/lang/String; = "current_wallpaper_component_name"

.field public static final DATAUSAGE_ON_LOCKSCREEN_SIM1:Ljava/lang/String; = "data_usage_on_lockscreen_sim1"

.field public static final DATAUSAGE_ON_LOCKSCREEN_SIM2:Ljava/lang/String; = "data_usage_on_lockscreen_sim2"

.field public static final DATA_ROAMING_2:Ljava/lang/String; = "data_roaming_2"

.field public static final DATA_ROAMING_3:Ljava/lang/String; = "data_roaming_3"

.field public static final DATA_ROAMING_4:Ljava/lang/String; = "data_roaming_4"

.field public static final DEFAULT_BROWSER_PACKAGE:Ljava/lang/String; = "default_browser_package"

.field public static final DEFAULT_CALENDAR_REMINDER_SOUND:Ljava/lang/String; = "calendar_default_sound"

.field public static final DEFAULT_FILE_MANAGER:Ljava/lang/String; = "default_file_manager"

.field private static final DEFAULT_FONT_SCALE:F = 1.0f

.field public static final DEFAULT_MMS_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

.field public static final DEFAULT_SIM_NOT_SET:J = -0x5L

.field public static final DEFAULT_SIM_NOT_SET_INT:I = -0x5

.field public static final DEFAULT_SIM_SETTING_ALWAYS_ASK:J = -0x1L

.field public static final DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

.field public static final DEFAULT_SUBSCRIPTION:Ljava/lang/String; = "default_subscription"

.field public static final DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

.field public static final DIALOG_SEQUENCE_DEFAULT:I = 0x0

.field public static final DIALOG_SEQUENCE_KEYGUARD:I = 0x1

.field public static final DIALOG_SEQUENCE_SETTINGS:Ljava/lang/String; = "dialog_sequence_settings"

.field public static final DIALOG_SEQUENCE_STK:I = 0x2

.field public static final DISPLAY_POWER_PERCENT:Ljava/lang/String; = "display_power_percent"

.field public static final DM_BOOT_START_ENABLE_KEY:Ljava/lang/String; = "dm_boot_start_enable_key"

.field public static final DUALMIC:Ljava/lang/String; = "dualmic"

.field public static final DUAL_SIM_MODE_SETTING:Ljava/lang/String; = "dual_sim_mode_setting"

.field public static final DUAL_SIM_MODE_SETTING_DEFAULT:I = 0x3

.field public static final DUMMY_STRING_FOR_PADDING:Ljava/lang/String; = ""

.field public static final ENABLE_INTERNET_CALL:Ljava/lang/String; = "enable_internet_call_value"

.field public static final ENHANCED_4G_MODE_ENABLED_SIM2:Ljava/lang/String; = "volte_vt_enabled_sim2"

.field public static final ENHANCED_4G_MODE_ENABLED_SIM3:Ljava/lang/String; = "volte_vt_enabled_sim3"

.field public static final ENHANCED_4G_MODE_ENABLED_SIM4:Ljava/lang/String; = "volte_vt_enabled_sim4"

.field public static final EPO_AUTO_DOWNLOAD_ON:Ljava/lang/String; = "epo_auto_download_on"

.field public static final EPO_ENABLED:Ljava/lang/String; = "epo_enabled"

.field public static final EPO_ROAMING_DOWNLOAD_ON:Ljava/lang/String; = "epo_roaming_dWownload_on"

.field public static final EPO_SERVER_CODE:Ljava/lang/String; = "epo_server_code"

.field public static final EPO_SERVER_CODE_DEF:Ljava/lang/String; = "epo_server_01"

.field public static final EPO_UPDATE_PERIOD:Ljava/lang/String; = "epo_update_period"

.field public static final EPO_UPDATE_PERIOD_DEF:I = 0x10e0

.field public static final FESTIVAL_WALLPAPER:Ljava/lang/String; = "festival_wallpaper"

.field public static final FLIP_MUTE:Ljava/lang/String; = "flip_mute"

.field private static final FONT_SCALE:Ljava/lang/String; = "font_scale"

.field public static final FONT_SCALE_EXTRALARGE:Ljava/lang/String; = "settings_fontsize_extralarge"

.field public static final FONT_SCALE_LARGE:Ljava/lang/String; = "settings_fontsize_large"

.field public static final FONT_SCALE_SMALL:Ljava/lang/String; = "settings_fontsize_small"

.field public static final GPRS_CONNECTION_MODE_SETTING_DEFAULT:I = -0x1

.field public static final GPRS_CONNECTION_MODE_SIM1:Ljava/lang/String; = "gprs_connection_mode_setting_sim1"

.field public static final GPRS_CONNECTION_MODE_SIM2:Ljava/lang/String; = "gprs_connection_mode_setting_sim2"

.field public static final GPRS_CONNECTION_SETTING:Ljava/lang/String; = "gprs_connection_setting"

.field public static final GPRS_CONNECTION_SETTING_DEFAULT:I = -0x4

.field public static final GPRS_CONNECTION_SIM_SETTING:Ljava/lang/String; = "gprs_connection_sim_setting"

.field public static final GPRS_CONNECTION_SIM_SETTING_NEVER:J = 0x0L

.field public static final GPRS_MODE_FIRST:Ljava/lang/String; = "GPRSmode_fisrt"

.field public static final GPRS_TRANSFER_SETTING:Ljava/lang/String; = "gprs_transfer_setting"

.field public static final GPRS_TRANSFER_SETTING_DEFAULT:I = 0x1

.field public static final HDMI_AUDIO_OUTPUT_MODE:Ljava/lang/String; = "hdmi_audio_output_mode"

.field public static final HDMI_CABLE_PLUGGED:Ljava/lang/String; = "hdmi_cable_plugged"

.field public static final HDMI_COLOR_SPACE:Ljava/lang/String; = "hdmi_color_space"

.field public static final HDMI_DEEP_COLOR:Ljava/lang/String; = "hdmi_deep_color"

.field public static final HDMI_ENABLE_STATUS:Ljava/lang/String; = "hdmi_enable_status"

.field public static final HDMI_VIDEO_RESOLUTION:Ljava/lang/String; = "hdmi_video_resolution"

.field public static final HDMI_VIDEO_SCALE:Ljava/lang/String; = "hdmi_video_scale"

.field public static final HIDE_CARRIER_NETWORK_SETTINGS:Ljava/lang/String; = "hide_carrier_network_settings"

.field public static final HOLIDAY_WALLPAPER_ENABLED:Ljava/lang/String; = "wallpaper_holiday"

.field public static final HOO_SETTING:Ljava/lang/String; = "hoo_setting"

.field public static final HOO_SETTING_DISABLE:J = 0x0L

.field public static final HOO_SETTING_ENABLE:J = 0x1L

.field public static final IME_KEYBOARD_FEEDBACK:Ljava/lang/String; = "ime_keyboard_feedback"

.field public static final IME_KEYBOARD_SOUND:Ljava/lang/String; = "ime_keyboard_sound"

.field public static final IMS_SWITCH:Ljava/lang/String; = "ims_switch"

.field public static final INTERFACE_THROTTLE:Ljava/lang/String; = "interface_throttle_enable"

.field public static final INTERFACE_THROTTLE_RX_VALUE:Ljava/lang/String; = "interface_throttle_rx_value"

.field public static final INTERFACE_THROTTLE_TX_VALUE:Ljava/lang/String; = "interface_throttle_tx_value"

.field public static final INTER_DIAL_SETTING:Ljava/lang/String; = "international_dialing_key"

.field public static final IPO_SETTING:Ljava/lang/String; = "ipo_setting"

.field public static final IS_USING_THEME:Ljava/lang/String; = "is_using_theme"

.field public static final IVSR_SETTING:Ljava/lang/String; = "ivsr_setting"

.field public static final IVSR_SETTING_DISABLE:J = 0x0L

.field public static final IVSR_SETTING_ENABLE:J = 0x1L

.field public static final KEY_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field public static final KEY_SYSTEM_APP_WTF:Ljava/lang/String; = "system_app_wtf"

.field public static final KEY_SYSTEM_SERVER_WTF:Ljava/lang/String; = "system_server_wtf"

.field public static final KE_EVENT_DATA:Ljava/lang/String; = "event_data"

.field public static final KE_EVENT_LOG:Ljava/lang/String; = "event_log"

.field public static final LANDSCAPE_LAUNCHER:Ljava/lang/String; = "landscape_launcher"

.field public static final LAST_PDP_RX_DATA_STATISTIC:Ljava/lang/String; = "last_pdp_rx_data_statistic"

.field public static final LAST_PDP_TX_DATA_STATISTIC:Ljava/lang/String; = "last_pdp_tx_data_statistic"

.field public static final LAST_SIMID_BEFORE_WIFI_DISCONNECTED:Ljava/lang/String; = "last_simid_before_wifi_disconnected"

.field public static final LID_CLOSE_SOUND:Ljava/lang/String; = "lid_close_sound"

.field public static final LID_OPEN_SOUND:Ljava/lang/String; = "lid_open_sound"

.field public static final LID_SOUNDS_ENABLED:Ljava/lang/String; = "lid_sounds_enabled"

.field public static final LOG2SERVER_DIALOG_SHOW:Ljava/lang/String; = "log2server_dialog_show"

.field public static final LTE_ON_CDMA_RAT_MODE:Ljava/lang/String; = "lte_on_cdma_rat_mode"

.field public static final MMS_NOTIFICATION_SOUND:Ljava/lang/String; = "mms_notification"

.field public static final MOBILE_DATA_DEFAULT:I = 0x0

.field public static final MODE_3G_ON:Ljava/lang/String; = "3GMode_on"

.field public static final MSIM_MODE_SETTING:Ljava/lang/String; = "msim_mode_setting"

.field public static final MTK_RTSP_MAX_UDP_PORT:Ljava/lang/String; = "mtk_rtsp_max_udp_port"

.field public static final MTK_RTSP_MIN_UDP_PORT:Ljava/lang/String; = "mtk_rtsp_min_udp_port"

.field public static final MTK_RTSP_NAME:Ljava/lang/String; = "mtk_rtsp_name"

.field public static final MTK_RTSP_NETINFO:Ljava/lang/String; = "mtk_rtsp_netinfo"

.field public static final MTK_RTSP_TO_NAPID:Ljava/lang/String; = "mtk_rtsp_to_napid"

.field public static final MTK_RTSP_TO_PROXY:Ljava/lang/String; = "mtk_rtsp_to_proxy"

.field public static final MULTI_SIM_DATA_CALL_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_data_call"

.field public static final MULTI_SIM_DEFAULT_DATA_CALL_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_defaut_data_call"

.field public static final MULTI_SIM_PRIORITY_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_priority"

.field public static final MULTI_SIM_SMS_PROMPT:Ljava/lang/String; = "multi_sim_sms_prompt"

.field public static final MULTI_SIM_SMS_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_sms"

.field public static final MULTI_SIM_USER_PREFERRED_SUBS:[Ljava/lang/String;

.field public static final MULTI_SIM_VOICE_CALL_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_voice_call"

.field public static final MULTI_SIM_VOICE_PROMPT:Ljava/lang/String; = "multi_sim_voice_prompt"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NFC_HCE_ON:Ljava/lang/String; = "nfc_hce_on"

.field public static final NFC_MULTISE_ACTIVE:Ljava/lang/String; = "nfc_multise_active"

.field public static final NFC_MULTISE_IN_SWITCHING:Ljava/lang/String; = "nfc_multise_in_switching"

.field public static final NFC_MULTISE_IN_TRANSACTION:Ljava/lang/String; = "nfc_multise_in_transation"

.field public static final NFC_MULTISE_LIST:Ljava/lang/String; = "nfc_multise_list"

.field public static final NFC_MULTISE_ON:Ljava/lang/String; = "nfc_multise_on"

.field public static final NFC_MULTISE_PREVIOUS:Ljava/lang/String; = "nfc_multise_previous"

.field public static final NFC_ON:Ljava/lang/String; = "nfc_on"

.field public static final NFC_RF_FIELD_ACTIVE:Ljava/lang/String; = "nfc_rf_field_active"

.field public static final NFC_SEAPI_CMCC_SIM:Ljava/lang/String; = "nfc_seapi_cmcc_sim"

.field public static final NFC_SEAPI_SUPPORT_CMCC:Ljava/lang/String; = "nfc_seapi_support_cmcc"

.field public static final NOTIFICATION_ON_CONNECTED:Ljava/lang/String; = "notification_on_connected"

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field public static final NOTIFICATION_SOUND_SIM2:Ljava/lang/String; = "notification_sim2"

.field public static final NOTIFICATION_SOUND_SIM2_VIBRATE_TYPE:Ljava/lang/String; = "notification_sim2_vibrate_type"

.field public static final NOTIFICATION_SOUND_VIBRATE_TYPE:Ljava/lang/String; = "notification_sound_vibrate_type"

.field public static final OOBE_DISPLAY:Ljava/lang/String; = "oobe_display"

.field public static final OOBE_DISPLAY_DEFAULT:I = 0x0

.field public static final OOBE_DISPLAY_ON:I = 0x1

.field public static final ORIENTATION_ANIMATION_ENABLED:Ljava/lang/String; = "orientation_animation"

.field public static final OVERALL_PROXY_AUTHENED:Ljava/lang/String; = "overall_proxy_authened"

.field public static final OVERALL_PROXY_ENABLED:Ljava/lang/String; = "overall_proxy_enabled"

.field public static final OVERALL_PROXY_HOST:Ljava/lang/String; = "overall_proxy_host"

.field public static final OVERALL_PROXY_PORT:Ljava/lang/String; = "overall_proxy_port"

.field public static final OVERALL_PROXY_PWD:Ljava/lang/String; = "overall_proxy_pwd"

.field public static final OVERALL_PROXY_USRNAME:Ljava/lang/String; = "overall_proxy_usrname"

.field public static final PERMISSION_CONTROL_ATTACH:Ljava/lang/String; = "permission_control_attached"

.field public static final PERMISSION_CONTROL_STATE:Ljava/lang/String; = "permission_control_state"

.field public static final PHONE_IP_PREFIX:Ljava/lang/String; = "phone_ip_prefix"

.field public static final PHONE_IP_PREFIX_SIM1:Ljava/lang/String; = "phone_ip_prefix_sim1"

.field public static final PHONE_IP_PREFIX_SIM2:Ljava/lang/String; = "phone_ip_prefix_sim2"

.field public static final POWER_OFF_ALARM_PACKAGE_NAME:Ljava/lang/String; = "power_off_alarm_package_name"

.field public static final POWER_OFF_SOUND:Ljava/lang/String; = "power_off_sound"

.field public static final POWER_ON_SOUND:Ljava/lang/String; = "power_on_sound"

.field public static final POWER_ON_TIMES:Ljava/lang/String; = "power_on_times"

.field public static final POWER_SAVE_MODE:Ljava/lang/String; = "power_save_method"

.field public static final PREFERRED_NETWORK_MODE_2:Ljava/lang/String; = "preferred_network_mode_2"

.field public static final PREFERRED_TTY_MODE_SIM2:Ljava/lang/String; = "preferred_tty_mode_sim2"

.field public static final PREFERRED_TTY_MODE_SIM3:Ljava/lang/String; = "preferred_tty_mode_sim3"

.field public static final PREFERRED_TTY_MODE_SIM4:Ljava/lang/String; = "preferred_tty_mode_sim4"

.field public static final PRESSKEY_LIGHT_TIMEOUT:Ljava/lang/String; = "presskey_light_timeout"

.field public static final PRIMARY_SIM:Ljava/lang/String; = "primary_sim"

.field public static final RESET_MODE_PACKAGE_DEFAULTS:I = 0x1

.field public static final RESET_MODE_TRUSTED_DEFAULTS:I = 0x4

.field public static final RESET_MODE_UNTRUSTED_CHANGES:I = 0x3

.field public static final RESET_MODE_UNTRUSTED_DEFAULTS:I = 0x2

.field public static final RINGTONE_SIM2:Ljava/lang/String; = "ringtone_sim2"

.field public static final RINGTONE_SIM2_VIBRATE_TYPE:Ljava/lang/String; = "ringtone_sim2_vibrate_type"

.field public static final RINGTONE_VIBRATE_TYPE:Ljava/lang/String; = "ringtone_vibrate_type"

.field public static final ROAMING_INDICATION_NEEDED:Ljava/lang/String; = "roaming_indication_needed"

.field public static final ROAMING_REMINDER_MODE_SETTING:Ljava/lang/String; = "roaming_reminder_mode_setting"

.field private static final SCHEME:Ljava/lang/String; = "content://"

.field public static final SCREEN_BRIGHTNESS_ECO_MODE:Ljava/lang/String; = "screen_brightness_eco_mode"

.field public static final SCREEN_BRIGHTNESS_ECO_MODE_AUTOMATIC:I = 0x2

.field public static final SCREEN_EFFECT:Ljava/lang/String; = "screen_effect"

.field public static final SELECT_WEB_SEARCH_ENGINE:Ljava/lang/String; = "select_web_search_engine"

.field public static final SHOW_QSG:Ljava/lang/String; = "show_quick_start_guide"

.field public static final SHUTDOWN_REQUEST_MISSED:Ljava/lang/String; = "shutdown_request_missed"

.field public static final SIM_LOCK_STATE_SETTING:Ljava/lang/String; = "sim_lock_state_setting"

.field public static final SINGLE_SIM_MODE_SETTING_DEFAULT:I = 0x1

.field public static final SIP_CALL:Ljava/lang/String; = "sip_call"

.field public static final SMS_SIM_SETTING:Ljava/lang/String; = "sms_sim_setting"

.field public static final SMS_SIM_SETTING_AUTO:J = -0x3L

.field public static final SOCKET_DATA_CALL_ENABLE:Ljava/lang/String; = "socket_data_call_enable"

.field public static final STATE_GLOBALEFFECT:Ljava/lang/String; = "global_effect_state"

.field public static final SYSTEM_APP_STRICTMODE:Ljava/lang/String; = "system_app_strictmode"

.field private static final SYSTEM_LOCALES:Ljava/lang/String; = "system_locales"

.field private static final TAG:Ljava/lang/String; = "AppSettings"

.field public static final TELEPHONY_MISC_FEATURE_CONFIG:Ljava/lang/String; = "telephony_misc_feature_config"

.field public static final TETHER_IPV6_FEATURE:Ljava/lang/String; = "tether_ipv6_feature"

.field public static final TIMEPOWER_CONFIG:Ljava/lang/String; = "timepower_config"

.field public static final TP_CTRL_CONVENIENT_PAGE_ENABLED:Ljava/lang/String; = "tp_ctrl_convenient_page_enabled"

.field public static final TP_CTRL_DOUBLE_CLICK_START_APP_ENABLED:Ljava/lang/String; = "tp_ctrl_double_click_start_app_enabled"

.field public static final TP_CTRL_DOUBLE_CLICK_START_APP_SET:Ljava/lang/String; = "tp_ctrl_double_click_start_app_set"

.field public static final TP_CTRL_IN_READING_ENABLED:Ljava/lang/String; = "tp_ctrl_in_reading_enabled"

.field public static final TP_CTRL_IN_RECORDING_ENABLED:Ljava/lang/String; = "tp_ctrl_in_recording_enabled"

.field public static final TP_CTRL_MUSIC_PAGE_ENABLED:Ljava/lang/String; = "tp_ctrl_music_page_enabled"

.field public static final TP_CTRL_TOUCH_TO_SLIDE_ENABLED:Ljava/lang/String; = "tp_ctrl_touch_to_slide_enabled"

.field public static final TUNE_AWAY_STATUS:Ljava/lang/String; = "tune_away"

.field public static final TURN_SLIENCE_ENABLED:Ljava/lang/String; = "turn_slience_enabled"

.field public static final USB_NO_ASK_AGAIN:Ljava/lang/String; = "usb_no_ask_again"

.field public static final USB_REMEBER_SELECTION:Ljava/lang/String; = "usb_remeber_selection"

.field public static final USB_TETHERING_TYPE:Ljava/lang/String; = "usb_tethering_type"

.field public static final USB_TETHERING_TYPE_DEFAULT:I = 0x0

.field public static final USB_TETHERING_TYPE_EEM:I = 0x1

.field public static final USER_PREFERRED_NETWORK_MODE:Ljava/lang/String; = "user_preferred_network_mode"

.field public static final USER_PREFERRED_SUBS:[Ljava/lang/String;

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VIDEO_CALL:Ljava/lang/String; = "video_call"

.field public static final VIDEO_CALL_SIM_SETTING:Ljava/lang/String; = "video_call_sim_setting"

.field public static final VOICE_CALL_REJECT_MODE:Ljava/lang/String; = "voice_call_reject_mode"

.field public static final VOICE_CALL_SIM_SETTING:Ljava/lang/String; = "voice_call_sim_setting"

.field public static final VOICE_CALL_SIM_SETTING_INTERNET:J = -0x2L

.field public static final VOICE_UNLOCK_AND_LAUNCH1:Ljava/lang/String; = "voice_unlock_and_launch1"

.field public static final VOICE_UNLOCK_AND_LAUNCH2:Ljava/lang/String; = "voice_unlock_and_launch2"

.field public static final VOICE_UNLOCK_AND_LAUNCH3:Ljava/lang/String; = "voice_unlock_and_launch3"

.field public static final VOICE_UNLOCK_SCREEN:Ljava/lang/String; = "voice_unlock_screen"

.field public static final VOICE_WAKEUP_COMMAND_STATUS:Ljava/lang/String; = "voice_wakeup_command_status"

.field public static final VOICE_WAKEUP_MODE:Ljava/lang/String; = "voice_wakeup_mode"

.field public static final VOLTE_DMYK_STATE_0:Ljava/lang/String; = "volte_dmyk_state_0"

.field public static final VOLTE_DMYK_STATE_1:Ljava/lang/String; = "volte_dmyk_state_1"

.field public static final VOLUME_FM:Ljava/lang/String; = "volume_fm"

.field public static final VOLUME_MATV:Ljava/lang/String; = "volume_matv"

.field public static final VT_CALL_REJECT_MODE:Ljava/lang/String; = "vt_call_reject_mode"

.field public static final VT_IMS_ENABLED_SIM2:Ljava/lang/String; = "vt_ims_enabled_sim2"

.field public static final VT_IMS_ENABLED_SIM3:Ljava/lang/String; = "vt_ims_enabled_sim3"

.field public static final VT_IMS_ENABLED_SIM4:Ljava/lang/String; = "vt_ims_enabled_sim4"

.field public static final WFC_AID_VALUE:Ljava/lang/String; = "wfc_aid_value"

.field public static final WFC_IMS_ENABLED_SIM2:Ljava/lang/String; = "wfc_ims_enabled_sim2"

.field public static final WFC_IMS_ENABLED_SIM3:Ljava/lang/String; = "wfc_ims_enabled_sim3"

.field public static final WFC_IMS_ENABLED_SIM4:Ljava/lang/String; = "wfc_ims_enabled_sim4"

.field public static final WFC_IMS_MODE_SIM2:Ljava/lang/String; = "wfc_ims_mode_sim2"

.field public static final WFC_IMS_MODE_SIM3:Ljava/lang/String; = "wfc_ims_mode_sim3"

.field public static final WFC_IMS_MODE_SIM4:Ljava/lang/String; = "wfc_ims_mode_sim4"

.field public static final WFC_IMS_ROAMING_ENABLED_SIM2:Ljava/lang/String; = "wfc_ims_roaming_enabled_sim2"

.field public static final WFC_IMS_ROAMING_ENABLED_SIM3:Ljava/lang/String; = "wfc_ims_roaming_enabled_sim3"

.field public static final WFC_IMS_ROAMING_ENABLED_SIM4:Ljava/lang/String; = "wfc_ims_roaming_enabled_sim4"

.field public static final WFD_AUTO_CONNECT_ON:Ljava/lang/String; = "wfd_auto_connect_on"

.field public static final WIFIP2P_DEV_NAME:Ljava/lang/String; = "wifip2p_device_name"

.field public static final WIFI_CONNECT_AP_TYPE:Ljava/lang/String; = "wifi_ap_connect_type"

.field public static final WIFI_CONNECT_AP_TYPE_AUTO:I = 0x0

.field public static final WIFI_CONNECT_AP_TYPE_MANUL:I = 0x1

.field public static final WIFI_CONNECT_REMINDER:Ljava/lang/String; = "wifi_connect_reminder"

.field public static final WIFI_CONNECT_TYPE:Ljava/lang/String; = "wifi_connect_type"

.field public static final WIFI_CONNECT_TYPE_ASK:I = 0x2

.field public static final WIFI_CONNECT_TYPE_AUTO:I = 0x0

.field public static final WIFI_CONNECT_TYPE_MANUL:I = 0x1

.field public static final WIFI_DISPLAY_AUTO_CHANNEL_SELECTION:Ljava/lang/String; = "wifi_display_auto_channel_selection"

.field public static final WIFI_DISPLAY_CHOSEN_CAPABILITY:Ljava/lang/String; = "wifi_display_chosen_capability"

.field public static final WIFI_DISPLAY_DISPLAY_NOTIFICATION_TIME:Ljava/lang/String; = "wifi_display_notification_time"

.field public static final WIFI_DISPLAY_DISPLAY_TOAST_TIME:Ljava/lang/String; = "wifi_display_display_toast_time"

.field public static final WIFI_DISPLAY_LATENCY_PROFILING:Ljava/lang/String; = "wifi_display_latency_profiling"

.field public static final WIFI_DISPLAY_PORTRAIT_RESOLUTION:Ljava/lang/String; = "wifi_display_portrait_resolution"

.field public static final WIFI_DISPLAY_POWER_SAVING_DELAY:Ljava/lang/String; = "wifi_display_power_saving_delay"

.field public static final WIFI_DISPLAY_POWER_SAVING_OPTION:Ljava/lang/String; = "wifi_display_power_saving_option"

.field public static final WIFI_DISPLAY_QE_ON:Ljava/lang/String; = "wifi_display_qe_on"

.field public static final WIFI_DISPLAY_RESOLUTION:Ljava/lang/String; = "wifi_display_max_resolution"

.field public static final WIFI_DISPLAY_RESOLUTION_DONOT_REMIND:Ljava/lang/String; = "wifi_display_change_resolution_remind"

.field public static final WIFI_DISPLAY_SECURITY_OPTION:Ljava/lang/String; = "wifi_display_security_option"

.field public static final WIFI_DISPLAY_SOUND_PATH_DONOT_REMIND:Ljava/lang/String; = "wifi_display_sound_path_do_not_remind"

.field public static final WIFI_DISPLAY_SQC_INFO_ON:Ljava/lang/String; = "wifi_display_sqc_info_on"

.field public static final WIFI_DISPLAY_WFD_LATENCY:Ljava/lang/String; = "wifi_display_wfd_latency"

.field public static final WIFI_DISPLAY_WIFI_INFO:Ljava/lang/String; = "wifi_display_wifi_info"

.field public static final WIFI_HOTSPOT_AUTO_DISABLE:Ljava/lang/String; = "wifi_hotspot_auto_disable"

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_FOR_FIVE_MINS:I = 0x1

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_FOR_TEN_MINS:I = 0x2

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_OFF:I = 0x0

.field public static final WIFI_HOTSPOT_DEFAULT_CLIENT_NUM:I = 0xa

.field public static final WIFI_HOTSPOT_DEFAULT_START_TIME:I = 0x0

.field public static final WIFI_HOTSPOT_MAX_CLIENT_NUM:Ljava/lang/String; = "wifi_hotspot_max_client_num"

.field public static final WIFI_HOTSPOT_START_TIME:Ljava/lang/String; = "wifi_hotspot_start_time"

.field public static final WIFI_PRIORITY_TYPE:Ljava/lang/String; = "wifi_priority_type"

.field public static final WIFI_PRIORITY_TYPE_DEFAULT:I = 0x0

.field public static final WIFI_PRIORITY_TYPE_MAMUAL:I = 0x1

.field public static final WIFI_PROXY:Ljava/lang/String; = "wifi_proxy"

.field public static final WIFI_PROXY_EXCLUDE_LIST:Ljava/lang/String; = "wifi_proxy_exclude_list"

.field public static final WIFI_SELECT_SSID_ASK:I = 0x2

.field public static final WIFI_SELECT_SSID_AUTO:I = 0x0

.field public static final WIFI_SELECT_SSID_MANUL:I = 0x1

.field public static final WIFI_SELECT_SSID_TYPE:Ljava/lang/String; = "wifi_select_ssid_type"

.field public static final WORLD_PHONE_AUTO_SELECT_MODE:Ljava/lang/String; = "world_phone_auto_select_mode"

.field public static final WORLD_PHONE_FDD_MODEM_TIMER:Ljava/lang/String; = "world_phone_fdd_modem_timer"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/oplus/providers/AppSettings;->getAuthority()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/providers/AppSettings;->AUTHORITY:Ljava/lang/String;

    const-string v0, "video_call"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/providers/AppSettings;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    const-string v0, "sip_call"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/providers/AppSettings;->DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

    const-string v0, "user_preferred_sub1"

    const-string v1, "user_preferred_sub2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/providers/AppSettings;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    const-string v2, "mms_notification"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/oplus/providers/AppSettings;->DEFAULT_MMS_NOTIFICATION_URI:Landroid/net/Uri;

    const-string v2, "ringtone_sim2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/oplus/providers/AppSettings;->DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

    const-string v2, "notification_sim2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/oplus/providers/AppSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    const-string v2, "calendar_sound"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/oplus/providers/AppSettings;->CALENDAR_REMINDER_SOUND_URI:Landroid/net/Uri;

    const-string v2, "user_preferred_sub3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/providers/AppSettings;->MULTI_SIM_USER_PREFERRED_SUBS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/providers/AppSettings;->AUTHORITY:Ljava/lang/String;

    return-object v0
.end method

.method private static getAuthority()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    sget-boolean v0, Lcom/oplus/providers/utils/OplusVersionUtils;->IS_OS_VERSION_11_3:Z

    if-eqz v0, :cond_7

    const-string v0, "com.oplus.appplatform.settings"

    return-object v0

    :cond_7
    invoke-static {}, Lcom/oplus/providers/AppSettingsOplusCompat;->getAuthority()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
