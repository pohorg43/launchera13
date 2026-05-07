.class public Lcom/android/launcher/receiver/PackageUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static final ACTION_OPLUS_INSTALL_FAILED:Ljava/lang/String; = "oplus.intent.action.OPLUS_INSTALL_FAILED"

.field public static final ACTION_OPLUS_START_INSTALL:Ljava/lang/String; = "oplus.intent.action.OPLUS_START_INSTALL"

.field public static final ACTION_TRIGGER_PACKAGE:Ljava/lang/String; = "android.intent.action.TRIGGER_PACKAGE"

.field public static final BACKUPRETORE_PROCESSNAME:Ljava/lang/String;

.field private static final EXTRA_IS_FROM_PACKAGEINSTALLER:Ljava/lang/String; = "isFromPackageInstaller"

.field private static final INSTALL_FAILED_DELAY_MS:J = 0x1eL

.field public static final PACKAGE_NOTIFICATION:Ljava/lang/String; = "com.oplus.notificationmanager"

.field private static final RELOAD_DELAY_AFTER_RESTORE_APP:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "PackageUpdateReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsAppRestoring:Z

.field private final mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

.field private final mPackageUpdateHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f12003f

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->BACKUPRETORE_PROCESSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 4

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mIsAppRestoring:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mPackageUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/receiver/PackageUpdateReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->lambda$onReceive$1()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method public static getProcessNameByPid(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "PackageUpdateReceiver"

    if-eqz p0, :cond_30

    if-gez p1, :cond_8

    goto :goto_30

    :cond_8
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_18

    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_2a
    const-string p0, "getProcessNameByPid -- processName = "

    invoke-static {p0, v0, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_30
    :goto_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessNameByPid. context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " , pid = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserHandleByIntent(Landroid/content/Intent;)Landroid/os/UserHandle;
    .registers 3

    if-eqz p1, :cond_11

    const-string p0, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_18

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object p1

    :cond_11
    const-string p0, "PackageUpdateReceiver"

    const-string p1, "getUserHandleByIntent. The intent is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method private getUserIdByIntent(Landroid/content/Intent;)I
    .registers 4

    const-string p0, "PackageUpdateReceiver"

    if-nez p1, :cond_e

    const-string p1, "getUserIdByIntent. The intent is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    return p0

    :cond_e
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "getUserIdByIntent uid = "

    invoke-static {v0, p1, p0}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eq p1, v1, :cond_21

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0

    :cond_21
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onReceive$0(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->Companion:Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil$Companion;->getSInstance()Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/folder/download/db/FolderRecommendDbUtil;->deleteMarketInfoByPkg(Ljava/lang/String;Z)Z

    return-void
.end method

.method private synthetic lambda$onReceive$1()V
    .registers 3

    const-string/jumbo v0, "start forceReload, "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->isLauncherRestoreStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; loader running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusLauncherModel;->isLoaderTaskRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageUpdateReceiver"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->isLauncherRestoreStarted()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherModel;->isLoaderTaskRunning()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_38
    invoke-static {}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->isLauncherRestoreStarted()Z

    move-result p0

    if-nez p0, :cond_45

    invoke-static {}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getInstance()Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->onAppRestoreEnd()V

    :cond_45
    return-void
.end method

.method private reInitFolderContentRecommendState()V
    .registers 5

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/common/config/FeatureOption;->initSupportFolderContentRecommendFeature(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eq v0, v1, :cond_57

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const-string/jumbo v1, "reInitFolderContentRecommendState, try to notify, "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    move v0, v3

    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageUpdateReceiver"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherModel;->onMarketUninstall()V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    goto :goto_57

    :cond_4e
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->setAppStoreContentRecommend(Landroid/content/Context;I)V

    :cond_57
    :goto_57
    return-void
.end method

.method private reInitSearchEntryState()V
    .registers 4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSearchEntry()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/common/config/FeatureOption;->initSupportSearchEntryFeature(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSearchEntry()Z

    move-result v1

    if-eq v0, v1, :cond_39

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    const-string/jumbo v0, "reInitSearchEntryState, try to notify, "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    const-string v2, "PackageUpdateReceiver"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->changeSupportState()V

    :cond_39
    return-void
.end method


# virtual methods
.method public isAppRestoring()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mIsAppRestoring:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    invoke-static {p2}, Lcom/android/overlay/OverlayKeepAliveService;->notifyPackageChangedIfNecessary(Landroid/content/Intent;)V

    invoke-direct {p0, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->getUserHandleByIntent(Landroid/content/Intent;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " userHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->getUserIdByIntent(Landroid/content/Intent;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageUpdateReceiver"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Action: "

    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    const-string v8, "android.intent.action.PACKAGE_DATA_CLEARED"

    if-nez v5, :cond_6f

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    :cond_6f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", no package name found, do nothing."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v9, "android.intent.action.PACKAGE_ADDED"

    if-nez v5, :cond_a1

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    :cond_a1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_aa

    invoke-static {v2}, Lcom/oplus/util/PackageCacheUtils;->invalidCache(Ljava/lang/String;)V

    :cond_aa
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c4

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c4

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c4

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cd

    :cond_c4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cd

    invoke-static {v2}, Lcom/android/launcher3/popup/FixedWidgetShortcutLoader;->invalidCache(Ljava/lang/String;)V

    :cond_cd
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v5

    if-eqz v5, :cond_f0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f0

    sget-object v5, Lcom/android/launcher3/card/CardPermissionManager;->PACKAGE_ASSISTANT_SCREEN:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f0

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v5

    iget-object v9, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Lcom/android/launcher3/card/CardPermissionManager;->syncCardPermissionState(Landroid/content/Context;)V

    :cond_f0
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    const-string v5, "com.oplus.game.empowerment.folder"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    sget-object v5, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->sendUpdateShortcutBroadcast()V

    :cond_103
    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v5

    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object v9

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string/jumbo v11, "oplus.intent.action.OPLUS_START_INSTALL"

    const/4 v12, 0x1

    sparse-switch v10, :sswitch_data_466

    goto :goto_16c

    :sswitch_11a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_121

    goto :goto_16c

    :cond_121
    const/4 v3, 0x7

    goto :goto_16d

    :sswitch_123
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12a

    goto :goto_16c

    :cond_12a
    const/4 v3, 0x6

    goto :goto_16d

    :sswitch_12c
    const-string/jumbo v3, "oplus.intent.action.CHANGE_STK_LABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_136

    goto :goto_16c

    :cond_136
    const/4 v3, 0x5

    goto :goto_16d

    :sswitch_138
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13f

    goto :goto_16c

    :cond_13f
    const/4 v3, 0x4

    goto :goto_16d

    :sswitch_141
    const-string v3, "com.oplus.backuprestore.restore_app_end"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14a

    goto :goto_16c

    :cond_14a
    const/4 v3, 0x3

    goto :goto_16d

    :sswitch_14c
    const-string v3, "com.oplus.backuprestore.restore_app_start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_155

    goto :goto_16c

    :cond_155
    const/4 v3, 0x2

    goto :goto_16d

    :sswitch_157
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15e

    goto :goto_16c

    :cond_15e
    move v3, v12

    goto :goto_16d

    :sswitch_160
    const-string/jumbo v3, "oplus.intent.action.OPLUS_INSTALL_FAILED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16a

    goto :goto_16c

    :cond_16a
    const/4 v3, 0x0

    goto :goto_16d

    :goto_16c
    const/4 v3, -0x1

    :goto_16d
    const v7, 0x7f1203de

    packed-switch v3, :pswitch_data_488

    goto/16 :goto_465

    :pswitch_175  #0x7
    const-string p2, "com.oplus.notificationmanager"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19f

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive -ACTION_PACKAGE_DATA_CLEARED--> pkgName = PACKAGE_NOTIFICATION, userId= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object p1

    invoke-virtual {p1, v12, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateBadgeSwitch(ZI)V

    goto/16 :goto_465

    :cond_19f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive -ACTION_PACKAGE_DATA_CLEARED--> pkgName = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", userHandle = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/android/launcher/download/DownloadAppUtils;->clearAllDownloadIcons(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_465

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_465

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    new-instance p2, Lcom/android/launcher3/util/PackageUserKey;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p2, p0, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v12}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->clearBadgeNumberForPackageUser(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;Z)V

    goto/16 :goto_465

    :pswitch_1ea  #0x5
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->sIsSupportChangeStklableNew:Z

    if-eqz p1, :cond_465

    const-string p1, "com.android.stk"

    const-string p2, "com.mediatek.StkSelection"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    new-instance p2, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 v0, 0x2

    invoke-direct {p2, v0, v1, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto/16 :goto_465

    :pswitch_203  #0x4, 0x6
    invoke-static {p1}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher/pkg/PackageDeleteManager;->isPackageUninstalling(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_227

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ACTION_PACKAGE_CHANGED for package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", it is in uninstalling, so ignore the broadcast!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_227
    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->updatePhoneManagerExistState()V

    const v0, 0x7f1203df

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_241

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/config/FeatureOption;->initBranchSearchFeature(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->reInitSearchEntryState()V

    :cond_241
    const v0, 0x7f1203d9

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_251

    invoke-direct {p0}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->reInitSearchEntryState()V

    :cond_251
    invoke-static {v7}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25e

    invoke-direct {p0}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->reInitFolderContentRecommendState()V

    :cond_25e
    invoke-virtual {v9, v2}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->isGamePackageHide(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_265

    return-void

    :cond_265
    invoke-static {p1, v2}, Lcom/android/common/util/OplusLauncherDbUtils;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package changed, name = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", appState = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->resolveShelfAppState(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-static {v0, v2, v3}, Lcom/oplus/leftscreen/OverlayUtils;->resolveHiAssistantState(ILjava/lang/String;Lcom/android/launcher3/LauncherModel;)V

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2ee

    const-string v0, "android.intent.action.TRIGGER_PACKAGE"

    const/4 v6, -0x1

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->getProcessNameByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package changed, callPid = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", callProcessName = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; isAppRestoring = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mIsAppRestoring:Z

    invoke-static {v0, p2, v4}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-object p2, Lcom/android/launcher/receiver/PackageUpdateReceiver;->BACKUPRETORE_PROCESSNAME:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2ec

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2ec

    iget-boolean p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mIsAppRestoring:Z

    if-nez p1, :cond_2ec

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32a

    const/4 p1, 0x0

    invoke-virtual {v5, p1}, Lcom/android/launcher/download/DownloadAppsManager;->setIsSupportDownloadProgress(Z)V

    iget-object p2, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    new-instance v0, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    new-array v4, v12, [Ljava/lang/String;

    aput-object v2, v4, p1

    const/4 p1, 0x4

    invoke-direct {v0, p1, v1, v4}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_32a

    :cond_2ec
    const/4 v3, 0x0

    goto :goto_32a

    :cond_2ee
    if-nez v0, :cond_31d

    sget-object p2, Lcom/android/launcher/operators/GeneralCustomizer;->INSTANCE:Lcom/android/launcher/operators/GeneralCustomizer;

    const-string/jumbo v0, "target"

    const-string/jumbo v6, "pkgname"

    invoke-static {p1, v0, v6}, Lcom/android/launcher/operators/GeneralCustomizer;->getReplaceIconFeatureInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_31d

    if-eqz v2, :cond_31d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_31d

    if-eqz v0, :cond_31d

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31d

    const-string v0, "enable app packageName = "

    invoke-static {v0, v2, v4}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p2, p1, p0, v2}, Lcom/android/launcher/operators/GeneralCustomizer;->resetDatabaseAndReload(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Ljava/lang/String;)V

    return-void

    :cond_31d
    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32a

    invoke-virtual {v5, v12}, Lcom/android/launcher/download/DownloadAppsManager;->setIsSupportDownloadProgress(Z)V

    :cond_32a
    :goto_32a
    if-eqz v3, :cond_465

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    new-instance p1, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    new-array p2, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, p2, v0

    invoke-direct {p1, v3, v1, p2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto/16 :goto_465

    :pswitch_33d  #0x3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mIsAppRestoring:Z

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/receiver/PackageUpdateReceiver;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_465

    :pswitch_352  #0x2
    iput-boolean v12, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mIsAppRestoring:Z

    goto/16 :goto_465

    :pswitch_356  #0x0, 0x1
    invoke-virtual {v5}, Lcom/android/launcher/download/DownloadAppsManager;->isDownloadProgressSupported()Z

    move-result v1

    if-eqz v1, :cond_465

    const-string v1, "installerPackageName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.oplus.sau"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "InstallApp"

    if-eqz v2, :cond_373

    const-string/jumbo p0, "onReceive ignore for install from com.oplus.sau"

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_373
    const-string/jumbo v2, "packageName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p1

    if-nez p1, :cond_386

    move p1, v12

    goto :goto_387

    :cond_386
    const/4 p1, 0x0

    :goto_387
    sget-boolean v8, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v8, :cond_394

    invoke-static {v7}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v12

    :cond_394
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v7

    if-eqz v7, :cond_3df

    if-eqz p1, :cond_3df

    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->isSwitchEnable()Z

    move-result p1

    if-eqz p1, :cond_3df

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->findRecommendInfo(Ljava/lang/String;)Ly2/i;

    move-result-object p1

    if-eqz p1, :cond_3f6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remove MarketRecommendAppInfo because Three-way download!!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p1, Ly2/i;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_3d7

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v7

    iget-object p1, p1, Ly2/i;->b:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {v7, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendItem(Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)V

    goto :goto_3f6

    :cond_3d7
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p1

    invoke-virtual {p1, v2, v12}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    goto :goto_3f6

    :cond_3df
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p1

    if-eqz p1, :cond_3f6

    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->isSwitchEnable()Z

    move-result p1

    if-nez p1, :cond_3f6

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher/download/e;

    const/4 v8, 0x3

    invoke-direct {v7, v2, v8}, Lcom/android/launcher/download/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3f6
    :goto_3f6
    const-string p1, ", package: "

    const-string v7, ", installSource: "

    invoke-static {v6, v0, p1, v2, v7}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_459

    const-string p1, "isFromPackageInstaller"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "isFromPackageInstaller: "

    invoke-static {v0, p1, v4}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_426

    const-string p0, "apkPath"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v2, v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->onAppInstallStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_465

    :cond_426
    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p1

    if-eqz p1, :cond_453

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_453

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getGameCenterPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_453

    const-string p2, "Package install message not from PackageInstaller but the package is downloading , so delete download task"

    invoke-static {v3, v4, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Lcom/android/launcher/download/DownloadAppsManager;->deleteDownloadPackageFromLauncher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_465

    :cond_453
    const-string p0, "Ignore package install message not from PackageInstaller and the package is not downloading."

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_465

    :cond_459
    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mPackageUpdateHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/launcher/receiver/PackageUpdateReceiver$1;

    invoke-direct {p2, p0, v5, v2, v1}, Lcom/android/launcher/receiver/PackageUpdateReceiver$1;-><init>(Lcom/android/launcher/receiver/PackageUpdateReceiver;Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_465
    :goto_465
    return-void

    :sswitch_data_466
    .sparse-switch
        -0x70be2dfe -> :sswitch_160
        -0x650c2023 -> :sswitch_157
        -0x3a9e20a1 -> :sswitch_14c
        -0x3512c0e8 -> :sswitch_141
        -0x304ed112 -> :sswitch_138
        -0x185b8933 -> :sswitch_12c
        0xa480416 -> :sswitch_123
        0xff13fb5 -> :sswitch_11a
    .end sparse-switch

    :pswitch_data_488
    .packed-switch 0x0
        :pswitch_356  #00000000
        :pswitch_356  #00000001
        :pswitch_352  #00000002
        :pswitch_33d  #00000003
        :pswitch_203  #00000004
        :pswitch_1ea  #00000005
        :pswitch_203  #00000006
        :pswitch_175  #00000007
    .end packed-switch
.end method

.method public registerPackageUpdateReceiver()V
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "oplus.intent.action.OPLUS_START_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oplus.backuprestore.restore_app_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oplus.backuprestore.restore_app_end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->sIsSupportChangeStklableNew:Z

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "oplus.intent.action.CHANGE_STK_LABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1f
    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "oplus.permission.OPLUS_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "oplus.intent.action.OPLUS_INSTALL_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public resolveShelfAppState(ILjava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "com.coloros.assistantscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_33

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    const-string p2, "getLauncher  = "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    const-string v1, "PackageUpdateReceiver"

    invoke-static {p2, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p0, :cond_33

    invoke-static {p1}, Lcom/android/common/util/PackageUtils;->isApplicationEnabled(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-virtual {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->setShelAppEnableState(Z)V

    :cond_33
    return-void
.end method

.method public unregisterPackageUpdateReceiver()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
