.class public Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;
.super Lcom/android/launcher3/model/LoaderResults;
.source ""


# instance fields
.field private final mPageToBindFirst:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher3/model/LoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    iput p4, p0, Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;->mPageToBindFirst:I

    return-void
.end method

.method public static synthetic f(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;->lambda$bindSuperPowerDesktopApps$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;->lambda$bindAllApps$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic h(ZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;->lambda$notifySuperPowerInit$2(ZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private synthetic lambda$bindAllApps$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget p0, p0, Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;->mPageToBindFirst:I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method private static synthetic lambda$bindSuperPowerDesktopApps$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindSuperPowerDesktopApps(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$notifySuperPowerInit$2(ZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->notifySuperPowerInit(Z)V

    return-void
.end method


# virtual methods
.method public bindAllApps()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v2, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput v2, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mMyBindingId:I

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c

    invoke-super {p0}, Lcom/android/launcher3/model/BaseLoaderResults;->bindAllApps()V

    new-instance v0, Lcom/android/launcher3/model/k;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/k;-><init>(Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;)V

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/BaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public bindDeepShortcuts()V
    .registers 1

    return-void
.end method

.method public bindSuperPowerDesktopApps(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v2, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput v2, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mMyBindingId:I

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1b

    new-instance v0, Lcom/android/launcher3/model/p;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/model/p;-><init>(Ljava/util/ArrayList;I)V

    iget-object p1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/model/BaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public bindWidgets()V
    .registers 1

    return-void
.end method

.method public bindWorkspace(Z)V
    .registers 2

    return-void
.end method

.method public notifySuperPowerInit(Z)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/model/r0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/model/r0;-><init>(ZI)V

    iget-object p1, p0, Lcom/android/launcher3/model/BaseLoaderResults;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/model/BaseLoaderResults;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method
