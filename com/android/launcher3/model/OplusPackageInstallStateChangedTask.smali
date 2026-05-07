.class public Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusPackageInstallStateChangedTask"


# instance fields
.field private final mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    return-void
.end method

.method public static synthetic j(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->lambda$execute$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic k(Ljava/util/HashSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->lambda$execute$3(Ljava/util/HashSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher/model/data/PromiseAppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->lambda$execute$0(Lcom/android/launcher/model/data/PromiseAppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private static synthetic lambda$execute$0(Lcom/android/launcher/model/data/PromiseAppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method private static synthetic lambda$execute$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppInfosRemoved(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$execute$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$execute$3(Ljava/util/HashSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->lambda$execute$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_21

    const-string v3, "InstallApp"

    const-string v6, "OplusPackageInstallStateChangedTask"

    const-string v7, "execute start,mInstallInfo:%s,"

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v3, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v3, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v3

    const/16 v6, 0x3e8

    if-ne v3, v6, :cond_2f

    move v3, v5

    goto :goto_30

    :cond_2f
    move v3, v4

    :goto_30
    if-nez v3, :cond_6d

    iget-object v6, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v6, v6, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v6}, Lcom/android/launcher/download/InstallState;->isInstallingState()Z

    move-result v6

    if-nez v6, :cond_46

    iget-object v6, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v6, v6, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v6}, Lcom/android/launcher/download/InstallState;->isMergePackageState()Z

    move-result v6

    if-eqz v6, :cond_6d

    :cond_46
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v6, v6, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_6d

    const-string v6, "InstallApp"

    const-string v7, "OplusPackageInstallStateChangedTask"

    const-string v8, "installing state but apk is installed.mInstallInfo:%s,"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    aput-object v9, v5, v4

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    if-eqz v3, :cond_9b

    :try_start_6f
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v0, v0, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/OplusLauncherModel;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6f .. :try_end_9a} :catch_9a

    :catch_9a
    :cond_9a
    return-void

    :cond_9b
    iget-object v3, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v3, v3, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_ce

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v3

    iget-object v5, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v5, v5, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/launcher/download/DownloadAppsManager;->isPkgExistInDownloadAppList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ce

    const-string v1, "InstallApp"

    const-string v2, "OplusPackageInstallStateChangedTask"

    const-string v3, "Don`t update install state."

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ce
    monitor-enter p3

    :try_start_cf
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v4

    :goto_e6
    if-ge v9, v8, :cond_164

    iget-object v10, v2, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v10}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_161

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v12, v12, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_161

    instance-of v11, v10, Lcom/android/launcher/model/data/PromiseAppInfo;

    if-nez v11, :cond_161

    iget-object v11, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v11, v11, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v11}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v11

    if-nez v11, :cond_11a

    iget-object v11, v10, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v11}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v11

    if-eqz v11, :cond_161

    :cond_11a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_138

    const-string v11, "InstallApp"

    const-string v12, "OplusPackageInstallStateChangedTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "appinfo is not PromiseAppInfo,and in downloading/installing state."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_138
    iget-object v11, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v12, v10, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v12, v11, Lcom/android/launcher/download/OplusPackageInstallInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v13, v10, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/launcher3/model/AllAppsList;->addPromiseAppForUpdatingApp(Landroid/content/Context;Lcom/android/launcher/download/OplusPackageInstallInfo;Landroid/os/UserHandle;)Lcom/android/launcher/model/data/PromiseAppInfo;

    move-result-object v11

    if-nez v7, :cond_151

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_151
    if-eqz v11, :cond_161

    iget-object v12, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget v12, v12, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    iput v12, v11, Lcom/android/launcher/model/data/PromiseAppInfo;->level:I

    new-instance v12, Landroid/util/Pair;

    invoke-direct {v12, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_161
    add-int/lit8 v9, v9, 0x1

    goto :goto_e6

    :cond_164
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_182

    const-string v8, "InstallApp"

    const-string v9, "OplusPackageInstallStateChangedTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appInfoToPromiseAppInfoList:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_182
    if-eqz v7, :cond_1a3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_188
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/model/AllAppsList;->removePromiseApp(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_188

    :cond_1a3
    iget-object v7, v2, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_1aa
    const/4 v9, 0x2

    if-ge v4, v7, :cond_323

    iget-object v10, v2, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v10}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_31e

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v12, v12, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1cb

    goto/16 :goto_31e

    :cond_1cb
    instance-of v11, v10, Lcom/android/launcher/model/data/PromiseAppInfo;

    if-eqz v11, :cond_31e

    move-object v11, v10

    check-cast v11, Lcom/android/launcher/model/data/PromiseAppInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v12

    if-eqz v12, :cond_1f0

    const-string v12, "InstallApp"

    const-string v13, "OplusPackageInstallStateChangedTask"

    const-string/jumbo v14, "updating apps,promiseAppInfo:%s,InstallInfo:%s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v11, v9, v8

    iget-object v15, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    const/16 v16, 0x1

    aput-object v15, v9, v16

    invoke-static {v14, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v13, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f0
    iget-object v9, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v9, v9, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v9}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v9

    if-nez v9, :cond_22e

    iget-object v9, v11, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v9}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v9

    if-eqz v9, :cond_203

    goto :goto_22e

    :cond_203
    iget-object v8, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v8, v8, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v8}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v8

    const/16 v9, 0x3e9

    if-ne v8, v9, :cond_21a

    iget-object v8, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget v8, v8, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    iput v8, v11, Lcom/android/launcher/model/data/PromiseAppInfo;->level:I

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31e

    :cond_21a
    iget-object v8, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v8, v8, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v8}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v8

    const/16 v9, 0x3ea

    if-ne v8, v9, :cond_31e

    invoke-virtual {v2, v10}, Lcom/android/launcher3/model/AllAppsList;->removePromiseApp(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31e

    :cond_22e
    :goto_22e
    iget-object v9, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v9, v9, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v9}, Lcom/android/launcher/download/InstallState;->isStillInDownloading()Z

    move-result v9

    if-nez v9, :cond_277

    iget-object v9, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v9, v9, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v9}, Lcom/android/launcher/download/InstallState;->isInstallingState()Z

    move-result v9

    if-eqz v9, :cond_243

    goto :goto_277

    :cond_243
    iget-object v8, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v8, v8, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v8}, Lcom/android/launcher/download/InstallState;->isInstallFailedState()Z

    move-result v8

    if-eqz v8, :cond_255

    invoke-virtual {v2, v10}, Lcom/android/launcher3/model/AllAppsList;->removePromiseApp(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31e

    :cond_255
    iget-object v8, v11, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v8}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v8

    iget-object v9, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v9, v9, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v9}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v9

    if-eq v8, v9, :cond_31e

    iget-object v8, v11, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    iget-object v9, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v9, v9, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v9}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher/download/InstallState;->reset(I)V

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31e

    :cond_277
    :goto_277
    iget-object v9, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget v12, v9, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    iput v12, v11, Lcom/android/launcher/model/data/PromiseAppInfo;->level:I

    iget-object v12, v11, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    iget-object v9, v9, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v9}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v9

    invoke-virtual {v12, v9}, Lcom/android/launcher/download/InstallState;->reset(I)V

    iget-object v9, v10, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v9, :cond_296

    iget-object v9, v9, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v9}, Lcom/android/launcher/download/DownloadAppUtils;->isDefaultDownloadIcon(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-eqz v9, :cond_296

    const/4 v9, 0x1

    goto :goto_297

    :cond_296
    move v9, v8

    :goto_297
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v12

    if-eqz v12, :cond_2ca

    const-string v12, "InstallApp"

    const-string v13, "OplusPackageInstallStateChangedTask"

    const-string/jumbo v14, "update app,icon,pkg:%s,siPath:%s,newPath:%s,defaultIcon:%s"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v8

    iget-object v8, v10, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v8, v15, v16

    iget-object v8, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v8, v8, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v8, v15, v16

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v16, 0x3

    aput-object v8, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v13, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2ca
    if-nez v9, :cond_2e1

    iget-object v8, v10, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v9, v9, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2df

    iget-object v8, v10, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v8, :cond_2dd

    goto :goto_2df

    :cond_2dd
    const/4 v8, 0x0

    goto :goto_2e0

    :cond_2df
    :goto_2df
    const/4 v8, 0x1

    :goto_2e0
    move v9, v8

    :cond_2e1
    if-eqz v9, :cond_31b

    iget-object v8, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v8, v8, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2f3

    iget-object v8, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v8, v8, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    iput-object v8, v10, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    :cond_2f3
    iget-object v8, v10, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_308

    iget-object v9, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v8, v13}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromIconPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v9, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIcon:Landroid/graphics/Bitmap;

    :cond_308
    iget-object v8, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v8, v8, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_31b

    invoke-static {v8}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v8

    iput-object v8, v10, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v8, v10, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/high16 v9, -0x80000000

    or-int/2addr v8, v9

    iput v8, v10, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_31b
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_31e
    :goto_31e
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1aa

    :cond_323
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_342

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_342

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/model/data/PromiseAppInfo;

    new-instance v7, Lcom/android/launcher3/model/k;

    invoke-direct {v7, v4}, Lcom/android/launcher3/model/k;-><init>(Lcom/android/launcher/model/data/PromiseAppInfo;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    goto :goto_32d

    :cond_342
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_351

    new-instance v3, Lcom/android/launcher3/model/p;

    const/4 v4, 0x2

    invoke-direct {v3, v5, v4}, Lcom/android/launcher3/model/p;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    :cond_351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36a

    new-instance v4, Lcom/android/launcher3/model/p;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Lcom/android/launcher3/model/p;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    iget-object v3, v2, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_36a
    monitor-exit p3
    :try_end_36b
    .catchall {:try_start_cf .. :try_end_36b} :catchall_5c2

    monitor-enter p2

    :try_start_36c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_377
    :goto_377
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_582

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v5, :cond_377

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v5, :cond_377

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v7, v7, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v7}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v7

    if-nez v7, :cond_3d8

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v4}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v4

    if-eqz v4, :cond_3a5

    goto :goto_3d8

    :cond_3a5
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v4

    if-eqz v4, :cond_377

    if-eqz v6, :cond_377

    iget-object v4, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v4, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_377

    iget-object v4, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget v4, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    invoke-virtual {v5, v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setInstallProgress(I)V

    iget-object v4, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v4, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v4}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v4

    const/16 v6, 0x3ea

    if-ne v4, v6, :cond_3d4

    iget v4, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    and-int/lit16 v4, v4, -0x401

    iput v4, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    :cond_3d4
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_377

    :cond_3d8
    :goto_3d8
    if-eqz v6, :cond_377

    iget-object v4, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v4, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_377

    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v4

    if-nez v4, :cond_377

    iget-object v4, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_40f

    const-string v6, "InstallApp"

    const-string v7, "OplusPackageInstallStateChangedTask"

    const-string/jumbo v8, "updating dataModel,packageInstallInfo:%s,WorkspaceItemInfo:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40f
    iget-object v6, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v6}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v6

    if-nez v6, :cond_421

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v6

    if-eqz v6, :cond_443

    :cond_421
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v6

    if-nez v6, :cond_443

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateColorDownloadInstallFlag()V

    iget-object v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    iget-object v7, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v7, v7, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v7}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher/download/InstallState;->reset(I)V

    iget v6, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mItemType:I

    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget-object v6, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mInstallSource:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallSource:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    :cond_443
    iget-object v6, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget v6, v6, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setInstallProgress(I)V

    iget-object v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v6}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v6

    iget-object v7, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v7}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v7

    if-eq v6, v7, :cond_48d

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_480

    const-string v6, "InstallApp"

    const-string v7, "OplusPackageInstallStateChangedTask"

    const-string/jumbo v8, "update dataModel,installState,pkg:%s,si:%s,newInfo:%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget-object v10, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_480
    iget-object v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    iget-object v7, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v7}, Lcom/android/launcher/download/InstallState;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher/download/InstallState;->reset(I)V

    const/4 v6, 0x1

    goto :goto_48e

    :cond_48d
    const/4 v6, 0x0

    :goto_48e
    iget-object v7, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v7, :cond_49c

    iget-object v7, v7, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v7}, Lcom/android/launcher/download/DownloadAppUtils;->isDefaultDownloadIcon(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_49c

    const/4 v7, 0x1

    goto :goto_49d

    :cond_49c
    const/4 v7, 0x0

    :goto_49d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_4cc

    const-string v8, "InstallApp"

    const-string v9, "OplusPackageInstallStateChangedTask"

    const-string/jumbo v10, "update dataModel,icon,pkg:%s,siPath:%s,newPath:%s,defaultIcon:%s"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    iget-object v12, v5, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v12, v11, v13

    iget-object v12, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    const/4 v13, 0x2

    aput-object v12, v11, v13

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4cc
    if-nez v7, :cond_4e0

    iget-object v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4df

    iget-object v7, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v7, :cond_4dd

    goto :goto_4df

    :cond_4dd
    const/4 v7, 0x0

    goto :goto_4e0

    :cond_4df
    :goto_4df
    const/4 v7, 0x1

    :cond_4e0
    :goto_4e0
    if-eqz v7, :cond_515

    iget-object v7, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4ef

    iget-object v6, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIconPath:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    const/4 v6, 0x1

    :cond_4ef
    iget-object v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_502

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v7, v9}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromIconPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIcon:Landroid/graphics/Bitmap;

    :cond_502
    iget-object v4, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_515

    invoke-static {v4}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    iput-object v4, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v4, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    iput v4, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/4 v4, 0x1

    goto :goto_516

    :cond_515
    move v4, v6

    :goto_516
    if-eqz v4, :cond_52d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    instance-of v6, v4, Lcom/android/launcher3/model/OplusModelWriter;

    if-eqz v6, :cond_526

    check-cast v4, Lcom/android/launcher3/model/OplusModelWriter;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/OplusModelWriter;->updateNonPositionAttrInDatabase(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_52d

    :cond_526
    const-string v4, "OplusPackageInstallStateChangedTask"

    const-string v6, "error in model writer type"

    invoke-static {v4, v6}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52d
    :goto_52d
    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v4

    if-eqz v4, :cond_56d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/OplusModelWriter;

    if-eqz v4, :cond_56d

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_56d

    iget v4, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    const v6, -0x20000001

    and-int/2addr v4, v6

    iput v4, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "downloadAppClassName"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByItemInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_56d
    iget-object v4, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v4, v4, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v4}, Lcom/android/launcher/download/InstallState;->isInstallFailedState()Z

    move-result v4

    if-eqz v4, :cond_57d

    iget v4, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    and-int/lit16 v4, v4, -0x401

    iput v4, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    :cond_57d
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_377

    :cond_582
    iget-object v3, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_588
    :goto_588
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v5, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object v6, v6, Lcom/android/launcher/download/OplusPackageInstallInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_588

    iget-object v5, v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget v5, v5, Lcom/android/launcher/download/OplusPackageInstallInfo;->mProgress:I

    iput v5, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_588

    :cond_5ae
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5bd

    new-instance v3, Lcom/android/launcher3/model/p0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/launcher3/model/p0;-><init>(Ljava/util/HashSet;I)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    :cond_5bd
    monitor-exit p2

    return-void

    :catchall_5bf
    move-exception v0

    monitor-exit p2
    :try_end_5c1
    .catchall {:try_start_36c .. :try_end_5c1} :catchall_5bf

    throw v0

    :catchall_5c2
    move-exception v0

    :try_start_5c3
    monitor-exit p3
    :try_end_5c4
    .catchall {:try_start_5c3 .. :try_end_5c4} :catchall_5c2

    throw v0
.end method
