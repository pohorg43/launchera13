.class public Lcom/android/launcher3/card/CardPermissionManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_ASSISTANT_SCREEN_STATEMENT:Ljava/lang/String; = "com.oplus.assistant.ACTION_ENTER_ADVICE"

.field public static final CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final CARD_PATH_GUIDER_CONFIG:Ljava/lang/String; = "guider_config"

.field public static final CARD_PERMISSION_DENIED:I = 0x0

.field public static final CARD_PERMISSION_GRANTED:I = 0x1

.field public static final META_DATA_SUPPORT_GLOBAL_DRAG:Ljava/lang/String; = "com.oplus.assistantscreen.support.card_global_drag"

.field public static final PACKAGE_ASSISTANT_SCREEN:Ljava/lang/String;

.field public static final PERMISSION_SOURCE_TYPE:Ljava/lang/String; = "permission_source_type"

.field private static final PREF_KEY_CARD_PRELOAD:Ljava/lang/String; = "pref_card_preload"

.field public static final PREF_KEY_FIRST_TIME_CLICK_CARD_ENTRY:Ljava/lang/String; = "first_time_click_card_entry"

.field private static final SETTINGS_KEY_CARD_PERMISSION_STATE:Ljava/lang/String; = "laucher_card_permission_state"

.field private static final TAG:Ljava/lang/String; = "CardPermissionManager"

.field private static volatile sInstance:Lcom/android/launcher3/card/CardPermissionManager;


# instance fields
.field private mCardPreLoadEnable:Ljava/lang/Boolean;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHasCardPermission:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private usRelatedPermissionManager:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const v0, 0x7f1203d7

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/CardPermissionManager;->PACKAGE_ASSISTANT_SCREEN:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    const v1, 0x7f120004

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "guider_config"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    goto :goto_28

    :cond_26
    sput-object v0, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    :goto_28
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/CardPermissionManager;Landroid/content/ContentResolver;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardPermissionManager;->lambda$syncCardPermissionState$0(Landroid/content/ContentResolver;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/android/launcher3/card/CardPermissionManager;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/card/CardPermissionManager;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/CardPermissionManager;->lambda$syncCardPermissionState$1(Ljava/lang/Boolean;Ljava/lang/Throwable;)V

    return-void
.end method

.method private cardPermissionRestore()V
    .registers 6

    const-string v0, "CardPermissionManager"

    const-string v1, "cardPermissionRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    sget-object v2, Lcom/oplus/card/server/CardServiceProxyManager;->INSTANCE:Lcom/oplus/card/server/CardServiceProxyManager;

    invoke-virtual {v2}, Lcom/oplus/card/server/CardServiceProxyManager;->getMInited()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/card/server/CardServiceProxyManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/CardManager;->registerCardCallback()V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/CardManager;->initPullConfig()V

    move v2, v1

    goto :goto_2b

    :cond_2a
    move v2, v4

    :goto_2b
    iget-object v3, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v3, :cond_35

    const-string p0, "cardPermissionRestore() mLauncher is null."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    sget-object v3, Lcom/oplus/card/server/CardServiceProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    invoke-virtual {v3}, Lcom/oplus/channel/server/IServerBusiness;->unMarkIdle()V

    if-nez v2, :cond_88

    iget-object v2, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    if-nez v2, :cond_4a

    const-string v2, "cardPermissionRestore() mCardPreLoadEnable is null."

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    :cond_4a
    const-string v2, "cardPermissionRestore, mCardPreLoadEnable = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager;->getAllCardConfigList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/card/CardPermissionManager$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/CardPermissionManager$2;-><init>(Lcom/android/launcher3/card/CardPermissionManager;)V

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->addCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V

    goto :goto_88

    :cond_7f
    iget-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/OplusWorkspace;->refreshAllCardForPermissionChanged(ZZ)V

    :cond_88
    :goto_88
    invoke-direct {p0}, Lcom/android/launcher3/card/CardPermissionManager;->saveCardPermissionState()V

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->bindDragSever()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/card/CardPermissionManager;
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/mode/LauncherModeManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/card/CardPermissionManager;

    invoke-direct {v1}, Lcom/android/launcher3/card/CardPermissionManager;-><init>()V

    sput-object v1, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    return-object v0
.end method

.method public static hasInstanced()Z
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private synthetic lambda$syncCardPermissionState$0(Landroid/content/ContentResolver;)Ljava/lang/Boolean;
    .registers 7

    sget-object v0, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_50

    :try_start_c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "CardPermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncCardPermissionState state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mHasCardPermission:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne v1, p0, :cond_3c

    move v0, p0

    :cond_3c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_44

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_44
    move-exception p0

    if-eqz p1, :cond_4f

    :try_start_47
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw p0

    :cond_50
    if-eqz p1, :cond_55

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_55
    return-object v1
.end method

.method private synthetic lambda$syncCardPermissionState$1(Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p1, :cond_1a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "syncCardPermissionState Throwable:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardPermissionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    iget-boolean p2, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    if-eqz p2, :cond_28

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->cardPermissionCancel()V

    goto :goto_35

    :cond_28
    iget-boolean p2, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    if-nez p2, :cond_35

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPermissionManager;->cardPermissionRestore()V

    :cond_35
    :goto_35
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    sget-object p1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string/jumbo p2, "syncCardPermissionState mHasCardPermission = "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oplus/card/util/LogD;->fileLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPermissionManager;->saveCardPermissionState()V

    return-void
.end method

.method private saveCardPermissionState()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "CardPermissionManager"

    if-nez v0, :cond_d

    const-string/jumbo p0, "saveCardPermissionState() mLauncher is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-boolean v2, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    if-eqz v2, :cond_25

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/card/CardPermissionManager;->setCardPreload(Landroid/content/Context;Z)V

    :cond_25
    const-string/jumbo v0, "saveCardPermissionState() state="

    invoke-static {v0, v2, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "laucher_card_permission_state"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public cardPermissionCancel()V
    .registers 4

    const-string v0, "CardPermissionManager"

    const-string v1, "cardPermissionCancel"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    sget-object v1, Lcom/oplus/card/server/CardServiceProxyManager;->INSTANCE:Lcom/oplus/card/server/CardServiceProxyManager;

    invoke-virtual {v1}, Lcom/oplus/card/server/CardServiceProxyManager;->getMInited()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/oplus/card/server/CardServiceProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    invoke-virtual {v1}, Lcom/oplus/channel/server/IServerBusiness;->markIdle()V

    :cond_17
    invoke-direct {p0}, Lcom/android/launcher3/card/CardPermissionManager;->saveCardPermissionState()V

    iget-object v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->usRelatedPermissionManager:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    if-eqz v1, :cond_28

    invoke-virtual {v1, v0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->setHasPrivacyStatusPermission(Z)V

    iget-object v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->usRelatedPermissionManager:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    iget-object v2, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->xiaoBuPermissionGuideStatusChange(Landroid/content/Context;)V

    :cond_28
    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/OplusWorkspace;->refreshAllCardForPermissionChanged(ZZ)V

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->clearAllCardViewCaches()V

    return-void
.end method

.method public getUSRelatedPermissionManager()Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->usRelatedPermissionManager:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/Launcher;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result p1

    if-eqz p1, :cond_22

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result p1

    if-nez p1, :cond_1f

    new-instance p1, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;-><init>(Landroid/os/Handler;Lcom/android/launcher3/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher3/card/CardPermissionManager;->usRelatedPermissionManager:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->registerCardPermissionObserver()V

    :cond_22
    return-void
.end method

.method public initPermissionState(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "laucher_card_permission_state"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    move v1, v0

    :cond_f
    iput-boolean v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    const-string p1, "initPermissionState:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    const-string v0, "CardPermissionManager"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public isCardPreload(Landroid/content/Context;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    const-string/jumbo v1, "pref_card_preload"

    invoke-static {p1, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    :cond_12
    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFirstTimeClickCardEntry()Z
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    const-string v1, "CardPermissionManager"

    if-nez p0, :cond_d

    const-string p0, "isFirstTimeClickCardEntry,mlauncher is null !"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x1

    const-string v3, "first_time_click_card_entry"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_28
    const-string p0, "isFirstTimeClickCardEntry:"

    invoke-static {p0, v2, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return v2
.end method

.method public isPermissionAllowed()Z
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "isPermissionAllowed:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    const-string v2, "CardPermissionManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_13
    iget-boolean p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    return p0
.end method

.method public launchCardPermissionActivity()V
    .registers 6

    const-string v0, "CardPermissionManager"

    const-string v1, "launchCardPermissionActivity"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_11

    const-string p0, "launchCardPermissionActivity() mLauncher is null."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    sget-object v1, Lcom/android/launcher3/card/CardPermissionManager;->PACKAGE_ASSISTANT_SCREEN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-void

    :cond_1a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.oplus.assistant.ACTION_ENTER_ADVICE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    const-string/jumbo v4, "permission_source_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2e
    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v1, 0x2715

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_3e

    :catch_36
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method public registerCardPermissionObserver()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/card/CardPermissionManager$1;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/card/CardPermissionManager$1;-><init>(Lcom/android/launcher3/card/CardPermissionManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mContentObserver:Landroid/database/ContentObserver;

    :try_start_13
    sget-object v2, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    if-eqz v2, :cond_1b

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1b
    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->usRelatedPermissionManager:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->registerPermissionObserver()V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_22} :catch_23

    goto :goto_3a

    :catch_23
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to find assistantscreen uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CardPermissionManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public setCardPreload(Landroid/content/Context;Z)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    const-string/jumbo p0, "pref_card_preload"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setCardPreload sCardPreLoadEnable = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardPermissionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPermissionState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    return-void
.end method

.method public syncCardPermissionState(Landroid/content/Context;)V
    .registers 4

    const-string v0, "CardPermissionManager"

    const-string/jumbo v1, "syncCardPermissionState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Lcom/android/common/util/n;

    invoke-direct {v0, p0, p1}, Lcom/android/common/util/n;-><init>(Lcom/android/launcher3/card/CardPermissionManager;Landroid/content/ContentResolver;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, p1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/card/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/a;-><init>(Lcom/android/launcher3/card/CardPermissionManager;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1, v0, p0}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public unregisterCardPermissionObserver(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_4
    iget-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_b
    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->usRelatedPermissionManager:Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->unRegisterPermissionObserver()V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_2a

    :catch_13
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to find assistantscreen uri"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardPermissionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method
