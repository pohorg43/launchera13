.class public Lcom/android/launcher/download/DownloadAppsManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/download/DownloadAppsManager$DownloadAppsManagerHandler;
    }
.end annotation


# static fields
.field public static final APK_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final APK_PATH:Ljava/lang/String; = "apkPath"

.field private static final DEFAULT_CLEAR_DOWNLOADING_ANIMATION_DELAY:I = 0x1388

.field public static final DOWNLOAD_ALIVE:I = 0x3e8

.field public static final DOWNLOAD_APP_CLASSNAME:Ljava/lang/String; = "downloadAppClassName"

.field public static final DOWNLOAD_FROM_RECOMMEND_FOLDER:I = 0x2

.field public static final DOWNLOAD_FROM_STORE:I = 0x1

.field private static final DOWNLOAD_INVALID_STATE:I = -0x1

.field private static final DOWNLOAD_INVALID_TYPE:I = 0x0

.field private static final EXPANSIONS_DOWNLOADING_INIT_TIMEOUT_DELAY:I = 0x4e20

.field private static final FORCE_MAKE_EXPANSIONS_DOWNLOAD_FINISH_DELAY:I = 0x2710

.field public static final ICON_RESOURCE:Ljava/lang/String; = "iconResource"

.field private static final ICON_RESOURCE_URI:Ljava/lang/String; = "iconResourceUri"

.field public static final INSTALLER_PACKAGENAME:Ljava/lang/String; = "installerPackageName"

.field private static final KEY_APP_HAS_INC_DOWNLOAD:Ljava/lang/String; = "appHasIncDownload"

.field private static final KEY_DOWNLOAD_APP_NAME:Ljava/lang/String; = "appName"

.field private static final KEY_DOWNLOAD_CHANNEL:Ljava/lang/String; = "downloadChannel"

.field private static final KEY_FLOW_SIZE:Ljava/lang/String; = "flowSize"

.field private static final KEY_WARNING_ID:Ljava/lang/String; = "warningId"

.field private static final LAUNCHER_RELOAD_CLEAR_DOWNLOADING_ANIMATION_DELAY:I = 0x1b58

.field public static final MAX_DOWNLOAD_PROGRESS_FLOAT:F = 1.0f

.field private static final MSG_CLEAR_APP_STORE_DOWNLOADING_ANIMATION:I = 0x3eb

.field private static final MSG_CLEAR_GAME_CENTER_DOWNLOADING_ANIMATION:I = 0x3ec

.field private static final MSG_DELETE_APP:I = 0x3e9

.field private static final MSG_EXPANSIONS_DOWNLOADING_INIT_TIMEOUT:I = 0x3f0

.field private static final MSG_FORCE_MAKE_EXPANSIONS_DOWNLOAD_FINISH:I = 0x3ed

.field private static final MSG_NEW_INSTALL_TYPE_PKG_TIMEOUT:I = 0x3ee

.field private static final MSG_SHOW_WARNNING_DIALOG:I = 0x3ea

.field private static final MSG_UPDATE_APPS:I = 0x3e8

.field private static final MSG_UPDATE_APPS_TO_PENDING_STATE:I = 0x3ef

.field private static final NEW_INSTALL_TYPE_PKG_ALIVE_TIME:J = 0xea60L

.field private static final PROGRESS_CHANGE_UPDATE_INTERVAL:I = 0x2

.field public static final SAU_PACKAGENAME:Ljava/lang/String; = "com.oplus.sau"

.field public static final SERIOUS_ERROR:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "DownloadAppsManager"

.field private static final UPDATE_DOWNLOAD_INFO_DELAY:I = 0x64

.field private static final UPDATE_DOWNLOAD_INFO_WITH_PENDDING_STATE_DELAY:I = 0x12c

.field public static final WARNING_ID_DATA_NETWORK_DOWNLOAD:I = 0x2

.field public static final WARNING_ID_STORAGE_LOW:I = 0x1

.field private static final sDownloadWorkThread:Landroid/os/HandlerThread;

.field private static volatile sInstance:Lcom/android/launcher/download/DownloadAppsManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDownloadAppDialogManager:Lcom/android/launcher/download/DownloadAppDialogManager;

.field private final mDownloadAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/download/OplusPackageInstallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadAppInfoListLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

.field private final mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

.field private final mDownloadHandler:Landroid/os/Handler;

.field private final mDownloadWorkHandler:Landroid/os/Handler;

.field private volatile mInitialized:Z

.field private mIsNetworkAvailable:Z

.field private volatile mIsOplusMarketInstalled:Z

.field private final mNewInstallTypeInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/download/OplusPackageInstallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowInstallProgressSupportted:Z

.field private final mUpdateInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/download/OplusPackageInstallInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "download"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher/download/DownloadAppsManager;->sDownloadWorkThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/launcher/download/DownloadAppsManager;->sInstance:Lcom/android/launcher/download/DownloadAppsManager;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mNewInstallTypeInfoMap:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mShowInstallProgressSupportted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mIsNetworkAvailable:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-direct {v0, p1}, Lcom/android/launcher/download/DownloadAppDialogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppDialogManager:Lcom/android/launcher/download/DownloadAppDialogManager;

    new-instance p1, Lcom/android/launcher/download/DownloadAppsManager$DownloadAppsManagerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/launcher/download/DownloadAppsManager$DownloadAppsManagerHandler;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/android/launcher/download/DownloadAppsManager;->sDownloadWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadWorkHandler:Landroid/os/Handler;

    const-string p0, "InstallApp"

    const-string p1, "DownloadAppsManager init"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$onAppInstallStarted$7(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/download/DownloadAppsManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/download/DownloadAppsManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->notifyDownloadAppDeleted(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher/download/DownloadAppsManager;)Lcom/android/launcher/download/DownloadAppDialogManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppDialogManager:Lcom/android/launcher/download/DownloadAppDialogManager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->clearDownloadingAnim(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->removePackageFromNewInstallSetNow(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/download/DownloadAppsManager;->makeExpansionsDownloadFinish(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/launcher/download/DownloadAppsManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/download/DownloadAppsManager;->onDownloadPackageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private addDownloadAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Z)Lcom/android/launcher/download/OplusPackageInstallInfo;
    .registers 22

    move-object v1, p0

    move/from16 v0, p6

    move/from16 v2, p8

    const-string v3, "addDownloadAppInfo: pkgName: "

    const-string v4, ", appName: "

    const-string v5, ", isExist: "

    move-object v8, p2

    move-object/from16 v7, p3

    invoke-static {v3, p2, v4, v7, v5}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",hasIncDownload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InstallApp"

    const-string v5, "DownloadAppsManager"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2e

    const v0, 0x8000

    goto :goto_30

    :cond_2e
    const/16 v0, 0x4000

    :goto_30
    new-instance v3, Lcom/android/launcher/download/OplusPackageInstallInfo;

    or-int v9, p4, v0

    move-object v6, v3

    move-object/from16 v7, p3

    move-object v8, p2

    move/from16 v10, p5

    move-object v11, p1

    move-object/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher/download/OplusPackageInstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/android/launcher/download/OplusPackageInstallInfo;->setHasIncDownload(Z)V

    :try_start_43
    iget-object v0, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_6d

    iget-object v0, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Lcom/android/launcher/download/DownloadAppsManager;->mNewInstallTypeInfoMap:Ljava/util/Map;

    iget-object v2, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    iget-object v0, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher/download/c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/launcher/download/c;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :catchall_6d
    move-exception v0

    iget-object v1, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$createOrUpdateDownloadApp$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$removePackageInDownloadAppList$9(Ljava/lang/String;)V

    return-void
.end method

.method public static checkNeedDownloadAnimation(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "DownloadAppsManager"

    const-string v2, "InstallApp"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    const-string v5, "[checkNeedDownloadAnimation]old=%s,new=%s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz p0, :cond_95

    if-nez p1, :cond_22

    goto/16 :goto_95

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-nez v0, :cond_33

    return v3

    :cond_33
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_52

    const-string p0, "[checkNeedDownloadAnimation]different pkgName"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    return v3

    :cond_53
    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    iget-object v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0, v5}, Lcom/android/launcher/download/InstallState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_68

    const-string p0, "[checkNeedDownloadAnimation]different state"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    return v4

    :cond_69
    instance-of v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_82

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_82

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getInstallProgress()I

    move-result p0

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getInstallProgress()I

    move-result p1

    if-eq p0, p1, :cond_80

    :goto_7f
    move v3, v4

    :cond_80
    move v4, v3

    goto :goto_95

    :cond_82
    instance-of v0, p0, Lcom/android/launcher/model/data/PromiseAppInfo;

    if-eqz v0, :cond_95

    instance-of v0, p1, Lcom/android/launcher/model/data/PromiseAppInfo;

    if-eqz v0, :cond_95

    check-cast p0, Lcom/android/launcher/model/data/PromiseAppInfo;

    iget p0, p0, Lcom/android/launcher/model/data/PromiseAppInfo;->level:I

    check-cast p1, Lcom/android/launcher/model/data/PromiseAppInfo;

    iget p1, p1, Lcom/android/launcher/model/data/PromiseAppInfo;->level:I

    if-eq p0, p1, :cond_80

    goto :goto_7f

    :cond_95
    :goto_95
    return v4
.end method

.method private checkPackageVisibilityForDownload(Ljava/lang/String;)Z
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_2a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_29

    new-array p0, v0, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "App[%s] is hidden, return"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallApp"

    const-string v0, "DownloadAppsManager"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return v1

    :cond_2a
    return v0
.end method

.method public static cleanStorageSpace(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/download/DownloadAppsManager;->startStoreService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanStorageSpace: downloadSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallApp"

    const-string v0, "DownloadAppsManager"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearAndSendMessageDelay(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private clearDownloadingAnim(Ljava/lang/String;)V
    .registers 9

    const-string v0, "InstallApp"

    const-string v1, "DownloadAppsManager"

    const-string v2, "clearDownloadingAnim downloadSource = "

    invoke-static {v2, p1, v0, v1}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "InstallApp"

    const-string p1, "DownloadAppsManager"

    const-string v0, "clearDownloadingAnim childred mode, we don\'t reset state to pause, icon is not created!"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2a
    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isDownloadingState()Z

    move-result v3

    if-nez v3, :cond_4c

    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isPendingState()Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_4c
    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_30

    :cond_5d
    const-string v3, "InstallApp"

    const-string v4, "DownloadAppsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearDownloadingAnim --packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    monitor-enter v3
    :try_end_7a
    .catchall {:try_start_2a .. :try_end_7a} :catchall_d2

    :try_start_7a
    iget-object v4, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/launcher/download/InstallState;->setInstallState(I)V

    monitor-exit v3
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_87

    :try_start_81
    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_d2

    goto :goto_30

    :catchall_87
    move-exception p1

    :try_start_88
    monitor-exit v3
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    :try_start_89
    throw p1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_d2

    :cond_8a
    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_a3

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a3
    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_d1

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/statistics/LauncherStatistics;->statsDownloadingToPausedByMarket(Ljava/lang/String;)V

    goto :goto_b5

    :cond_d1
    return-void

    :catchall_d2
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private convertAppStoreState(Landroid/content/ContentValues;)I
    .registers 7

    const-string p0, "installState"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, -0x80000000

    const-string v2, "DownloadAppsManager"

    const-string v3, "InstallApp"

    if-nez v0, :cond_1d

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key[installState] not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_1d
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppUtils;->appStoreState2InterestState(I)I

    move-result p1

    if-gez p1, :cond_4b

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown appStore state:"

    invoke-static {v0, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertAppStoreState ignore appStoreState = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_4b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertAppStoreState,appStoreState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    return p1
.end method

.method private createDownloadingApp(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDownloadingApp: appInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromIconPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/download/OplusPackageInstallInfo;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_2c
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->notifyDownloadAppCreated(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    :cond_3b
    return-void
.end method

.method private createOrUpdateDownloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Z)V
    .registers 28

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    move/from16 v11, p7

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/download/DownloadAppsManager;->isInitialized()Z

    move-result v1

    const/4 v12, 0x0

    const-string v13, "InstallApp"

    const/4 v14, 0x1

    const-string v15, "DownloadAppsManager"

    if-nez v1, :cond_29

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_25

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v12

    const-string v0, "[createOrUpdateDownloadApp]pkg:%s,but manager not init yet! try again."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v15, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/download/DownloadAppsManager;->init()V

    return-void

    :cond_29
    const/4 v1, 0x0

    iget-object v2, v10, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2f
    iget-object v2, v10, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v4, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_14c

    if-eqz v4, :cond_35

    move-object v1, v3

    move/from16 v16, v12

    goto :goto_4f

    :cond_4d
    move/from16 v16, v14

    :goto_4f
    iget-object v2, v10, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v16, :cond_94

    sget-object v1, Lcom/android/common/util/SignCheckUtils;->INSTANCE:Lcom/android/common/util/SignCheckUtils;

    iget-object v2, v10, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/android/common/util/SignCheckUtils;->checkCallingPackagePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {v10, v0}, Lcom/android/launcher/download/DownloadAppsManager;->isPackageExistOnLauncher(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_73

    const/4 v1, 0x5

    move/from16 v9, p5

    if-ne v9, v1, :cond_75

    const-string v0, "createOrUpdateDownloadApp this is a new reserved task for upgrading, don\'t show the icon until the download start!"

    invoke-static {v13, v15, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_73
    move/from16 v9, p5

    :cond_75
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p4

    move/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher/download/DownloadAppsManager;->addDownloadAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Z)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object v1

    move/from16 v8, p10

    goto :goto_9b

    :cond_8c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Illegal application intends to add a downloading package!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    move/from16 v8, p10

    if-eqz v1, :cond_9b

    invoke-virtual {v1, v8}, Lcom/android/launcher/download/OplusPackageInstallInfo;->setHasIncDownload(Z)V

    :cond_9b
    :goto_9b
    move-object v2, v1

    if-eqz v2, :cond_14b

    iget-object v1, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isInstallingOrUpgradingApp()Z

    move-result v1

    if-nez v1, :cond_bb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download type error!,installInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v15, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_bb
    if-eqz v16, :cond_13a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOrUpdateDownloadApp: downloadChannel = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_120

    const/4 v1, 0x2

    if-eq v11, v1, :cond_120

    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->isSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_120

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->findRecommendInfo(Ljava/lang/String;)Ly2/i;

    move-result-object v1

    if-eqz v1, :cond_136

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createOrUpdateDownloadApp: remove MarketRecommendAppInfo because from store download!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Ly2/i;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_118

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v0

    iget-object v1, v1, Ly2/i;->b:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendItem(Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)V

    goto :goto_136

    :cond_118
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v1

    invoke-virtual {v1, v0, v14}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    goto :goto_136

    :cond_120
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_136

    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->isSwitchEnable()Z

    move-result v1

    if-nez v1, :cond_136

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher/download/e;

    invoke-direct {v3, v0, v12}, Lcom/android/launcher/download/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_136
    :goto_136
    invoke-direct {v10, v2}, Lcom/android/launcher/download/DownloadAppsManager;->createDownloadingApp(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    goto :goto_14b

    :cond_13a
    move-object/from16 v1, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p4

    move/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher/download/DownloadAppsManager;->updateDownloadingApp(Lcom/android/launcher/download/OplusPackageInstallInfo;IILjava/lang/String;ILjava/lang/String;Z)V

    :cond_14b
    :goto_14b
    return-void

    :catchall_14c
    move-exception v0

    iget-object v1, v10, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static synthetic d(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$addDownloadAppInfo$6(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method private deleteDownloadAppBySourceInner(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-string v0, "deleteDownloadAppBySource: downloadSource: "

    const-string v1, ", pkgName: "

    invoke-static {v0, p1, v1, p2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstallApp"

    const-string v1, "DownloadAppsManager"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p1

    if-nez p1, :cond_19

    invoke-direct {p0, p2}, Lcom/android/launcher/download/DownloadAppsManager;->findInstallInfoByPackageName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p1

    :cond_19
    if-eqz p1, :cond_2f

    invoke-virtual {p0, p2}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v0, 0x3e9

    invoke-static {p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0

    :cond_2f
    const-string p0, "deleteDownloadAppBySource -- can not find package info in download list!"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static deleteDownloadPackageFromLauncher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/download/DownloadAppsManager;->startStoreService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result p0

    const-string v0, "deleteDownloadPackageFromLauncher downloadSource="

    const-string v1, " pkgName "

    const-string v2, " result = "

    invoke-static {v0, p1, v1, p2, v2}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "InstallApp"

    const-string v0, "DownloadAppsManager"

    invoke-static {p1, p0, p2, v0}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static downloadNowOrByAppointment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/download/DownloadAppsManager;->startStoreService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result p0

    const-string p3, "downloadNowOrByAppointment downloadSource="

    const-string v0, " pkgName "

    const-string v1, " result = "

    invoke-static {p3, p1, v0, p2, v1}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "InstallApp"

    const-string p3, "DownloadAppsManager"

    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dumpDownloadIcons(Lcom/android/launcher3/OplusWorkspace;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/OplusWorkspace;",
            "Ljava/util/List<",
            "Lcom/android/launcher/download/OplusPackageInstallInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_e

    const-string p0, "DownloadAppsManager"

    const-string p1, "dumpDownloadIcons -- downloadAppInfoList size is 0, no downloading icons"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez p1, :cond_16

    return-void

    :cond_16
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, p2, :cond_75

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_2a
    if-ge v4, v3, :cond_6b

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v6, :cond_61

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_40
    if-ltz v6, :cond_61

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_4f

    goto :goto_5e

    :cond_4f
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5e
    :goto_5e
    add-int/lit8 v6, v6, -0x1

    goto :goto_40

    :cond_61
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_68

    goto :goto_6b

    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_6b
    :goto_6b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_72

    goto :goto_75

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_75
    :goto_75
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;F)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$handleIncrementDownloadChanged$10(Ljava/lang/String;F)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/download/DownloadAppsManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$removePackagesWhenStoreClearData$8(Ljava/util/List;)V

    return-void
.end method

.method private findInstallInfoByPackageName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter p0

    :try_start_d
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_27

    goto :goto_13

    :cond_27
    const-string v4, "downloadAppClassName"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_13

    :cond_34
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string p1, "DownloadAppsManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " findInstantShortcutByPackageName item = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_61
    move-object v1, v2

    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_d .. :try_end_63} :catchall_86

    if-nez v1, :cond_66

    return-object v2

    :cond_66
    new-instance p0, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object p1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object p1, v1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v6

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallSource:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher/download/OplusPackageInstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_86
    move-exception p1

    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw p1
.end method

.method public static synthetic g(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$updateDownloadingApp$5(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method private getDownloadInfoBySource(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/download/OplusPackageInstallInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_37

    goto :goto_18

    :cond_30
    const/4 v0, 0x0

    :cond_31
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_37
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;
    .registers 3

    sget-object v0, Lcom/android/launcher/download/DownloadAppsManager;->sInstance:Lcom/android/launcher/download/DownloadAppsManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/download/DownloadAppsManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/download/DownloadAppsManager;->sInstance:Lcom/android/launcher/download/DownloadAppsManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/download/DownloadAppsManager;

    invoke-direct {v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/download/DownloadAppsManager;->sInstance:Lcom/android/launcher/download/DownloadAppsManager;

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
    sget-object p0, Lcom/android/launcher/download/DownloadAppsManager;->sInstance:Lcom/android/launcher/download/DownloadAppsManager;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher/download/DownloadAppsManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$init$0()V

    return-void
.end method

.method private handleDownloadWarningId(ILcom/android/launcher/download/OplusPackageInstallInfo;Ljava/lang/String;)V
    .registers 7

    if-lez p1, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDownloadingApp -- warningId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "flowSize"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_3c
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_41
    return-void
.end method

.method private handleGenericInterestState(ILjava/lang/String;)Z
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGenericInterestState state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const/4 v0, 0x1

    if-gez p1, :cond_22

    return v0

    :cond_22
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_2c

    const/16 p1, 0x1388

    invoke-direct {p0, p2, p1}, Lcom/android/launcher/download/DownloadAppsManager;->onDownloadAlive(Ljava/lang/String;I)V

    return v0

    :cond_2c
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_34

    invoke-virtual {p0, p2}, Lcom/android/launcher/download/DownloadAppsManager;->onSeriousError(Ljava/lang/String;)V

    return v0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic i(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$updateDownloadExpansions$1(Ljava/lang/String;)V

    return-void
.end method

.method private isInitialized()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mInitialized:Z

    return p0
.end method

.method private isPkgExistInNewInstallMap(Ljava/lang/String;)Z
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mNewInstallTypeInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "[isPkgExistInNewInstallSet]pkg:%s,exist:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstallApp"

    const-string v1, "DownloadAppsManager"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return p0
.end method

.method public static synthetic j(Lcom/android/launcher/download/DownloadAppsManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$initInstallState$11(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/LauncherModel;Ljava/util/Map$Entry;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$notifyDownloadAppsUpdated$12(Lcom/android/launcher3/LauncherModel;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$updateDownloadExpansions$2(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method private synthetic lambda$addDownloadAppInfo$6(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadDatabaseUtils;->addDownloadItem(Landroid/content/Context;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method private static synthetic lambda$createOrUpdateDownloadApp$4(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteMarketInfoByPkg(Ljava/lang/String;Z)Z

    return-void
.end method

.method private synthetic lambda$handleIncrementDownloadChanged$10(Ljava/lang/String;F)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mNewInstallTypeInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/download/OplusPackageInstallInfo;

    const-string v0, "DownloadAppsManager"

    const-string v1, "InstallApp"

    if-eqz p1, :cond_46

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create expansions download record manually,info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p2

    const v1, 0x3a83126f  # 0.001f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    if-lez v0, :cond_35

    mul-float/2addr v1, p2

    :cond_35
    float-to-int v7, v1

    iget-object v3, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    const/16 v5, 0x2af8

    iget-object v6, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mTitle:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher/download/DownloadAppsManager;->updateDownloadExpansions(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V

    goto :goto_51

    :cond_46
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_51

    const-string p0, "create expansions download record manually, but installInfo not found!"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    :goto_51
    return-void
.end method

.method private synthetic lambda$init$0()V
    .registers 12

    iget-boolean v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mInitialized:Z

    if-nez v0, :cond_bd

    :try_start_4
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/download/DownloadDatabaseUtils;->loadAllDownloadAppInfos(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_b6

    const-string v3, "DownloadAppsManager"

    const-string v4, "InstallApp"

    const/4 v5, 0x1

    if-eqz v2, :cond_7d

    :try_start_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v6, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v6}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v6

    if-eqz v6, :cond_66

    iget-object v6, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    iget-object v7, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "[init]add new installType,installed=%s,info=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v2, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_5e

    if-nez v0, :cond_5a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5a
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_5e
    iget-object v3, p0, Lcom/android/launcher/download/DownloadAppsManager;->mNewInstallTypeInfoMap:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    :cond_66
    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v3

    if-eqz v3, :cond_75

    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/launcher/download/DownloadAppsManager;->onExpansionsDownloadInit(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    :goto_75
    iget-object v3, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_7d
    if-eqz v0, :cond_9a

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v1, v1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_26 .. :try_end_99} :catchall_b6

    goto :goto_88

    :cond_9a
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput-boolean v5, p0, Lcom/android/launcher/download/DownloadAppsManager;->mInitialized:Z

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b0

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b0
    const-string p0, "DownloadAppInfo is initialized"

    invoke-static {v4, v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    :catchall_b6
    move-exception v0

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_bd
    :goto_bd
    return-void
.end method

.method private synthetic lambda$initInstallState$11(Ljava/util/List;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadDatabaseUtils;->deleteDownloadItems(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$notifyDownloadAppsUpdated$12(Lcom/android/launcher3/LauncherModel;Ljava/util/Map$Entry;)V
    .registers 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherModeUtil;->updateInstallStateChangedPackage(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method private synthetic lambda$onAppInstallStarted$7(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadDatabaseUtils;->update(Landroid/content/Context;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method private synthetic lambda$removePackageInDownloadAppList$9(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadDatabaseUtils;->deleteDownloadItem(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$removePackagesWhenStoreClearData$8(Ljava/util/List;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadDatabaseUtils;->deleteDownloadItems(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$updateDownloadExpansions$1(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteMarketInfoByPkg(Ljava/lang/String;Z)Z

    return-void
.end method

.method private synthetic lambda$updateDownloadExpansions$2(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadDatabaseUtils;->addDownloadItem(Landroid/content/Context;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method private synthetic lambda$updateDownloadExpansions$3(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadDatabaseUtils;->update(Landroid/content/Context;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method private synthetic lambda$updateDownloadingApp$5(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadDatabaseUtils;->update(Landroid/content/Context;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->lambda$updateDownloadExpansions$3(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    return-void
.end method

.method private makeExpansionsDownloadFinish(Ljava/lang/String;ZZ)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[makeExpansionsDownloadFinish]info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object v0

    if-nez v0, :cond_24

    const-string p0, "[makeExpansionsDownloadFinish] installInfo = null"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[makeExpansionsDownloadFinish] find target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v4, 0x3f0

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    if-nez p1, :cond_4b

    const-string p0, "[makeExpansionsDownloadFinish] app = null;"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4b
    iget-object v3, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v3

    if-nez v3, :cond_59

    const-string p0, "[makeExpansionsDownloadFinish] is not expansions type"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_59
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_8f

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v0}, Lcom/android/launcher/download/OplusPackageInstallInfo;->isOplusExpansionsDownloadFinish()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/android/launcher/download/OplusPackageInstallInfo;->isGoogleExpansionsDownloadFinish()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v6

    const-string v6, "[makeExpansionsDownloadFinish]fromOplus=%s,oplusFinish=%s,googleFinish=%s,force=%s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    if-nez p2, :cond_b3

    invoke-virtual {v0}, Lcom/android/launcher/download/OplusPackageInstallInfo;->isGoogleExpansionsDownloadFinish()Z

    move-result p2

    if-eqz p2, :cond_9d

    invoke-virtual {v0}, Lcom/android/launcher/download/OplusPackageInstallInfo;->isOplusExpansionsDownloadFinish()Z

    move-result p2

    if-nez p2, :cond_b3

    :cond_9d
    if-eqz p3, :cond_a3

    invoke-virtual {v0, v5}, Lcom/android/launcher/download/OplusPackageInstallInfo;->setOplusExpansionsDownloadFinish(Z)V

    goto :goto_a6

    :cond_a3
    invoke-virtual {v0, v5}, Lcom/android/launcher/download/OplusPackageInstallInfo;->setGoogleExpansionsDownloadFinish(Z)V

    :goto_a6
    invoke-virtual {v0}, Lcom/android/launcher/download/OplusPackageInstallInfo;->isOplusExpansionsDownloadFinish()Z

    move-result p2

    if-eqz p2, :cond_b2

    invoke-virtual {v0}, Lcom/android/launcher/download/OplusPackageInstallInfo;->isGoogleExpansionsDownloadFinish()Z

    move-result p2

    if-nez p2, :cond_b3

    :cond_b2
    return-void

    :cond_b3
    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isSupportMultiApp:Z

    if-eqz p2, :cond_c5

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object p2

    iget-object p3, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c5

    move p2, v5

    goto :goto_c6

    :cond_c5
    move p2, v4

    :goto_c6
    if-eqz p2, :cond_dc

    const-string p2, "[makeExpansionsDownloadFinish]handle multi app"

    invoke-static {v1, v2, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p2

    sget-object p3, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p2, p3, v1}, Lcom/android/launcher3/LauncherModel;->onPackageChanged(Landroid/os/UserHandle;[Ljava/lang/String;)V

    :cond_dc
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/String;

    iget-object v1, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    aput-object v1, p3, v4

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->onPackageChanged(Landroid/os/UserHandle;[Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->removePackageFromNewInstallSetNow(Ljava/lang/String;)V

    return-void
.end method

.method private notifyDownloadAppCreated(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 8

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusLauncherModel;->isCloudRecoveryStarted()Z

    move-result v2

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isExistOnRecommendFolder(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "notifyDownloadAppCreated -- isCloudRecoveryStarted = "

    const-string v5, "DownloadAppsManager"

    invoke-static {v4, v2, v5}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v4, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v4}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v4

    if-eqz v4, :cond_34

    if-nez v2, :cond_34

    if-nez v3, :cond_34

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->onInstallSessionCreated(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    goto :goto_48

    :cond_34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->addToDrawerMode(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/download/DownloadAppsManager;->notifyDownloadAppsUpdated(Ljava/util/Map;)V

    :cond_48
    :goto_48
    return-void
.end method

.method private notifyDownloadAppDeleted(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 5

    if-eqz p1, :cond_51

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyDownloadAppDeleted: appInfo: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InstallApp"

    const-string v1, "DownloadAppsManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_4b

    iget-object v0, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/OplusLauncherModel;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_51

    :cond_37
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/LauncherModel;->onPackageChanged(Landroid/os/UserHandle;[Ljava/lang/String;)V

    goto :goto_51

    :cond_4b
    const-string/jumbo p0, "notifyDownloadAppDeleted: launcherAppState is null!"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    :goto_51
    return-void
.end method

.method private onDownloadAlive(Ljava/lang/String;I)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onDownloadAlive]downloadSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 p1, 0x3eb

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/download/DownloadAppsManager;->clearAndSendMessageDelay(II)V

    goto :goto_45

    :cond_36
    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getGameCenterPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    const/16 p1, 0x3ec

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/download/DownloadAppsManager;->clearAndSendMessageDelay(II)V

    :cond_45
    :goto_45
    return-void
.end method

.method private onDownloadPackageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mIsNetworkAvailable:Z

    const/16 p0, 0x64

    if-ne p4, p0, :cond_d

    const/4 p4, 0x4

    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/download/DownloadAppsManager;->startStoreService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result p0

    const-string/jumbo p1, "onDownloadPackageClick downloadSource="

    const-string v0, " pkgName = "

    const-string v1, " installState = "

    invoke-static {p1, p2, v0, p3, v1}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " result = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallApp"

    const-string p2, "DownloadAppsManager"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onExpansionsDownloadInit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "[onExpansionsDownloadInit]pkg="

    const-string v0, "InstallApp"

    const-string v1, "DownloadAppsManager"

    invoke-static {p1, p2, v0, v1}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private removePackageFromNewInstallSetNow(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mNewInstallTypeInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "[removePackageFromNewInstallSet]pkg="

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mNewInstallTypeInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-void
.end method

.method private removePackageInDownloadAppList(Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v0, "InstallApp"

    const-string v3, "DownloadAppsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackageInDownloadAppList -- pkgName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v0, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_5b

    :cond_45
    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5a

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadWorkHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5a
    return-void

    :catchall_5b
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private removePackageInUpdateInfoMap(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removePackagesWhenStoreClearData(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    if-eqz p1, :cond_71

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_71

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_14
    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_6a

    goto :goto_1f

    :cond_3c
    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_52

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/download/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/launcher/download/d;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Ljava/util/List;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/launcher/download/DownloadAppsManager;->removePackageInUpdateInfoMap(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/launcher/download/DownloadAppsManager;->removePackageFromNewInstallSetNow(Ljava/lang/String;)V

    goto :goto_56

    :cond_69
    return-void

    :catchall_6a
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_71
    :goto_71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removePackagesWhenStoreClearData return for installSource = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " packageNames = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallApp"

    const-string p2, "DownloadAppsManager"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private shouldHandlePackageForAddOrUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const-string v1, "DownloadAppsManager"

    const-string v2, "InstallApp"

    if-eqz p1, :cond_72

    if-nez p2, :cond_a

    goto :goto_72

    :cond_a
    iget-object v3, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_f
    iget-object v3, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_6b

    const/4 v4, 0x1

    if-nez v3, :cond_1e

    :cond_18
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    :cond_1e
    :try_start_1e
    iget-object v3, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v6, v5, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_5d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldHandlePackageForAddOrUpdate -- find "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", it is from "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v5, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    iget-object p1, v5, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_6b

    if-nez p1, :cond_18

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_6b
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_72
    :goto_72
    const-string/jumbo p0, "shouldHandlePackageForAddOrUpdate return pkgName "

    const-string v3, ", source = "

    invoke-static {p0, p1, v3, p2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static startStoreService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Z
    .registers 15

    const/4 v0, 0x0

    const-string v1, "DownloadAppsManager"

    const-string v2, "InstallApp"

    if-nez p0, :cond_e

    const-string/jumbo p0, "startStoreService fail for context = null"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_29

    const-string/jumbo v6, "scheme"

    const-string/jumbo v7, "oaps"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "gc"

    const-string/jumbo v7, "mk"

    const-string v8, "host"

    if-eqz v5, :cond_46

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_5b

    invoke-interface {p1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    :cond_46
    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getGameCenterPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_181

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_5b

    invoke-interface {p1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    :goto_5b
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_6b

    const-string/jumbo v0, "path"

    const-string v1, "/deskdown"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7f

    const-string v1, "enterId"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_93

    const-string/jumbo v1, "pkg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_93
    const/4 p2, -0x1

    if-eq p3, p2, :cond_ab

    invoke-static {p3}, Lcom/android/launcher/download/DownloadAppUtils;->state2AppStoreState(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-eqz p3, :cond_ab

    const-string v0, "dst"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-eqz p3, :cond_bd

    const-string/jumbo p5, "tp"

    invoke-interface {p3, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bd
    if-eqz p4, :cond_d0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_d0

    const-string p3, "dtp"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, ""

    new-instance p2, Ll1/a;

    invoke-direct {p2, v3}, Ll1/a;-><init>(Ljava/util/Map;)V

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p4, 0x0

    :try_start_e1
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-eqz p3, :cond_f6

    invoke-interface {p3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_f0

    goto :goto_f7

    :cond_f0
    new-instance p3, Li1/m;

    invoke-direct {p3, v8}, Li1/m;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_f6
    move-object p3, p4

    :goto_f7
    check-cast p3, Ljava/lang/String;
    :try_end_f9
    .catch Li1/m; {:try_start_e1 .. :try_end_f9} :catch_fa

    goto :goto_fb

    :catch_fa
    move-object p3, p1

    :goto_fb
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const-string/jumbo v0, "mk_op"

    if-nez p5, :cond_132

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_110

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_132

    :cond_110
    invoke-static {}, Li1/j;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Li1/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_131

    invoke-static {}, Li1/j;->h()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Li1/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_125

    goto :goto_131

    :cond_125
    invoke-static {}, Li1/j;->b()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Li1/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_131

    move-object p3, v0

    goto :goto_132

    :cond_131
    :goto_131
    move-object p3, v7

    :cond_132
    :goto_132
    invoke-virtual {p2, p3}, Li1/a;->i(Ljava/lang/String;)Li1/a;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :try_start_13a
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_14f

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_149

    goto :goto_14f

    :cond_149
    new-instance p2, Li1/m;

    invoke-direct {p2, v8}, Li1/m;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_14f
    :goto_14f
    check-cast p4, Ljava/lang/String;
    :try_end_151
    .catch Li1/m; {:try_start_13a .. :try_end_151} :catch_152

    move-object p1, p4

    :catch_152
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15e

    new-instance p1, Li1/g;

    invoke-direct {p1}, Li1/g;-><init>()V

    goto :goto_17c

    :cond_15e
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16a

    new-instance p1, Li1/e;

    invoke-direct {p1}, Li1/e;-><init>()V

    goto :goto_17c

    :cond_16a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_177

    new-instance p1, Ld1/b;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ld1/b;-><init>(I)V

    goto :goto_17c

    :cond_177
    new-instance p1, Lcom/cdo/oaps/a;

    invoke-direct {p1}, Lcom/cdo/oaps/a;-><init>()V

    :goto_17c
    invoke-interface {p1, p0, v3}, Li1/f;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startStoreService for invalid downloadSource = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private statsDownloadStateChange(IILjava/lang/String;)V
    .registers 4

    if-eq p1, p2, :cond_13

    const/4 p2, 0x4

    if-eq p1, p2, :cond_a

    const/16 p2, 0x64

    if-eq p1, p2, :cond_a

    goto :goto_13

    :cond_a
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/statistics/LauncherStatistics;->statsAppChangedToInstalling(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method private updateDownloadExpansions(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Z)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v9, p6

    move/from16 v2, p7

    move-object/from16 v10, p9

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v11, 0x0

    const-string v12, "InstallApp"

    const-string v13, "DownloadAppsManager"

    const/4 v14, 0x1

    if-eqz v3, :cond_4d

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v11

    aput-object v0, v3, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    aput-object v10, v3, v4

    const/4 v4, 0x6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "[updateDownloadExpansions],downloadSource=%s,packageName=%s,state=%d,progress=%d,warningId=%d,flowSize=%s,oriState=%d,updateUI=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v13, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/download/DownloadAppsManager;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_67

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_66

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v11

    const-string v0, "[updateDownloadExpansions]pkg:%s,but manager not init yet!"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    return-void

    :cond_67
    iget-object v3, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6c
    iget-object v3, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_72
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v5, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_a2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateDownloadExpansions] Found installInfo="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v13, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_6c .. :try_end_a0} :catchall_270

    goto :goto_a2

    :cond_a1
    const/4 v4, 0x0

    :cond_a2
    :goto_a2
    iget-object v3, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    int-to-float v3, v9

    const/high16 v5, 0x42c80000  # 100.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_b6

    const/16 v3, 0x2afc

    move/from16 v5, p4

    if-ne v5, v3, :cond_b6

    move v15, v14

    goto :goto_b7

    :cond_b6
    move v15, v11

    :goto_b7
    if-nez v4, :cond_1a6

    if-nez v15, :cond_1a6

    invoke-virtual {v1, v0}, Lcom/android/launcher/download/DownloadAppsManager;->isPackageExistOnLauncher(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_cf

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v11

    const-string v0, "[updateDownloadExpansions] pkg[%s] is not installed!"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v13, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_cf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDownloadExpansions: downloadChannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v3

    if-eqz v3, :cond_133

    if-eq v2, v7, :cond_133

    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->isSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_133

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->findRecommendInfo(Ljava/lang/String;)Ly2/i;

    move-result-object v2

    if-eqz v2, :cond_149

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDownloadExpansions: remove MarketRecommendAppInfo because from store download!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Ly2/i;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_12b

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v3

    iget-object v2, v2, Ly2/i;->b:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendItem(Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)V

    goto :goto_149

    :cond_12b
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v2

    invoke-virtual {v2, v0, v14}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    goto :goto_149

    :cond_133
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v2

    if-eqz v2, :cond_149

    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->isSwitchEnable()Z

    move-result v2

    if-nez v2, :cond_149

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher/download/e;

    invoke-direct {v3, v0, v14}, Lcom/android/launcher/download/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_149
    :goto_149
    new-instance v8, Lcom/android/launcher/download/OplusPackageInstallInfo;

    const-string v16, ""

    move-object v2, v8

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p6

    move-object/from16 v7, p1

    move-object v11, v8

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher/download/OplusPackageInstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/launcher/download/DownloadAppsManager;->mNewInstallTypeInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v11, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    if-eqz v2, :cond_16b

    const/high16 v4, 0x10000

    goto :goto_16d

    :cond_16b
    const/high16 v4, 0x20000

    :goto_16d
    invoke-virtual {v3, v4}, Lcom/android/launcher/download/InstallState;->setType(I)V

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "[updateDownloadExpansions]InstallInfo not found from DownloadAppInfoList, create a new one.isNewExpansionType=%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v13, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_187
    iget-object v2, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18c
    .catchall {:try_start_187 .. :try_end_18c} :catchall_19f

    iget-object v2, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadWorkHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher/download/c;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v11, v4}, Lcom/android/launcher/download/c;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v4, v11

    move v2, v14

    goto :goto_1a7

    :catchall_19f
    move-exception v0

    iget-object v1, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1a6
    const/4 v2, 0x0

    :goto_1a7
    if-eqz v4, :cond_261

    if-eqz v15, :cond_1ad

    goto/16 :goto_261

    :cond_1ad
    iget-object v3, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v3

    if-nez v3, :cond_1ca

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1c9

    new-array v0, v14, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const-string v1, "[updateDownloadExpansions]Current installInfo type error. info=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v13, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c9
    return-void

    :cond_1ca
    iget-object v3, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v5, 0x3f0

    invoke-virtual {v3, v5, v0}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    move/from16 v0, p8

    invoke-direct {v1, v0, v4, v10}, Lcom/android/launcher/download/DownloadAppsManager;->handleDownloadWarningId(ILcom/android/launcher/download/OplusPackageInstallInfo;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isReservedState()Z

    move-result v0

    if-nez v0, :cond_1ea

    const/4 v0, 0x5

    move/from16 v3, p3

    if-ne v3, v0, :cond_1ec

    const-string v0, "[updateDownloadExpansions]State change to RESERVED, current state->paused"

    invoke-static {v12, v13, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_1ed

    :cond_1ea
    move/from16 v3, p3

    :cond_1ec
    move v0, v3

    :goto_1ed
    iget v3, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    sub-int v3, v9, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_211

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v14

    const-string v7, "[updateDownloadExpansions]final installInfo=%s,progressChange=%d"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v13, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_212

    :cond_211
    const/4 v6, 0x0

    :goto_212
    iget-object v5, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v5}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v5

    if-eq v5, v0, :cond_21c

    move v11, v14

    goto :goto_21d

    :cond_21c
    move v11, v6

    :goto_21d
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_228

    if-nez v11, :cond_228

    if-eqz v2, :cond_260

    :cond_228
    iget-object v2, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2, v0}, Lcom/android/launcher/download/InstallState;->setInstallState(I)V

    iput v9, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    iget-object v0, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher/download/c;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v4, v3}, Lcom/android/launcher/download/c;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p10, :cond_23d

    return-void

    :cond_23d
    iget-object v0, v1, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    iget-object v2, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x64

    iget-object v0, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_252

    if-eqz v11, :cond_260

    :cond_252
    if-eqz v11, :cond_25b

    iget-object v0, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    :cond_25b
    iget-object v0, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_260
    return-void

    :cond_261
    :goto_261
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_26c

    const-string v2, "[updateDownloadExpansions]oplus fully loaded, notify finish only.pkg="

    invoke-static {v2, v0, v12, v13}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26c
    invoke-virtual {v1, v0, v14}, Lcom/android/launcher/download/DownloadAppsManager;->notifyExpansionsDownloadFinish(Ljava/lang/String;Z)V

    return-void

    :catchall_270
    move-exception v0

    iget-object v1, v1, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private updateDownloadExpansions(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V
    .registers 20

    const/high16 v4, -0x80000000

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher/download/DownloadAppsManager;->updateDownloadExpansions(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Z)V

    return-void
.end method

.method private updateDownloadingApp(Lcom/android/launcher/download/OplusPackageInstallInfo;IILjava/lang/String;ILjava/lang/String;Z)V
    .registers 13

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    if-eqz v0, :cond_50

    const-string/jumbo v0, "updateDownloadingApp -- appInfo: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", appInfo.title = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", install state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", progress: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", warningId: "

    const-string v4, ", flowSize: "

    invoke-static {v0, p3, v3, p5, v4}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",hasInc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {v1, v2, p7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    invoke-direct {p0, p5, p1, p6}, Lcom/android/launcher/download/DownloadAppsManager;->handleDownloadWarningId(ILcom/android/launcher/download/OplusPackageInstallInfo;Ljava/lang/String;)V

    iget-object p5, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p5}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p5

    iget-object p6, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p2, p5, p6}, Lcom/android/launcher/download/DownloadAppsManager;->statsDownloadStateChange(IILjava/lang/String;)V

    iget-object p5, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p5}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result p5

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-eqz p5, :cond_8d

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_8d

    iget-object p5, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_80

    iget-object p5, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz p5, :cond_80

    invoke-static {p5}, Lcom/android/launcher/download/DownloadAppUtils;->isDefaultDownloadIcon(Landroid/graphics/Bitmap;)Z

    move-result p5

    if-eqz p5, :cond_8d

    :cond_80
    iput-object p4, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    iget-object p5, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p5, p4, p7}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromIconPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/android/launcher/download/OplusPackageInstallInfo;->setIcon(Landroid/graphics/Bitmap;)V

    move p4, p7

    goto :goto_8e

    :cond_8d
    move p4, p6

    :goto_8e
    iget-object p5, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p5}, Lcom/android/launcher/download/InstallState;->isReservedState()Z

    move-result p5

    const/4 v0, 0x2

    if-nez p5, :cond_a6

    const/4 p5, 0x5

    if-ne p2, p5, :cond_a6

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p2

    iget-object p5, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p5}, Lcom/android/statistics/LauncherStatistics;->statsDownloadingToPausedByMarket(Ljava/lang/String;)V

    move p2, v0

    :cond_a6
    iget p5, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    sub-int p5, p3, p5

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    int-to-float v3, p3

    const/high16 v4, 0x42c80000  # 100.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_b6

    move p4, p7

    :cond_b6
    iget-object v3, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v3

    if-eq v3, p2, :cond_c0

    move v3, p7

    goto :goto_c1

    :cond_c0
    move v3, p6

    :goto_c1
    if-nez p4, :cond_cb

    if-nez v3, :cond_cb

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-lt p4, v0, :cond_16b

    :cond_cb
    iget-object p4, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p4}, Lcom/android/launcher/download/InstallState;->isPendingState()Z

    move-result p4

    if-nez p4, :cond_d7

    if-ne p2, p7, :cond_d7

    move p4, p7

    goto :goto_d8

    :cond_d7
    move p4, p6

    :goto_d8
    iget-object p5, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p5, p2}, Lcom/android/launcher/download/InstallState;->setInstallState(I)V

    iput p3, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    iget-object p3, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f1

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    iget-object p3, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p6, p7

    :cond_f1
    if-eqz p6, :cond_fd

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadWorkHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/launcher/download/c;

    invoke-direct {p3, p0, p1, v0}, Lcom/android/launcher/download/c;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_fd
    const-wide/16 p2, 0x64

    const/16 p5, 0x3ef

    const/16 p6, 0x3e8

    if-eqz p4, :cond_11d

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_110

    const-string p1, "[updateDownloadingApp]switchToPendingState"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_110
    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p6}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 p1, 0x12c

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p5, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_16b

    :cond_11d
    iget-object p4, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p4, p6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p4

    if-eqz p4, :cond_127

    if-eqz v3, :cond_16b

    :cond_127
    iget-boolean p4, p0, Lcom/android/launcher/download/DownloadAppsManager;->mIsNetworkAvailable:Z

    const-wide/16 v0, 0x0

    if-nez p4, :cond_138

    iget-object p4, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/android/launcher/download/DownloadAppUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/launcher/download/DownloadAppsManager;->mIsNetworkAvailable:Z

    if-nez p4, :cond_138

    move-wide p2, v0

    :cond_138
    iget-object p4, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p4, p5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p4

    if-eqz p4, :cond_146

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p5}, Landroid/os/Handler;->removeMessages(I)V

    move-wide p2, v0

    :cond_146
    if-eqz v3, :cond_14e

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_14f

    :cond_14e
    move-wide v0, p2

    :goto_14f
    const-string/jumbo p2, "updateDownloadingApp: appInfo.mState = "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_16b
    :goto_16b
    return-void
.end method


# virtual methods
.method public checkUninstallState(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_47

    iget-object v0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/launcher/download/OplusPackageInstallInfo;->isHasIncDownload()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isInstallingState()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isMergePackageState()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :cond_27
    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkUninstallState]result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InstallApp"

    const-string v1, "DownloadAppsManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    return p1
.end method

.method public deleteDownloadAppBySource(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lcom/android/common/util/SignCheckUtils;->INSTANCE:Lcom/android/common/util/SignCheckUtils;

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/common/util/SignCheckUtils;->checkCallingPackagePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/download/DownloadAppsManager;->deleteDownloadAppBySourceInner(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Illegal application intends to delete the downloading package!"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dismissMobileNetworkAndStorageSpaceDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppDialogManager:Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-virtual {v0}, Lcom/android/launcher/download/DownloadAppDialogManager;->dismissMobileNetworkDialog()V

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppDialogManager:Lcom/android/launcher/download/DownloadAppDialogManager;

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadAppDialogManager;->dismissStorageSpaceDialog()V

    return-void
.end method

.method public dumpDownloadAppInfo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "== dumpDownloadAppInfo start=="

    invoke-static {p1, v0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_a
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/download/OplusPackageInstallInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dumpDownloadAppInfo info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_ca

    goto :goto_10

    :cond_34
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "key = "

    invoke-static {p1, v2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_43

    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "== dumpDownloadAppInfo end=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_c4

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    if-eqz v1, :cond_9a

    check-cast v1, Lcom/android/launcher3/model/OplusAllAppsList;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/model/OplusAllAppsList;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_9f

    :cond_9a
    const-string v1, "== allAppsList = null=="

    invoke-static {p1, v1, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_9f
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_c9

    :try_start_a9
    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/download/DownloadAppsManager;->dumpDownloadIcons(Lcom/android/launcher3/OplusWorkspace;Ljava/util/List;)V
    :try_end_b7
    .catchall {:try_start_a9 .. :try_end_b7} :catchall_bd

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_c9

    :catchall_bd
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_c4
    const-string p0, "== app = null=="

    invoke-static {p1, p0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_c9
    :goto_c9
    return-void

    :catchall_ca
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public finishBindingItems()V
    .registers 5

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/download/DownloadAppsManager;->onDownloadAlive(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getGameCenterPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/download/DownloadAppsManager;->onDownloadAlive(Ljava/lang/String;I)V

    const-string v0, "finishBindingItems, mUpdateInfoMap:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_43
    return-void
.end method

.method public getDownloadApps()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/download/OplusPackageInstallInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_12
    move-exception v0

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    :try_start_7
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v3, v2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_35

    if-eqz v3, :cond_1a

    move-object v1, v2

    :cond_2f
    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3c

    :catchall_35
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public handleIncrementDownloadChanged(Ljava/lang/String;Landroid/os/UserHandle;F)Z
    .registers 10

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "DownloadAppsManager"

    const-string v3, "InstallApp"

    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    aput-object p2, v0, v1

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "[handleIncrementDownloadChanged]pkg:%s,user:%s,progress:%f,caller:%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v4, 0x3f0

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->isPkgExistInDownloadAppList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_85

    const-string p0, "[handleIncrementDownloadChanged] existInDownloadList. pkg="

    invoke-static {p0, p1, v3, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    :cond_45
    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->isPkgExistInNewInstallMap(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher/download/DownloadAppsManager;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_66

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_5a

    const-string v4, "[handleIncrementDownloadChanged] Download not init yet. pkg="

    invoke-static {v4, p1, v3, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    iget-object v4, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mIsOplusMarketInstalled:Z

    :cond_66
    if-nez v0, :cond_78

    iget-boolean p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mIsOplusMarketInstalled:Z

    if-eqz p2, :cond_78

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_77

    const-string p0, "[handleIncrementDownloadChanged] not in newInstallMap, but Oplus market installed. pkg="

    invoke-static {p0, p1, v3, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    return v1

    :cond_78
    if-eqz v0, :cond_84

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/iconrender/impl/b;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/launcher3/iconrender/impl/b;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;F)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_84
    move v1, v0

    :cond_85
    :goto_85
    return v1
.end method

.method public handleIncrementDownloadChanged(Ljava/lang/String;Landroid/os/UserHandle;I)Z
    .registers 5

    int-to-float p3, p3

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/download/DownloadAppsManager;->handleIncrementDownloadChanged(Ljava/lang/String;Landroid/os/UserHandle;F)Z

    move-result p0

    return p0
.end method

.method public init()V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mInitialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mIsOplusMarketInstalled:Z

    iget-boolean v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mIsOplusMarketInstalled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/util/PackageUtils;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_28

    const/4 v1, 0x1

    :cond_28
    iput-boolean v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mShowInstallProgressSupportted:Z

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadWorkHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/download/DownloadAppsManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_37

    :cond_35
    iput-boolean v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mShowInstallProgressSupportted:Z

    :goto_37
    const-string v0, "init: isOplusMarketInstalled: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mIsOplusMarketInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShowInstallProgressSupportted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mShowInstallProgressSupportted:Z

    const-string v1, "InstallApp"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public initInstallState(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z
    .registers 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d1

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget-object v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "[initInstallState]pkg:%s,newInstallState:%s,installed:%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "InstallApp"

    const-string v5, "DownloadAppsManager"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    if-nez v0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v1

    :goto_3d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_42
    iget-object v3, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v3, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v5, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    iget-object v5, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v5}, Lcom/android/launcher/download/InstallState;->isInstallingState()Z

    move-result v5

    if-nez v5, :cond_a5

    iget-object v5, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v5}, Lcom/android/launcher/download/InstallState;->isMergePackageState()Z

    move-result v5

    if-eqz v5, :cond_72

    goto :goto_a5

    :cond_72
    iget-object v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    iget-object v6, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v6}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher/download/InstallState;->reset(I)V

    iget-object v5, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    iput-object v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallSource:Ljava/lang/String;

    iget v5, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    invoke-virtual {p2, v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setInstallProgress(I)V

    iget-object v5, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    iput-object v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    if-eqz p3, :cond_4d

    iget-object v4, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v4}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    iget-object v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromIconPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4d

    invoke-static {v4}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    iput-object v4, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_4d

    :cond_a5
    :goto_a5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-object v5, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/launcher/download/DownloadAppsManager;->removePackageInUpdateInfoMap(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_42 .. :try_end_b2} :catchall_ca

    goto :goto_4d

    :cond_b3
    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c8

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadWorkHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/launcher/download/d;

    invoke-direct {p2, p0, v0, v1}, Lcom/android/launcher/download/d;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Ljava/util/List;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c8
    move v1, v2

    goto :goto_d1

    :catchall_ca
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_d1
    :goto_d1
    return v1
.end method

.method public isDownloadProgressSupported()Z
    .registers 4

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isDisableDownloadProgress()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mShowInstallProgressSupportted:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDownloadProgressSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return p0
.end method

.method public isOplusExpansionsDownloadType(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p0

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result p0

    return p0

    :cond_15
    return v1
.end method

.method public isPackageExistOnLauncher(Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isPkgExistInDownloadAppList(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    move p0, v0

    goto :goto_b

    :cond_a
    move p0, v1

    :goto_b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "[isPkgExistInDownloadAppList]pkg:%s,exist:%s,caller:%s "

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstallApp"

    const-string v1, "DownloadAppsManager"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return p0
.end method

.method public notifyDownloadAppsUpdated(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/download/OplusPackageInstallInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-static {v0, v1}, Lcom/android/common/util/LauncherModeUtil;->updateInstallStateChangedPackage(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    goto :goto_12

    :cond_2e
    iget-object v2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    new-instance v3, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v3, v0, v1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    :cond_39
    return-void
.end method

.method public notifyExpansionsDownloadFinish(Ljava/lang/String;Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher/download/DownloadAppsManager;->makeExpansionsDownloadFinish(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onAppInstallFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_bf

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppInstallFailed: downloadAppListSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", installSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v1, v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_be

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_55

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_55

    move p2, v0

    goto :goto_56

    :cond_55
    move p2, v3

    :goto_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAppInstallFailed: isPackageExistOnLauncher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_a6

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDownloadApp appInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_be

    iget-object p2, p2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p2}, Lcom/android/launcher/download/InstallState;->markInstalled()V

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_be

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/LauncherModel;->onPackageChanged(Landroid/os/UserHandle;[Ljava/lang/String;)V

    goto :goto_be

    :cond_a6
    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V

    if-eqz p2, :cond_be

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v0, 0x3e9

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_be
    :goto_be
    return-void

    :catchall_bf
    move-exception p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onAppInstallStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    iget-boolean v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mShowInstallProgressSupportted:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p3, :cond_13

    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/android/launcher/download/DownloadAppUtils;->getApkPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    move-object v2, p1

    invoke-direct {p0, v2}, Lcom/android/launcher/download/DownloadAppsManager;->checkPackageVisibilityForDownload(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "DownloadAppsManager"

    const-string v1, "InstallApp"

    if-nez p1, :cond_39

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onAppInstallStarted -- package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is hidden on launcher, don\'t show progress!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_39
    const-string/jumbo p1, "onAppInstallStarted -- pkgName "

    const-string v3, ", installSource = "

    const-string v4, ", apkPath = "

    invoke-static {p1, v2, v3, p2, v4}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_a6

    iget-object p3, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result p3

    const/4 v4, 0x4

    if-eqz p3, :cond_88

    iget-object p2, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p2}, Lcom/android/launcher/download/InstallState;->isInstallingState()Z

    move-result p2

    if-nez p2, :cond_81

    iget-object p2, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p2}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result p2

    if-eqz p2, :cond_81

    iget-object p2, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p2, v4}, Lcom/android/launcher/download/InstallState;->setInstallState(I)V

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadWorkHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/launcher/download/c;

    invoke-direct {p3, p0, p1, v3}, Lcom/android/launcher/download/c;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_81
    const-string/jumbo p0, "onAppInstallStarted -- in ChildrenMode just return!"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_88
    iget-object p3, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p3}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p3

    iget-object v0, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, p3, v0}, Lcom/android/launcher/download/DownloadAppsManager;->statsDownloadStateChange(IILjava/lang/String;)V

    iget-object p3, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p3, v4}, Lcom/android/launcher/download/InstallState;->setInstallState(I)V

    iput-object p2, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/android/launcher/download/DownloadAppsManager;->notifyDownloadAppsUpdated(Ljava/util/Map;)V

    goto :goto_100

    :cond_a6
    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result p1

    if-eqz p1, :cond_b9

    const-string/jumbo p0, "onAppInstallStarted -- in childred mode2 just return"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b9
    invoke-static {p3}, Lcom/android/launcher/download/DownloadAppUtils;->isPackageLaunchOnScreen(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c6

    const-string/jumbo p0, "onAppInstallStarted -- The package has no icon in launcher, don\'t show the installing progress!"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c6
    iget-object p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_de

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_de

    move v6, v3

    goto :goto_e0

    :cond_de
    const/4 p1, 0x0

    move v6, p1

    :goto_e0
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, ""

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher/download/DownloadAppsManager;->addDownloadAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Z)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p1

    iget-object p2, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p2}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result p2

    if-eqz p2, :cond_fd

    iget-object p2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/android/launcher/download/DownloadAppUtils;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher/download/OplusPackageInstallInfo;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_fd
    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->notifyDownloadAppCreated(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    :goto_100
    return-void
.end method

.method public onAppStoreOrGameCenterDataCleared(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "onAppStoreOrGameCenterDataCleared dataClearedAppPkg = "

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoBySource(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_aa

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v4, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v4}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v4}, Lcom/android/launcher/download/InstallState;->markInstalled()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onAppStoreOrGameCenterDataCleared]process upgrade type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_4d
    iget-object v4, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v4}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v4

    if-eqz v4, :cond_81

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onAppStoreOrGameCenterDataCleared]process expansions type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v4}, Lcom/android/launcher/download/InstallState;->isNewInstallingExpansionsType()Z

    move-result v4

    if-eqz v4, :cond_76

    iget-object v4, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_76
    iget-object v4, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->markInstalled()V

    goto :goto_1a

    :cond_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onAppStoreOrGameCenterDataCleared]process remove type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_9c
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p4, p1}, Lcom/android/launcher/download/DownloadAppsManager;->removePackagesWhenStoreClearData(Ljava/util/List;Ljava/lang/String;)V

    :cond_aa
    return-void
.end method

.method public onClickDownloadApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 3

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isStillInDownloading()Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Lcom/android/launcher/download/DownloadAppsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/download/DownloadAppsManager$1;-><init>(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isDownloadingState()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsClickInstallIconInDownloading(Ljava/lang/String;)V

    goto :goto_56

    :cond_2a
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsClickInstallIconInPaused(Ljava/lang/String;)V

    goto :goto_56

    :cond_44
    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isInstallingState()Z

    move-result p0

    if-eqz p0, :cond_56

    const-string p0, "InstallApp"

    const-string p1, "DownloadAppsManager"

    const-string/jumbo v0, "onClickDownloadApp ignore click event for the app is installing now"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public onDownloadInfoChange(Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 17

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v4, "DownloadAppsManager"

    const-string v5, "InstallApp"

    if-eqz v3, :cond_14

    const-string/jumbo v3, "onDownloadInfoChange"

    invoke-static {v5, v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->convertAppStoreState(Landroid/content/ContentValues;)I

    move-result v6

    invoke-direct {p0, v6, v2}, Lcom/android/launcher/download/DownloadAppsManager;->handleGenericInterestState(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "state handled by handleGenericInterestState"

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void

    :cond_2b
    const-string/jumbo v3, "packageName"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher/download/DownloadAppsManager;->checkPackageVisibilityForDownload(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_39

    return-void

    :cond_39
    invoke-direct {p0, v3, v2}, Lcom/android/launcher/download/DownloadAppsManager;->shouldHandlePackageForAddOrUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4b

    const-string v0, "createOrUpdateDownloadApp - don\'t handle package "

    const-string v1, ", from "

    invoke-static {v0, v3, v1, v2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4b
    const/4 v4, 0x0

    const-string v5, "iconResourceUri"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_65

    :cond_59
    const-string v5, "iconResource"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_65
    :goto_65
    const-string v5, "downloadProgress"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v5, "downloadChannel"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_7c

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_7c
    const-string v8, "appName"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_8b

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_8c

    :cond_8b
    move-object v8, v10

    :goto_8c
    const-string/jumbo v9, "warningId"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_9f

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_a0

    :cond_9f
    move v9, v12

    :goto_a0
    const-string v11, "flowSize"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ac

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_ac
    const-string v11, "appHasIncDownload"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_bf

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v12, v1

    :cond_bf
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v3

    move-object v3, v8

    move v5, v6

    move v6, v7

    move v7, v11

    move v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher/download/DownloadAppsManager;->createOrUpdateDownloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Z)V

    return-void
.end method

.method public onExpansionDownloadInfoChange(Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 16

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v4, "DownloadAppsManager"

    const-string v5, "InstallApp"

    if-eqz v3, :cond_10

    const-string/jumbo v3, "onExpansionDownloadInfoChange"

    invoke-static {v5, v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->convertAppStoreState(Landroid/content/ContentValues;)I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/android/launcher/download/DownloadAppsManager;->handleGenericInterestState(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "state handled by handleGenericInterestState"

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void

    :cond_27
    const-string/jumbo v6, "packageName"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/launcher/download/DownloadAppsManager;->checkPackageVisibilityForDownload(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_35

    return-void

    :cond_35
    invoke-direct {p0, v6, p2}, Lcom/android/launcher/download/DownloadAppsManager;->shouldHandlePackageForAddOrUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_47

    const-string v0, "createOrUpdateDownloadApp - don\'t handle package "

    const-string v1, ", from "

    invoke-static {v0, v6, v1, p2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    const-string v4, "installState"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "downloadProgress"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v5, "downloadChannel"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v5, "appName"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_74

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_75

    :cond_74
    move-object v5, v10

    :goto_75
    const/4 v9, 0x0

    const-string/jumbo v11, "warningId"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_87

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_87
    const-string v11, "flowSize"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_94

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    :cond_94
    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher/download/DownloadAppsManager;->updateDownloadExpansions(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Z)V

    return-void
.end method

.method public onPackageUpdateTask(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V

    goto :goto_e

    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V

    :goto_e
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 5
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "InstallApp"

    const-string v0, "DownloadAppsManager"

    const-string/jumbo v1, "onResume"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadAppsManager;->updateDownloadingAppsProgress()V

    goto :goto_33

    :cond_24
    const-string/jumbo p0, "workspace loading, launcher null:"

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    invoke-static {p0, v1, p1, v0}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public onSeriousError(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "onSeriousError downloadSource = "

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadAppUtils;->clearAllDownloadIcons(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->removePackageInDownloadAppList(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->removePackageInUpdateInfoMap(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mNewInstallTypeInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_29
    return-void
.end method

.method public setIsSupportDownloadProgress(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mShowInstallProgressSupportted:Z

    return-void
.end method

.method public updateDownloadingAppsProgress()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v2, v1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isDownloadingState()Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isMergePackageState()Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isInstallingState()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2f
    iget-object v2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_6f

    goto :goto_b

    :cond_41
    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6e

    const-string/jumbo v0, "mUpdateInfoMap = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/download/DownloadAppsManager;->mUpdateInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadAppsManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6e
    return-void

    :catchall_6f
    move-exception v0

    iget-object p0, p0, Lcom/android/launcher/download/DownloadAppsManager;->mDownloadAppInfoListReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
