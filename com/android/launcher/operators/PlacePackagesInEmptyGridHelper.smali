.class public Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "PlacePackagesInEmptyHelper"

.field public static final TYPE_FIND_ALL_SCREEN:I = -0x1

.field public static final TYPE_INVALID_SCREEN:I = -0x3e8

.field private static volatile sInstance:Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;


# instance fields
.field private mConfigScreen:I

.field private mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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

    iput-object v0, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mShouldRefreshCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mPackages:Ljava/util/ArrayList;

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mConfigScreen:I

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;
    .registers 2

    sget-object v0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->sInstance:Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->sInstance:Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;

    invoke-direct {v1}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;-><init>()V

    sput-object v1, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->sInstance:Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;

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
    sget-object v0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->sInstance:Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;

    return-object v0
.end method

.method private updateOriginFeaturePackages()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getPlacePackagesInEmptyGrid()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "PlacePackagesInEmptyHelper"

    if-nez v1, :cond_20

    const-string/jumbo v0, "updateOriginFeaturePackages, size = 0"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mShouldRefreshCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateOriginFeaturePackages: parsing config:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_55

    const-string v4, "config place item error: "

    invoke-static {v4, v1, v3}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_55
    :try_start_55
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mConfigScreen:I

    iget-object v5, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mPackages:Ljava/util/ArrayList;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_65} :catch_66

    goto :goto_24

    :catch_66
    const-string v4, "config screen id error: "

    invoke-static {v4, v1, v3}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_6c
    iget-object p0, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mShouldRefreshCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public getConfigScreen()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mConfigScreen:I

    return p0
.end method

.method public getShouldPlacePackages()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mShouldRefreshCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->updateOriginFeaturePackages()V

    :cond_1b
    iget-object p0, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mPackages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public onFeatureChanged()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->mShouldRefreshCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public shouldPlacePackages(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->getShouldPlacePackages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->getShouldPlacePackages()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_39
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_43

    const/4 v1, 0x1

    :cond_43
    return v1
.end method
