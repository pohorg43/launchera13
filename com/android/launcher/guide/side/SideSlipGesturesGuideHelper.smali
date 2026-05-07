.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG:Z = false

.field private static final GESTURE_ORIGIN_BOOT_REG:I = 0x4

.field private static final GESTURE_ORIGIN_CLONE_PHONE:I = 0x1

.field private static final GESTURE_ORIGIN_FIRST_BOOT_UP:I = 0x0

.field private static final GESTURE_ORIGIN_OTA_UPGRADE:I = 0x2

.field private static final GESTURE_ORIGIN_SETTINGS:I = 0x3

.field private static final GESTURE_UP_MODE_AVAILABLE:I = 0x0

.field private static final GESTURE_UP_MODE_FORBID:I = 0x1

.field private static final INTENT_NAV_GESTURES_GUIDE_COMPLETE:Ljava/lang/String; = "com.android.launcher.action.NAV_GESTURES_GUIDE_FINISHED"

.field private static final INVALID_SETTINGS_VALUE:I = -0x1

.field private static final KEY_JUST_SHOW_GESTURES_GUIDE:Ljava/lang/String; = "is_just_show_gestures_guide"

.field private static final KEY_NAV_BAR_SETTINGS_GESTURE_UP_AVAILABLE:Ljava/lang/String; = "navbarsettings_gestureup_available"

.field private static final KEY_ORIGIN:Ljava/lang/String; = "origin"

.field private static final KEY_SHARED_PREFERENCE_FIRST_LAUNCHED:Ljava/lang/String; = "side_gestures_first_launched"

.field private static final KEY_START_TYPE:Ljava/lang/String; = "start_type"

.field private static final KEY_SYSTEM_GESTURE_ENABLED:Ljava/lang/String; = "system_gesture_enabled"

.field private static final KEY_TOGGLE:Ljava/lang/String; = "edge_panel_toggle"

.field private static final NAV_STATE_SWIPE_SIDE_GESTURE:I = 0x3

.field private static final NAV_STATE_SWIPE_UP_GESTURE:I = 0x2

.field private static final NAV_STATE_VIRTUAL_KEY:I = 0x0

.field private static final NAV_STATE_VIRTUAL_KEY_AND_HIDE:I = 0x1

.field private static final OPLUS_BACKUPRESTORE_PACKAGENAME:Ljava/lang/String;

.field private static final SHOW_SIDE_GESTURES_GUIDE:Ljava/lang/String; = "show_side_gestures_guide"

.field private static final SURPPORT_MIN_SDK_SUB_VERSION:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SideSlipGesturesGuideHelper"

.field private static final TOGGLE_OFF:I = 0x0

.field private static final TOGGLE_ON:I = 0x1

.field private static sDisableHomeMenuKey:Z

.field private static sIsLauncherFirstLoad:Z

.field private static sIsNavStateSwipeSide:Z

.field private static sIsSideGesturesRunning:Z

.field private static sStartGuideOrigin:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const v0, 0x7f120043

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->OPLUS_BACKUPRESTORE_PACKAGENAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsSideGesturesRunning:Z

    const/4 v1, -0x1

    sput v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sStartGuideOrigin:I

    sput-boolean v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsLauncherFirstLoad:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsNavStateSwipeSide:Z

    sput-boolean v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sDisableHomeMenuKey:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableGesturesGuideHomeMenuKey(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sDisableHomeMenuKey:Z

    return-void
.end method

.method public static disableStatusBarExpand(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "SideSlipGesturesGuideHelper"

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_35

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-nez p0, :cond_20

    const-string p0, "disableStatusBarExpand: statusBarManager is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "disableStatusBarExpand: disable = "

    invoke-static {v1, p1, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_2b
    if-eqz p1, :cond_30

    const/high16 p1, 0x10000

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    return-void

    :cond_35
    :goto_35
    const-string p0, "disableStatusBarExpand: context is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static disableToggleState(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->getToggleState(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->saveToggleState(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setToggleState(Landroid/content/Context;I)V

    return-void
.end method

.method public static enableSystemGestures(Landroid/app/Activity;Z)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "system_gesture_enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "enableSystemGestures enable:"

    const-string v5, "; currentEnabled = "

    const-string v6, "SideSlipGesturesGuideHelper"

    invoke-static {v4, p1, v5, v3, v6}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_26

    if-nez v3, :cond_26

    invoke-static {p0, v1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0, v2, v2, v2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideSlipEnable(Landroid/app/Activity;ZZZ)V

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->restoreNavState(Landroid/content/Context;)V

    goto :goto_40

    :cond_26
    if-nez p1, :cond_40

    if-eqz v3, :cond_40

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->restoreNavState(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->getNavState(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->saveNavState(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideGestures(Landroid/content/Context;)V

    const-string p1, "enableSystemGestures false oldNavState:"

    invoke-static {p1, p0, v6}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public static enableWindowHomeMenuKey(Landroid/app/Activity;Z)V
    .registers 5

    const-string v0, "SideSlipGesturesGuideHelper"

    if-nez p0, :cond_a

    const-string p0, "enableWindowHomeMenuKey: activity is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_16

    const-string p0, "enableWindowHomeMenuKey: window is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    if-eqz p1, :cond_1b

    sget p1, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    goto :goto_1d

    :cond_1b
    sget p1, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    :goto_1d
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    :try_start_21
    invoke-static {v1}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->getHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    if-eq v2, p1, :cond_34

    invoke-static {v1, p1}, Lcom/oplus/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception p0

    const-string p1, "enableWindowHomeMenuKey e: "

    invoke-static {p1, p0, v0}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public static getNavState(Landroid/content/Context;)I
    .registers 3

    const-string v0, "hide_navigationbar_enable"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    return v1

    :cond_13
    return p0
.end method

.method private static getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    const-string v0, "SideSlipGesturesGuideHelper"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecureIntValue key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; ret = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    const-string p0, "getSecureIntValue error"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public static getToggleState(Landroid/content/Context;)I
    .registers 3

    const-string v0, "edge_panel_toggle"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    return v1

    :cond_d
    return p0
.end method

.method public static isDisableGesturesGuideHomeMenuKey()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sDisableHomeMenuKey:Z

    return v0
.end method

.method public static isFirstLaunched(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "side_gestures_first_launched"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isHideNotUsing()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsLauncherFirstLoad:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsNavStateSwipeSide:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isHideSkipMenu()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSideGesturesRunning()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsSideGesturesRunning:Z

    return v0
.end method

.method public static isSwipeUpGestures(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "hide_navigationbar_enable"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isUserSetupComplete(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public static notifyFinished(Landroid/content/Context;)V
    .registers 4

    if-eqz p0, :cond_1b

    sget-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->OPLUS_BACKUPRESTORE_PACKAGENAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.NAV_GESTURES_GUIDE_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_23

    :cond_1b
    const-string p0, "SideSlipGesturesGuideHelper"

    const-string/jumbo v0, "notifyFinished, context == null, should not happen"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public static reStartGuidePage(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isSideGesturesRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->isJustShowGuide()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->startGuidePage(Landroid/content/Context;)V

    :cond_13
    return-void
.end method

.method public static restoreNavState(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "side_gestures_nav_state"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_14

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setNavState(Landroid/content/Context;I)V

    invoke-static {p0, v2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->saveNavState(Landroid/content/Context;I)V

    :cond_14
    return-void
.end method

.method public static restoreToggleState(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "edge_panel_toggle"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_13

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setToggleState(Landroid/content/Context;I)V

    invoke-static {p0, v2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->saveToggleState(Landroid/content/Context;I)V

    :cond_13
    return-void
.end method

.method public static saveNavState(Landroid/content/Context;I)V
    .registers 3

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "side_gestures_nav_state"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveToggleState(Landroid/content/Context;I)V
    .registers 3

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "edge_panel_toggle"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFirstLaunched(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "side_gestures_first_launched"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFullScreen(Landroid/app/Activity;Z)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x400

    if-eqz p1, :cond_15

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1e

    :cond_15
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, p1, 0x400

    if-ne v2, v1, :cond_1e

    xor-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static setNavState(Landroid/content/Context;I)V
    .registers 3

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    goto :goto_11

    :cond_c
    const-string v0, "hide_navigationbar_enable"

    invoke-static {p0, v0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_11
    return-void
.end method

.method private static setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const-string v0, "SideSlipGesturesGuideHelper"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecureIntValue key = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; defaultValue = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    const-string/jumbo p0, "setSecureIntValue error"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method

.method public static setShowGuidePageDone(Landroid/content/Context;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "SideSlipGesturesGuideHelper"

    const-string/jumbo v1, "setShowGuidePageDone"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setFirstLaunched(Landroid/content/Context;Z)V

    const/4 v1, 0x1

    const-string/jumbo v2, "show_side_gestures_guide"

    invoke-static {p0, v2, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/android/launcher/guide/BaseNavGesturesHelper;->needShowGuidePage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string/jumbo v1, "show_navigation_gestures_guide"

    invoke-static {p0, v1, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_22
    sget-boolean v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsLauncherFirstLoad:Z

    if-eqz v0, :cond_29

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->notifyFinished(Landroid/content/Context;)V

    :cond_29
    return-void
.end method

.method public static setSideGestures(Landroid/content/Context;)V
    .registers 3

    const-string v0, "hide_navigationbar_enable"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSideGesturesRunning(Z)V
    .registers 3

    const-string/jumbo v0, "setSideGesturesRunning isRunning = "

    const-string v1, "SideSlipGesturesGuideHelper"

    invoke-static {v0, p0, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sput-boolean p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsSideGesturesRunning:Z

    return-void
.end method

.method public static setSideSlipEnable(Landroid/app/Activity;ZZZ)V
    .registers 15

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v1, "SideSlipGesturesGuideHelper"

    if-nez v0, :cond_f

    const-string/jumbo p0, "setSideSlipEnable error,display is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x21

    const/16 v4, 0x1b

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-lt v3, v4, :cond_2b

    const/16 v3, 0x14

    const/16 v4, 0x14

    if-lt v3, v4, :cond_2b

    goto :goto_5e

    :cond_2b
    const/16 v3, 0x21

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_5e

    :try_start_31
    const-string v3, "com.oplus.view.OplusWindowAttributesManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setBackGestureRestriction"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/view/Window;

    aput-object v9, v8, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v0, v8, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v10

    invoke-virtual {v4, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_56} :catch_57

    goto :goto_5e

    :catch_57
    move-exception v3

    const-string/jumbo v4, "setBackGestureRestriction e="

    invoke-static {v4, v3, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    if-eqz p1, :cond_ae

    if-eqz p2, :cond_70

    if-eqz p3, :cond_70

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/Window;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_be

    :cond_70
    if-eqz p2, :cond_87

    if-nez p3, :cond_87

    new-instance p0, Landroid/graphics/Rect;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v3, 0x2

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v4, v7, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_be

    :cond_87
    if-nez p2, :cond_9d

    if-eqz p3, :cond_9d

    new-instance p0, Landroid/graphics/Rect;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v3, v6

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_be

    :cond_9d
    new-instance p0, Landroid/graphics/Rect;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_be

    :cond_ae
    new-instance p0, Landroid/graphics/Rect;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_be
    const-string/jumbo p0, "setSideSlipEnable: "

    const-string v3, " ,LeftEnable: "

    const-string v4, " ,RightEnable:"

    invoke-static {p0, p1, v3, p2, v4}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\nWidth:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , Height:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\nExclusionRects="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Window;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSideSlipEnable(Landroid/content/Context;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    invoke-static {p0, v1, v1, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideSlipEnable(Landroid/content/Context;ZZZ)V

    goto :goto_12

    :cond_8
    const/4 v2, 0x2

    if-ne p1, v2, :cond_f

    invoke-static {p0, v1, v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideSlipEnable(Landroid/content/Context;ZZZ)V

    goto :goto_12

    :cond_f
    invoke-static {p0, v0, v0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideSlipEnable(Landroid/content/Context;ZZZ)V

    :goto_12
    return-void
.end method

.method public static setSideSlipEnable(Landroid/content/Context;ZZZ)V
    .registers 5

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_a

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideSlipEnable(Landroid/app/Activity;ZZZ)V

    goto :goto_12

    :cond_a
    const-string p0, "SideSlipGesturesGuideHelper"

    const-string/jumbo p1, "setSideSlipEnable error! because activity is null !"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public static setStatusBarTransparent(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080659

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, -0x80000000

    invoke-virtual {v0, p0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 p0, p0, 0x200

    or-int/lit16 p0, p0, 0x1000

    invoke-virtual {v1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static setSwipeUpGestureShow(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isSwipeUpGestures(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    xor-int/lit8 p1, p1, 0x1

    const-string/jumbo v0, "navbarsettings_gestureup_available"

    invoke-static {p0, v0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSystemIntValue(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    const-string p0, "SideSlipGesturesGuideHelper"

    const-string/jumbo p1, "setSystemIntValue error"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public static setToggleState(Landroid/content/Context;I)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    :cond_6
    const-string v0, "edge_panel_toggle"

    invoke-static {p0, v0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_b
    return-void
.end method

.method public static showGestureViewIfNeeded(Landroid/content/Context;)V
    .registers 2

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->showGestureViewIfNeeded(Landroid/content/Context;I)V

    return-void
.end method

.method public static showGestureViewIfNeeded(Landroid/content/Context;I)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    :cond_3
    sput p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sStartGuideOrigin:I

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->restoreToggleState(Landroid/content/Context;)V

    const-string/jumbo p1, "show_side_gestures_guide"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    move p1, v1

    goto :goto_16

    :cond_15
    move p1, v0

    :goto_16
    const-string/jumbo v2, "showGestureViewIfNeeded hasShowSideGesturesGuide = "

    const-string v3, "SideSlipGesturesGuideHelper"

    invoke-static {v2, p1, v3}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v2, 0x2

    const-string v4, "hide_navigationbar_enable"

    const/4 v5, 0x3

    if-nez p1, :cond_ca

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->isLauncherFirstLoad(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsLauncherFirstLoad:Z

    if-eqz p1, :cond_30

    invoke-static {p0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setFirstLaunched(Landroid/content/Context;Z)V

    goto :goto_36

    :cond_30
    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isFirstLaunched(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsLauncherFirstLoad:Z

    :goto_36
    sget-boolean p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsLauncherFirstLoad:Z

    const/4 v6, -0x1

    if-eqz p1, :cond_a2

    invoke-static {p0}, Lcom/android/launcher/guide/BaseNavGesturesHelper;->needShowGuidePage(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_63

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p1, :cond_59

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isSwipeUpGestures(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_61

    const-string p1, "Exp version, clone phone, swipe up gesture"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsNavStateSwipeSide:Z

    sget p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sStartGuideOrigin:I

    if-ne p1, v6, :cond_8b

    sput v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sStartGuideOrigin:I

    goto :goto_8b

    :cond_59
    const-string p1, "first load and no need show guide page"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setShowGuidePageDone(Landroid/content/Context;)V

    :cond_61
    move v1, v0

    goto :goto_8b

    :cond_63
    invoke-static {p0, v4, v5}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const-string v2, "first load isExp:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isExp:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " navState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v5, :cond_85

    sput-boolean v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsNavStateSwipeSide:Z

    :cond_85
    sget p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sStartGuideOrigin:I

    if-ne p1, v6, :cond_8b

    sput v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sStartGuideOrigin:I

    :cond_8b
    :goto_8b
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p1

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p1, v2, :cond_b6

    const-string p1, "first load, we should not show learning gesture notification when nav mode is not gesture"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oplus/quickstep/learning/NotificationHelper;->updatePreference(Landroid/content/Context;)V

    goto :goto_b6

    :cond_a2
    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isSwipeUpGestures(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b5

    sget p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sStartGuideOrigin:I

    if-ne p1, v6, :cond_ae

    sput v2, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sStartGuideOrigin:I

    :cond_ae
    const-string/jumbo p1, "ota upgrade or clone phone, swipe up gesture"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6

    :cond_b5
    move v1, v0

    :cond_b6
    :goto_b6
    sget-boolean p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sIsLauncherFirstLoad:Z

    if-nez p1, :cond_df

    const-string/jumbo p1, "ota upgrade or clone phone, we should not show learning gesture notification"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oplus/quickstep/learning/NotificationHelper;->updatePreference(Landroid/content/Context;)V

    goto :goto_df

    :cond_ca
    invoke-static {p0, v4, v5}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const-string v4, "hasShowSideGesturesGuide navState = "

    invoke-static {v4, p1, v3}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-ne p1, v2, :cond_de

    const-string/jumbo p1, "swipe up gesture, show settings"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSwipeUpGestureShow(Landroid/content/Context;Z)V

    :cond_de
    move v1, v0

    :cond_df
    :goto_df
    const-string/jumbo p1, "needShowGuidePage :"

    const-string v2, " sStartGuideOrigin:"

    invoke-static {p1, v1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v2, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sStartGuideOrigin:I

    invoke-static {p1, v2, v3}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz v1, :cond_f3

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->startGuidePage(Landroid/content/Context;)V

    goto :goto_f6

    :cond_f3
    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setFirstLaunched(Landroid/content/Context;Z)V

    :goto_f6
    return-void
.end method

.method public static startGuidePage(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->isJustShowGuide()Z

    move-result v0

    sget v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->sStartGuideOrigin:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->startGuidePage(Landroid/content/Context;ILjava/lang/Integer;Z)V

    return-void
.end method

.method public static startGuidePage(Landroid/content/Context;ILjava/lang/Integer;Z)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGuidePage isJustShowGuide:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; startType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SideSlipGesturesGuideHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_37

    const-string/jumbo p1, "start_type"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_37
    const-string p1, "is_just_show_gestures_guide"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const p1, 0x10008000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    check-cast p0, Landroid/app/Activity;

    const p1, 0x7f01003c

    const p3, 0x7f01002d

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_51

    goto :goto_6f

    :catch_51
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "startGuidePageType type:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6f
    return-void
.end method

.method public static startGuidePage(Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->startGuidePage(Landroid/content/Context;ILjava/lang/Integer;Z)V

    return-void
.end method
