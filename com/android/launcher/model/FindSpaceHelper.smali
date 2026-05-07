.class public Lcom/android/launcher/model/FindSpaceHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final PREFER_SCREEN_INDEX_BASE_SCREEN_ORDER:I = -0x2

.field private static final TAG:Ljava/lang/String; = "FindSpaceHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertWorkerThread()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static findAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/model/FindSpaceHelper;->findLastAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result p0

    return p0
.end method

.method public static findCoordsForSpecialItemInfo(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/IntArray;[I)Z
    .registers 16

    instance-of v0, p2, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_dc

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isOnlyPlaceAPPInDrawer()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v0

    if-nez v0, :cond_dc

    :cond_19
    invoke-static {}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->getInstance()Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->getShouldPlacePackages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string v0, "FindSpaceHelper"

    const-string v4, "finding special empty grid for: "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->getInstance()Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->getConfigScreen()I

    move-result v0

    new-array v4, v1, [I

    fill-array-data v4, :array_106

    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    monitor-enter p1

    :try_start_54
    iget-object v6, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5a
    :goto_5a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v9, -0x64

    if-ne v8, v9, :cond_5a

    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_82

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget v9, v7, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_82
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_86
    monitor-exit p1
    :try_end_87
    .catchall {:try_start_54 .. :try_end_87} :catchall_d9

    const/16 p1, -0x3e8

    if-ne v0, p1, :cond_8c

    goto :goto_dc

    :cond_8c
    const/4 p1, -0x1

    if-ne v0, p1, :cond_b6

    move p1, v3

    move v0, p1

    :goto_91
    invoke-virtual {p3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    if-ge p1, v6, :cond_dd

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {p0, v0, v4, v6, v7}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v0

    if-eqz v0, :cond_b3

    aput p1, p4, v3

    aget p0, v4, v3

    aput p0, p4, v2

    aget p0, v4, v2

    aput p0, p4, v1

    goto :goto_dd

    :cond_b3
    add-int/lit8 p1, p1, 0x1

    goto :goto_91

    :cond_b6
    invoke-virtual {p3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result p1

    if-gt v0, p1, :cond_dc

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {p0, p1, v4, p3, p2}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result p0

    if-eqz p0, :cond_d7

    aput v0, p4, v3

    aget p1, v4, v3

    aput p1, p4, v2

    aget p1, v4, v2

    aput p1, p4, v1

    :cond_d7
    move v0, p0

    goto :goto_dd

    :catchall_d9
    move-exception p0

    :try_start_da
    monitor-exit p1
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw p0

    :cond_dc
    :goto_dc
    move v0, v3

    :cond_dd
    :goto_dd
    if-eqz v0, :cond_105

    const-string p0, "FindSpaceHelper"

    const-string p1, "found special for place app into first empty place: [%d %d %d]"

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aget p3, p4, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    aget p3, p4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    aget p3, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_105
    return v0

    :array_106
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private static findFirstEmptyCell(Lcom/android/launcher3/OplusCellLayout;[I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object p0

    aget v1, p0, v0

    if-ltz v1, :cond_17

    const/4 v1, 0x1

    aget v2, p0, v1

    if-ltz v2, :cond_17

    aget v2, p0, v0

    aput v2, p1, v0

    aget p0, p0, v1

    aput p0, p1, v1

    return v1

    :cond_17
    return v0
.end method

.method public static findLastAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_13

    :cond_24
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher3/util/GridOccupancy;->findLastVacantCell([III)Z

    move-result p0

    return p0
.end method

.method public static findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_13

    :cond_24
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result p0

    return p0
.end method

.method public static findNextAvailableIconSpaceInScreenBackwards(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_13

    :cond_24
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCellBackwards([III)Z

    move-result p0

    return p0
.end method

.method public static findNextAvailableSpaceByScreenOrder(Lcom/android/launcher3/LauncherAppState;Landroid/util/LongSparseArray;[III)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Landroid/util/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;>;[III)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    const/4 p0, 0x0

    :goto_e
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge p0, v1, :cond_6d

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    invoke-virtual {p1, p0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_24

    goto :goto_6a

    :cond_24
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_28

    :cond_39
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findNextAvailableSpaceByScreenOrder,isFound:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",screenId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FindSpaceHelper"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_6a

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    long-to-int p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_6a
    :goto_6a
    add-int/lit8 p0, p0, 0x1

    goto :goto_e

    :cond_6d
    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static findPerferVailableCell(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[IIIII)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;[IIIII)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_13

    :cond_24
    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->findPreferVacantVDFCell([IIIII)Z

    move-result p0

    return p0
.end method

.method private static findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/ItemInfo;I)[I
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-static {}, Lcom/android/launcher/model/FindSpaceHelper;->assertWorkerThread()V

    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    monitor-enter p1

    :try_start_15
    iget-object v2, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x64

    if-ne v4, v5, :cond_1b

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v4, v4

    invoke-virtual {v12, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_43

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v5, v5

    invoke-virtual {v12, v5, v6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_43
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_47
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_15 .. :try_end_48} :catchall_2f8

    const/4 v1, 0x2

    new-array v13, v1, [I

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v14

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-eq v2, v14, :cond_8c

    const-string v2, "FindSpaceHelper"

    const-string/jumbo v3, "screen count error! count = "

    const-string v4, ", itemSize = "

    invoke-static {v3, v14, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", workspaceScreens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", screenItems: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    iget v15, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher/operators/GeneralCustomizer;

    const/16 v16, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_fd

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->getPlaceAppsInSpecificGrid()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_fd

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isGoogleRsa3()Z

    move-result v3

    if-eqz v3, :cond_e2

    check-cast v2, Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-virtual {v2, v10}, Lcom/android/launcher/operators/GeneralCustomizer;->getPreferredPosition(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v2

    if-eqz v2, :cond_fd

    array-length v3, v2

    if-lez v3, :cond_fd

    aget v3, v2, v4

    invoke-virtual {v8, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    int-to-long v3, v6

    invoke-virtual {v12, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    aget v17, v2, v16

    aget v18, v2, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v13

    move v4, v15

    move v5, v7

    move/from16 v19, v6

    move/from16 v6, v17

    move v10, v7

    move/from16 v7, v18

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/model/FindSpaceHelper;->findPerferVailableCell(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[IIIII)Z

    move-result v4

    const-string v1, "FindSpaceHelper"

    const-string v2, "ale isGoogleRsa3 special app "

    invoke-static {v2, v4, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_100

    :cond_e2
    move v10, v7

    invoke-virtual {v8, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    int-to-long v1, v4

    invoke-virtual {v12, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1, v13, v15, v10}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableIconSpaceInScreenBackwards(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v1

    const-string v2, "FindSpaceHelper"

    const-string v3, "ale special app "

    invoke-static {v3, v1, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    move/from16 v19, v4

    move v4, v1

    goto :goto_100

    :cond_fd
    move v10, v7

    move/from16 v19, v4

    :goto_100
    invoke-static {}, Lcom/android/launcher/layout/SpecialAppCompatHelper;->getInstance()Lcom/android/launcher/layout/SpecialAppCompatHelper;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/layout/SpecialAppCompatHelper;->getPreferredPosition(Ljava/lang/String;)Ly2/m;

    move-result-object v1

    if-eqz v1, :cond_151

    iget-object v2, v1, Ly2/m;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v14, :cond_151

    iget-object v2, v1, Ly2/m;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v7

    int-to-long v2, v7

    invoke-virtual {v12, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v1, Ly2/m;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v1, Ly2/m;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v1, p0

    move-object v3, v13

    move v4, v15

    move v5, v10

    move/from16 v18, v7

    move/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/model/FindSpaceHelper;->findPerferVailableCell(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[IIIII)Z

    move-result v4

    const-string v1, "FindSpaceHelper"

    const-string v2, "found special app "

    invoke-static {v2, v4, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    move/from16 v19, v18

    :cond_151
    if-ltz v11, :cond_199

    if-ge v11, v14, :cond_199

    invoke-virtual {v8, v11}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v1

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->getPreferSecondScreen()Z

    move-result v2

    if-eqz v2, :cond_16d

    int-to-long v2, v1

    invoke-virtual {v12, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v0, v2, v13, v15, v10}, Lcom/android/launcher/model/FindSpaceHelper;->findAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v2

    goto :goto_178

    :cond_16d
    int-to-long v2, v1

    invoke-virtual {v12, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v0, v2, v13, v15, v10}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v2

    :goto_178
    move v4, v2

    const-string v2, "FindSpaceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findSpaceForItem, use preferFindScreenIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", found: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v1

    :cond_199
    if-nez v4, :cond_1c5

    if-ne v11, v14, :cond_1c5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "generate_new_screen_id"

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    invoke-virtual {v9, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    int-to-long v2, v1

    invoke-virtual {v12, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v0, v2, v13, v15, v10}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v4

    move/from16 v19, v1

    :cond_1c5
    if-nez v4, :cond_210

    const/4 v1, -0x2

    if-ne v11, v1, :cond_210

    invoke-static {v0, v12, v13, v15, v10}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableSpaceByScreenOrder(Lcom/android/launcher3/LauncherAppState;Landroid/util/LongSparseArray;[III)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v2, "FindSpaceHelper"

    const-string v3, "findSpaceForItem,found:"

    const-string v5, ",res.second:"

    invoke-static {v3, v4, v5}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",workspaceScreens:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_20f

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    goto :goto_210

    :cond_20f
    const/4 v4, 0x0

    :cond_210
    :goto_210
    if-nez v4, :cond_259

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21a

    const/4 v1, 0x0

    goto :goto_21c

    :cond_21a
    add-int/lit8 v1, v14, -0x1

    :goto_21c
    if-ge v1, v14, :cond_259

    invoke-virtual {v8, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher/operators/OperatorsUtils;->checkFindIcon(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22e

    const/4 v4, 0x0

    goto :goto_257

    :cond_22e
    int-to-long v3, v2

    invoke-virtual {v12, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v0, v3, v13, v15, v10}, Lcom/android/launcher/model/FindSpaceHelper;->findAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v4

    const-string v3, "FindSpaceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findSpaceForItem, use last screen index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", found: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_257
    move/from16 v19, v2

    :cond_259
    const/4 v1, -0x1

    if-nez v4, :cond_2df

    const-string v2, "FindSpaceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found false will add new page, count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v2

    if-ne v14, v2, :cond_2b7

    add-int/2addr v2, v1

    :goto_27d
    if-ltz v2, :cond_2df

    invoke-virtual {v8, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v12, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v0, v4, v13, v15, v10}, Lcom/android/launcher/model/FindSpaceHelper;->findAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v4

    if-eqz v4, :cond_29c

    const-string v0, "FindSpaceHelper"

    const-string v5, "found, id = "

    const-string v6, ", index = "

    invoke-static {v5, v3, v6, v2, v0}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v19, v3

    goto :goto_2df

    :cond_29c
    const-string v5, "FindSpaceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findSpaceForItem, found fail, screenId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    move/from16 v19, v3

    goto :goto_27d

    :cond_2b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "generate_new_screen_id"

    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/launcher3/util/IntArray;->add(I)V

    invoke-virtual {v9, v2}, Lcom/android/launcher3/util/IntArray;->add(I)V

    int-to-long v3, v2

    invoke-virtual {v12, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v0, v3, v13, v15, v10}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v4

    move/from16 v19, v2

    :cond_2df
    :goto_2df
    const/4 v0, 0x0

    if-nez v4, :cond_2e7

    aput v1, v13, v0

    aput v1, v13, v16

    goto :goto_2e9

    :cond_2e7
    move/from16 v1, v19

    :goto_2e9
    const/4 v2, 0x3

    new-array v2, v2, [I

    aput v1, v2, v0

    aget v0, v13, v0

    aput v0, v2, v16

    aget v0, v13, v16

    const/4 v1, 0x2

    aput v0, v2, v1

    return-object v2

    :catchall_2f8
    move-exception v0

    :try_start_2f9
    monitor-exit p1
    :try_end_2fa
    .catchall {:try_start_2f9 .. :try_end_2fa} :catchall_2f8

    throw v0
.end method

.method public static findSpaceForItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;ZLjava/util/List;I)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Lcom/android/launcher3/model/ModelWriter;",
            "Lcom/android/launcher3/util/IntArray;",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;ZLjava/util/List;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static findSpaceForItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;ZLjava/util/List;IZ)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Lcom/android/launcher3/model/ModelWriter;",
            "Lcom/android/launcher3/util/IntArray;",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;IZ)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static {}, Lcom/android/launcher/model/FindSpaceHelper;->assertWorkerThread()V

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v9, "FindSpaceHelper"

    if-eqz v0, :cond_15

    const-string v0, "findSpaceForItems, empty list!"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p5

    :cond_15
    if-nez p3, :cond_1e

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    move-object v10, v0

    goto :goto_20

    :cond_1e
    move-object/from16 v10, p3

    :goto_20
    invoke-virtual {v10}, Lcom/android/launcher3/util/IntArray;->clear()V

    iget-object v0, v7, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v0, v0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v10, v0}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    if-nez p4, :cond_33

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    move-object v11, v0

    goto :goto_35

    :cond_33
    move-object/from16 v11, p4

    :goto_35
    invoke-virtual {v11}, Lcom/android/launcher3/util/IntArray;->clear()V

    if-nez p7, :cond_41

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    goto :goto_43

    :cond_41
    move-object/from16 v12, p7

    :goto_43
    invoke-interface {v12}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_52
    :goto_52
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_176

    move-object/from16 v5, p0

    invoke-static {v5, v7, v6, v10, v0}, Lcom/android/launcher/model/FindSpaceHelper;->findCoordsForSpecialItemInfo(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/IntArray;[I)Z

    move-result v1

    if-nez v1, :cond_96

    sget-object v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)Z

    move-result v1

    if-eqz v1, :cond_85

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object v4, v11

    move-object v5, v6

    move-object/from16 p3, v6

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->findSpaceForHeytapMarketItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/ItemInfo;I)[I

    move-result-object v0

    goto :goto_98

    :cond_85
    move-object/from16 p3, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v4, p3

    move/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/ItemInfo;I)[I

    move-result-object v0

    goto :goto_98

    :cond_96
    move-object/from16 p3, v6

    :goto_98
    const/4 v1, 0x0

    aget v2, v0, v1

    if-ltz v2, :cond_14c

    const/4 v2, 0x1

    aget v3, v0, v2

    if-ltz v3, :cond_14c

    const/4 v3, 0x2

    aget v4, v0, v3

    if-gez v4, :cond_a9

    goto/16 :goto_14c

    :cond_a9
    move-object/from16 v4, p3

    instance-of v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v5, :cond_11e

    instance-of v5, v4, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v5, :cond_11e

    instance-of v5, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v5, :cond_11e

    instance-of v5, v4, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v5, :cond_bc

    goto :goto_11e

    :cond_bc
    instance-of v5, v4, Lcom/android/launcher3/model/data/AppInfo;

    if-nez v5, :cond_dc

    instance-of v5, v4, Lcom/android/launcher/model/data/PromiseAppInfo;

    if-eqz v5, :cond_c5

    goto :goto_dc

    :cond_c5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected info type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_dc
    :goto_dc
    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v6, v13}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    instance-of v5, v4, Lcom/android/launcher/model/data/PromiseAppInfo;

    if-eqz v5, :cond_11f

    iget-object v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    iput-object v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/launcher/download/DownloadAppsManager;->isOplusExpansionsDownloadType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_101

    move-object v1, v4

    check-cast v1, Lcom/android/launcher/model/data/PromiseAppInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v1, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_11f

    :cond_101
    iget-object v1, v4, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    invoke-static {v13, v1, v2}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromIconPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_110

    invoke-static {v1}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    goto :goto_11f

    :cond_110
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_11f

    const-string v1, "InstallApp"

    const-string v4, "load icon null!"

    invoke-static {v1, v9, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_11e
    :goto_11e
    move-object v6, v4

    :cond_11f
    :goto_11f
    aget v1, v0, v2

    iput v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v1, v0, v3

    iput v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/16 v0, -0x64

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const-string v0, "generate_new_item_id"

    invoke-static {v14, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v7, v13, v6, v2}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_52

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_52

    :cond_14c
    :goto_14c
    move-object/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not find space for item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    :cond_164
    const-class v0, Lcom/android/launcher3/model/OplusModelWriter;

    invoke-static {v8, v0}, Lcom/android/common/util/GenericUtils;->isInstanceof(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_174

    move-object v0, v8

    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    move/from16 v1, p9

    invoke-virtual {v0, v13, v12, v1}, Lcom/android/launcher3/model/OplusModelWriter;->addItems(Landroid/content/Context;Ljava/util/List;Z)V

    :cond_174
    return-object p5

    nop

    :array_176
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static findSpaceForNoPositionItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Lcom/android/launcher3/model/ModelWriter;",
            "Lcom/android/launcher3/util/IntArray;",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForNoPositionItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static findSpaceForNoPositionItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Lcom/android/launcher3/model/ModelWriter;",
            "Lcom/android/launcher3/util/IntArray;",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v8, 0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v11}, Lcom/android/launcher/model/FindSpaceHelper;->findSpaceForItems(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Ljava/util/List;ZLjava/util/List;IZ)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findSpaceForNoPositionItems: cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FindSpaceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static getOccupancyForSpecialScreen(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;I)Lcom/android/launcher3/util/GridOccupancy;
    .registers 7

    invoke-static {}, Lcom/android/launcher/model/FindSpaceHelper;->assertWorkerThread()V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    if-ltz p3, :cond_44

    invoke-virtual {p2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result p0

    if-lt p3, p0, :cond_19

    goto :goto_44

    :cond_19
    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result p0

    monitor-enter p1

    :try_start_1e
    iget-object p2, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p2}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_24
    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_24

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v1, p0, :cond_24

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_24

    :cond_3f
    monitor-exit p1

    return-object v0

    :catchall_41
    move-exception p0

    monitor-exit p1
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_41

    throw p0

    :cond_44
    :goto_44
    return-object v0
.end method

.method private static placePackageOnSpecificScreen(Lcom/android/launcher/Launcher;Ljava/util/List;Lcom/android/launcher3/model/data/AppInfo;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_58

    invoke-static {v0, v1}, Lcom/android/launcher/model/FindSpaceHelper;->findFirstEmptyCell(Lcom/android/launcher3/OplusCellLayout;[I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    const-string/jumbo v0, "placeTargetAppOnFirstScreenIfNeeded: Cell: ["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FindSpaceHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;I)V

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_56
    return v2

    nop

    :array_58
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static placeTargetAppsOnScreenIfNeeded(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->getInstance()Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->getShouldPlacePackages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v1, v3

    :cond_2f
    if-eqz v1, :cond_68

    invoke-static {}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->getInstance()Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/operators/PlacePackagesInEmptyGridHelper;->getConfigScreen()I

    move-result v0

    const/16 v2, -0x3e8

    const-string v3, "FindSpaceHelper"

    if-ne v0, v2, :cond_45

    const-string p0, "configScreen value is not right."

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_45
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v0, v2, :cond_55

    const-string p0, "configScreen does not exist: "

    invoke-static {p0, v0, v3}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_55
    const/4 v3, -0x1

    if-ne v0, v3, :cond_65

    const/4 v0, 0x0

    :goto_59
    if-ge v0, v2, :cond_68

    invoke-static {p0, p1, v1, v0}, Lcom/android/launcher/model/FindSpaceHelper;->placePackageOnSpecificScreen(Lcom/android/launcher/Launcher;Ljava/util/List;Lcom/android/launcher3/model/data/AppInfo;I)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_68

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_65
    invoke-static {p0, p1, v1, v0}, Lcom/android/launcher/model/FindSpaceHelper;->placePackageOnSpecificScreen(Lcom/android/launcher/Launcher;Ljava/util/List;Lcom/android/launcher3/model/data/AppInfo;I)Z

    :cond_68
    :goto_68
    return-void
.end method
