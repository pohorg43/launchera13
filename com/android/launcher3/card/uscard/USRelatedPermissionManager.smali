.class public final Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$Companion;

.field private static final DEEPTHINKER_PERFERENCE_KEY:Ljava/lang/String; = "deep_thinker_key"

.field private static final DEEPTHINKER_PERMISSION_STATUS:Ljava/lang/String; = "key_com_oplus_deepthinker"

.field private static final DELAY_FOR_PERMISSION_CHANGE:J = 0x12cL

.field private static final METIS_PERFERENCE_KEY:Ljava/lang/String; = "key_metis"

.field public static final METIS_PERMISSION_STATUS:Ljava/lang/String; = "metis_strengthen_service_toggle"

.field private static final TAG:Ljava/lang/String; = "USRelatedPermissionManager"

.field private static final UMS_PERFERENCE_KEY:Ljava/lang/String; = "key_com_oplus_pantanal_ums"

.field private static final UMS_PERMISSION_STATUS:Ljava/lang/String; = "key_com_oplus_pantanal_ums"

.field public static final XIAO_BU_ADVICE_AUTHORITIES:Ljava/lang/String; = "com.oplus.advice.settings"

.field private static final XIAO_BU_ADVICE_MASTER_STATUS_URI:Landroid/net/Uri;

.field private static final XIAO_BU_ADVICE_PERMISSION_GUIDE_STATUS_URI:Landroid/net/Uri;

.field private static final XIAO_BU_ADVICE_PRIVACY_STATUS_URI:Landroid/net/Uri;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private hasAssistantScreenGuiderConfigPermission:Z

.field private hasDeepthinkerPermission:Z

.field private hasGuideStatusPermission:Z

.field private hasInitStates:Z

.field private hasMasterStatusPermission:Z

.field private hasMetisPermission:Z

.field private hasPrivacyStatusPermission:Z

.field private hasUMSPermission:Z

.field private final launcher:Lcom/android/launcher3/Launcher;

.field private final mDeepthinkerObserver:Landroid/database/ContentObserver;

.field private final mMetisObserver:Landroid/database/ContentObserver;

.field private mPendingInitForUserLock:Z

.field private mPendingRefresh:Z

.field private final mUMSObserver:Landroid/database/ContentObserver;

.field private final mXiaoBuGuiderConfigObserver:Landroid/database/ContentObserver;

.field private final mXiaoBuMasterStatusObserver:Landroid/database/ContentObserver;

.field private final mXiaoBuPermissionGuideStatusObserver:Landroid/database/ContentObserver;

.field private final mXiaoBuPrivacyStatusObserver:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->Companion:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$Companion;

    const-string v0, "content://com.oplus.advice.settings/master_switch_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_MASTER_STATUS_URI:Landroid/net/Uri;

    const-string v0, "content://com.oplus.advice.settings/personal_privacy_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_PRIVACY_STATUS_URI:Landroid/net/Uri;

    const-string v0, "content://com.oplus.advice.settings/seedling_permission_guide_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_PERMISSION_GUIDE_STATUS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/launcher3/Launcher;)V
    .registers 4

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    sget-object p1, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_MASTER_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMasterStatusPermission:Z

    sget-object p1, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_PRIVACY_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasPrivacyStatusPermission:Z

    sget-object p1, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_PERMISSION_GUIDE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasGuideStatusPermission:Z

    const-string p1, "key_metis"

    invoke-static {p2, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMetisPermission:Z

    const-string p1, "deep_thinker_key"

    invoke-static {p2, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasDeepthinkerPermission:Z

    const-string p1, "key_com_oplus_pantanal_ums"

    invoke-static {p2, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasUMSPermission:Z

    sget-object p1, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasAssistantScreenGuiderConfigPermission:Z

    const-string p1, "USRelatedPermissionManager"

    const-string p2, "init checkAllPermissionAllowed"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->checkAllPermissionAllowed(Z)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mUMSObserver$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mUMSObserver$1;-><init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mUMSObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mMetisObserver$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mMetisObserver$1;-><init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mMetisObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mDeepthinkerObserver$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mDeepthinkerObserver$1;-><init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mDeepthinkerObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuGuiderConfigObserver$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuGuiderConfigObserver$1;-><init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuGuiderConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuMasterStatusObserver$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuMasterStatusObserver$1;-><init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuMasterStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuPrivacyStatusObserver$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuPrivacyStatusObserver$1;-><init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuPrivacyStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuPermissionGuideStatusObserver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager$mXiaoBuPermissionGuideStatusObserver$1;-><init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuPermissionGuideStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->registerPermissionObserver$lambda-4(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V

    return-void
.end method

.method public static final synthetic access$refreshUSCardContainer(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->refreshUSCardContainer()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->refreshUSCardContainer$lambda-2$lambda-1()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->refreshUSCardContainer$lambda-3(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V

    return-void
.end method

.method private final checkAllPermissionAllowed(Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasDeepthinkerPermission:Z

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMetisPermission:Z

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasUMSPermission:Z

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasPrivacyStatusPermission:Z

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMasterStatusPermission:Z

    if-eqz p1, :cond_1d

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasGuideStatusPermission:Z

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    if-eqz p0, :cond_35

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo p1, "refreshUSCardContainer, onReady = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "USRelatedPermissionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/seed/StatisticsRecorder;->Companion:Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;->reportRequestPushEvent()V

    :cond_35
    return-void
.end method

.method private final refreshUSCardContainer()V
    .registers 7

    sget-object v0, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->getUSCardContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    iput-boolean v2, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mPendingRefresh:Z

    return-void

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mPendingRefresh:Z

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    const-string v3, "USRelatedPermissionManager"

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardManager;->getUSCardContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;

    move-result-object p0

    if-nez p0, :cond_1e

    goto :goto_40

    :cond_1e
    const-string/jumbo v0, "refreshUSCardContainer task was posted"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/e;->d:Lcom/android/common/util/e;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_40

    :cond_2a
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/card/uscard/f;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/card/uscard/f;-><init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;I)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo p0, "refreshUSCardContainer failed , uSCardContainer == null，need to retry"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    return-void
.end method

.method private static final refreshUSCardContainer$lambda-2$lambda-1()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    sget-object v1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardManager;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/seed/SeedCardClient;->useRecommendList(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method private static final refreshUSCardContainer$lambda-3(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->refreshUSCardContainer()V

    return-void
.end method

.method private static final registerPermissionObserver$lambda-4(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->registerAssistantScreenGuiderConfigObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->registerMasterStatusPermissionObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->registerPrivacyStatusPermissionObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->registerPermissionGuideStatusObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->registerDeepthinkerPermissionObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->registerMetisPermissionObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->registerUMSPermissionObserver()V

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->initPermissionState()V

    goto :goto_40

    :cond_35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setMPendingInitForUserLock(Z)V

    const-string p0, "USRelatedPermissionManager"

    const-string v0, "initPermissionState failed, user unlocked"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    return-void
.end method


# virtual methods
.method public final assistantScreenGuiderConfigChange(Landroid/content/Context;)V
    .registers 10

    const-string v0, "USRelatedPermissionManager"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_19

    goto :goto_2b

    :cond_19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    move p1, v3

    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasAssistantScreenGuiderConfigPermission(Z)V

    :cond_2b
    :goto_2b
    const-string p1, "Assistant Screen Guider Config hasGuiderConfigPermission "

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasAssistantScreenGuiderConfigPermission:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3a} :catch_3d
    .catchall {:try_start_8 .. :try_end_3a} :catchall_3b

    goto :goto_47

    :catchall_3b
    move-exception p0

    goto :goto_4b

    :catch_3d
    move-exception p0

    :try_start_3e
    const-string p1, "Assistant Screen Guider Config observe exception: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_3b

    :goto_47
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_4b
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final getAssistantScreenGuiderConfigPermissionState(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasAssistantScreenGuiderConfigPermission:Z

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->assistantScreenGuiderConfigChange(Landroid/content/Context;)V

    :cond_c
    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasAssistantScreenGuiderConfigPermission:Z

    return p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getHasAssistantScreenGuiderConfigPermission()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasAssistantScreenGuiderConfigPermission:Z

    return p0
.end method

.method public final getHasDeepthinkerPermission()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasDeepthinkerPermission:Z

    return p0
.end method

.method public final getHasGuideStatusPermission()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasGuideStatusPermission:Z

    return p0
.end method

.method public final getHasInitStates()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasInitStates:Z

    return p0
.end method

.method public final getHasMasterStatusPermission()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMasterStatusPermission:Z

    return p0
.end method

.method public final getHasMetisPermission()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMetisPermission:Z

    return p0
.end method

.method public final getHasPrivacyStatusPermission()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasPrivacyStatusPermission:Z

    return p0
.end method

.method public final getHasUMSPermission()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasUMSPermission:Z

    return p0
.end method

.method public final getLauncher()Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public final getMPendingInitForUserLock()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mPendingInitForUserLock:Z

    return p0
.end method

.method public final initPermissionState()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->getAssistantScreenGuiderConfigPermissionState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->xiaoBuPrivacyStatusChange(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->xiaoBuMasterStatusChange(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->xiaoBuPermissionGuideStatusChange(Landroid/content/Context;)V

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_com_oplus_deepthinker"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oplus/providers/AppSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    move v0, v1

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasDeepthinkerPermission(Z)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "metis_strengthen_service_toggle"

    invoke-static {v0, v3, v2}, Lcom/oplus/providers/AppSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3e

    move v0, v1

    goto :goto_3f

    :cond_3e
    move v0, v2

    :goto_3f
    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasMetisPermission(Z)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "key_com_oplus_pantanal_ums"

    invoke-static {v0, v3, v2}, Lcom/oplus/providers/AppSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_51

    move v2, v1

    :cond_51
    invoke-virtual {p0, v2}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasUMSPermission(Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasInitStates:Z

    invoke-direct {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->refreshUSCardContainer()V

    const-string v0, "initPermissionState hasMasterStatusPermission:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMasterStatusPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasPrivacyStatusPermission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasPrivacyStatusPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasGuideStatusPermission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasGuideStatusPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasDeepthinkerPermission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasDeepthinkerPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasMetisPermission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMetisPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasUMSPermission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasUMSPermission:Z

    const-string v1, "USRelatedPermissionManager"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final launchKeyPermissionActivity(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oplus.advice.ACTION_GUIDE_SEEDLING_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.coloros.assistantscreen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    if-eqz v1, :cond_40

    :try_start_2f
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_43

    :catch_33
    move-exception p0

    const-string p1, "launchKeyPermissionActivity e: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "USRelatedPermissionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_40
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launchKeyPermissionActivityForBackUp(Landroid/content/Context;)V

    :goto_43
    return-void
.end method

.method public final launchKeyPermissionActivityForBackUp(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasUMSPermission:Z

    if-nez v0, :cond_c

    const-string p0, "key_com_oplus_pantanal_ums"

    goto :goto_1b

    :cond_c
    iget-boolean v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasDeepthinkerPermission:Z

    if-nez v0, :cond_13

    const-string p0, "deep_thinker_key"

    goto :goto_1b

    :cond_13
    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMetisPermission:Z

    if-nez p0, :cond_1a

    const-string p0, "key_metis"

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    if-nez p0, :cond_1e

    return-void

    :cond_1e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "oplus.intent.action.settings.STRENGTHEN_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p0, 0x10008000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_39
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_49

    :catch_3d
    move-exception p0

    const-string p1, "launchKeyPermissionActivityForBackUp e: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "USRelatedPermissionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method public final registerAssistantScreenGuiderConfigObserver()V
    .registers 4

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "register Guider Config Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuGuiderConfigObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final registerDeepthinkerPermissionObserver()V
    .registers 4

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "register Deepthinker Permission Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_com_oplus_deepthinker"

    invoke-static {v0}, Lcom/oplus/providers/AppSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mDeepthinkerObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final registerMasterStatusPermissionObserver()V
    .registers 4

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "register Master Status Permission Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_MASTER_STATUS_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuMasterStatusObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final registerMetisPermissionObserver()V
    .registers 4

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "register Metis Permission Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "metis_strengthen_service_toggle"

    invoke-static {v0}, Lcom/oplus/providers/AppSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mMetisObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final registerPermissionGuideStatusObserver()V
    .registers 4

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "register Permission Guide status Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_PERMISSION_GUIDE_STATUS_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuPermissionGuideStatusObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final registerPermissionObserver()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/card/uscard/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/card/uscard/f;-><init>(Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerPrivacyStatusPermissionObserver()V
    .registers 4

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "register Privacy Status Permission Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_PRIVACY_STATUS_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuPrivacyStatusObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final registerUMSPermissionObserver()V
    .registers 4

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "register UMS Permission Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_com_oplus_pantanal_ums"

    invoke-static {v0}, Lcom/oplus/providers/AppSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mUMSObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final runPendingRefresh()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mPendingRefresh:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->refreshUSCardContainer()V

    :cond_7
    return-void
.end method

.method public final setHasAssistantScreenGuiderConfigPermission(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasAssistantScreenGuiderConfigPermission:Z

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final setHasDeepthinkerPermission(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasDeepthinkerPermission:Z

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    const-string v1, "deep_thinker_key"

    invoke-static {v0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->checkAllPermissionAllowed(Z)V

    return-void
.end method

.method public final setHasGuideStatusPermission(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasGuideStatusPermission:Z

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_PERMISSION_GUIDE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->checkAllPermissionAllowed(Z)V

    return-void
.end method

.method public final setHasInitStates(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasInitStates:Z

    return-void
.end method

.method public final setHasMasterStatusPermission(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMasterStatusPermission:Z

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_MASTER_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->checkAllPermissionAllowed(Z)V

    return-void
.end method

.method public final setHasMetisPermission(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMetisPermission:Z

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    const-string v1, "key_metis"

    invoke-static {v0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->checkAllPermissionAllowed(Z)V

    return-void
.end method

.method public final setHasPrivacyStatusPermission(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasPrivacyStatusPermission:Z

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_PRIVACY_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->checkAllPermissionAllowed(Z)V

    return-void
.end method

.method public final setHasUMSPermission(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasUMSPermission:Z

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    const-string v1, "key_com_oplus_pantanal_ums"

    invoke-static {v0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->checkAllPermissionAllowed(Z)V

    return-void
.end method

.method public final setMPendingInitForUserLock(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mPendingInitForUserLock:Z

    return-void
.end method

.method public final unRegisterDeepthinkerPermissionObserver()V
    .registers 3

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "unregister Deepthinker Permission Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mDeepthinkerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final unRegisterGuiderConfigPermissionObserver()V
    .registers 3

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "unregister Guider Config Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuGuiderConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final unRegisterMasterStatusPermissionObserver()V
    .registers 3

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "unregister Master Status Permission Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuMasterStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final unRegisterMetisPermissionObserver()V
    .registers 3

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "unregister Metis Permission Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mMetisObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final unRegisterPermissionGuideStatusObserver()V
    .registers 3

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "unregister Permission Guide Status Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuPermissionGuideStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final unRegisterPermissionObserver()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->unRegisterGuiderConfigPermissionObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->unRegisterMasterStatusPermissionObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->unRegisterPrivacyStatusPermissionObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->unRegisterPermissionGuideStatusObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->unRegisterDeepthinkerPermissionObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->unRegisterMetisPermissionObserver()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->unRegisterUMSPermissionObserver()V

    return-void
.end method

.method public final unRegisterPrivacyStatusPermissionObserver()V
    .registers 3

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "unregister Privacy Status Permission Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mXiaoBuPrivacyStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final unRegisterUMSPermissionObserver()V
    .registers 3

    const-string v0, "USRelatedPermissionManager"

    const-string/jumbo v1, "unregister UMS Permission Observer"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->mUMSObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final xiaoBuMasterStatusChange(Landroid/content/Context;)V
    .registers 10

    const-string v0, "USRelatedPermissionManager"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_MASTER_STATUS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_47

    const-string/jumbo p1, "master_switch_status"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    invoke-virtual {p0, v2}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasMasterStatusPermission(Z)V

    const-string/jumbo p1, "xiao Bu Master Status Change， hasPermission: "

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasMasterStatusPermission:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_47} :catch_4d
    .catchall {:try_start_8 .. :try_end_47} :catchall_4b

    :cond_47
    :goto_47
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_59

    :catchall_4b
    move-exception p0

    goto :goto_5a

    :catch_4d
    move-exception p0

    :try_start_4e
    const-string/jumbo p1, "xiao Bu Master Status observe exception: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_4b

    goto :goto_47

    :goto_59
    return-void

    :goto_5a
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final xiaoBuPermissionGuideStatusChange(Landroid/content/Context;)V
    .registers 11

    const-string v0, "USRelatedPermissionManager"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_PERMISSION_GUIDE_STATUS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6c

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    const-string/jumbo v3, "seedling_permission_guide_status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_34

    move v3, v1

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    invoke-virtual {p0, v3}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasGuideStatusPermission(Z)V

    iget-boolean v3, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasGuideStatusPermission:Z

    if-eqz v3, :cond_43

    iget-boolean v3, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasPrivacyStatusPermission:Z

    if-nez v3, :cond_43

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->xiaoBuPrivacyStatusChange(Landroid/content/Context;)V

    :cond_43
    iget-boolean v3, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasGuideStatusPermission:Z

    if-nez v3, :cond_4a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->assistantScreenGuiderConfigChange(Landroid/content/Context;)V

    :cond_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xiao Bu Permission Guide status Change， hasPermission: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasGuideStatusPermission:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasPrivacyStatusPermission: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasPrivacyStatusPermission:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    :cond_6c
    const-string p1, "can not get xiao Bu Permission Guide status, so not show it"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasGuideStatusPermission(Z)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_74} :catch_77
    .catchall {:try_start_9 .. :try_end_74} :catchall_75

    goto :goto_85

    :catchall_75
    move-exception p0

    goto :goto_89

    :catch_77
    move-exception p1

    :try_start_78
    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasGuideStatusPermission(Z)V

    const-string/jumbo p0, "xiao Bu Permission Guide status observe exception: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_75

    :goto_85
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_89
    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final xiaoBuPrivacyStatusChange(Landroid/content/Context;)V
    .registers 10

    const-string v0, "USRelatedPermissionManager"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->XIAO_BU_ADVICE_PRIVACY_STATUS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_47

    const-string/jumbo p1, "personal_privacy_status"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    invoke-virtual {p0, v2}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasPrivacyStatusPermission(Z)V

    const-string/jumbo p1, "xiao Bu Privacy Status Change， hasPermission: "

    iget-boolean p0, p0, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->hasPrivacyStatusPermission:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_47} :catch_4d
    .catchall {:try_start_8 .. :try_end_47} :catchall_4b

    :cond_47
    :goto_47
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_59

    :catchall_4b
    move-exception p0

    goto :goto_5a

    :catch_4d
    move-exception p0

    :try_start_4e
    const-string/jumbo p1, "xiao Bu Master Status observe exception: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_4b

    goto :goto_47

    :goto_59
    return-void

    :goto_5a
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method
