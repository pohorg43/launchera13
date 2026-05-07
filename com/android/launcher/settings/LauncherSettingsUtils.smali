.class public final Lcom/android/launcher/settings/LauncherSettingsUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANIMATION_OFF_VALUE:Ljava/lang/String;

.field private static final ANIMATION_ON_VALUE:Ljava/lang/String;

.field private static final CUSTOM_BUSINESS_DISABLED:I = 0x1

.field private static final CUSTOM_BUSINESS_ENABLE:I = 0x0

.field public static final INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

.field public static final IS_ADD_APP_TO_WORKSPACE_FOR_DRAWER_MODE:Ljava/lang/String; = "is_add_app_to_workspace_for_drawer_mode"

.field public static final IS_DOUBLE_CLICK_LOCK:Ljava/lang/String; = "is_double_click_lock"

.field public static final IS_FIRST_USE_PULL_UP_GSEARCH:Ljava/lang/String; = "is_first_use_pull_up_gsearch"

.field public static final IS_FIRST_USE_PULL_UP_GSEARCH_DEFAULT_VALUE:Z = true

.field public static final IS_KEY_UPDATE_DOT_SWITCH_STATE:Ljava/lang/String; = "update_dot_switch_state"

.field public static final IS_LAUNCHER_LAYOUT_LOCKED:Ljava/lang/String; = "is_launcher_layout_locked"

.field public static final IS_LAYOUT:Ljava/lang/String; = "layout"

.field public static final IS_LAYOUT_CELLCOUNT_X:Ljava/lang/String; = "layout_cellcount_x"

.field public static final IS_LAYOUT_CELLCOUNT_Y:Ljava/lang/String; = "layout_cellcount_y"

.field public static final IS_LAYOUT_IS_COMPACT:Ljava/lang/String; = "layout_is_compact"

.field public static final IS_PULL_UP_GSEARCH:Ljava/lang/String; = "is_pull_up_gsearch"

.field public static final IS_PULL_UP_GSEARCH_DEFAULT_VALUE:Z = true

.field public static final IS_SHOW_INDICATED_APP_FOR_DRAWER_MODE:Ljava/lang/String; = "is_show_indicated_app_for_drawer_mode"

.field public static final IS_SHOW_INPUTMETHOD_IN_DRAWER_SWITCH:Ljava/lang/String; = "show_inputmethod_in_drawer_switch"

.field public static final LAUNCHER_LAYOUT_PARAMETER:Ljava/lang/String; = "launcher_layout_parameter"

.field private static final LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

.field public static final LAYOUT_ICON_SIZE:Ljava/lang/String; = "layout_icon_size"

.field private static final MODE_NAVIGATIONBAR_GESTURE:I = 0x2

.field private static final MODE_NAVIGATIONBAR_GESTURE_EXT:I = 0x3

.field private static final NOTIFICATION_CENTER_DISABLED_STATE:Ljava/lang/String; = "persist.sys.customize.notification_disable"

.field public static final OPEN_GOOGLE_SEARCH_TIMES:Ljava/lang/String; = "open_google_search_times"

.field public static final OPEN_GOOGLE_SEARCH_TIMES_VALUE:I = 0x0

.field public static final OVER_SCROLL_TOAST_TIMES:Ljava/lang/String; = "over_scroll_toast_times"

.field private static final PACKAGE_SEARCH_NEW:Ljava/lang/String; = "com.heytap.quicksearchbox"

.field private static final PACKAGE_SEARCH_OLD:Ljava/lang/String; = "com.android.quicksearchbox"

.field private static final SEARCH_GLOBAL_DISABLED_STATE:Ljava/lang/String; = "launcher_slide_search_disable"

.field public static final SLIDE_DOWN_TYPE_NOTIFICATION_CENTER_OLD:I = 0x1

.field public static final SLIDE_DOWN_TYPE_NO_SET_OLD:I = -0x1

.field public static final SLIDE_DOWN_TYPE_SEARCH_OR_SHELF_OLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LauncherSettingsUtils"

.field private static final TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-direct {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    const-string v0, "1"

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->ANIMATION_ON_VALUE:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->ANIMATION_OFF_VALUE:Ljava/lang/String;

    const-string/jumbo v0, "window_animation_scale"

    const-string/jumbo v1, "transition_animation_scale"

    const-string v2, "animator_duration_scale"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    const-string v0, "content://com.android.launcher.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->syncLauncherArrangementModeStatus$lambda-0(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static final adjustNavigationBar(Landroid/app/Activity;Landroid/view/View;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isGestureNavigation(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "LauncherSettingsUtils"

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_64

    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit16 v3, v3, 0x200

    or-int/lit16 v3, v3, 0x100

    or-int/lit16 v3, v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-nez p1, :cond_3c

    const-string p1, "adjustNavigationBar view null "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    invoke-virtual {p1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance v0, Lcom/android/launcher/settings/g;

    invoke-direct {v0, p0}, Lcom/android/launcher/settings/g;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustNavigationBar activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " view "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_64
    :goto_64
    const-string v0, "adjustNavigationBar gesture not "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_73

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_73
    return-void
.end method

.method private static final adjustNavigationBar$lambda-4(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isGestureNavigation(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "LauncherSettingsUtils"

    if-nez p0, :cond_25

    const-string p0, "adjustNavigationBar onApplyWindowInsets gesture not "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustNavigationBar onApplyWindowInsets top "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method public static synthetic b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/widget/RemoveWidgetDialog;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/settings/LauncherSettingsUtils;->showAreaWidgetDeleteConfirmPanel$lambda-3(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/widget/RemoveWidgetDialog;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->adjustNavigationBar$lambda-4(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static final callProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LauncherSettingsUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_7c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_7c

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher/settings/LauncherSettingsUtils;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1d} :catch_30
    .catchall {:try_start_13 .. :try_end_1d} :catchall_2d

    if-eqz v2, :cond_26

    :try_start_1f
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_23} :catch_24
    .catchall {:try_start_1f .. :try_end_23} :catchall_6c

    goto :goto_26

    :catch_24
    move-exception p2

    goto :goto_32

    :cond_26
    :goto_26
    if-nez v2, :cond_29

    goto :goto_65

    :cond_29
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_65

    :catchall_2d
    move-exception p0

    move-object p1, v1

    goto :goto_6f

    :catch_30
    move-exception p2

    move-object v2, v1

    :goto_32
    :try_start_32
    const-string v3, "callProvider try again, remoteException = "

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_6c

    :try_start_3b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/android/launcher/settings/LauncherSettingsUtils;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_45} :catch_4e
    .catchall {:try_start_3b .. :try_end_45} :catchall_6c

    if-eqz p0, :cond_59

    :try_start_47
    invoke-virtual {p0, p1, v1, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4b} :catch_4c
    .catchall {:try_start_47 .. :try_end_4b} :catchall_66

    goto :goto_59

    :catch_4c
    move-exception p1

    goto :goto_50

    :catch_4e
    move-exception p1

    move-object p0, v1

    :goto_50
    :try_start_50
    const-string p2, "callProvider remoteExceptionAgain = "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_66

    :cond_59
    :goto_59
    if-nez v2, :cond_5c

    goto :goto_5f

    :cond_5c
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :goto_5f
    if-nez p0, :cond_62

    goto :goto_65

    :cond_62
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :goto_65
    return-object v1

    :catchall_66
    move-exception p1

    move-object v1, v2

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_6f

    :catchall_6c
    move-exception p0

    move-object p1, v1

    move-object v1, v2

    :goto_6f
    if-nez v1, :cond_72

    goto :goto_75

    :cond_72
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :goto_75
    if-nez p1, :cond_78

    goto :goto_7b

    :cond_78
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    :goto_7b
    throw p0

    :cond_7c
    :goto_7c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "callProvider context = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", methodName = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final checkLauncherLockedAndToast(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f1202a3

    invoke-static {p0, v0}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic getANIMATION_OFF_VALUE$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getANIMATION_ON_VALUE$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static final getOverScrollToastTimes(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "over_scroll_toast_times"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getSearchApkName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_b

    const-string p0, "LauncherSettingsUtils"

    const-string v0, "getSearchApkName, the context is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x7f120420

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const v0, 0x7f120472

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getTOGGLE_ANIMATION_TARGETS$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static final initNavigationBar(Landroid/content/Context;Landroid/view/Window;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit8 p0, p0, 0x10

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2f
    return-void
.end method

.method public static final initToolbarWindow(Landroid/app/Activity;ZZ)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_46

    if-nez p2, :cond_5

    goto :goto_46

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const-string v0, "activity.getWindow()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f050022

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_36

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 p0, p0, 0x100

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_3f

    :cond_36
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 p0, p0, 0x2000

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_3f
    if-eqz p1, :cond_46

    const/high16 p0, -0x80000000

    invoke-virtual {p2, p0}, Landroid/view/Window;->addFlags(I)V

    :cond_46
    :goto_46
    return-void
.end method

.method public static final isAccessibilityDynamicEffectDisabled(Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "LauncherSettingsUtils"

    const-string v1, "isAccessibilityDynamicEffectDisabled, context is null!"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsUtils;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :cond_f
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/launcher/settings/LauncherSettingsUtils;->ANIMATION_OFF_VALUE:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_27

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static final isAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isDefaultAddNewAppsToWorkspaceInDrawerMode()Z

    move-result v0

    const-string v1, "is_add_app_to_workspace_for_drawer_mode"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isCustomNotificationCenterDisabled(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "LauncherSettingsUtils"

    const-string v1, "isCustomNotificationCenterDisabled, context is null!"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    invoke-static {p0}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeNotificationCenterDisabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_13

    return v1

    :cond_13
    sget-object p0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {p0}, Lcom/android/common/config/FeatureOption;->isBusinessCustom()Z

    move-result p0

    if-nez p0, :cond_1c

    return v0

    :cond_1c
    const-string/jumbo p0, "persist.sys.customize.notification_disable"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "get(NOTIFICATION_CENTER_DISABLED_STATE)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_39

    move v0, v1

    :cond_39
    return v0
.end method

.method public static final isCustomSearchGlobalDisabled(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "LauncherSettingsUtils"

    const-string v1, "isCustomSearchGlobalDisabled, context is null!"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    invoke-static {}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeSearchBoxDisabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    sget-object v1, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v1}, Lcom/android/common/config/FeatureOption;->isBusinessCustom()Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "launcher_slide_search_disable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_29

    move v0, v2

    :cond_29
    return v0
.end method

.method public static final isDoubleClickLock(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "is_double_click_lock"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isGestureNavigation(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "hide_navigationbar_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    const/4 v1, 0x3

    if-ne p0, v1, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public static final isLayoutCompact(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout_is_compact"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isLayoutLocked(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "is_launcher_layout_locked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "is_show_indicated_app_for_drawer_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isShowUpdateDot(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "update_dot_switch_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isSupportAppUpdateDot()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    return v0
.end method

.method public static final setOverScrollToastTimes(Landroid/content/Context;I)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "over_scroll_toast_times"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static final setSlideDownTypeForSimpleModeOTA131(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "launcher_slide_down_type_simple"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result v2

    if-eqz v2, :cond_34

    if-ne v0, v1, :cond_34

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x5

    :goto_1b
    const-string v1, "launcher_slide_down_type"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownTypeWithCheck(Landroid/content/Context;I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "setSlideDownType valueBeforeVer130, value is "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherSettingsUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method public static final showAreaWidgetDeleteConfirmPanel(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    sget-object v1, Lcom/android/launcher/widget/RemoveWidgetDialog;->Companion:Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;

    invoke-virtual {v1, p0}, Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;->getDialog(Lcom/android/launcher/Launcher;)Lcom/android/launcher/widget/RemoveWidgetDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher/widget/RemoveWidgetDialog;->setIsCard(Z)V

    instance-of v2, p1, Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz v2, :cond_24

    const v2, 0x7f12044c

    invoke-virtual {v1, v2}, Lcom/android/launcher/widget/RemoveWidgetDialog;->setMessageTv(I)V

    :cond_24
    if-eqz v0, :cond_2a

    const v2, 0x7f12044e

    goto :goto_2d

    :cond_2a
    const v2, 0x7f120450

    :goto_2d
    new-instance v3, Lcom/android/launcher/settings/h;

    invoke-direct {v3, p2, v1, p0, p1}, Lcom/android/launcher/settings/h;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/widget/RemoveWidgetDialog;Lcom/android/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher/widget/RemoveWidgetDialog;->setNeutralButton(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher/widget/RemoveWidgetDialog;->show(Z)V

    return-void
.end method

.method private static final showAreaWidgetDeleteConfirmPanel$lambda-3(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/widget/RemoveWidgetDialog;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/view/View;)V
    .registers 12

    const-string p4, "$dialog"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$launcher"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p4, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v0, 0x0

    if-eqz p4, :cond_13

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    if-nez v1, :cond_17

    goto :goto_25

    :cond_17
    iget v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const v2, 0xd3ecf26

    if-ne v1, v2, :cond_25

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/statistics/LauncherStatistics;->statServiceCardClickRemove()V

    :cond_25
    :goto_25
    instance-of v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_2c

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    :cond_2c
    if-nez v0, :cond_2f

    goto :goto_3f

    :cond_2f
    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v1, -0x64

    if-gt v0, v1, :cond_3f

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsRemoveWidgetFromWorkspace(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZ)Z

    move-result p3

    if-eqz p3, :cond_5c

    if-eqz p4, :cond_5c

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p2

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p2, p0}, Lcom/android/statistics/LauncherStatistics;->statsAdviceCardRemove(Lcom/android/launcher3/card/LauncherCardInfo;)V

    :cond_5c
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_60
    return-void
.end method

.method private static final syncLauncherArrangementModeStatus$lambda-0(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public final getANIMATION_OFF_VALUE()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsUtils;->ANIMATION_OFF_VALUE:Ljava/lang/String;

    return-object p0
.end method

.method public final getANIMATION_ON_VALUE()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsUtils;->ANIMATION_ON_VALUE:Ljava/lang/String;

    return-object p0
.end method

.method public final getTOGGLE_ANIMATION_TARGETS()[Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsUtils;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    return-object p0
.end method

.method public final isLauncherLayoutLocked(Landroid/content/Context;)Z
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "is_launcher_layout_locked"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final setAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;Z)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "is_add_app_to_workspace_for_drawer_mode"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final setLauncherLayoutLocked(Landroid/content/Context;Z)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "is_launcher_layout_locked"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final setShowIndicatedAppForDrawerMode(Landroid/content/Context;Z)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "is_show_indicated_app_for_drawer_mode"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final syncLauncherArrangementModeStatus(Z)V
    .registers 6

    const-string p0, "LauncherSettingsUtils"

    :try_start_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2a

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/keyguardservice/a;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/android/keyguardservice/a;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_33

    :cond_2a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    :goto_33
    const/4 v0, 0x0

    if-eqz p1, :cond_45

    new-instance v1, Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;-><init>(Landroid/content/Context;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4c

    :cond_45
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher/layout/LayoutUtilsManager;->saveIsCompact(Landroid/content/Context;Z)V

    :goto_4c
    const-string/jumbo v0, "syncLauncherArrangementModeStatus isArrangement = "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5a} :catch_5b

    goto :goto_66

    :catch_5b
    move-exception p1

    const-string/jumbo v0, "syncLauncherArrangementModeStatus,Exception :"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_66
    return-void
.end method
