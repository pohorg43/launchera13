.class public Lcom/android/launcher/bean/WorkSpaceScreenData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "WorkSpaceScreenData"


# instance fields
.field public final appWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final folders:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHotSeat:Z

.field private mScreenId:I

.field private mScreenRank:I

.field public final pinnedShortcutCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public final workspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->pinnedShortcutCounts:Ljava/util/Map;

    return-void
.end method

.method public static fillOccupied(Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/GridOccupancy;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1e

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_d

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static fillOccupied([[ZIIIIII)V
    .registers 11

    move v0, p3

    :goto_1
    if-ltz v0, :cond_1d

    add-int v1, p3, p5

    if-ge v0, v1, :cond_1d

    if-ge v0, p1, :cond_1d

    move v1, p4

    :goto_a
    if-ltz v1, :cond_1a

    add-int v2, p4, p6

    if-ge v1, v2, :cond_1a

    if-ge v1, p2, :cond_1a

    aget-object v2, p0, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method public static fillOccupied([[ZIILjava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[ZII",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_28

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_28

    :cond_9
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/bean/WorkSpaceScreenData;->fillOccupied([[ZIIIIII)V

    goto :goto_d

    :cond_28
    :goto_28
    return-void
.end method

.method public static fillOccupiedForBigFolder(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    return-void
.end method

.method public static fillOccupiedForCard(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/card/LauncherCardInfo;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    return-void
.end method

.method public static findEmptyCells([I[[ZIIIIII)Z
    .registers 24

    move/from16 v7, p2

    move/from16 v8, p3

    add-int/lit8 v0, v7, -0x1

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v0, v8, -0x1

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v11, v10

    :goto_15
    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ltz v11, :cond_48

    move v15, v9

    :goto_1b
    if-ltz v15, :cond_45

    aget-object v0, p1, v15

    aget-boolean v0, v0, v11

    if-eqz v0, :cond_24

    goto :goto_42

    :cond_24
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v15

    move v4, v11

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/launcher/bean/WorkSpaceScreenData;->isEmptyCells([[ZIIIIII)Z

    move-result v0

    if-eqz v0, :cond_42

    if-nez p0, :cond_3b

    new-array v0, v12, [I

    goto :goto_3d

    :cond_3b
    move-object/from16 v0, p0

    :goto_3d
    aput v15, v0, v13

    aput v11, v0, v14

    return v14

    :cond_42
    :goto_42
    add-int/lit8 v15, v15, -0x1

    goto :goto_1b

    :cond_45
    add-int/lit8 v11, v11, -0x1

    goto :goto_15

    :cond_48
    :goto_48
    if-ge v10, v8, :cond_80

    move v11, v9

    :goto_4b
    if-ge v11, v7, :cond_7d

    aget-object v0, p1, v11

    aget-boolean v0, v0, v10

    if-nez v0, :cond_7a

    sub-int v0, v7, p6

    if-gt v11, v0, :cond_7a

    sub-int v0, v8, p7

    if-le v10, v0, :cond_5c

    goto :goto_7a

    :cond_5c
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v11

    move v4, v10

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/launcher/bean/WorkSpaceScreenData;->isEmptyCells([[ZIIIIII)Z

    move-result v0

    if-eqz v0, :cond_7a

    if-nez p0, :cond_73

    new-array v0, v12, [I

    goto :goto_75

    :cond_73
    move-object/from16 v0, p0

    :goto_75
    aput v11, v0, v13

    aput v10, v0, v14

    return v14

    :cond_7a
    :goto_7a
    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    :cond_7d
    add-int/lit8 v10, v10, 0x1

    goto :goto_48

    :cond_80
    return v13
.end method

.method public static findEmptyCells([I[[ZIIIIZ)Z
    .registers 21

    move/from16 v7, p2

    move/from16 v8, p3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p6, :cond_40

    move v12, v10

    :goto_a
    if-ge v12, v8, :cond_73

    move v13, v10

    :goto_d
    if-ge v13, v7, :cond_3d

    aget-object v0, p1, v13

    aget-boolean v0, v0, v12

    if-nez v0, :cond_3a

    sub-int v0, v7, p4

    if-gt v13, v0, :cond_3a

    sub-int v0, v8, p5

    if-le v12, v0, :cond_1e

    goto :goto_3a

    :cond_1e
    move-object v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v13

    move v4, v12

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/launcher/bean/WorkSpaceScreenData;->isEmptyCells([[ZIIIIII)Z

    move-result v0

    if-eqz v0, :cond_3a

    if-nez p0, :cond_34

    new-array v0, v9, [I

    goto :goto_35

    :cond_34
    move-object v0, p0

    :goto_35
    aput v13, v0, v10

    aput v12, v0, v11

    return v11

    :cond_3a
    :goto_3a
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_3d
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_40
    add-int/lit8 v0, v8, -0x1

    move v12, v0

    :goto_43
    if-ltz v12, :cond_73

    add-int/lit8 v0, v7, -0x1

    move v13, v0

    :goto_48
    if-ltz v13, :cond_70

    aget-object v0, p1, v13

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_51

    goto :goto_6d

    :cond_51
    move-object v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v13

    move v4, v12

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/launcher/bean/WorkSpaceScreenData;->isEmptyCells([[ZIIIIII)Z

    move-result v0

    if-eqz v0, :cond_6d

    if-nez p0, :cond_67

    new-array v0, v9, [I

    goto :goto_68

    :cond_67
    move-object v0, p0

    :goto_68
    aput v13, v0, v10

    aput v12, v0, v11

    return v11

    :cond_6d
    :goto_6d
    add-int/lit8 v13, v13, -0x1

    goto :goto_48

    :cond_70
    add-int/lit8 v12, v12, -0x1

    goto :goto_43

    :cond_73
    return v10
.end method

.method public static findFirstEmptyCell([ILcom/android/launcher/bean/WorkSpaceScreenData;II)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/android/launcher/bean/WorkSpaceScreenData;->getOccupiedInfo(II)[[Z

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/bean/WorkSpaceScreenData;->findFirstEmptyCell([I[[ZII)Z

    move-result p0

    return p0
.end method

.method public static findFirstEmptyCell([I[[ZII)Z
    .registers 8

    if-nez p0, :cond_5

    const/4 p0, 0x2

    new-array p0, p0, [I

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, p3, :cond_1e

    move v2, v0

    :goto_a
    if-ge v2, p2, :cond_1b

    aget-object v3, p1, v2

    aget-boolean v3, v3, v1

    if-nez v3, :cond_18

    aput v2, p0, v0

    const/4 p1, 0x1

    aput v1, p0, p1

    return p1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return v0
.end method

.method private static isEmptyCells([[ZIIIIII)Z
    .registers 13

    const/4 v0, 0x1

    move v1, p3

    move v2, v0

    :goto_3
    add-int v3, p3, p5

    if-ge v1, v3, :cond_2e

    if-ge p3, p1, :cond_2e

    if-eqz v2, :cond_2e

    move v3, p4

    :goto_c
    add-int v4, p4, p6

    const/4 v5, 0x0

    if-ge v3, v4, :cond_28

    if-ge p4, p2, :cond_28

    if-eqz v2, :cond_28

    if-ge v1, p1, :cond_27

    if-ge v3, p2, :cond_27

    if-eqz v2, :cond_23

    aget-object v2, p0, v1

    aget-boolean v2, v2, v3

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_24

    :cond_23
    move v2, v5

    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_27
    move v2, v5

    :cond_28
    if-nez v2, :cond_2b

    goto :goto_2e

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2e
    :goto_2e
    return v2
.end method


# virtual methods
.method public declared-synchronized addItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v1, 0x6

    if-eq v0, v1, :cond_38

    const/16 p2, 0x63

    if-eq v0, p2, :cond_20

    const/16 p2, 0x64

    if-eq v0, p2, :cond_1a

    goto :goto_79

    :cond_1a
    iget-object p2, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_20
    iget-object p2, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_28
    iget-object p2, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_38
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_74

    const/16 v1, -0x65

    if-ne v0, v1, :cond_43

    goto :goto_74

    :cond_43
    if-eqz p2, :cond_69

    iget-object p2, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result p2

    if-nez p2, :cond_79

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adding item: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to a folder that  doesn\'t exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WorkSpaceScreenData"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_69
    invoke-virtual {p0, v0}, Lcom/android/launcher/bean/WorkSpaceScreenData;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p2

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_79

    :cond_74
    :goto_74
    iget-object p2, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_1 .. :try_end_79} :catchall_7b

    :cond_79
    :goto_79
    monitor-exit p0

    return-void

    :catchall_7b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fillOccupancy(II)Lcom/android/launcher3/util/GridOccupancy;
    .registers 5

    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object p1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_b

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_22

    :cond_32
    return-object v0
.end method

.method public findNextEmptyCell([III)Z
    .registers 4

    if-nez p1, :cond_5

    const/4 p1, 0x2

    new-array p1, p1, [I

    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher/bean/WorkSpaceScreenData;->fillOccupancy(II)Lcom/android/launcher3/util/GridOccupancy;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getOccupiedCellCount()I
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v3, :cond_1f

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :goto_1b
    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_7

    :cond_1f
    invoke-static {v2}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_1b

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2d
    iget-object p0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_33
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_33

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    move v1, v2

    goto :goto_33

    :cond_49
    return v1
.end method

.method public getOccupiedInfo(II)[[Z
    .registers 13

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    const-class v2, Z

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iget-object v2, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v7, v4

    :goto_2c
    if-ltz v7, :cond_17

    add-int v8, v4, v6

    if-ge v7, v8, :cond_17

    if-ge v7, p1, :cond_17

    move v8, v5

    :goto_35
    if-ltz v8, :cond_44

    add-int v9, v5, v3

    if-ge v8, v9, :cond_44

    if-ge v8, p2, :cond_44

    aget-object v9, v0, v7

    aput-boolean v1, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_47
    iget-object p0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v6, v3

    :goto_62
    if-ltz v6, :cond_4d

    add-int v7, v3, v5

    if-ge v6, v7, :cond_4d

    if-ge v6, p1, :cond_4d

    move v7, v4

    :goto_6b
    if-ltz v7, :cond_7a

    add-int v8, v4, v2

    if-ge v7, v8, :cond_7a

    if-ge v7, p2, :cond_7a

    aget-object v8, v0, v6

    aput-boolean v1, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6b

    :cond_7a
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    :cond_7d
    return-object v0
.end method

.method public getScreenId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->mScreenId:I

    return p0
.end method

.method public getScreenRank()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->mScreenRank:I

    return p0
.end method

.method public getWidgetOccupiedInfo(II)[[Z
    .registers 12

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    const-class v2, Z

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iget-object p0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v6, v3

    :goto_2c
    if-ltz v6, :cond_17

    add-int v7, v3, v5

    if-ge v6, v7, :cond_17

    if-ge v6, p1, :cond_17

    move v7, v4

    :goto_35
    if-ltz v7, :cond_44

    add-int v8, v4, v2

    if-ge v7, v8, :cond_44

    if-ge v7, p2, :cond_44

    aget-object v8, v0, v6

    aput-boolean v1, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_47
    return-object v0
.end method

.method public isHotSeat()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->mHotSeat:Z

    return p0
.end method

.method public obtain()Lcom/android/launcher/bean/WorkSpaceScreenData;
    .registers 6

    new-instance v0, Lcom/android/launcher/bean/WorkSpaceScreenData;

    invoke-direct {v0}, Lcom/android/launcher/bean/WorkSpaceScreenData;-><init>()V

    iget v1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->mScreenId:I

    iput v1, v0, Lcom/android/launcher/bean/WorkSpaceScreenData;->mScreenId:I

    iget-object v1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v0, Lcom/android/launcher/bean/WorkSpaceScreenData;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->obtain()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    iget-object v2, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    iget-object v2, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v3, :cond_4b

    iget-object v4, v0, Lcom/android/launcher/bean/WorkSpaceScreenData;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_4e
    iget-object p0, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v2, v0, Lcom/android/launcher/bean/WorkSpaceScreenData;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->obtain()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_6a
    return-object v0
.end method

.method public setHotSeat(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->mHotSeat:Z

    return-void
.end method

.method public setScreenId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->mScreenId:I

    return-void
.end method

.method public setScreenRank(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/bean/WorkSpaceScreenData;->mScreenRank:I

    return-void
.end method
