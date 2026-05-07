.class public final Lcom/android/launcher/togglebar/ToggleBarUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_CARD_STORE:Ljava/lang/String; = "com.oplus.cardStore.ACTION_CARD_STORE"

.field public static final ACTION_WALLPAPER_CATEGORY_SETTINGS:Ljava/lang/String; = "com.android.launcher.action.WALLPAPER_CATEGORY_SETTINGS"

.field public static final CARD_STORE_GROUP_ID_KEY:Ljava/lang/String; = "group_id_key"

.field public static final CARD_STORE_HOST_KEY:Ljava/lang/String; = "host_key"

.field public static final DEFAULT_HOST_VALUE:I = 0x1

.field private static final GO_TOGGLE_STATE_PREFIX:Ljava/lang/String; = "ToggleBar"

.field public static final INSTANCE:Lcom/android/launcher/togglebar/ToggleBarUtils;

.field private static final INTENT_EXTRA_BACK_ACTION:Ljava/lang/String; = "back_action"

.field private static final INTENT_EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final KEY_WALLPAPER_SETTING:Ljava/lang/String; = "key_from"

.field private static final PACKAGE_ASSISTANT_SCREEN:Ljava/lang/String;

.field public static final PERCENT_SCROLL_TOGGLE_TOOL_BAR:F = 0.3f

.field public static final REQUEST_CODE_FOR_BACK_ACTION:I = 0x2712

.field public static final REQUEST_CODE_FOR_CARD_PERMISSION:I = 0x2715

.field public static final REQUEST_CODE_FOR_CARD_STORE:I = 0x2716

.field public static final REQUEST_CODE_FOR_CARD_STORE_BACK_ACTION:I = 0x2717

.field public static final REQUEST_CODE_FOR_ICON_STYLE:I = 0x2714

.field public static final REQUEST_CODE_FOR_SETTINGS:I = 0x2711

.field public static final REQUEST_CODE_FOR_WALLPAPER:I = 0x2713

.field public static final REQUEST_CODE_FOR_WALLPAPER_CATEGORY_SETTINGS_BACK_ACTION:I = 0x2718

.field public static final SYNC_EVENT_EXIT_CARD_STORE:I = 0x1

.field public static final SYNC_EVENT_START_PANEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ToggleBarUtils"

.field private static final UX_PERSONAL_ACTION:Ljava/lang/String; = "com.oplus.uxdesign.personal.ACTION_LAUNCH_PERSONAL"

.field private static final UX_PERSONAL_PACKAGE:Ljava/lang/String; = "com.oplus.uxdesign"

.field private static final VALUE_WALLPAPER_SETTING:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/togglebar/ToggleBarUtils;

    invoke-direct {v0}, Lcom/android/launcher/togglebar/ToggleBarUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/ToggleBarUtils;->INSTANCE:Lcom/android/launcher/togglebar/ToggleBarUtils;

    const v0, 0x7f1203d7

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/togglebar/ToggleBarUtils;->PACKAGE_ASSISTANT_SCREEN:Ljava/lang/String;

    const v0, 0x7f12004e

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/togglebar/ToggleBarUtils;->VALUE_WALLPAPER_SETTING:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/Launcher;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/togglebar/ToggleBarUtils;->resolveStateByNewIntent$lambda-4(Lcom/android/launcher/Launcher;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final allowToToggleBar(Lcom/android/launcher3/Launcher;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeLongPressLauncherDisabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public static final fromNormalToToggleBar(Lcom/android/launcher/Launcher;Lcom/android/launcher3/LauncherState;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method private final getBackPackageNameByAction(Ljava/lang/String;Lcom/android/launcher/Launcher;)Ljava/lang/String;
    .registers 3

    const-string p0, "com.oplus.uxdesign.personal.ACTION_LAUNCH_PERSONAL"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "com.oplus.uxdesign"

    return-object p0

    :cond_b
    const-string p0, "com.oplus.cardStore.ACTION_CARD_STORE"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Lcom/android/launcher/togglebar/ToggleBarUtils;->PACKAGE_ASSISTANT_SCREEN:Ljava/lang/String;

    return-object p0

    :cond_16
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final handleBackAction(Ljava/lang/String;Lcom/android/launcher/Launcher;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oplus.cardStore.ACTION_CARD_STORE"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_25

    :cond_20
    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_25
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/launcher/togglebar/ToggleBarUtils;->VALUE_WALLPAPER_SETTING:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "key_from"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_35
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_49

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "host_key"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_49
    sget-object v2, Lcom/android/launcher/togglebar/ToggleBarUtils;->INSTANCE:Lcom/android/launcher/togglebar/ToggleBarUtils;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->getBackPackageNameByAction(Ljava/lang/String;Lcom/android/launcher/Launcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_52
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/16 v2, 0x2717

    goto :goto_68

    :cond_5b
    const-string v2, "com.android.launcher.action.WALLPAPER_CATEGORY_SETTINGS"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const/16 v2, 0x2718

    goto :goto_68

    :cond_66
    const/16 v2, 0x2712

    :goto_68
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    const v0, 0x7f01000c

    const v2, 0x7f01000d

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_7a} :catch_7b

    goto :goto_87

    :catch_7b
    move-exception v0

    const-string v2, "Not fount the activity, "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ToggleBarUtils"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    :goto_87
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9b

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    if-nez p0, :cond_98

    goto :goto_9b

    :cond_98
    invoke-virtual {p0, v3}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->onBackPressed(Z)Z

    :cond_9b
    :goto_9b
    return v3
.end method

.method public static final handleToToggleBarForFolder(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/Folder;)Z
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->allowToToggleBar(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-eq v0, v3, :cond_32

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->isAnimateClosing()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isProtectAppsFolder(Lcom/android/launcher3/folder/Folder;)Z

    move-result p1

    if-nez p1, :cond_32

    move p1, v1

    goto :goto_33

    :cond_32
    move p1, v2

    :goto_33
    if-eqz p1, :cond_63

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p1, :cond_63

    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/LauncherAssetManager;->reloadCategoryMapIfNeeded()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    const/16 v3, 0x45

    const-wide/16 v4, 0x32

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    const-string p1, "long_click"

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsEnterToggleBarState(Ljava/lang/String;)V

    return v1

    :cond_63
    return v2
.end method

.method public static final isGoingToggleBarAnimation(Lcom/android/launcher/Launcher;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "setter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->fromNormalToToggleBar(Lcom/android/launcher/Launcher;Lcom/android/launcher3/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_1d

    instance-of p0, p2, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public static final isToggleBarState(Lcom/android/launcher3/LauncherState;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public static final needProxyStarter(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x13461c1

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2715

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2716

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2717

    if-eq p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static final onDragStart(Lcom/android/launcher/Launcher;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->setupCancelButtonState()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public static final resolveStateByNewIntent(Lcom/android/launcher/Launcher;Landroid/content/Intent;Lcom/android/systemui/plugins/shared/LauncherOverlayManager;)Ljava/lang/Runnable;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_9

    return-object v0

    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    const-string v3, "intent_from"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "open_hidden_folder"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isWakeUpByBroadcast()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->setWakeUpByBroadcastFlag(Z)V

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_43
    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->showVirtualFolderIfNeeded(Lcom/android/launcher/Launcher;)V

    :cond_4a
    sget-object v1, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    const-string/jumbo v3, "state"

    invoke-virtual {v1, p1, v3}, Lcom/android/common/util/IntentUtils$Companion;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_a9

    :cond_5c
    const-string v4, "_"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v3, v4, v2, v2, v5}, Lp3/k;->z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x1

    if-nez v4, :cond_7b

    move v4, v5

    goto :goto_7c

    :cond_7b
    move v4, v2

    :goto_7c
    if-nez v4, :cond_a8

    aget-object v4, v3, v2

    const-string v6, "ToggleBar"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    goto :goto_a8

    :cond_89
    const-string v0, "back_action"

    invoke-virtual {v1, p1, v0}, Lcom/android/common/util/IntentUtils$Companion;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_92

    goto :goto_a2

    :cond_92
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isForceInvisible()Z

    move-result v0

    if-nez v0, :cond_9f

    move v2, v5

    :cond_9f
    invoke-interface {p2, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    :goto_a2
    new-instance p2, Lcom/android/launcher/z;

    invoke-direct {p2, p0, v3, p1}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher/Launcher;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_a8
    :goto_a8
    return-object v0

    :cond_a9
    :goto_a9
    const-string p0, "OLauncher"

    const-string/jumbo p1, "resolveStateByNewIntent but state is null "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final resolveStateByNewIntent$lambda-4(Lcom/android/launcher/Launcher;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$stateInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {v0, p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/android/common/util/OplusLauncherDbUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    return-void

    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_31

    const-string p1, "OLauncher"

    const-string p2, "launcher is MultiWindowMode, can\'t go to ToggleBar"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1202a9

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_31
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3c

    aget-object p1, p1, v1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    :goto_3d
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->gotoToggleBarOnLauncherNewIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final startCardStoreActivity(Lcom/android/launcher/Launcher;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    goto :goto_e

    :cond_3
    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarUtils;->INSTANCE:Lcom/android/launcher/togglebar/ToggleBarUtils;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->getCardStoreIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_e
    return-void
.end method

.method public static final stringValueOfState(Ljava/lang/String;Lcom/android/launcher/Launcher;)Lcom/android/launcher/togglebar/state/ToggleBarBaseState;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "stateString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4dd9466f

    if-eq v0, v1, :cond_3e

    const v1, -0x422504d6

    if-eq v0, v1, :cond_2f

    const v1, -0x2ef8a5bc

    if-eq v0, v1, :cond_1f

    goto :goto_46

    :cond_1f
    const-string/jumbo v0, "widget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_46

    :cond_29
    new-instance p0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;-><init>(Lcom/android/launcher/Launcher;)V

    goto :goto_5d

    :cond_2f
    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_46

    :cond_38
    new-instance p0, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;-><init>(Lcom/android/launcher/Launcher;)V

    goto :goto_5d

    :cond_3e
    const-string v0, "effect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    :goto_46
    new-instance v0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    invoke-direct {v0, p1}, Lcom/android/launcher/togglebar/state/ToggleBarMainState;-><init>(Lcom/android/launcher/Launcher;)V

    const-string p1, "gotoToggleBarOnLauncherNewIntent -- stateString = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToggleBarUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_5d

    :cond_58
    new-instance p0, Lcom/android/launcher/togglebar/state/ToggleBarEffectState;

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/state/ToggleBarEffectState;-><init>(Lcom/android/launcher/Launcher;)V

    :goto_5d
    return-object p0
.end method


# virtual methods
.method public final getCardStoreIntent()Landroid/content/Intent;
    .registers 3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "host_key"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.cardStore.ACTION_CARD_STORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method
