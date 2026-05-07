.class public Lcom/android/launcher/layout/FreeLayoutUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/layout/LayoutUtilsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FreeLayoutUtils"

.field private static volatile sInstance:Lcom/android/launcher/layout/FreeLayoutUtils;


# instance fields
.field private mRegionRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/layout/FreeLayoutUtils;->mRegionRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/layout/FreeLayoutUtils;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/FreeLayoutUtils;->mRegionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getInstance()Lcom/android/launcher/layout/FreeLayoutUtils;
    .registers 2

    sget-object v0, Lcom/android/launcher/layout/FreeLayoutUtils;->sInstance:Lcom/android/launcher/layout/FreeLayoutUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/layout/FreeLayoutUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/layout/FreeLayoutUtils;->sInstance:Lcom/android/launcher/layout/FreeLayoutUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/layout/FreeLayoutUtils;

    invoke-direct {v1}, Lcom/android/launcher/layout/FreeLayoutUtils;-><init>()V

    sput-object v1, Lcom/android/launcher/layout/FreeLayoutUtils;->sInstance:Lcom/android/launcher/layout/FreeLayoutUtils;

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
    sget-object v0, Lcom/android/launcher/layout/FreeLayoutUtils;->sInstance:Lcom/android/launcher/layout/FreeLayoutUtils;

    return-object v0
.end method


# virtual methods
.method public checkLayoutForScreen(Lcom/android/launcher3/CellLayout;Z)V
    .registers 3

    return-void
.end method

.method public findEmptyCellForReorder(Lcom/android/launcher3/CellLayout;[IIIZLjava/util/ArrayList;)[I
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "[IIIZ",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)[I"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/OplusCellLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/OplusCellLayout;->printCellOccupy(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_9e

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "findEmptyCellForReorder -- count = "

    const-string v6, ", targetCell = "

    invoke-static {v5, v4, v6}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reverse = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Drag"

    const-string v7, "FreeLayoutUtils"

    invoke-static {v6, v7, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-nez v4, :cond_43

    aget v0, p2, v3

    aput v0, v2, v3

    aget v0, p2, v5

    aput v0, v2, v5

    return-object v2

    :cond_43
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v9

    aget v10, p2, v3

    aget v11, p2, v5

    if-eqz v1, :cond_53

    const/4 v12, -0x1

    goto :goto_54

    :cond_53
    move v12, v5

    :goto_54
    new-instance v13, Landroid/graphics/Rect;

    aget v14, p2, v3

    aget v15, p2, v5

    aget v3, p2, v3

    add-int v3, v3, p3

    aget v5, p2, v5

    add-int v5, v5, p4

    invoke-direct {v13, v14, v15, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    :goto_66
    if-ltz v11, :cond_9d

    if-ge v11, v9, :cond_9d

    :goto_6a
    if-ltz v10, :cond_95

    if-ge v10, v8, :cond_95

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v5

    if-eqz v5, :cond_75

    goto :goto_93

    :cond_75
    invoke-virtual {v13, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_93

    add-int/lit8 v3, v3, 0x1

    const-string v5, "findEmptyCellForReorder -- find ["

    const-string v14, ", "

    const-string v15, "]"

    invoke-static {v5, v10, v14, v11, v15}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v4, :cond_93

    const/4 v0, 0x0

    aput v10, v2, v0

    const/4 v0, 0x1

    aput v11, v2, v0

    return-object v2

    :cond_93
    :goto_93
    add-int/2addr v10, v12

    goto :goto_6a

    :cond_95
    const/4 v5, 0x0

    if-eqz v1, :cond_9a

    add-int/lit8 v5, v8, -0x1

    :cond_9a
    move v10, v5

    add-int/2addr v11, v12

    goto :goto_66

    :cond_9d
    return-object v2

    :array_9e
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public findEmptyCells(Lcom/android/launcher3/CellLayout;[I[II[I[I)Z
    .registers 22

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v3

    mul-int/2addr v3, v2

    const/4 v4, 0x0

    aget v5, p2, v4

    const/4 v6, 0x1

    aget v7, p2, v6

    mul-int/2addr v7, v2

    add-int/2addr v7, v5

    const-string v5, "FreeLayoutUtils"

    if-ltz v7, :cond_c5

    if-lt v7, v3, :cond_1d

    goto/16 :goto_c5

    :cond_1d
    aget v8, p3, v4

    const-string v9, "]"

    const-string v10, ", "

    if-gez v8, :cond_4f

    move v8, v7

    :goto_26
    if-ltz v8, :cond_4f

    rem-int v11, v8, v2

    div-int v12, v8, v2

    invoke-virtual {v0, v11, v12}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v13

    if-nez v13, :cond_4c

    aput v11, p5, v4

    aput v12, p5, v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_45

    const-string v8, "findEmptyCells -- 11 find empty: ["

    invoke-static {v8, v11, v10, v12, v9}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    if-ne v6, v1, :cond_48

    return v6

    :cond_48
    add-int/lit8 v8, v7, 0x1

    move v11, v6

    goto :goto_51

    :cond_4c
    add-int/lit8 v8, v8, -0x1

    goto :goto_26

    :cond_4f
    move v11, v4

    move v8, v7

    :goto_51
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v12

    if-eqz v12, :cond_5c

    const-string v12, "findEmptyCells 11 -- searchIndex = "

    invoke-static {v12, v8, v5}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5c
    :goto_5c
    if-ge v8, v3, :cond_83

    rem-int v12, v8, v2

    div-int v13, v8, v2

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v14

    if-nez v14, :cond_80

    add-int/lit8 v11, v11, 0x1

    aput v12, p6, v4

    aput v13, p6, v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v14

    if-eqz v14, :cond_7d

    const-string v14, "findEmptyCells -- 22 find empty: ["

    invoke-static {v14, v12, v10, v13, v9}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    if-ne v11, v1, :cond_80

    return v6

    :cond_80
    add-int/lit8 v8, v8, 0x1

    goto :goto_5c

    :cond_83
    aget v3, p5, v4

    if-ltz v3, :cond_91

    aget v3, p5, v6

    if-ltz v3, :cond_91

    aget v3, p5, v4

    aget v7, p5, v6

    mul-int/2addr v7, v2

    add-int/2addr v7, v3

    :cond_91
    sub-int/2addr v7, v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_9d

    const-string v3, "findEmptyCells 22 -- searchIndex = "

    invoke-static {v3, v7, v5}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_9d
    :goto_9d
    if-ltz v7, :cond_c4

    rem-int v3, v7, v2

    div-int v8, v7, v2

    invoke-virtual {v0, v3, v8}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v12

    if-nez v12, :cond_c1

    add-int/lit8 v11, v11, 0x1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v12

    if-eqz v12, :cond_ba

    const-string v12, "findEmptyCells -- 33 find empty: ["

    invoke-static {v12, v3, v10, v8, v9}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    if-ne v11, v1, :cond_c1

    aput v3, p5, v4

    aput v8, p5, v6

    return v6

    :cond_c1
    add-int/lit8 v7, v7, -0x1

    goto :goto_9d

    :cond_c4
    return v4

    :cond_c5
    :goto_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEmptyCells -- invalid param!!, searchIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public getViewCluster(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[IIIZ[I)Lcom/android/launcher/layout/OplusAbstractViewCluster;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "[I[IIIZ[I)",
            "Lcom/android/launcher/layout/OplusAbstractViewCluster;"
        }
    .end annotation

    new-instance v11, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;-><init>(Lcom/android/launcher/layout/FreeLayoutUtils;Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;II[I[IZ[I)V

    return-object v11
.end method

.method public getViewCluster(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I[I)Lcom/android/launcher/layout/OplusAbstractViewCluster;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "[I[I[I[I)",
            "Lcom/android/launcher/layout/OplusAbstractViewCluster;"
        }
    .end annotation

    new-instance v9, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;-><init>(Lcom/android/launcher/layout/FreeLayoutUtils;Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I[I)V

    return-object v9
.end method

.method public orderIconsFree()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public shallReorderWhenTargetNotOccupied(Lcom/android/launcher3/CellLayout;[IZ)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method
