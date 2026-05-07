.class public Lcom/android/statistics/LauncherStatistics;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ALLOW_COLLECT_ALL_PKG:Z = false

.field private static final BROWSER_APPID:Ljava/lang/String; = "2007"

.field private static final BROWSER_GROUP_TAG:Ljava/lang/String; = "other"

.field private static final BROWSER_PACKAGE:Ljava/lang/String; = "com.heytap.browser"

.field private static final BROWSER_WIDGET_EXIST:Ljava/lang/String; = "browser_widget_exist"

.field private static final BROWSER_WIDGET_EXPOSE:Ljava/lang/String; = "browser_widget_expose"

.field private static final CLICK_DEEP_SHORTCUT:I = 0x0

.field public static final CONTENT_SPLIT:Ljava/lang/String; = ","

.field private static final CURRENT_WALLPAPER_NAME:Ljava/lang/String; = "current_wallpaper_name"

.field public static final DAY_IN_MILLS:I = 0x5265c00

.field private static final DEFAULT_LOCK_WALLPAPER_NAME:Ljava/lang/String; = "default_lock_wallpaper_name"

.field private static final DEFAULT_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper_name"

.field private static final DYNAMIC_STATS_TAG:Ljava/lang/String; = "201101"

.field private static final ENENT_ID_LAYOUT_UPGRADE:Ljava/lang/String; = "layout_upgrade"

.field public static final EVENTID_LAUNCH:Ljava/lang/String; = "launch"

.field private static final EVENTID_REDUNDANT_TASK:Ljava/lang/String; = "redundant_tasks"

.field private static final EVENT_ADD_APP_TO_WORKSPACE_SWITCH_STATUS:Ljava/lang/String; = "add_app_to_workspace_switch_status"

.field private static final EVENT_ADD_WIDGET_OR_SHORTCUT:Ljava/lang/String; = "add_widget_or_shortcut"

.field private static final EVENT_ADD_WIDGET_SHORTCUT_FAIL:Ljava/lang/String; = "add_shortcut_fail"

.field private static final EVENT_ALL_APP_COUNT:Ljava/lang/String; = "all_app_count"

.field private static final EVENT_APP_CHANGE_TO_INSTALLED_STATE:Ljava/lang/String; = "app_change_to_installed_state"

.field private static final EVENT_APP_CHANGE_TO_INSTALLING_STATE:Ljava/lang/String; = "app_change_to_installing_state"

.field private static final EVENT_APP_GUIDE_CLOSE:Ljava/lang/String; = "event_app_guide_close"

.field private static final EVENT_APP_GUIDE_SHOW:Ljava/lang/String; = "event_app_guide_show"

.field private static final EVENT_APP_LOST_DETECT:Ljava/lang/String; = "app_lost_detect"

.field private static final EVENT_APP_NAME_SIZE:Ljava/lang/String; = "app_name_size"

.field private static final EVENT_APP_RECOMMEND_CARD_INFO:Ljava/lang/String; = "app_recommend_card_info"

.field private static final EVENT_APP_RECOMMEND_CARD_REINSTALL:Ljava/lang/String; = "app_recommend_card_reinstall"

.field private static final EVENT_APP_RECOMMEND_CARD_REMOVE:Ljava/lang/String; = "app_recommend_card_remove"

.field private static final EVENT_APP_STARTUP_ANIM_SPEED:Ljava/lang/String; = "app_start_anim_speed"

.field private static final EVENT_ART_SWITCH_STATUS:Ljava/lang/String; = "art_switch_status"

.field private static final EVENT_BATCH_ADD_APP_TO_WORKSPACE:Ljava/lang/String; = "batch_add_app_to_workspace"

.field private static final EVENT_BATCH_DRAG:Ljava/lang/String; = "batch_drag"

.field private static final EVENT_BRANCH_CLICK_SERVICE_DECLARE:Ljava/lang/String; = "event_branch_click_service_declare"

.field private static final EVENT_BRANCH_CLICK_SUGGEST_LINK:Ljava/lang/String; = "event_branch_click_suggest_link"

.field private static final EVENT_BRANCH_NAVIGATOR_SEARCH:Ljava/lang/String; = "event_branch_navigator_search"

.field private static final EVENT_BRANCH_SDK_INIT:Ljava/lang/String; = "event_branch_sdk_init"

.field private static final EVENT_BREENO_CONTAINER_EXPOSURE:Ljava/lang/String; = "breeno_container_exposure"

.field private static final EVENT_BROWSER_NEWS_DIALOG_BUTTON:Ljava/lang/String; = "event_browser_news_dialog_button"

.field private static final EVENT_BROWSER_NEWS_ENTER_TYPE:Ljava/lang/String; = "event_browser_news_enter_type"

.field private static final EVENT_BROWSER_NEWS_SWITCH:Ljava/lang/String; = "event_browser_news_switch"

.field private static final EVENT_BROWSER_NEWS_SWITCH_FROM:Ljava/lang/String; = "event_browser_news_switch_from"

.field private static final EVENT_CARD_OR_WIDGET_CLICK:Ljava/lang/String; = "click_card_widget_info"

.field private static final EVENT_CARD_OR_WIDGET_EXPOSURE:Ljava/lang/String; = "card_or_widget_exposure"

.field private static final EVENT_CLICK_APP_EDIT:Ljava/lang/String; = "event_click_app_edit"

.field private static final EVENT_CLICK_APP_EDIT_RESULT:Ljava/lang/String; = "event_click_app_edit_result"

.field private static final EVENT_CLICK_APP_INFO:Ljava/lang/String; = "click_shortcut_info"

.field private static final EVENT_CLICK_BOTTOM_SEARCH:Ljava/lang/String; = "click_bottom_search"

.field private static final EVENT_CLICK_DEEP_SHORTCUT:Ljava/lang/String; = "click_deep_shortcut"

.field private static final EVENT_CLICK_DEEP_SHORTCUT_ON_POPUP_WINDOW:Ljava/lang/String; = "click_shortcut_other_link"

.field private static final EVENT_CLICK_DISBAND_FOLDER:Ljava/lang/String; = "event_click_disband_folder"

.field private static final EVENT_CLICK_DOCK_SETTINGS:Ljava/lang/String; = "click_dock_settings"

.field private static final EVENT_CLICK_EFFECT_SET_ENTRANCE:Ljava/lang/String; = "click_effect_set_entrance"

.field private static final EVENT_CLICK_ICON_IN_DOWNLOADING_STATE:Ljava/lang/String; = "click_icon_in_downloading_state"

.field private static final EVENT_CLICK_ICON_IN_PAUSED_STATE:Ljava/lang/String; = "click_icon_in_paused_state"

.field private static final EVENT_CLICK_PREDICTION_APP:Ljava/lang/String; = "click_prediction_app"

.field private static final EVENT_CLICK_SEARCH_ENTRY:Ljava/lang/String; = "click_search_entry"

.field private static final EVENT_CLICK_SEARCH_ENTRY_SWITCH:Ljava/lang/String; = "click_search_entry_switch"

.field private static final EVENT_CLICK_SEARCH_RESULT_APP:Ljava/lang/String; = "click_search_result_app"

.field private static final EVENT_CLICK_SETTING_SET_ENTRANCE:Ljava/lang/String; = "click_setting_set_entrance"

.field private static final EVENT_CLICK_TO_ADD_BROWSER_WIDGET:Ljava/lang/String; = "click_to_add_browser_widget"

.field private static final EVENT_CLICK_TO_ADD_WIDGET:Ljava/lang/String; = "click_to_add_widget"

.field private static final EVENT_CLICK_WALLPAPER_SET_ENTRANCE:Ljava/lang/String; = "click_wallpaper_set_entrance"

.field private static final EVENT_CLICK_WIDGET_SET_ENTRANCE:Ljava/lang/String; = "click_widget_set_entrance"

.field public static final EVENT_CLOSE_SUPER_POWER_SAVE_BATTERY:Ljava/lang/String; = "close_super_power_save_battery"

.field private static final EVENT_CURRENT_WIDGET_AND_CARD_INFO:Ljava/lang/String; = "current_widget_and_card_info"

.field private static final EVENT_CUSTOM_STYLE_SHAPE:Ljava/lang/String; = "custom_style_shape"

.field private static final EVENT_DAILY_USE_TIME:Ljava/lang/String; = "daily_use_time"

.field private static final EVENT_DEPLOY_WORK_PROFILE_BYOD:Ljava/lang/String; = "deploy_workprofile_byod"

.field private static final EVENT_DESKTOP_WALLPAPER_INFO:Ljava/lang/String; = "desktop_wallpaper_info"

.field private static final EVENT_DOCK_EXPAND_SWITCH:Ljava/lang/String; = "event_dock_expand_switch_state"

.field private static final EVENT_DOWNLOADING_TO_PAUSED_BY_MARKET:Ljava/lang/String; = "downloading_to_paused_by_market"

.field private static final EVENT_DRAG_APP_TO_WORKSPACE_FROM_DRAWER:Ljava/lang/String; = "drag_app_to_workspace_from_drawer"

.field private static final EVENT_DRAG_SHORTCUT_TO_WORKSPACE:Ljava/lang/String; = "drag_shortcut_to_workspace"

.field private static final EVENT_DRAWER_APP_SORT_CLICK_ALPHABETIC:Ljava/lang/String; = "drawer_app_sort_click_alphabetic"

.field private static final EVENT_DRAWER_APP_SORT_CLICK_INSTALL_TIME:Ljava/lang/String; = "drawer_app_sort_click_install_time"

.field private static final EVENT_DRAWER_APP_SORT_CLICK_USER_FREQUENCY:Ljava/lang/String; = "drawer_app_sort_click_user_frequency"

.field private static final EVENT_DT_SCREEN_LOCK_SWITCH:Ljava/lang/String; = "event_double_tap_screen_lock_switch"

.field private static final EVENT_ENTER_DRAWER:Ljava/lang/String; = "enter_drawer"

.field private static final EVENT_ENTER_TOGGLEBAR_STATE:Ljava/lang/String; = "enter_edit_state"

.field private static final EVENT_FOLDER_COUNT:Ljava/lang/String; = "folder_count"

.field private static final EVENT_FOLDER_INFO:Ljava/lang/String; = "folder_info"

.field private static final EVENT_FOLDER_MAX_PAGE:Ljava/lang/String; = "folder_max_page"

.field private static final EVENT_FOLDER_RECOMMEND_OPEN:Ljava/lang/String; = "event_folder_recommend_open"

.field private static final EVENT_FOLDER_RECOMMEND_SWITCH:Ljava/lang/String; = "event_folder_recommend_switch"

.field private static final EVENT_GENERATE_FOLDER:Ljava/lang/String; = "generate_folder"

.field private static final EVENT_HOT_SEAT_APPS:Ljava/lang/String; = "hot_seat_apps"

.field private static final EVENT_ICON_FALLEN_COMPLETE:Ljava/lang/String; = "event_icon_fallen_complete"

.field private static final EVENT_ICON_FALLEN_SWITCH:Ljava/lang/String; = "event_icon_fallen_switch"

.field private static final EVENT_ICON_SHIMMER:Ljava/lang/String; = "icon_flash"

.field private static final EVENT_ICON_SIZE:Ljava/lang/String; = "icon_size"

.field private static final EVENT_ICON_STYLE_THEME:Ljava/lang/String; = "icon_style_theme"

.field private static final EVENT_ID_BIG_FOLDER_ALL_INFO:Ljava/lang/String; = "bigFolder_all_info"

.field private static final EVENT_ID_BIG_FOLDER_CONVERT:Ljava/lang/String; = "bigFolder_convert"

.field private static final EVENT_ID_BIG_FOLDER_ITEM_INFO:Ljava/lang/String; = "bigFolder_item_info"

.field private static final EVENT_ID_BIG_FOLDER_OPEN_CLICK:Ljava/lang/String; = "bigFolder_open_click"

.field private static final EVENT_ID_BIG_FOLDER_OPEN_LONG_CLICK:Ljava/lang/String; = "bigFolder_open_long_click"

.field private static final EVENT_ID_BIG_FOLDER_SCROLL_PAGE:Ljava/lang/String; = "bigFolder_scroll"

.field private static final EVENT_ID_BROWSER_NEWS_DIALOG_BUTTON:Ljava/lang/String; = "event_id_browser_news_dialog_button"

.field private static final EVENT_ID_BROWSER_NEWS_ENTER:Ljava/lang/String; = "event_id_browser_news_enter"

.field private static final EVENT_ID_BROWSER_NEWS_SWITCH:Ljava/lang/String; = "event_id_browser_news_switch"

.field private static final EVENT_ID_BROWSER_NEWS_SWITCH_DAY:Ljava/lang/String; = "event_id_browser_news_switch_day"

.field private static final EVENT_ID_CLEAR_BUTTON_LONG_CLICK:Ljava/lang/String; = "clear_button_long_click"

.field private static final EVENT_ID_CONTENT_PROTECTION:Ljava/lang/String; = "centent_protection"

.field private static final EVENT_ID_ENTER_LOCK_SETTINGS:Ljava/lang/String; = "enter_lock_settings"

.field private static final EVENT_ID_GESTURE_RECOGNITION_FAILED:Ljava/lang/String; = "gesture_recognition_failed"

.field private static final EVENT_ID_INDICATOR_USAGE:Ljava/lang/String; = "page_indicator_pressdrag_usage"

.field public static final EVENT_ID_LAUNCH_RECENTS:Ljava/lang/String; = "launch_time_consuming"

.field private static final EVENT_ID_PENDING_CARD:Ljava/lang/String; = "pending_card"

.field private static final EVENT_ID_RECENT_MEMO_SWITCH:Ljava/lang/String; = "recent_task_memo_switch_settings"

.field private static final EVENT_ID_REMOVE_LIGHTNING_START_APP:Ljava/lang/String; = "remove_lightning_start_app"

.field private static final EVENT_KEYGUARD_WALLPAPER_INFO:Ljava/lang/String; = "keyguard_wallpaper_info"

.field private static final EVENT_LAUNCHER_DOCK_WIDGET:Ljava/lang/String; = "launcher_search_box_status"

.field private static final EVENT_LAUNCHER_LAYOUT:Ljava/lang/String; = "launcher_layout"

.field private static final EVENT_LAUNCHER_LAYOUT_LOCKED_STSTUS:Ljava/lang/String; = "launcher_layout_locked_status"

.field private static final EVENT_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field private static final EVENT_LAYOUT_IS_COMPACT:Ljava/lang/String; = "layout_is_compact"

.field private static final EVENT_LONG_CLICK_DOCK_WIDGET:Ljava/lang/String; = "long_click_dock_widget"

.field private static final EVENT_LONG_CLICK_TO_ADD_WIDGET:Ljava/lang/String; = "long_click_to_add_widget"

.field private static final EVENT_LONG_CLICK_WIDGET:Ljava/lang/String; = "long_click_widget"

.field private static final EVENT_MEMORY_WATCHDOG:Ljava/lang/String; = "event_memory_watchdog"

.field private static final EVENT_MOVE_APP_TO_THUMB_IN_PAGE_PREVIEW_MODE:Ljava/lang/String; = "move_app_to_thumb_in_page_preview_mode"

.field private static final EVENT_MOVE_BATCH_ITEM_TO_THUMB_FAILED_IN_PAGE_PREVIEW_MODE:Ljava/lang/String; = "move_batch_item_to_thumb_failed_in_page_preview_mode"

.field private static final EVENT_MOVE_ITEM_TO_ANOTHER_PAGE_IN_PREVIEW_MODE:Ljava/lang/String; = "move_item_to_another_page_in_preview_mode"

.field private static final EVENT_MOVE_ITEM_TO_CUR_PAGE_IN_PREVIEW_MODE:Ljava/lang/String; = "move_item_to_page_in_preview_mode"

.field private static final EVENT_MOVE_ITEM_TO_THUMB_FAILED_IN_PAGE_PREVIEW_MODE:Ljava/lang/String; = "move_item_to_thumb_failed_in_page_preview_mode"

.field private static final EVENT_MOVE_WIDGET:Ljava/lang/String; = "move_widget"

.field private static final EVENT_MOVE_WIDGET_TO_ANOTHER_PAGE_IN_PREVIEW_MODE:Ljava/lang/String; = "move_widget_to_another_page_in_preview_mode"

.field private static final EVENT_MOVE_WIDGET_TO_CUR_PAGE_IN_PREVIEW_MODE:Ljava/lang/String; = "move_widget_to_page_in_preview_mode"

.field private static final EVENT_MOVE_WIDGET_TO_THUMB_IN_PAGE_PREVIEW_MODE:Ljava/lang/String; = "move_widget_to_thumb_in_page_preview_mode"

.field private static final EVENT_OPEN_APP:Ljava/lang/String; = "open_app"

.field private static final EVENT_OPEN_BROWSER_APP_BY_WIDGET:Ljava/lang/String; = "open_browser_app_by_widget"

.field private static final EVENT_OPEN_FOLDER:Ljava/lang/String; = "open_folder"

.field public static final EVENT_OPEN_SUPER_POWER_SAVE_BATTERY:Ljava/lang/String; = "open_super_power_save_battery"

.field private static final EVENT_PREDICTION_APP_SWITCH_STATUS:Ljava/lang/String; = "prediction_app_switch_status"

.field private static final EVENT_PULL_DOWN_TO_SEARCH:Ljava/lang/String; = "pull_down_to_search"

.field private static final EVENT_PULL_UP_GOOGLE_SEARCH:Ljava/lang/String; = "event_pull_up_google_search"

.field private static final EVENT_PULL_UP_PAGE:Ljava/lang/String; = "event_pull_up_page"

.field private static final EVENT_REMOVE_APP_FROM_WORKSPACE:Ljava/lang/String; = "remove_app_from_workspace"

.field private static final EVENT_REMOVE_BROWSER_WIDGET_FROM_WORKSPACE:Ljava/lang/String; = "remove_browser_widget_from_workspace"

.field private static final EVENT_REMOVE_DEEP_SHORTCUT:Ljava/lang/String; = "remove_deep_shortcut"

.field private static final EVENT_REMOVE_WIDGET_FROM_WORKSPACE:Ljava/lang/String; = "remove_widget_from_workspace"

.field private static final EVENT_RENAME_FOLDER:Ljava/lang/String; = "rename_folder"

.field private static final EVENT_SEARCH_ENTRY_SWITCH_STATUS:Ljava/lang/String; = "search_entry_switch_status"

.field private static final EVENT_SERVICE_CARD_CLICK:Ljava/lang/String; = "event_service_card_click"

.field private static final EVENT_SERVICE_CARD_CLICK_ACTION:Ljava/lang/String; = "event_service_card_click_action"

.field private static final EVENT_SERVICE_CARD_EXPOSURE:Ljava/lang/String; = "event_service_card_exposure"

.field private static final EVENT_SERVICE_CARD_SETTINGS:Ljava/lang/String; = "event_service_card_settings"

.field private static final EVENT_SERVICE_CARD_UNRECOMMENDED:Ljava/lang/String; = "event_service_card_unrecommended"

.field private static final EVENT_SERVICE_CARD_USE:Ljava/lang/String; = "event_service_card_use"

.field private static final EVENT_SERVICE_CARD_VALID_CLICK:Ljava/lang/String; = "event_service_card_valid_click_jump_action"

.field private static final EVENT_SERVICE_PERMISSIONS:Ljava/lang/String; = "fanzai_permissions_event"

.field private static final EVENT_SET_SLIDE_DOWN_TO_DESKTOP:Ljava/lang/String; = "set_slide_down_to_desktop"

.field private static final EVENT_SET_WALLPAPER_IN_DESKTOP:Ljava/lang/String; = "set_wallpaper_in_desktop"

.field private static final EVENT_SET_WALLPAPER_SUCCESS:Ljava/lang/String; = "set_wallpaper_success"

.field private static final EVENT_SHORTCUT_SETTING:Ljava/lang/String; = "shortcut_setting"

.field private static final EVENT_SLIDE_CROSS_OVER_PAGE:Ljava/lang/String; = "slide_cross_over_page"

.field private static final EVENT_SLIDE_START:Ljava/lang/String; = "slide_start"

.field public static final EVENT_SUPER_POWER_SAVE_USAGE_TIME:Ljava/lang/String; = "super_power_save_usage_time"

.field private static final EVENT_SWITCH_PAGE_IN_PREVIEW_STATE:Ljava/lang/String; = "switch_page_in_preview_state"

.field private static final EVENT_THIRD_ICON_PACK:Ljava/lang/String; = "third_icon_pack"

.field private static final EVENT_UNINSTALL_APP:Ljava/lang/String; = "uninstall_app"

.field private static final EVENT_UNINSTALL_APP_WINDOW_CLOSE:Ljava/lang/String; = "uninstall_app_window_close"

.field private static final EVENT_UNINSTALL_APP_WINDOW_POPUP:Ljava/lang/String; = "uninstall_app_window_popup"

.field private static final EVENT_UPGRADE_OS_12_DATA_COMPATIBLE:Ljava/lang/String; = "upgrade_os12_data_compatible"

.field private static final EVENT_USER_HAS_MUST_PLAY:Ljava/lang/String; = "user_has_must_play"

.field private static final EVENT_USER_OPEN_MUST_PLAY:Ljava/lang/String; = "user_open_must_play"

.field private static final EVENT_WALLPAPER_ENTRY:Ljava/lang/String; = "event_wallpaper_entry"

.field private static final EVENT_WALLPAPER_TYPE:Ljava/lang/String; = "wallpaper_type"

.field private static final EVENT_WIDGET_CONTROL:Ljava/lang/String; = "widget_control"

.field private static final EVENT_WIDGET_FIXED_SHORTCUT_CLICKED:Ljava/lang/String; = "widget_fixed_shortcut_clicked"

.field private static final FOLDER_CREATE_BY_SYSTEM:Ljava/lang/String; = "1"

.field private static final FOLDER_CREATE_BY_USER:Ljava/lang/String; = "2"

.field private static final FULL_SEARCH_WIDGET_PROVIDER_NAME:Ljava/lang/String; = "com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

.field private static final KEYGUARD_WALLPAPER_STATISTICS_SETTINGS:Ljava/lang/String; = "keyguard_wallpaper_statistics_settings"

.field private static final KEY_ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field private static final KEY_ADD_APP_TO_WORKSPACE_SWITCH_STATUS:Ljava/lang/String; = "add_app_to_workspace_switch_status"

.field private static final KEY_ALL_APP_COUNT:Ljava/lang/String; = "all_app_count"

.field private static final KEY_APPLICATION_NAME:Ljava/lang/String; = "application_name"

.field private static final KEY_APP_GUIDE_CLASS_NAME:Ljava/lang/String; = "key_app_guide_class_name"

.field private static final KEY_APP_GUIDE_CLOSE_REASON:Ljava/lang/String; = "key_app_guide_close_reason"

.field private static final KEY_APP_GUIDE_PACKAGE_NAME:Ljava/lang/String; = "key_app_guide_package_name"

.field private static final KEY_APP_LOCATION:Ljava/lang/String; = "app_location"

.field private static final KEY_APP_LOST_REASON:Ljava/lang/String; = "app_lost_reason"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_APP_PACKAGE:Ljava/lang/String; = "app_lost_package"

.field private static final KEY_APP_STARTUP_ANIM_SPEED:Ljava/lang/String; = "app_start_anim_speed"

.field private static final KEY_APP_USER:Ljava/lang/String; = "app_lost_user"

.field private static final KEY_BADGE_STATUS:Ljava/lang/String; = "badge_status"

.field private static final KEY_BATCH_ADD_APP_TO_WORKSPACE_COUNT:Ljava/lang/String; = "batch_add_app_to_workspace_count"

.field private static final KEY_BIG_FOLDER_ALL_COUNT:Ljava/lang/String; = "bigFolder_all_count"

.field private static final KEY_BIG_FOLDER_ITEM_CELL:Ljava/lang/String; = "bigFolder_item_cell"

.field private static final KEY_BIG_FOLDER_ITEM_COUNT:Ljava/lang/String; = "bigFolder_item_count"

.field private static final KEY_BIG_FOLDER_ITEM_PKG:Ljava/lang/String; = "bigFolder_item_pkg"

.field private static final KEY_BIG_FOLDER_ITEM_SCREEN:Ljava/lang/String; = "bigFolder_item_screen"

.field private static final KEY_BRANCH_SEARCH_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_BRANCH_SEARCH_GAID:Ljava/lang/String; = "gaid"

.field private static final KEY_BRANCH_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_BREENO_AUTHORITY:Ljava/lang/String; = "breeno_authority"

.field private static final KEY_CARD_COUNT:Ljava/lang/String; = "card_count"

.field public static final KEY_CARD_ID:Ljava/lang/String; = "card_id"

.field private static final KEY_CARD_INSTANCE_ID:Ljava/lang/String; = "card_instance_id"

.field private static final KEY_COMPONENT_ID:Ljava/lang/String; = "component_id"

.field private static final KEY_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field private static final KEY_COMPONENT_POSE:Ljava/lang/String; = "component_pose"

.field private static final KEY_COMPONENT_PROVIDER_INFO:Ljava/lang/String; = "component_provider_info"

.field private static final KEY_COMPONENT_SIZE:Ljava/lang/String; = "component_size"

.field private static final KEY_COMPONENT_TYPE:Ljava/lang/String; = "component_type"

.field private static final KEY_CONTENT_PROTECTION_PKG:Ljava/lang/String; = "content_protection_pkg"

.field private static final KEY_CONTENT_PROTECTION_STATE:Ljava/lang/String; = "content_protection_state"

.field private static final KEY_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_CURRENT_CARD_LIST:Ljava/lang/String; = "card_list"

.field private static final KEY_CURRENT_WIDGET_LIST:Ljava/lang/String; = "widget_list"

.field private static final KEY_DAILY_USE_TIME:Ljava/lang/String; = "daily_use_time"

.field private static final KEY_DEEPTHINKER_AUTHORITY:Ljava/lang/String; = "deepthinker_authority"

.field private static final KEY_ENABLE_SHORTCUT:Ljava/lang/String; = "enable_shortcut"

.field private static final KEY_ENTER_TOGGLEBAR_STATE_WAY:Ljava/lang/String; = "enter_edit_state_way"

.field private static final KEY_EVENT_DOCK_EXPAND_SWITCH:Ljava/lang/String; = "event_dock_expand_switch_state"

.field private static final KEY_EVENT_DT_SCREEN_LOCK_SWITCH:Ljava/lang/String; = "event_double_tap_screen_lock_switch_state"

.field private static final KEY_EVENT_FOLDER_RECOMMEND_OPEN:Ljava/lang/String; = "open"

.field private static final KEY_EVENT_FOLDER_RECOMMEND_SWITCH:Ljava/lang/String; = "switch_status"

.field private static final KEY_EVENT_ICON_FALLEN_SWITCH:Ljava/lang/String; = "event_icon_fallen_switch_state"

.field public static final KEY_EVENT_TIME:Ljava/lang/String; = "event_time"

.field private static final KEY_EXPOSURE_CONTENT:Ljava/lang/String; = "exposure_content"

.field private static final KEY_FILTER_LOCK:Ljava/lang/String; = "filter_lock"

.field private static final KEY_FIRST_BOOT_AUTHORITY:Ljava/lang/String; = "first_boot_authority"

.field private static final KEY_FOLDER_COUNT:Ljava/lang/String; = "folder_count"

.field private static final KEY_FOLDER_ITEMS_NAME:Ljava/lang/String; = "folder_items_name"

.field private static final KEY_FOLDER_ITEMS_PKG_NAME:Ljava/lang/String; = "folder_items_pkg_name"

.field private static final KEY_FOLDER_MAX_PAGE:Ljava/lang/String; = "folder_max_page"

.field private static final KEY_FOLDER_NAME:Ljava/lang/String; = "folder_name"

.field private static final KEY_FOLDER_NAME_CLICK_FOLDER:Ljava/lang/String; = "folder_name"

.field private static final KEY_FOLDER_TYPE_CLICK_FOLDER:Ljava/lang/String; = "folder_type"

.field private static final KEY_GESTURE_FAILED_ORIENTATION:Ljava/lang/String; = "gesture_failed_orientation"

.field private static final KEY_GESTURE_FAILED_REASON:Ljava/lang/String; = "gesture_failed_reason"

.field private static final KEY_HAS_MUST_PLAY:Ljava/lang/String; = "has_must_play"

.field private static final KEY_HOT_SEAT_APPS:Ljava/lang/String; = "hot_seat_apps"

.field private static final KEY_ICON_PACKAGE_NAME:Ljava/lang/String; = "icon_package_name"

.field private static final KEY_ICON_PACK_TITLE:Ljava/lang/String; = "icon_pack_title"

.field public static final KEY_ID_START_ACTIVITY_DURATION:Ljava/lang/String; = "start_activity_duration"

.field public static final KEY_ID_START_ACTIVITY_FROM_APP:Ljava/lang/String; = "start_activity_from_app"

.field public static final KEY_ID_START_ACTIVITY_METHOD:Ljava/lang/String; = "start_activity_method"

.field private static final KEY_IS_BOTTOM_WIDGET:Ljava/lang/String; = "is_bottom_widget"

.field private static final KEY_IS_LAYOUT_UPGRADE:Ljava/lang/String; = "is_layout_upgrade"

.field private static final KEY_IS_PULL_UP_MODE:Ljava/lang/String; = "open"

.field private static final KEY_IS_QUICKAPP_INFO:Ljava/lang/String; = "is_quickapp_info"

.field private static final KEY_IS_RECOMMEND_CARD:Ljava/lang/String; = "is_recommend_card"

.field private static final KEY_ITEM_CONTAINER:Ljava/lang/String; = "item_container"

.field private static final KEY_LAUNCHER_LAYOUT_LOCKED_STSTUS:Ljava/lang/String; = "launcher_layout_locked_status"

.field private static final KEY_LAUNCHER_LOCATE_APPWIDGETPROVIDER:Ljava/lang/String; = "AppWidgetProvider"

.field private static final KEY_LAUNCHER_LOCATE_CALLER:Ljava/lang/String; = "caller"

.field private static final KEY_LAUNCHER_LOCATE_CARDTYPEID:Ljava/lang/String; = "cardTypeId"

.field private static final KEY_LAUNCHER_LOCATE_COMPONENTNAME:Ljava/lang/String; = "ComponentName"

.field private static final KEY_LAUNCHER_LOCATE_ITEMTYPE:Ljava/lang/String; = "ItemType"

.field private static final KEY_LAUNCHER_LOCATE_SHORTCUTID:Ljava/lang/String; = "shortcutId"

.field private static final KEY_LAUNCHER_LOCATE_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_LAUNCHER_LOCATE_USERID:Ljava/lang/String; = "userId"

.field private static final KEY_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field private static final KEY_LAUNCHER_MODE_CLICK_FOLDER:Ljava/lang/String; = "launcher_mode"

.field private static final KEY_LAYOUT_IS_COMPACT:Ljava/lang/String; = "layout_is_compact"

.field private static final KEY_LAYOUT_UPGRADE_TYPE:Ljava/lang/String; = "layout_upgrade_type"

.field private static final KEY_LOCKED:Ljava/lang/String; = "locked"

.field private static final KEY_MEM_WATCHDOG:Ljava/lang/String; = "memWatchDog"

.field private static final KEY_METIS_AUTHORITY:Ljava/lang/String; = "metis_authority"

.field private static final KEY_OPEN_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_OPEN_MUST_PLAY:Ljava/lang/String; = "open_must_play"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_PENDING_CARD_ACTION_CLICK:Ljava/lang/String; = "click"

.field private static final KEY_PENDING_CARD_ACTION_LONG_CLICK:Ljava/lang/String; = "long_click"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final KEY_PRIVACY_PERMISSIONS_AUTHORITY:Ljava/lang/String; = "privacy_permissions_authority"

.field private static final KEY_QUICKAPP_CLICK_STATE:Ljava/lang/String; = "quickapp_click_state"

.field private static final KEY_QUICKAPP_ID:Ljava/lang/String; = "quickapp_id"

.field private static final KEY_QUICKAPP_TYPE:Ljava/lang/String; = "quickapp_type"

.field private static final KEY_QUICK_STARTUP_APP_PKG:Ljava/lang/String; = "pkg"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_REINSTALL_REASON:Ljava/lang/String; = "reinstall_reason"

.field private static final KEY_REINSTALL_RESULT:Ljava/lang/String; = "reinstall_result"

.field private static final KEY_REINSTALL_TYPE:Ljava/lang/String; = "reinstall_type"

.field private static final KEY_REMARK:Ljava/lang/String; = "remark"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_SEARCH_ENTRY_CLICK_RESULT:Ljava/lang/String; = "click_result"

.field private static final KEY_SEARCH_ENTRY_SWITCH_STATUS:Ljava/lang/String; = "key_search_entry_switch_status"

.field private static final KEY_SELECT:Ljava/lang/String; = "select"

.field private static final KEY_SERVICE_CARD_ACTION_CLICK:Ljava/lang/String; = "click"

.field private static final KEY_SERVICE_CARD_ID:Ljava/lang/String; = "service_id"

.field private static final KEY_SERVICE_CARD_SCORE:Ljava/lang/String; = "score"

.field private static final KEY_SERVICE_CARD_USE_ACTIVED:Ljava/lang/String; = "actived"

.field private static final KEY_SERVICE_CARD_USE_BOOK:Ljava/lang/String; = "book"

.field private static final KEY_SERVICE_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_SERVICE_INTENT_ID:Ljava/lang/String; = "intent_id"

.field public static final KEY_SERVICE_POLICY:Ljava/lang/String; = "policy"

.field private static final KEY_SHARE_APK_PACKAGE_NAME:Ljava/lang/String; = "key_package_name"

.field private static final KEY_SHORTCUT_NAME:Ljava/lang/String; = "shortcut_name"

.field private static final KEY_SHORTCUT_TITLE_CLICK_WIDGET:Ljava/lang/String; = "shortcut_title"

.field private static final KEY_SHOW_PREDICTION_APP:Ljava/lang/String; = "show_prediction_app"

.field private static final KEY_SLIDE_DOWN_TO_DESKTOP_TYPE:Ljava/lang/String; = "slide_down_to_desktop_type"

.field private static final KEY_SNAP_PAGE_FROM:Ljava/lang/String; = "bf_scroll_from"

.field private static final KEY_SNAP_PAGE_TO:Ljava/lang/String; = "bf_scroll_to"

.field private static final KEY_START_APP_FROM:Ljava/lang/String; = "from"

.field private static final KEY_START_APP_FROM_DOCK:Ljava/lang/String; = "dock"

.field private static final KEY_START_APP_FROM_TASK:Ljava/lang/String; = "task"

.field private static final KEY_START_RESULT:Ljava/lang/String; = "startResult"

.field private static final KEY_START_TIME:Ljava/lang/String; = "startTime"

.field private static final KEY_SUPER_POWER_SAVE_APP_COUNT:Ljava/lang/String; = "super_power_save_app_count"

.field private static final KEY_SUPER_POWER_SAVE_APP_NAME:Ljava/lang/String; = "super_power_save_app_name"

.field private static final KEY_SUPER_POWER_SAVE_BATTERY:Ljava/lang/String; = "super_power_save_battery"

.field private static final KEY_SUPER_POWER_SAVE_USAGE_TIME:Ljava/lang/String; = "super_power_save_usage_time"

.field private static final KEY_TARGET_PACKAGE_CLICK_WIDGET:Ljava/lang/String; = "target_package"

.field private static final KEY_TRACE_ID:Ljava/lang/String; = "traceId"

.field private static final KEY_UMS_AUTHORITY:Ljava/lang/String; = "ums_authority"

.field private static final KEY_UNINSTALL_COUNT:Ljava/lang/String; = "uninstall_count"

.field private static final KEY_UNINSTALL_TYPE:Ljava/lang/String; = "uninstall_type"

.field private static final KEY_WALLPAPER_ENTRY_NAME:Ljava/lang/String; = "key_entry_name"

.field private static final KEY_WALLPAPER_ENTRY_VALUE_ART:Ljava/lang/String; = "art"

.field private static final KEY_WALLPAPER_ENTRY_VALUE_CREATION:Ljava/lang/String; = "creation"

.field private static final KEY_WALLPAPER_ENTRY_VALUE_LIVE:Ljava/lang/String; = "live"

.field private static final KEY_WALLPAPER_ENTRY_VALUE_OTHER:Ljava/lang/String; = "other"

.field private static final KEY_WALLPAPER_ENTRY_VALUE_STATIC:Ljava/lang/String; = "static"

.field private static final KEY_WALLPAPER_NAME:Ljava/lang/String; = "wallpaper_name"

.field private static final KEY_WALLPAPER_TYPE:Ljava/lang/String; = "wallpaper_type"

.field private static final KEY_WIDGET_CONTROL_COMPONENT:Ljava/lang/String; = "widget_control_component"

.field private static final KEY_WIDGET_CONTROL_TOAST:Ljava/lang/String; = "widget_control_toast"

.field private static final KEY_WIDGET_COUNT:Ljava/lang/String; = "widget_count"

.field private static final KEY_WIDGET_NAME:Ljava/lang/String; = "name"

.field private static final KEY_WIDGET_PACKAGE:Ljava/lang/String; = "widget_package"

.field private static final KEY_WIDGET_PROVIDER_CLICK_WIDGET:Ljava/lang/String; = "widget_provider"

.field private static final KEY_WIDGET_SINGLE_NAME:Ljava/lang/String; = "widget_name"

.field private static final KEY_WIDGET_SIZE:Ljava/lang/String; = "size"

.field private static final KEY_WIDGET_TYPE:Ljava/lang/String; = "type"

.field private static final LAUNCHER_ITEM_LOCATE_REQUEST_KEY:Ljava/lang/String; = "launcher_item_locate_request"

.field private static final LAUNCH_CLEANED:Ljava/lang/String; = "hasCleaned"

.field public static final LAUNCH_RECENTS_TOGGLE:Ljava/lang/String; = "toggle"

.field private static final LAUNCH_REMOVED:Ljava/lang/String; = "hasRemoved"

.field private static final LAUNCH_REMOVED_TASKS:Ljava/lang/String; = "removedTasks"

.field public static final LAUNCH_TIME_ANALYSIS_MODULE_NAME:Ljava/lang/String; = "recents"

.field public static final LOGTAG_LAUNCH_TIME_ANALYSIS:Ljava/lang/String; = "HM_APP_AVG"

.field public static final MINUTE_IN_MILLS:I = 0xea60

.field private static final PACKAGENAME_QUICK_APP:Ljava/lang/String; = "com.nearme.instant.platform"

.field private static final PACKAGENAME_QUICK_APP_CENTER:Ljava/lang/String; = "com.nearme.quickapp.center"

.field private static final PACKAGENAME_QUICK_APP_GAMECENTER_SUFFIX:Ljava/lang/String; = "gamecenter"

.field private static final RECENT_MEMO_SWITCH_STATUS:Ljava/lang/String; = "recent_memo_switch_status"

.field public static final REMOVE_DEEP_SHORTCUT:I = 0x1

.field private static final RUNNABLE_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREEN_ID:Ljava/lang/String; = "screen_id"

.field private static final SEARCH_WIDGET_EXIST_STATE:Ljava/lang/String; = "search_widget_exist_state"

.field private static final SEARCH_WIDGET_NAME:Ljava/lang/String; = "search_widget_name"

.field public static final SECOND_IN_MILLS:I = 0x3e8

.field private static final SIDE_GESTURES_GUIDE:Ljava/lang/String; = "side_gestures_guide"

.field private static final SIDE_GESTURES_GUIDE_ORIGIN:Ljava/lang/String; = "side_gestures_guide_origin"

.field private static final SIDE_GESTURES_GUIDE_RESULT:Ljava/lang/String; = "side_gestures_guide_result"

.field private static final SIZE_LIMIT:I = 0x14000

.field private static final START_APP_FROM_TASK:Ljava/lang/String; = "start_app_from_task"

.field private static final STATIC_STATS_TAG:Ljava/lang/String; = "201102"

.field private static final SYSTEM_BROWSER_DEFAULT_SEARCH_WIDGET_PROVIDER_NAME:Ljava/lang/String; = "com.android.browser.widget.DefaultSearchWidgetProvider"

.field private static final SYSTEM_BROWSER_NAVI_SEARCH_WIDGET_PROVIDER_NAME:Ljava/lang/String; = "com.android.browser.widget.NaviSearchWidgetProvider"

.field private static final SYSTEM_BROWSER_OTHER_SEARCH_WIDGET_PROVIDER_NAME:Ljava/lang/String; = "com.android.browser.widget.OtherEntranceSearchWidgetProvider"

.field private static final TAG:Ljava/lang/String; = "LauncherStatistics"

.field private static final TOUCH_EMPTY_START_HOME:Ljava/lang/String; = "touch_empty_start_home"

.field private static final TYPE_CARD:Ljava/lang/String; = "card"

.field private static final TYPE_WIDGET:Ljava/lang/String; = "widget"

.field private static final UNINTALL_STRING_LENGTH:I = 0x19

.field private static final VALUE_APP_GUIDE_CLOSE_BY_CLICK_CARD:Ljava/lang/String; = "click_card"

.field private static final VALUE_APP_GUIDE_CLOSE_BY_CLICK_CLOSE:Ljava/lang/String; = "click_close"

.field private static final VALUE_APP_GUIDE_CLOSE_BY_CLICK_ICON:Ljava/lang/String; = "click_icon"

.field private static final VALUE_APP_GUIDE_CLOSE_BY_CLICK_OUTSIDE:Ljava/lang/String; = "click_outside"

.field private static final VALUE_DYNAMIC_WALLPAPER:Ljava/lang/String; = "dynamic_wallpaper"

.field private static final VALUE_INDEX_DESKTOP:I = 0x0

.field private static final VALUE_INDEX_KEYGUARD:I = 0x1

.field private static final VALUE_IS_NOT_RECOMMEND:Ljava/lang/String; = "0"

.field private static final VALUE_IS_RECOMMEND:Ljava/lang/String; = "1"

.field private static final VALUE_MASTER_KEY_CARD:Ljava/lang/String; = "2"

.field private static final VALUE_MISSING_KEY_PERMISSIONS_CARD:Ljava/lang/String; = "4"

.field private static final VALUE_NO:Ljava/lang/String; = "no"

.field private static final VALUE_NORMAL_CARD:Ljava/lang/String; = "0"

.field private static final VALUE_NORMAL_WALLPAPER:Ljava/lang/String; = "normal_wallpaper"

.field private static final VALUE_NO_ADVICE_CARD:Ljava/lang/String; = "3"

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"

.field private static final VALUE_PENDING_CARD_TARGET_CARD:Ljava/lang/String; = "card"

.field private static final VALUE_PENDING_CARD_TARGET_PIN:Ljava/lang/String; = "pin"

.field private static final VALUE_PRIVACY_PERMISSION_CARD:Ljava/lang/String; = "1"

.field private static final VALUE_SERVICE_CARD_CLICK_REMOVE:Ljava/lang/String; = "remove"

.field private static final VALUE_SERVICE_CARD_CLICK_SETTINGS:Ljava/lang/String; = "settings"

.field private static final VALUE_SWITCH_CLOSE:Ljava/lang/String; = "0"

.field private static final VALUE_SWITCH_OPEN:Ljava/lang/String; = "1"

.field private static final VALUE_SWITCH_UNKNOWN:Ljava/lang/String; = "3"

.field private static final VALUE_YES:Ljava/lang/String; = "yes"

.field private static final WALLPAPER_DEFAULT:Ljava/lang/String; = "default_wallpaper"

.field private static final WALLPAPER_IGNORE:Ljava/lang/String; = "ignore_wallpaper"

.field private static final WALLPAPER_SEPARATOR:Ljava/lang/String; = ";"

.field public static final WAY_LONG_CLICK:Ljava/lang/String; = "long_click"

.field public static final WAY_SCALE:Ljava/lang/String; = "scale"

.field private static final WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.alarmclock"

.field private static final X:Ljava/lang/String; = "location_x"

.field private static final Y:Ljava/lang/String; = "location_Y"

.field private static volatile sInstance:Lcom/android/statistics/LauncherStatistics;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasCleaned:Z

.field private mHasRemovedTask:Z

.field private mLastClickSettingsTime:J

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mPhoneMangerEntranceStatisticsManager:Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

.field private mRemovedTasks:I

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mToggleClickedTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/statistics/LauncherStatistics;->RUNNABLE_QUEUE:Ljava/util/Queue;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/statistics/LauncherStatistics;->sInstance:Lcom/android/statistics/LauncherStatistics;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/statistics/LauncherStatistics;->mHasCleaned:Z

    iput-boolean v0, p0, Lcom/android/statistics/LauncherStatistics;->mHasRemovedTask:Z

    iput v0, p0, Lcom/android/statistics/LauncherStatistics;->mRemovedTasks:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/statistics/LauncherStatistics;->mToggleClickedTime:J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

    invoke-direct {v0, p1, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;-><init>(Landroid/content/Context;Lcom/android/statistics/LauncherStatistics;)V

    iput-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mPhoneMangerEntranceStatisticsManager:Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/statistics/LauncherStatistics;ILcom/android/launcher3/OplusWorkspace;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/statistics/LauncherStatistics;->lambda$statBreenoExposureEvent$3(ILcom/android/launcher3/OplusWorkspace;)V

    return-void
.end method

.method private appendCardInfo(Ljava/util/Map;Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3e

    if-nez p2, :cond_5

    goto :goto_3e

    :cond_5
    iget v0, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "component_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "card_instance_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "component_provider_info"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    invoke-direct {p0, p2}, Lcom/android/statistics/LauncherStatistics;->getWidgetSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "component_size"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/statistics/LauncherStatistics;->getScreenPose(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "component_pose"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    :goto_3e
    return-void
.end method

.method private appendCardInfo(Ljava/util/Map;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ")V"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/statistics/LauncherStatistics;->appendCardInfo(Ljava/util/Map;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method private appendCardInfo(Ljava/util/Map;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Ljava/lang/Boolean;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4e

    if-nez p2, :cond_5

    goto :goto_4e

    :cond_5
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    goto :goto_10

    :cond_e
    iget v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    :goto_10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "component_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_22

    iget p3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    goto :goto_24

    :cond_22
    iget p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    :goto_24
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "card_instance_id"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/statistics/LauncherStatistics;->getPrividerInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3c

    invoke-static {p3}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "component_provider_info"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    invoke-direct {p0, p2}, Lcom/android/statistics/LauncherStatistics;->getWidgetSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "component_size"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/statistics/LauncherStatistics;->getScreenPose(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "component_pose"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    :goto_4e
    return-void
.end method

.method public static synthetic b(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/statistics/LauncherStatistics;->lambda$statsAdviceCardInfo$8(Lcom/android/launcher3/card/LauncherCardInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/statistics/LauncherStatistics;->lambda$statWidgetExposureEvent$6(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/statistics/LauncherStatistics;->lambda$statCardExposureEvent$4(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/statistics/LauncherStatistics;ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/statistics/LauncherStatistics;->lambda$statWidgetExposureEvent$7(ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/statistics/LauncherStatistics;ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/statistics/LauncherStatistics;->lambda$statCardExposureEvent$5(ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/statistics/LauncherStatistics;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->lambda$statsDaily$0()V

    return-void
.end method

.method private getBreenoExposureMap(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/card/uscard/USCardContainerView;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/OplusWorkspace;",
            "Lcom/android/launcher3/CellLayout;",
            "Lcom/android/launcher3/card/uscard/USCardContainerView;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "LauncherStatistics"

    const-string p1, "getBreenoExposureMap, childCards is null."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_f
    invoke-virtual {p3}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getBackupChild()Landroid/view/View;

    move-result-object p0

    const-string p3, "0"

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v0, -0x5

    if-eq p0, v0, :cond_3d

    const/4 v0, -0x4

    if-eq p0, v0, :cond_3a

    const/4 v0, -0x3

    if-eq p0, v0, :cond_37

    const/4 v0, -0x2

    if-eq p0, v0, :cond_34

    goto :goto_3f

    :cond_34
    const-string p3, "1"

    goto :goto_3f

    :cond_37
    const-string p3, "2"

    goto :goto_3f

    :cond_3a
    const-string p3, "4"

    goto :goto_3f

    :cond_3d
    const-string p3, "3"

    :cond_3f
    :goto_3f
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "component_pose"

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "exposure_content"

    invoke-virtual {p1, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;
    .registers 3

    sget-object v0, Lcom/android/statistics/LauncherStatistics;->sInstance:Lcom/android/statistics/LauncherStatistics;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/statistics/LauncherStatistics;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/statistics/LauncherStatistics;->sInstance:Lcom/android/statistics/LauncherStatistics;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/statistics/LauncherStatistics;

    invoke-direct {v1, p0}, Lcom/android/statistics/LauncherStatistics;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/statistics/LauncherStatistics;->sInstance:Lcom/android/statistics/LauncherStatistics;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/android/statistics/LauncherStatistics;->sInstance:Lcom/android/statistics/LauncherStatistics;

    return-object p0
.end method

.method private getPrividerInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetClassByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-static {p0, v0, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getScreenPose(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    if-nez p1, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7c

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWidgetSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v0, ""

    if-nez p0, :cond_7

    return-object v0

    :cond_7
    if-nez p1, :cond_a

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/OplusWorkspace;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/statistics/LauncherStatistics;->lambda$statBreenoExposureEvent$2(Lcom/android/launcher3/OplusWorkspace;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/statistics/LauncherStatistics;->lambda$statsAdviceCardInfo$9(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method private isLockScreenDisabled()Z
    .registers 9

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :try_start_e
    sget-object v3, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    if-nez p0, :cond_1b

    return v1

    :cond_1b
    const-class v3, Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "isLockScreenDisabled"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v5

    long-to-int p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p0

    const-string v2, "isLockScreenDisabled e = "

    const-string v3, "LauncherStatistics"

    invoke-static {v2, p0, v3}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_48
    instance-of p0, v0, Ljava/lang/Boolean;

    if-eqz p0, :cond_53

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_53
    return v1
.end method

.method private isSearchWidgetNeedStats(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.android.browser.widget.DefaultSearchWidgetProvider"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "com.android.browser.widget.NaviSearchWidgetProvider"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "com.android.browser.widget.OtherEntranceSearchWidgetProvider"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "com.heytap.quicksearchbox.ui.appwidgets.DesktopSearchWidgetProvider"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$statBreenoExposureEvent$2(Lcom/android/launcher3/OplusWorkspace;Landroid/view/View;)V
    .registers 6

    check-cast p2, Lcom/android/launcher3/CellLayout;

    if-eqz p2, :cond_37

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/IAreaWidget;

    instance-of v2, v1, Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz v2, :cond_10

    check-cast v1, Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/statistics/LauncherStatistics;->getBreenoExposureMap(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/card/uscard/USCardContainerView;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_31

    const-string p0, "LauncherStatistics"

    const-string/jumbo p1, "statBreenoExposureEvent, cardInfoMap is null."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    const/4 p2, 0x1

    const-string v0, "breeno_container_exposure"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_37
    return-void
.end method

.method private synthetic lambda$statBreenoExposureEvent$3(ILcom/android/launcher3/OplusWorkspace;)V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_c

    const-string p0, "LauncherStatistics"

    const-string p1, "mLauncher is null."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget v1, p2, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne p1, v1, :cond_2d

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_25

    goto :goto_2d

    :cond_25
    new-instance p1, Lcom/android/launcher3/t1;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/t1;-><init>(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private synthetic lambda$statCardExposureEvent$4(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;Landroid/view/View;)V
    .registers 11

    check-cast p4, Lcom/android/launcher3/CellLayout;

    if-eqz p4, :cond_8a

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p4, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/IAreaWidget;

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "component_type"

    const-string v5, "1"

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "component_id"

    invoke-interface {p3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "component_name"

    invoke-interface {p3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "component_size"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "component_pose"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "card_or_widget_exposure"

    invoke-virtual {p0, v2, p3, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_10

    :cond_8a
    return-void
.end method

.method private synthetic lambda$statCardExposureEvent$5(ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;)V
    .registers 12

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p2, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne p1, v1, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_1e

    goto :goto_2c

    :cond_1e
    new-instance p1, Lcom/android/statistics/b;

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/statistics/b;-><init>(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;I)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private synthetic lambda$statWidgetExposureEvent$6(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;Landroid/view/View;)V
    .registers 13

    check-cast p4, Lcom/android/launcher3/CellLayout;

    if-eqz p4, :cond_a5

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->WIDGET:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p4, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/IAreaWidget;

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x5f

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x7c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v6}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "component_type"

    const-string v7, "2"

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "component_id"

    invoke-interface {p3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetNameByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "component_name"

    invoke-interface {p3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "component_size"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "component_pose"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "widget_package"

    invoke-interface {p3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/common/util/LauncherUtil;->getApplicationLabelByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widget_name"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "card_or_widget_exposure"

    invoke-virtual {p0, v2, p3, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto/16 :goto_10

    :cond_a5
    return-void
.end method

.method private synthetic lambda$statWidgetExposureEvent$7(ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;)V
    .registers 12

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p2, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne p1, v1, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_1e

    goto :goto_2c

    :cond_1e
    new-instance p1, Lcom/android/statistics/b;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/statistics/b;-><init>(Lcom/android/statistics/LauncherStatistics;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;I)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private synthetic lambda$statsAdviceCardInfo$8(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 4

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/android/launcher/AppAdviceCheck;->isAppAdviceCard(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsAdviceCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$statsAdviceCardInfo$9(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.coloros.alarmclock"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :cond_f
    return-void
.end method

.method private static synthetic lambda$statsBigFolderItem$1(Ljava/lang/StringBuilder;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    return-void
.end method

.method private lambda$statsDaily$0()V
    .registers 7

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsAllAppsCount()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsWallPaperType()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsWallpaperInfo()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsLauncherModer()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsIconFallenSwitch()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsDockExpandSwitch()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsPredictionAppSwitchStatus()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsAddAppToWorkspaceSwitchStatus()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsLauncherLayout()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsLayoutIsCompact()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsSlideDownToWorkSpace()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsAppStartAnimationSpeed()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsFolderInfo()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsLauncherLayoutLockedStatus()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsIconStyleUsage()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsDoubleTapLockScreenSwitch()V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsWidgetAndCardInfo()V

    invoke-static {}, Lcom/android/launcher3/search/SearchEntry;->isSearchEntrySupported()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsSearchEntrySwitchStatus()V

    :cond_3c
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsBranchSearch()V

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsBranchClickSuggestLink()V

    :cond_4c
    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsPullUpPage()V

    :cond_59
    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsBottomSearchWidgetLocation()V

    :cond_64
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v0

    if-nez v0, :cond_75

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statServiceCardUseActive()V

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statServiceCardBookAndScreenId()V

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statServiceCardPermissionEvent()V

    :cond_75
    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsSearchWidgetLocation()V

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->supportLayoutSwitch()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsLayoutUpgradeInfo()V

    :cond_81
    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo1/e;->a(Landroid/content/Context;Z)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_a1

    sget v0, Lq1/b;->d:I

    if-eq v0, v2, :cond_9c

    sget v0, Lq1/b;->d:I

    if-ne v0, v3, :cond_9a

    goto :goto_9c

    :cond_9a
    move v0, v1

    goto :goto_9d

    :cond_9c
    :goto_9c
    move v0, v3

    :goto_9d
    if-eqz v0, :cond_a1

    move v0, v3

    goto :goto_a2

    :cond_a1
    move v0, v1

    :goto_a2
    if-nez v0, :cond_c1

    const-string v4, "getShowSwitchVisiableState, mBrowserCallBackOpenState: "

    const-string v5, " BrowserNewsRusHelper.isBrowserNewsRusOpenResult(): "

    invoke-static {v4, v3, v5}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lq1/b;->d:I

    if-eq v5, v2, :cond_b4

    sget v2, Lq1/b;->d:I

    if-ne v2, v3, :cond_b5

    :cond_b4
    move v1, v3

    :cond_b5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupportBrowserNewsHelper"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo1/e;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statEventBrowserNewsSwitchDay(Z)V

    :cond_cc
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mPhoneMangerEntranceStatisticsManager:Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;->statRecentPhoneManagerSwitch()V

    :cond_d9
    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsAdviceCardInfo()V

    return-void
.end method

.method private onEventBatch(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const-string v1, "LauncherStatistics"

    if-nez v0, :cond_c

    const-string p0, "onEventBatch. The mContext is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v2, "onEventBatch. event:"

    if-eqz v0, :cond_3f

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",map = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_3f
    const-string v0, ",info.size = "

    invoke-static {v2, p1, v0}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_5a

    const-string p3, "201101"

    goto :goto_5c

    :cond_5a
    const-string p3, "201102"

    :goto_5c
    const/4 v0, 0x1

    invoke-static {p0, p3, p1, p2, v0}, Lcom/oplus/statistics/OplusTrack;->onCommonBatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Z

    return-void
.end method

.method private onEventCount(Ljava/lang/String;IZZ)V
    .registers 6

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "count"

    invoke-virtual {p4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p4, p3}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 5

    const-string p4, "remark"

    invoke-static {p4, p2, p0, p1, p3}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method private statBigFolderEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "folder_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statPendingCardClickEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "pending_card"

    const/4 v1, 0x1

    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method private statsAddAppToWorkspaceSwitchStatus()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isAddAppToWorkspace()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "on"

    goto :goto_14

    :cond_12
    const-string v1, "off"

    :goto_14
    const-string v2, "add_app_to_workspace_switch_status"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsAddWidget(Ljava/lang/String;Lcom/android/launcher3/PendingAddItemInfo;)V
    .registers 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p2, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    const-string v2, ""

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_16
    move-object v1, v2

    move-object v3, v1

    :goto_18
    const-string v4, "packageName"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isBrowserWidgetBuriedPoint()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string v4, "com.heytap.browser"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {p0, p2}, Lcom/android/statistics/LauncherStatistics;->statsClickToAddBrowserWidget(Lcom/android/launcher3/PendingAddItemInfo;)V

    :cond_36
    instance-of v4, p2, Lcom/android/launcher3/card/PendingAddCardInfo;

    if-eqz v4, :cond_49

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/card/PendingAddCardInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/card/PendingAddCardInfo;->getCardConfigInfo()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_49
    const-string v5, "app_name"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v3, "size"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "name"

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_77

    const-string p2, "card"

    goto :goto_7a

    :cond_77
    const-string/jumbo p2, "widget"

    :goto_7a
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/android/common/util/LauncherUtil;->getApplicationLabelByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "application_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsAdviceCardInfo(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->appendCardInfo(Ljava/util/Map;Lcom/android/launcher3/card/LauncherCardInfo;)V

    const/4 p1, 0x0

    const-string v1, "app_recommend_card_info"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsAllAppsCount()V
    .registers 4

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, "LauncherStatistics"

    if-nez v0, :cond_d

    const-string/jumbo p0, "statsAllAppsCount, mLauncher = null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string/jumbo p0, "statsAllAppsCount, colorLauncherModel = null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    if-nez v0, :cond_25

    const-string/jumbo p0, "statsAllAppsCount, appsList = null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    iget-object v0, v0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "all_app_count"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsAppGuideCloseEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Lcom/android/statistics/LauncherStatisticsHelper;->getAppNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_app_guide_class_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "key_app_guide_package_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "key_app_guide_close_reason"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_app_guide_close"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsAppNameSize()V
    .registers 4

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const-string v1, "launcher_bubbletext_font_size"

    const-string v2, "2"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_name_size"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private statsAppStartAnimationSpeed()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "setting_app_startup_anim_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/statistics/LauncherStatisticsHelper;->getAppStartupAnimSpeedIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/statistics/LauncherStatisticsHelper;->getAppStartupAnimSpeedStatusText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_start_anim_speed"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsArtSwitchStatus(Lcom/oplus/uxicon/helper/IconConfig;)V
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    const-string p1, "on"

    goto :goto_c

    :cond_a
    const-string p1, "off"

    :goto_c
    const/4 v1, 0x0

    const-string v2, "art_switch_status"

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private statsBigFolderInfo(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_23

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_20

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_20

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {p0, v3}, Lcom/android/statistics/LauncherStatistics;->statsBigFolderItem(Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_23
    if-lez v2, :cond_38

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigFolder_all_count"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bigFolder_all_info"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_38
    return-void
.end method

.method private statsBigFolderItem(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 5

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "folder_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigFolder_item_screen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigFolder_item_cell"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigFolder_item_count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_7c

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7c

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_7e

    :cond_7c
    const-string p1, ""

    :goto_7e
    const-string v1, "bigFolder_item_pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "bigFolder_item_info"

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsClickWallpaperEntry(Ljava/lang/String;)V
    .registers 5

    const-string v0, "key_entry_name"

    const-string v1, "event_wallpaper_entry"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method private statsCustomShape(ILcom/oplus/uxicon/helper/IconConfig;)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "custom_style_shape"

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, v0}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_11
    return-void
.end method

.method private statsDaily()V
    .registers 3

    const-string v0, "LauncherStatistics"

    const-string/jumbo v1, "statsDaily."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/a;-><init>(Lcom/android/statistics/LauncherStatistics;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private statsDailyUseTimeInSeconds()V
    .registers 6

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    sub-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/statistics/LauncherStatisticsHelper;->getTotalUsageTime(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "daily_use_time"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsDockExpandSwitch()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher/settings/LauncherDockExpandFragment;->DOCK_EXPAND_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "sp_key_dock_expand_switch"

    invoke-static {v1, v3, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_dock_expand_switch_state"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsDoubleTapLockScreenSwitch()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isDoubleClickLock(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_double_tap_screen_lock_switch_state"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event_double_tap_screen_lock_switch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsFolder(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 4

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "folder_info"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsFolderAppRecommendSwitch()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isAppStorePreEnable()Z

    move-result v2

    const-string/jumbo v3, "switch_status"

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "1"

    goto :goto_1f

    :cond_1d
    const-string v1, "0"

    :goto_1f
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_23
    const-string v1, "-1"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    const/4 v1, 0x0

    const-string v2, "event_folder_recommend_switch"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsFolderCount(I)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_count"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsFolderInfo()V
    .registers 9

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherModel;->cloneBgDataModelInWorkHandler()Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v1, v0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v2, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/statistics/LauncherStatistics;->statsHotSeatApps(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/statistics/LauncherStatistics;->statsFolderCount(I)V

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsBigFolderInfo(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v2, v0

    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    :goto_34
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_5b

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v6, v5, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int/2addr v6, v2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-le v6, v4, :cond_50

    move v4, v6

    :cond_50
    invoke-direct {p0, v5}, Lcom/android/statistics/LauncherStatistics;->statsFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    iget v5, v5, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v5, :cond_58

    move v3, v7

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_5b
    if-eqz v3, :cond_60

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsFolderAppRecommendSwitch()V

    :cond_60
    invoke-direct {p0, v4}, Lcom/android/statistics/LauncherStatistics;->statsMaxFolderPages(I)V

    return-void
.end method

.method private statsHotSeatApps(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/statistics/LauncherStatisticsHelper;->filterHotSeatItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_33

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "hot_seat_apps"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsIconFallenSwitch()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "sp_key_icon_fallen_switch"

    invoke-static {v1, v3, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_icon_fallen_switch_state"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event_icon_fallen_switch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsIconSize(Lcom/oplus/uxicon/helper/IconConfig;)V
    .registers 4

    invoke-static {p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getCurrentIconSize(Lcom/oplus/uxicon/helper/IconConfig;)I

    move-result p1

    const/high16 v0, 0x40800000  # 4.0f

    invoke-static {v0, p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->getPxFromIconConfigDp(FI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "icon_size"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private statsIconStyleTheme(I)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    goto :goto_9

    :cond_8
    move p1, v1

    :goto_9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "icon_style_theme"

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private statsIconStyleUsage()V
    .registers 6

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :try_start_6
    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNativeConfiguration()Landroid/content/res/Configuration;

    move-result-object v1
    :try_end_a
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_6 .. :try_end_a} :catch_15

    :try_start_a
    invoke-static {v1}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_12
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_30

    :catch_13
    move-exception v2

    goto :goto_17

    :catch_15
    move-exception v2

    const/4 v1, 0x0

    :goto_17
    const-string v3, "getConfiguration e:"

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LauncherStatistics"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_30
    iget-object v2, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/statistics/LauncherStatistics;->statsIconStyleTheme(I)V

    invoke-direct {p0, v2, v1}, Lcom/android/statistics/LauncherStatistics;->statsThirdIconPack(ILandroid/content/res/Configuration;)V

    invoke-direct {p0, v2, v0}, Lcom/android/statistics/LauncherStatistics;->statsCustomShape(ILcom/oplus/uxicon/helper/IconConfig;)V

    invoke-direct {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsArtSwitchStatus(Lcom/oplus/uxicon/helper/IconConfig;)V

    invoke-direct {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsIconSize(Lcom/oplus/uxicon/helper/IconConfig;)V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsAppNameSize()V

    :cond_52
    return-void
.end method

.method private statsLauncherLayout()V
    .registers 6

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const-string v4, "layout_cellcount_x"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    aget v1, v1, v4

    const-string v4, "layout_cellcount_y"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launcher_layout"

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private statsLauncherLayoutLockedStatus()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "on"

    goto :goto_14

    :cond_12
    const-string v1, "off"

    :goto_14
    const-string v2, "launcher_layout_locked_status"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsLauncherModer()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherModeForString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launcher_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsLayoutIsCompact()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const-string v2, "layout_is_compact"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "on"

    goto :goto_15

    :cond_13
    const-string v1, "off"

    :goto_15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsLayoutUpgradeInfo()V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "upgrade_type"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isNewLayoutConfig()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "is_layout_upgrade"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "layout_upgrade_type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout_upgrade"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsMaxFolderPages(I)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_max_page"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsOpenDeepShortCut(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "click_deep_shortcut"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsPredictionAppSwitchStatus()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "on"

    goto :goto_14

    :cond_12
    const-string v1, "off"

    :goto_14
    const-string/jumbo v2, "show_prediction_app"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "prediction_app_switch_status"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsSearchWidgetLocation()V
    .registers 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "browser_widget_exist"

    const-string v6, "location_Y"

    const-string v7, "location_x"

    const-string v8, "screen_id"

    const-string v9, "search_widget_name"

    const-string v10, "search_widget_exist_state"

    if-eqz v4, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v11, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/statistics/LauncherStatistics;->isSearchWidgetNeedStats(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const-string v3, "1"

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {p0, v5, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_1a

    :cond_6c
    if-nez v3, :cond_86

    const-string v1, "0"

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "null"

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "-1"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_86
    return-void
.end method

.method private statsSetWallPaperSuccess()V
    .registers 3

    const-string/jumbo v0, "set_wallpaper_success"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method private statsSlideDownToWorkSpace()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slide_down_to_desktop_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "set_slide_down_to_desktop"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsThirdIconPack(ILandroid/content/res/Configuration;)V
    .registers 6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    return-void

    :cond_4
    invoke-static {p2}, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->getIconPackName(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_47

    const/4 p2, 0x0

    const/4 v0, 0x0

    :try_start_10
    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v0

    :goto_20
    if-eqz v1, :cond_32

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "icon_package_name"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "icon_pack_title"

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "third_icon_pack"

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_47
    return-void
.end method

.method private statsWallPaperType()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isLiveWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    if-eqz v1, :cond_24

    const-string v1, "dynamic_wallpaper"

    goto :goto_26

    :cond_24
    const-string v1, "normal_wallpaper"

    :goto_26
    const-string/jumbo v3, "wallpaper_type"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsWallpaperInfo()V
    .registers 14

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    const-string v3, "desktop_wallpaper_info"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_40

    iget-object v6, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2, v5, v5}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_3e

    :cond_34
    const v2, 0x7f1205af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2, v5, v5}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_3e
    move v2, v4

    goto :goto_41

    :cond_40
    move v2, v5

    :goto_41
    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->isLockScreenDisabled()Z

    move-result v6

    const/4 v7, 0x2

    const-string v8, ";"

    const-string v9, "keyguard_wallpaper_info"

    if-eqz v6, :cond_4e

    :goto_4c
    move v1, v4

    goto :goto_93

    :cond_4e
    const-string v6, "keyguard_wallpaper_statistics_settings"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_76

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    if-ne v10, v7, :cond_76

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    aget-object v11, v6, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    aget-object v6, v6, v4

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    goto :goto_78

    :cond_76
    move v6, v4

    move v10, v5

    :goto_78
    if-eqz v10, :cond_85

    const v6, 0x7f1205b0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v1, v5, v5}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4c

    :cond_85
    if-nez v6, :cond_92

    const v6, 0x7f1205b1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v1, v5, v5}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4c

    :cond_92
    move v1, v5

    :goto_93
    if-eqz v2, :cond_98

    if-eqz v1, :cond_98

    return-void

    :cond_98
    const-string v6, "current_wallpaper_name"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "default_lock_wallpaper_name"

    const-string v10, "default_wallpaper_name"

    const-string v11, "ignore_wallpaper"

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/statistics/LauncherStatisticsHelper;->getDefaultWallpaperDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/statistics/LauncherStatisticsHelper;->getDefaultWallpaperDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_f9

    :cond_bb
    const-string v12, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c6

    :goto_c3
    move-object v0, v11

    move-object v4, v0

    goto :goto_f9

    :cond_c6
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    if-eq v8, v7, :cond_ce

    goto :goto_c3

    :cond_ce
    aget-object v7, v0, v5

    aget-object v4, v0, v4

    const-string v0, "default_wallpaper"

    if-nez v2, :cond_e6

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e6

    iget-object v7, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/statistics/LauncherStatisticsHelper;->getDefaultWallpaperDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_e6
    if-nez v1, :cond_f8

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/statistics/LauncherStatisticsHelper;->getDefaultWallpaperDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_f8
    move-object v0, v7

    :goto_f9
    if-nez v2, :cond_10a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10a

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a

    invoke-direct {p0, v3, v0, v5, v5}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_10a
    if-nez v1, :cond_11b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11b

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11b

    invoke-direct {p0, v9, v4, v5, v5}, Lcom/android/statistics/LauncherStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_11b
    return-void
.end method

.method private statsWidgetAndCardInfo()V
    .registers 17

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    if-nez v3, :cond_16

    return-void

    :cond_16
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    :try_start_26
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2e} :catch_12e

    const-string/jumbo v7, "x"

    const-string/jumbo v8, "size"

    const-string v9, "application_name"

    const-string v10, "app_name"

    const-string v11, "packageName"

    if-eqz v6, :cond_88

    :try_start_3c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-nez v13, :cond_4e

    goto :goto_2a

    :cond_4e
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/util/LauncherUtil;->getApplicationLabelByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2a

    :cond_88
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8c
    :goto_8c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/card/LauncherCardInfo;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6}, Lcom/android/launcher3/card/LauncherCardInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v14

    iget v15, v6, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v14, v15}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v14

    if-eqz v13, :cond_8c

    if-nez v14, :cond_b0

    goto :goto_8c

    :cond_b0
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Lcom/android/common/util/LauncherUtil;->getApplicationLabelByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "name"

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_f6
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_f6} :catch_12e

    goto :goto_8c

    :cond_f7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "widget_count"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "card_count"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "widget_list"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_list"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "current_widget_and_card_info"

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void

    :catch_12e
    move-exception v0

    const-string/jumbo v1, "statsWidgetAndCardInfo exception:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private statsWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/statistics/LauncherStatistics;->appendCardInfo(Ljava/util/Map;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    const-string v1, "app_recommend_card_info"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public cleanRunnableQueue()V
    .registers 2

    sget-object p0, Lcom/android/statistics/LauncherStatistics;->RUNNABLE_QUEUE:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    :cond_b
    return-void
.end method

.method public getCurTimeStamp()Ljava/lang/String;
    .registers 4

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const-string v1, "LauncherStatistics"

    if-nez v0, :cond_c

    const-string p0, "onEvent. The mContext is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "other appID, onEvent. event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " info:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const-string v1, "LauncherStatistics"

    if-nez v0, :cond_c

    const-string p0, "onEvent. The mContext is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent. event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " info:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_2f

    const-string p3, "201101"

    goto :goto_31

    :cond_2f
    const-string p3, "201102"

    :goto_31
    invoke-static {p0, p3, p1, p2}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method

.method public onEventBrowser(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const-string v0, "LauncherStatistics"

    if-nez p3, :cond_c

    const-string p0, "onEventBrowser. The mContext is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventBrowser. event:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " info:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const-string p3, "2007"

    const-string v0, "other"

    invoke-static {p0, p3, v0, p1, p2}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method

.method public onOplusDcsPeriodUpload()V
    .registers 1

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsDaily()V

    return-void
.end method

.method public sendRedundantTaskInfo(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/GroupTask;

    iget-object v3, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v4, v5}, Lcom/oplus/quickstep/applock/OplusLockManager;->toFormatedLockedAppString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    if-nez v5, :cond_45

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_54

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_56

    :cond_54
    const-string v3, ""

    :goto_56
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_5a
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_62

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "pkg_name"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "activity_name"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isRedundantTask(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "filter_lock"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/applock/OplusLockManager;->isApplocked(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "locked"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "redundant_tasks"

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accept: sendRedundantTaskInfo onCommon eventId:redundant_tasks, map:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LauncherStatistics"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    :cond_e8
    return-void
.end method

.method public setHasCleaned(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/statistics/LauncherStatistics;->mHasCleaned:Z

    return-void
.end method

.method public setHasRemovedTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/statistics/LauncherStatistics;->mHasRemovedTask:Z

    iget p1, p0, Lcom/android/statistics/LauncherStatistics;->mRemovedTasks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/statistics/LauncherStatistics;->mRemovedTasks:I

    return-void
.end method

.method public setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public setLocateInformation(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "caller"

    const-string v2, "com.heytap.quicksearchbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ItemType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    if-nez v1, :cond_23

    move-object v1, v3

    goto :goto_45

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_45
    const-string v4, "ComponentName"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_7e

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_57

    move-object v1, v3

    goto :goto_79

    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_79
    const-string v2, "AppWidgetProvider"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7e
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_9a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "shortcutId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9a
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_a6

    move-object v1, v3

    goto :goto_aa

    :cond_a6
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_aa
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_cc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cardTypeId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cc
    const/4 p1, 0x1

    const-string v1, "launcher_item_locate_request"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public setToggleClickedTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/statistics/LauncherStatistics;->mToggleClickedTime:J

    return-void
.end method

.method public statBigFolderConvert(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const-string v0, "bigFolder_convert"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statBigFolderEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statBreenoExposureEvent()V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget-object v2, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v2, v3, :cond_24

    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq v2, v3, :cond_24

    const-string p0, "LauncherStatistics"

    const-string v0, "currentState is not normal or spring loading."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    new-instance v2, Lcom/android/launcher/badge/b;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher/badge/b;-><init>(Lcom/android/statistics/LauncherStatistics;ILcom/android/launcher3/OplusWorkspace;)V

    sget-object p0, Lcom/android/statistics/LauncherStatistics;->RUNNABLE_QUEUE:Ljava/util/Queue;

    invoke-interface {p0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public statCardClickEvent(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 9

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    iget-object v4, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v5

    if-eqz v5, :cond_df

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x5f

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    instance-of p1, p1, Lcom/android/launcher3/card/uscard/USCardView;

    const/16 v6, 0x7c

    if-eqz p1, :cond_52

    iget p1, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const p1, 0xd3ecf26

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_67

    :cond_52
    iget p1, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v3, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_67
    const-string p1, "component_type"

    const-string v3, "1"

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, v5, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "component_id"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "component_name"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "component_size"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "component_pose"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_da

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "statCardClickEvent"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ad

    :cond_d0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string p1, "LauncherStatistics"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_da
    const-string p1, "click_card_widget_info"

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_df
    return-void
.end method

.method public statCardExposureEvent()V
    .registers 9

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget v2, v3, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_30

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_30

    return-void

    :cond_30
    new-instance v7, Lcom/android/statistics/a;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/statistics/a;-><init>(Lcom/android/statistics/LauncherStatistics;ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;I)V

    sget-object p0, Lcom/android/statistics/LauncherStatistics;->RUNNABLE_QUEUE:Ljava/util/Queue;

    invoke-interface {p0, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public statCardValidClickEvent(Lcom/android/launcher3/card/uscard/USCardView;)V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, "LauncherStatistics"

    if-nez v0, :cond_d

    const-string/jumbo p0, "statCardValidClickEvent, mLauncher is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    if-nez p1, :cond_16

    const-string/jumbo p0, "statCardValidClickEvent, usCardView is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    iget-object v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    const-string v2, "service_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mIntentId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mPolicy:Ljava/lang/String;

    const-string v1, "policy"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "event_service_card_valid_click_jump_action"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statClearButtonLongClick()V
    .registers 4

    const-string v0, "clear_button_long_click"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statClickBlackToHome()V
    .registers 4

    const-string/jumbo v0, "touch_empty_start_home"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statContentProtectionStateChange(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendContentProtectionStateChange: pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "content_protection_pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "content_protection_state"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "centent_protection"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statEnterLockSettings()V
    .registers 4

    const-string v0, "enter_lock_settings"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statEventBrowserNewsEnterImmediate(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "statEventBrowserNewsEnterImmediate state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "event_browser_news_enter_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_id_browser_news_enter"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEventBrowser(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statEventBrowserNewsSwitchDay(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "statEventBrowserNewsSwitchDay isOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "event_browser_news_switch"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "event_id_browser_news_switch_day"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEventBrowser(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statEventBrowserNewsSwitchImmediate(ZI)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "statEventBrowserNewsSwitch isOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " form:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "event_browser_news_switch"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "event_browser_news_switch_from"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string p2, "event_id_browser_news_switch"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEventBrowser(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statEventClickBrowserNewsDialogImmediate(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "statEventClickBrowserNewsDialog isClose:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "event_browser_news_dialog_button"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "event_id_browser_news_dialog_button"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEventBrowser(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statFolderClickEvent(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 6

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->isSysFolder:Z

    if-eqz v1, :cond_f

    const-string v1, "1"

    goto :goto_11

    :cond_f
    const-string v1, "2"

    :goto_11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/String;

    const-string v3, "folder_name"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "folder_type"

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "launcher_mode"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v0, "open_folder"

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statGestureRecognitionFailed(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendGestureRecognitionFailed: orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "gesture_failed_orientation"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gesture_failed_reason"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gesture_recognition_failed"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statHasMustPlay()V
    .registers 5

    const-string v0, "has_must_play"

    const-string v1, "1"

    const-string/jumbo v2, "user_has_must_play"

    const/4 v3, 0x1

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statLaunch()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/statistics/LauncherStatistics;->mHasCleaned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "hasCleaned"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/android/statistics/LauncherStatistics;->mHasRemovedTask:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "hasRemoved"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/statistics/LauncherStatistics;->mRemovedTasks:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "removedTasks"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statisticLaunch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherStatistics"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "launch"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/statistics/LauncherStatistics;->mHasCleaned:Z

    iput-boolean v0, p0, Lcom/android/statistics/LauncherStatistics;->mHasRemovedTask:Z

    iput v0, p0, Lcom/android/statistics/LauncherStatistics;->mRemovedTasks:I

    return-void
.end method

.method public statOpenBFByClick(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const-string v0, "bigFolder_open_click"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statBigFolderEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statOpenBFByLongClick(Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    const-string v0, "bigFolder_open_long_click"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statBigFolderEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public statOpenMustPlay()V
    .registers 5

    const-string v0, "open_must_play"

    const-string v1, "1"

    const-string/jumbo v2, "user_open_must_play"

    const/4 v3, 0x1

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statPendingCardClickCard()V
    .registers 3

    const-string v0, "click"

    const-string v1, "card"

    invoke-direct {p0, v0, v1}, Lcom/android/statistics/LauncherStatistics;->statPendingCardClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statPendingCardClickPin()V
    .registers 3

    const-string v0, "click"

    const-string v1, "pin"

    invoke-direct {p0, v0, v1}, Lcom/android/statistics/LauncherStatistics;->statPendingCardClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statPendingCardLongClickCard()V
    .registers 3

    const-string v0, "long_click"

    const-string v1, "card"

    invoke-direct {p0, v0, v1}, Lcom/android/statistics/LauncherStatistics;->statPendingCardClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statRecentMemoSwitch(I)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "recent_memo_switch_status"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "statisticRecentMemoSwitch: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LauncherStatistics"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "recent_task_memo_switch_settings"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statRemoveQuickStartupApp(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRemoveQuickStartupApp: pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherStatistics"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "remove_lightning_start_app"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statScrollBigFolder(Lcom/android/launcher3/model/data/FolderInfo;II)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "folder_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bf_scroll_from"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bf_scroll_to"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string p2, "bigFolder_scroll"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statServiceCardBookAndScreenId()V
    .registers 6

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v3, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v4, 0xd3ecf26

    if-ne v3, v4, :cond_10

    iget v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service card book screen id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LauncherStatistics"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "book"

    if-ne v0, v2, :cond_4d

    const-string v0, "false"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "true+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_62
    const/4 v0, 0x0

    const-string v2, "event_service_card_use"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_68
    return-void
.end method

.method public statServiceCardClickAction(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    const-string v2, "service_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mIntentId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mPolicy:Ljava/lang/String;

    const-string v1, "policy"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_service_card_click_action"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statServiceCardClickRemove()V
    .registers 5

    const-string v0, "click"

    const-string v1, "remove"

    const-string v2, "event_service_card_click"

    const/4 v3, 0x1

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statServiceCardClickSettings()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/statistics/LauncherStatistics;->mLastClickSettingsTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/statistics/LauncherStatistics;->mLastClickSettingsTime:J

    const-string v0, "click"

    const-string/jumbo v1, "settings"

    const/4 v2, 0x0

    const-string v3, "event_service_card_settings"

    invoke-static {v0, v1, p0, v3, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    :cond_1f
    return-void
.end method

.method public statServiceCardClickUnrecommended(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "score"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    const-string v1, "service_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_service_card_unrecommended"

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statServiceCardExpose(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly2/i<",
            "Lcom/oplus/seedling/sdk/entity/StatisticsBean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "LauncherStatistics"

    if-eqz p1, :cond_9f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_9f

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "event_service_card_exposure"

    const/4 v7, 0x1

    if-ge v3, v5, :cond_8e

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly2/i;

    iget-object v8, v8, Ly2/i;->a:Ljava/lang/Object;

    check-cast v8, Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    invoke-virtual {v8}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->getServiceId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "service_id"

    invoke-virtual {v5, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/oplus/seedling/sdk/entity/StatisticsBean;->getExposeDuration()Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "duration"

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly2/i;

    iget-object v8, v8, Ly2/i;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    const v4, 0x14000

    if-le v8, v4, :cond_87

    const-string/jumbo v4, "statServiceCardExpose, mapList.size = "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",content length = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v1, v7}, Lcom/android/statistics/LauncherStatistics;->onEventBatch(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v4, v2

    goto :goto_88

    :cond_87
    move v4, v8

    :goto_88
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_8e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9b

    const-string/jumbo p0, "statServiceCardExpose, mapList.isEmpty() return "

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9b
    invoke-direct {p0, v6, v1, v7}, Lcom/android/statistics/LauncherStatistics;->onEventBatch(Ljava/lang/String;Ljava/util/List;Z)V

    return-void

    :cond_9f
    :goto_9f
    const-string/jumbo p0, "statServiceCardExpose. info is null or empty!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statServiceCardPermissionEvent()V
    .registers 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/CardPermissionManager;->getUSRelatedPermissionManager()Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_75

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasPrivacyStatusPermission()Z

    move-result v3

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasGuideStatusPermission()Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasMetisPermission()Z

    move-result v5

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasMasterStatusPermission()Z

    move-result v6

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasDeepthinkerPermission()Z

    move-result v1

    if-eqz v3, :cond_30

    if-eqz v4, :cond_30

    if-eqz v5, :cond_30

    if-eqz v6, :cond_30

    if-eqz v1, :cond_30

    const/4 v7, 0x1

    goto :goto_31

    :cond_30
    move v7, v2

    :goto_31
    const-string v8, "0"

    const-string v9, "1"

    if-eqz v3, :cond_39

    move-object v3, v9

    goto :goto_3a

    :cond_39
    move-object v3, v8

    :goto_3a
    const-string v10, "privacy_permissions_authority"

    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_43

    move-object v3, v9

    goto :goto_44

    :cond_43
    move-object v3, v8

    :goto_44
    const-string v4, "first_boot_authority"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "ums_authority"

    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_53

    move-object v3, v9

    goto :goto_54

    :cond_53
    move-object v3, v8

    :goto_54
    const-string v4, "metis_authority"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_5d

    move-object v3, v9

    goto :goto_5e

    :cond_5d
    move-object v3, v8

    :goto_5e
    const-string v4, "breeno_authority"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_67

    move-object v1, v9

    goto :goto_68

    :cond_67
    move-object v1, v8

    :goto_68
    const-string v3, "deepthinker_authority"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_70

    move-object v8, v9

    :cond_70
    const-string v1, "is_recommend_card"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    const-string v1, "fanzai_permissions_event"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statServiceCardUseActive()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/CardPermissionManager;->getUSRelatedPermissionManager()Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getHasPrivacyStatusPermission()Z

    move-result v1

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    if-eqz v1, :cond_1c

    const-string/jumbo v1, "true"

    goto :goto_1e

    :cond_1c
    const-string v1, "false"

    :goto_1e
    const-string v3, "actived"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event_service_card_use"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statStartActivityDuration(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/statistics/LauncherStatistics;->mToggleClickedTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_20
    const-string v2, ""

    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendStartActivityDuration:  duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; launchMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; startFromApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "LauncherStatistics"

    invoke-static {v3, v2, v4}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "_"

    invoke-static {p1, v5, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "recents.%s %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HM_APP_AVG"

    invoke-static {v4, v3}, Lcom/android/common/debug/DebugLogPUtils;->logP(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "start_activity_duration"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "start_activity_method"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "start_activity_from_app"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "launch_time_consuming"

    invoke-virtual {p0, p1, v0, v5}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statStartApp(Ljava/lang/String;)V
    .registers 5

    const-string v0, "from"

    const-string/jumbo v1, "start_app_from_task"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statStartAppFromDock()V
    .registers 2

    const-string v0, "dock"

    invoke-virtual {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statStartApp(Ljava/lang/String;)V

    return-void
.end method

.method public statStartAppFromTask()V
    .registers 2

    const-string/jumbo v0, "task"

    invoke-virtual {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statStartApp(Ljava/lang/String;)V

    return-void
.end method

.method public statUsingPageIndicatorPressDragging()V
    .registers 4

    const-string v0, "LauncherStatistics"

    const-string v1, "sendUsingPageIndicatorPressDragging"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_indicator_pressdrag_usage"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statUsingSideGestures(II)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "side_gestures_guide_origin"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "side_gestures_guide_result"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendUsingSideGestures: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherStatistics"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "side_gestures_guide"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statWidgetClickEvent(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V
    .registers 10

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    iget-object v4, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p1

    if-eqz p1, :cond_e6

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x5f

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v3, v7}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "component_type"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "component_id"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetNameByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "component_name"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "component_size"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "component_pose"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "widget_package"

    invoke-virtual {v2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/android/common/util/LauncherUtil;->getApplicationLabelByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "widget_name"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "statWidgetClickEvent:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b4

    :cond_d7
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string p1, "LauncherStatistics"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e1
    const-string p1, "click_card_widget_info"

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_e6
    return-void
.end method

.method public statWidgetExposureEvent()V
    .registers 9

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget v2, v3, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_30

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_30

    return-void

    :cond_30
    new-instance v7, Lcom/android/statistics/a;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/statistics/a;-><init>(Lcom/android/statistics/LauncherStatistics;ILcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/model/BgDataModelHelper;Ljava/util/Map;I)V

    sget-object p0, Lcom/android/statistics/LauncherStatistics;->RUNNABLE_QUEUE:Ljava/util/Queue;

    invoke-interface {p0, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public statWidgetsAndCardsExposure()V
    .registers 3

    :goto_0
    sget-object v0, Lcom/android/statistics/LauncherStatistics;->RUNNABLE_QUEUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_18
    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statCardExposureEvent()V

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statWidgetExposureEvent()V

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statBreenoExposureEvent()V

    return-void
.end method

.method public statsAddShortcutFailed(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/common/util/LauncherUtil;->getApplicationLabelByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "application_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "add_shortcut_fail"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAddWidgetOrShortcut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/common/util/LauncherUtil;->getApplicationLabelByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "application_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "type"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "add_widget_or_shortcut"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAdviceCardInfo()V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/uioverrides/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/quickstep/uioverrides/a;-><init>(Lcom/android/statistics/LauncherStatistics;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/uioverrides/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/uioverrides/a;-><init>(Lcom/android/statistics/LauncherStatistics;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public statsAdviceCardRemove(Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    :cond_8
    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/android/launcher/AppAdviceCheck;->isAppAdviceCard(I)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->appendCardInfo(Ljava/util/Map;Lcom/android/launcher3/card/LauncherCardInfo;)V

    const/4 p1, 0x1

    const-string v1, "app_recommend_card_remove"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAdviceReinstall(IZLjava/lang/String;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "reinstall_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "reinstall_result"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1c

    const-string/jumbo p3, "success"

    :cond_1c
    const-string p1, "reinstall_reason"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object p1

    const-string p2, "event_time"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p4}, Lcom/android/statistics/LauncherStatistics;->appendCardInfo(Ljava/util/Map;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    const/4 p1, 0x1

    const-string p2, "app_recommend_card_reinstall"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAdviceReinstallExceptionalCase(IILjava/lang/String;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "reinstall_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "reinstall_result"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reinstall_reason"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->getCurTimeStamp()Ljava/lang/String;

    move-result-object p1

    const-string p2, "event_time"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p4}, Lcom/android/statistics/LauncherStatistics;->appendCardInfo(Ljava/util/Map;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    const-string p1, "app_recommend_card_reinstall"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAppChangedToInstalled(Ljava/lang/String;)V
    .registers 5

    const-string v0, "packageName"

    const-string v1, "app_change_to_installed_state"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsAppChangedToInstalling(Ljava/lang/String;)V
    .registers 5

    const-string v0, "packageName"

    const-string v1, "app_change_to_installing_state"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsAppGuideClickCard(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const-string v0, "click_card"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statsAppGuideCloseEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideClickClose(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const-string v0, "click_close"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statsAppGuideCloseEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideClickIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const-string v0, "click_icon"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statsAppGuideCloseEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideClickOutSide(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const-string v0, "click_outside"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statsAppGuideCloseEvent(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public statsAppGuideShow(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getAppNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_app_guide_class_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_app_guide_package_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_app_guide_show"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsAppLostDetect(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_lost_reason"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app_lost_package"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_lost_user"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "app_lost_detect"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsBatchAddAppToWorkspace()V
    .registers 5

    const-string v0, "batch_add_app_to_workspace_count"

    const-string v1, "1"

    const-string v2, "batch_add_app_to_workspace"

    const/4 v3, 0x1

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsBatchDrag()V
    .registers 3

    const-string v0, "batch_drag"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsBottomSearchWidgetLocation()V
    .registers 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    if-nez v2, :cond_e

    return-void

    :cond_e
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v7, "launcher_search_box_status"

    const-string v8, "location_Y"

    const-string v9, "location_x"

    const-string v10, "screen_id"

    const-string v11, "is_bottom_widget"

    const-string v12, "1"

    const-string v13, "search_widget_exist_state"

    const-string v14, "-1"

    if-eqz v5, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v15, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    sget-object v6, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v6, v15}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomSearchWidget(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {v1, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, v1, v3}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    const/4 v4, 0x1

    goto :goto_1c

    :cond_68
    sget-object v2, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    iget-object v5, v0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->isBottomEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {v1, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, v1, v3}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    const/4 v4, 0x1

    :cond_85
    if-nez v4, :cond_9b

    const-string v2, "0"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, v1, v3}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_9b
    return-void
.end method

.method public statsBranchClickSuggestLink()V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getSuggestLinkCount(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    if-eqz v0, :cond_37

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gaid"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "event_branch_click_suggest_link"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->setSuggestLinkCount(Landroid/content/Context;Z)V

    :cond_37
    return-void
.end method

.method public statsBranchInit()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gaid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "event_branch_sdk_init"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_20
    return-void
.end method

.method public statsBranchSearch()V
    .registers 5

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getSearchCount(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    if-eqz v0, :cond_37

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->getGAID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gaid"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "event_branch_navigator_search"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->setSearchCount(Landroid/content/Context;Z)V

    :cond_37
    return-void
.end method

.method public statsClickAppEdit()V
    .registers 3

    const-string v0, "event_click_app_edit"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickAppEditResult()V
    .registers 3

    const-string v0, "event_click_app_edit_result"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickAppInfo(Ljava/lang/String;)V
    .registers 5

    const-string v0, "packageName"

    const-string v1, "click_shortcut_info"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickBottomSearch()V
    .registers 3

    const-string v0, "click_bottom_search"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickDeepShortcutOnPopupWindow(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_13

    const-string v2, ""

    goto :goto_1b

    :cond_13
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1b
    const-string v3, "packageName"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "shortcut_name"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "click_shortcut_other_link"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_31
    return-void
.end method

.method public statsClickDisbandFolder()V
    .registers 3

    const-string v0, "event_click_disband_folder"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickDrawerAppSort(I)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    if-nez p1, :cond_e

    const-string p1, "drawer_app_sort_click_alphabetic"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_1e

    :cond_e
    if-ne p1, v1, :cond_16

    const-string p1, "drawer_app_sort_click_install_time"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_1e

    :cond_16
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1e

    const-string p1, "drawer_app_sort_click_user_frequency"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public statsClickEffectSetEntrance()V
    .registers 3

    const-string v0, "click_effect_set_entrance"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickInstallIconInDownloading(Ljava/lang/String;)V
    .registers 5

    const-string v0, "packageName"

    const-string v1, "click_icon_in_downloading_state"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickInstallIconInPaused(Ljava/lang/String;)V
    .registers 5

    const-string v0, "packageName"

    const-string v1, "click_icon_in_paused_state"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickPredictionApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_15

    goto :goto_1a

    :cond_15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1a
    :goto_1a
    const-string p1, " "

    :goto_1c
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "click_prediction_app"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickSearchEntry()V
    .registers 3

    const-string v0, "click_search_entry"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickSearchEntrySwitch(Z)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "on"

    goto :goto_c

    :cond_a
    const-string p1, "off"

    :goto_c
    const-string v1, "click_result"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "click_search_entry_switch"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickSearchResultApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_15

    goto :goto_1a

    :cond_15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1a
    :goto_1a
    const-string p1, " "

    :goto_1c
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "click_search_result_app"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickSettingSetEntrance()V
    .registers 3

    const-string v0, "click_setting_set_entrance"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickToAddBrowserWidget(Lcom/android/launcher3/PendingAddItemInfo;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    const-string v2, ""

    if-nez v1, :cond_d

    move-object v1, v2

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_11
    const-string v3, "packageName"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez p1, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :goto_1f
    const-string p1, "app_name"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "click_to_add_browser_widget"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsClickToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 3

    const-string v0, "click_to_add_widget"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statsAddWidget(Ljava/lang/String;Lcom/android/launcher3/PendingAddItemInfo;)V

    return-void
.end method

.method public statsClickWallpaperEntryArt()V
    .registers 2

    const-string v0, "art"

    invoke-direct {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsClickWallpaperEntry(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickWallpaperEntryCreation()V
    .registers 2

    const-string v0, "creation"

    invoke-direct {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsClickWallpaperEntry(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickWallpaperEntryLive()V
    .registers 2

    const-string v0, "live"

    invoke-direct {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsClickWallpaperEntry(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickWallpaperEntryOther()V
    .registers 2

    const-string v0, "other"

    invoke-direct {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsClickWallpaperEntry(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickWallpaperEntryStatic()V
    .registers 2

    const-string/jumbo v0, "static"

    invoke-direct {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsClickWallpaperEntry(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickWallpaperSetEntrance()V
    .registers 3

    const-string v0, "click_wallpaper_set_entrance"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickWidgetSetEntrance()V
    .registers 3

    const-string v0, "click_widget_set_entrance"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsClickWidgetSetting(Z)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "0"

    goto :goto_c

    :cond_a
    const-string p1, "1"

    :goto_c
    const-string v1, "is_bottom_widget"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "click_dock_settings"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsCloseSuperPowerSaveModeBattery(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "super_power_save_battery"

    const-string v1, "close_super_power_save_battery"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsDeepShortCut(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 10

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_bc

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_bc

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_11

    goto/16 :goto_bc

    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_66

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.nearme.instant.platform"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.nearme.quickapp.center"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    move v4, v1

    goto :goto_4f

    :cond_42
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gamecenter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v4, 0x2

    :cond_4f
    :goto_4f
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "quickapp_type"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickapp_id"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v1

    :cond_66
    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "packageName"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "app_name"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "app_location"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "is_quickapp_info"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_b4

    const-string p1, "click_deep_shortcut"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_bb

    :cond_b4
    if-ne p2, v1, :cond_bb

    const-string p1, "remove_deep_shortcut"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_bb
    :goto_bb
    return-void

    :cond_bc
    :goto_bc
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_ca

    const-string p0, "AppIconShortcutStatisticsManager"

    const-string/jumbo p1, "statsOpenDeepShortCut : stats fail"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    return-void
.end method

.method public statsDeployWhenWorkProfileBYOD()V
    .registers 3

    const-string v0, "deploy_workprofile_byod"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsDownloadingToPausedByMarket(Ljava/lang/String;)V
    .registers 5

    const-string v0, "packageName"

    const-string v1, "downloading_to_paused_by_market"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsDragAppToWorkspaceFromDrawer(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_13

    const-string p1, " "

    goto :goto_19

    :cond_13
    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_19
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "drag_app_to_workspace_from_drawer"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsDragShortcutToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "drag_shortcut_to_workspace"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_18
    return-void
.end method

.method public statsEnterDrawer()V
    .registers 3

    const-string v0, "enter_drawer"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsEnterToggleBarState(Ljava/lang/String;)V
    .registers 5

    const-string v0, "enter_edit_state_way"

    const-string v1, "enter_edit_state"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsEventPhoneManagerEntranceClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mPhoneMangerEntranceStatisticsManager:Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;->statsEventPhoneManagerEntranceClick()V

    return-void
.end method

.method public statsEventPhoneManagerEntranceDisplay()V
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/LauncherStatistics;->mPhoneMangerEntranceStatisticsManager:Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneMangerEntranceStatisticsManager;->statsPhoneManagerEntranceDisplay()V

    return-void
.end method

.method public statsEventWidgetControl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "LauncherStatistics"

    const-string/jumbo v1, "statsWidgetToastShow"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "widget_control_component"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "widget_control_toast"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "widget_control"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsGenerateFolder(Ljava/lang/String;)V
    .registers 5

    const-string v0, "folder_name"

    const-string v1, "generate_folder"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsIconFallenComplete()V
    .registers 3

    const-string v0, "event_icon_fallen_complete"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsIconShimmer(Ljava/lang/String;)V
    .registers 5

    const-string v0, "packageName"

    const-string v1, "icon_flash"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsItemClick(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v0, :cond_b

    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_4a

    :cond_b
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_45

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_32

    invoke-virtual {v0, p1}, Lcom/android/launcher/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->canShowDot()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v1, 0x2

    goto :goto_32

    :cond_29
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->canShowBadgeNumber()Z

    move-result v0

    if-eqz v0, :cond_32

    move v1, v2

    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3b

    const-string v0, ""

    goto :goto_3f

    :cond_3b
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/statistics/LauncherStatistics;->statsOpenApp(Ljava/lang/String;II)V

    goto :goto_4a

    :cond_45
    if-ne v0, v2, :cond_4a

    invoke-virtual {p0, p1, v1}, Lcom/android/statistics/LauncherStatistics;->statsDeepShortCut(Lcom/android/launcher3/model/data/ItemInfo;I)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public statsLongClickToAddWidget(Lcom/android/launcher3/PendingAddItemInfo;)V
    .registers 3

    const-string v0, "long_click_to_add_widget"

    invoke-direct {p0, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statsAddWidget(Ljava/lang/String;Lcom/android/launcher3/PendingAddItemInfo;)V

    return-void
.end method

.method public statsLongClickWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetNameByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "long_click_widget"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsMemoryWatchDog(Ljava/lang/String;)V
    .registers 5

    const-string v0, "memWatchDog"

    const-string v1, "event_memory_watchdog"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsMoveAppToThumbInPagePreviewMode(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_15

    goto :goto_1a

    :cond_15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1a
    :goto_1a
    const-string p1, " "

    :goto_1c
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "move_app_to_thumb_in_page_preview_mode"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsMoveBatchItemToThumbFailedInPagePreviewMode()V
    .registers 3

    const-string v0, "move_batch_item_to_thumb_failed_in_page_preview_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsMoveItemToAnotherPageInPreviewMode()V
    .registers 3

    const-string v0, "move_item_to_another_page_in_preview_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsMoveItemToCurPageInPreviewMode()V
    .registers 3

    const-string v0, "move_item_to_page_in_preview_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsMoveItemToThumbFailedInPagePreviewMode()V
    .registers 3

    const-string v0, "move_item_to_thumb_failed_in_page_preview_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsMoveWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetNameByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "move_widget"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsMoveWidgetToAnotherPageInPreviewMode()V
    .registers 3

    const-string v0, "move_widget_to_another_page_in_preview_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsMoveWidgetToCurPageInPreviewMode()V
    .registers 3

    const-string v0, "move_widget_to_page_in_preview_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsMoveWidgetToThumbInPagePreviewMode(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetNameByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "move_widget_to_thumb_in_page_preview_mode"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsOpOTAResult(ZLjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_18

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const/4 p1, 0x1

    const-string/jumbo p2, "upgrade_os12_data_compatible"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsOpenApp(Ljava/lang/String;II)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "item_container"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "badge_status"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "open_app"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsOpenSuperPowerSaveModeBattery(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "super_power_save_battery"

    const-string v1, "open_super_power_save_battery"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsOpenWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 5

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isBrowserWidgetBuriedPoint()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.heytap.browser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetClassByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "open_browser_app_by_widget"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_31
    return-void
.end method

.method public statsPullDownToSearch()V
    .registers 3

    const-string v0, "pull_down_to_search"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsPullUpPage()V
    .registers 8

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string p0, "LauncherStatistics"

    const-string v0, "context is null, stat gsearch times failed"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const-string v2, "open"

    const-string v3, "is_pull_up_gsearch"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_52

    const-string v1, "open_google_search_times"

    invoke-static {v0, v1, v5}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v4, v5

    :goto_30
    if-eqz v4, :cond_76

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "count"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v0, :cond_47

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v5}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_47
    const-string v0, "on"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event_pull_up_google_search"

    invoke-virtual {p0, v0, v3, v5}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_76

    :cond_52
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_6c

    const-string v0, "1"

    goto :goto_6e

    :cond_6c
    const-string v0, "0"

    :goto_6e
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event_pull_up_page"

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_76
    :goto_76
    return-void
.end method

.method public statsRecommendFolderOpenDynamic(I)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "open"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_folder_recommend_open"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsRemoveAppFromWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez p1, :cond_15

    goto :goto_1a

    :cond_15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1a
    :goto_1a
    const-string p1, " "

    :goto_1c
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "remove_app_from_workspace"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsRemoveBrowserWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isBrowserWidgetBuriedPoint()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.heytap.browser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsRemoveBrowserWidgetFromWorkspace(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :cond_17
    return-void
.end method

.method public statsRemoveBrowserWidgetFromWorkspace(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetClassByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "remove_browser_widget_from_workspace"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsRemoveWidgetFromWorkspace(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isBrowserWidgetBuriedPoint()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetPkgByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.heytap.browser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsRemoveBrowserWidgetFromWorkspace(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :cond_25
    invoke-static {p1}, Lcom/android/statistics/LauncherStatisticsHelper;->getWidgetNameByItemInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "remove_widget_from_workspace"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsRenameFolder(Ljava/lang/String;)V
    .registers 5

    const-string v0, "folder_name"

    const-string v1, "rename_folder"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsSearchEntrySwitchStatus()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/LauncherStatistics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/search/SearchEntry;->isSwitchEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "on"

    goto :goto_12

    :cond_10
    const-string v1, "off"

    :goto_12
    const-string v2, "key_search_entry_switch_status"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "search_entry_switch_status"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSearchWidgetsExposeInCellLayout(Lcom/android/launcher3/OplusCellLayout;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->WIDGET:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/OplusCellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_4f

    :cond_17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/IAreaWidget;

    instance-of v2, v1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v2, :cond_1b

    check-cast v1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getItemInfo()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/statistics/LauncherStatistics;->isSearchWidgetNeedStats(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "search_widget_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "browser_widget_expose"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_1b

    :cond_4f
    :goto_4f
    return-void
.end method

.method public statsServiceDeclareClick(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "select"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "version"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_branch_click_service_declare"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSetWallpaperInDesktop(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "wallpaper_name"

    const-string/jumbo v1, "set_wallpaper_in_desktop"

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/android/statistics/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/statistics/LauncherStatistics;->statsSetWallPaperSuccess()V

    return-void
.end method

.method public statsShortcutSetting(Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_10

    const-string/jumbo p1, "yes"

    goto :goto_12

    :cond_10
    const-string p1, "no"

    :goto_12
    const-string p2, "enable_shortcut"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string/jumbo p2, "shortcut_setting"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSlideCrossOverPage()V
    .registers 3

    const-string/jumbo v0, "slide_cross_over_page"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsSlideStart(Lcom/android/launcher3/pullup/PullUpStatisticBean;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpStatisticBean;->getTraceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "traceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpStatisticBean;->getStartTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher3/pullup/PullUpStatisticBean;->getStartResult()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "startResult"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "slide_start"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSuperPowerSaveUsageTime(J)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "super_power_save_usage_time"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSwitchPageInPreviewState()V
    .registers 3

    const-string/jumbo v0, "switch_page_in_preview_state"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/statistics/c;->a(Lcom/android/statistics/LauncherStatistics;Ljava/lang/String;Z)V

    return-void
.end method

.method public statsUSLoadFailCard(Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsUninstallApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "uninstall_type"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "uninstall_count"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "uninstall_app"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsUninstallAppWindowClose(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "app_name"

    const-string v3, "packageName"

    const-string v4, ""

    if-nez v1, :cond_18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x19

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x19

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v1, :cond_5b

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v8}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v1, -0x1

    const-string v10, ","

    if-ge v7, v9, :cond_46

    move-object v11, v10

    goto :goto_47

    :cond_46
    move-object v11, v4

    :goto_47
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/statistics/LauncherStatisticsHelper;->getAppNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v9, :cond_54

    goto :goto_55

    :cond_54
    move-object v10, v4

    :goto_55
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_5b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_69
    const-string/jumbo p1, "uninstall_type"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "uninstall_app_window_close"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsUninstallAppWindowPopup(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ""

    const-string v3, "packageName"

    if-nez v1, :cond_13

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v1, :cond_3c

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v6}, Lcom/android/statistics/LauncherStatisticsHelper;->getPkgNameByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_35

    const-string v6, ","

    goto :goto_36

    :cond_35
    move-object v6, v2

    :goto_36
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_43
    const-string/jumbo p1, "uninstall_type"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "uninstall_app_window_popup"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsWidgetFixedShortcutClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "LauncherStatistics"

    const-string v1, "Click the Settings shortcut menu in the plug-in to report the points."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "shortcut_title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "target_package"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "widget_provider"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "widget_fixed_shortcut_clicked"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsWidgetLongClick(Z)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string v1, "is_bottom_widget"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string v1, "long_click_dock_widget"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/statistics/LauncherStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
