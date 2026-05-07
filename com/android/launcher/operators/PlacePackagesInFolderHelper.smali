.class public Lcom/android/launcher/operators/PlacePackagesInFolderHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "PlacePackagesInFolderHelper"

.field private static volatile sInstance:Lcom/android/launcher/operators/PlacePackagesInFolderHelper;


# instance fields
.field private mParsePackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldRefreshCache:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->mShouldRefreshCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->mParsePackages:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->lambda$placeAppInFolderIfNeeded$0(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/operators/PlacePackagesInFolderHelper;
    .registers 2

    sget-object v0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->sInstance:Lcom/android/launcher/operators/PlacePackagesInFolderHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->sInstance:Lcom/android/launcher/operators/PlacePackagesInFolderHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;

    invoke-direct {v1}, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;-><init>()V

    sput-object v1, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->sInstance:Lcom/android/launcher/operators/PlacePackagesInFolderHelper;

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
    sget-object v0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->sInstance:Lcom/android/launcher/operators/PlacePackagesInFolderHelper;

    return-object v0
.end method

.method private static synthetic lambda$placeAppInFolderIfNeeded$0(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "placeAppInFolder success, packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlacePackagesInFolderHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method private updateOriginFeaturePackages()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->mParsePackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getPlacePackagesInExistingFolder()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    iget-object p0, p0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->mShouldRefreshCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3a

    const-string v3, "config place item error: "

    const-string v4, "PlacePackagesInFolderHelper"

    invoke-static {v3, v1, v4}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_3a
    aget-object v1, v3, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->mParsePackages:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_45
    iget-object p0, p0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->mShouldRefreshCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public getShouldPlacePackagesInFolder(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->mShouldRefreshCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->updateOriginFeaturePackages()V

    :cond_17
    iget-object p0, p0, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->mParsePackages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public placeAppInFolderIfNeeded(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Z
    .registers 8

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "PlacePackagesInFolderHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const-string/jumbo p0, "placePackageInFolder componentName is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_10
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string/jumbo p0, "placeAppInFolder packgeName is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_21
    iget-object v3, p1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {v3, p2}, Lcom/android/launcher/model/BgDataModelHelper;->hasWorkspaceItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string/jumbo p0, "placeAppInFolder duplicate icon not allowed"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_30
    invoke-virtual {p0, v0}, Lcom/android/launcher/operators/PlacePackagesInFolderHelper;->getShouldPlacePackagesInFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    return v2

    :cond_3b
    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    invoke-virtual {p1, p0}, Lcom/android/launcher/model/BgDataModelHelper;->findFolderByTitle(Ljava/lang/String;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    if-nez p1, :cond_4a

    const-string/jumbo p1, "placeAppInFolder, but folder does not exist. : "

    invoke-static {p1, p0, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4a
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_62

    check-cast p2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p3, Lcom/android/launcher/j;

    const/4 v1, 0x1

    invoke-direct {p3, v0, p1, p0, v1}, Lcom/android/launcher/j;-><init>(Ljava/lang/String;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_62
    return v2
.end method
