.class public Lcom/android/launcher/layout/CompactLayoutUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/layout/LayoutUtilsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompactLayoutUtils"

.field private static volatile sInstance:Lcom/android/launcher/layout/CompactLayoutUtils;


# instance fields
.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/layout/CompactLayoutUtils;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/layout/CompactLayoutUtils;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/CompactLayoutUtils;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getInstance()Lcom/android/launcher/layout/CompactLayoutUtils;
    .registers 2

    sget-object v0, Lcom/android/launcher/layout/CompactLayoutUtils;->sInstance:Lcom/android/launcher/layout/CompactLayoutUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/layout/CompactLayoutUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/layout/CompactLayoutUtils;->sInstance:Lcom/android/launcher/layout/CompactLayoutUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/layout/CompactLayoutUtils;

    invoke-direct {v1}, Lcom/android/launcher/layout/CompactLayoutUtils;-><init>()V

    sput-object v1, Lcom/android/launcher/layout/CompactLayoutUtils;->sInstance:Lcom/android/launcher/layout/CompactLayoutUtils;

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
    sget-object v0, Lcom/android/launcher/layout/CompactLayoutUtils;->sInstance:Lcom/android/launcher/layout/CompactLayoutUtils;

    return-object v0
.end method


# virtual methods
.method public checkLayoutForScreen(Lcom/android/launcher3/CellLayout;Z)V
    .registers 5

    instance-of p0, p1, Lcom/android/launcher3/OplusCellLayout;

    const-string v0, "CompactLayoutUtils"

    if-nez p0, :cond_c

    const-string p0, "checkLayoutForScreen targetLayout is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v1

    if-nez v1, :cond_1b

    const-string p0, "checkLayoutForScreen emptyCell is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, p2, p0}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    return-void
.end method

.method public findEmptyCellForReorder(Lcom/android/launcher3/CellLayout;[IIIZLjava/util/ArrayList;)[I
    .registers 25
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

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_ee

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v4

    if-nez v4, :cond_13

    return-object v3

    :cond_13
    const-string v4, "findEmptyCellForReorder -- cell = ["

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget v8, v3, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], targetCell = ["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p2, v5

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p2, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "Drag"

    const-string v10, "CompactLayoutUtils"

    invoke-static {v9, v10, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget v4, p2, v7

    aget v11, v3, v7

    if-gt v4, v11, :cond_ed

    aget v4, p2, v7

    aget v11, v3, v7

    if-ne v4, v11, :cond_60

    aget v4, p2, v5

    aget v11, v3, v5

    if-le v4, v11, :cond_60

    goto/16 :goto_ed

    :cond_60
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findEmptyCellForReorder -- count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_83

    aget v0, p2, v5

    aput v0, v3, v5

    aget v0, p2, v7

    aput v0, v3, v7

    return-object v3

    :cond_83
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v12

    aget v13, p2, v5

    if-eqz p5, :cond_91

    const/4 v14, -0x1

    goto :goto_92

    :cond_91
    move v14, v7

    :goto_92
    aget v15, p2, v7

    move/from16 p0, v5

    move v5, v15

    move v15, v13

    move v13, v7

    move/from16 v7, p0

    :goto_9b
    if-ltz v5, :cond_ed

    if-ge v5, v12, :cond_ed

    move/from16 v17, v7

    move/from16 v7, p0

    move/from16 p0, v12

    move v12, v15

    move v15, v13

    move/from16 v13, v17

    :goto_a9
    if-ltz v12, :cond_db

    if-ge v12, v11, :cond_db

    invoke-virtual {v0, v12, v5}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v16

    if-eqz v16, :cond_b4

    goto :goto_c3

    :cond_b4
    aget v15, p2, v15

    add-int/2addr v15, v2

    if-ge v5, v15, :cond_c5

    aget v15, p2, v7

    if-lt v12, v15, :cond_c5

    aget v15, p2, v7

    add-int/2addr v15, v1

    if-lt v12, v15, :cond_c3

    goto :goto_c5

    :cond_c3
    :goto_c3
    const/4 v15, 0x1

    goto :goto_d9

    :cond_c5
    :goto_c5
    add-int/lit8 v13, v13, 0x1

    const-string v7, "findEmptyCellForReorder -- find ["

    invoke-static {v7, v12, v6, v5, v8}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v10, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    if-lt v13, v4, :cond_c3

    aput v12, v3, v7

    const/4 v0, 0x1

    aput v5, v3, v0

    return-object v3

    :goto_d9
    add-int/2addr v12, v14

    goto :goto_a9

    :cond_db
    if-eqz p5, :cond_e0

    add-int/lit8 v12, v11, -0x1

    goto :goto_e1

    :cond_e0
    move v12, v7

    :goto_e1
    add-int/2addr v5, v14

    move/from16 v17, v12

    move/from16 v12, p0

    move/from16 p0, v7

    move v7, v13

    move v13, v15

    move/from16 v15, v17

    goto :goto_9b

    :cond_ed
    :goto_ed
    return-object v3

    :array_ee
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public findEmptyCells(Lcom/android/launcher3/CellLayout;[I[II[I[I)Z
    .registers 16

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p3

    mul-int/2addr p3, p0

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    mul-int/2addr v3, p0

    add-int/2addr v3, v1

    const-string v1, "CompactLayoutUtils"

    if-ltz v3, :cond_97

    if-lt v3, p3, :cond_19

    goto/16 :goto_97

    :cond_19
    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v4

    aget v5, v4, v0

    if-ltz v5, :cond_96

    aget v5, v4, v2

    if-gez v5, :cond_2a

    goto/16 :goto_96

    :cond_2a
    aget v5, p2, v2

    aget v6, v4, v2

    if-gt v5, v6, :cond_3f

    aget v5, p2, v2

    aget v6, v4, v2

    if-ne v5, v6, :cond_3d

    aget p2, p2, v0

    aget v5, v4, v0

    if-le p2, v5, :cond_3d

    goto :goto_3f

    :cond_3d
    move p2, v0

    goto :goto_40

    :cond_3f
    :goto_3f
    move p2, v2

    :goto_40
    if-eqz p2, :cond_51

    aget v5, v4, v0

    aput v5, p5, v0

    aget v4, v4, v2

    aput v4, p5, v2

    aget v4, p5, v0

    aget v5, p5, v2

    mul-int/2addr v5, p0

    add-int/2addr v5, v4

    goto :goto_52

    :cond_51
    move v5, v3

    :goto_52
    const-string v4, "findEmptyCells -- targetRightOfEmpty = "

    const-string v6, ", firstEmpty = "

    invoke-static {v4, p2, v6}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    :goto_69
    if-ge v5, p3, :cond_96

    rem-int p5, v5, p0

    div-int v4, v5, p0

    invoke-virtual {p1, p5, v4}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v6

    if-nez v6, :cond_93

    add-int/lit8 p2, p2, 0x1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_8a

    const-string v6, "findEmptyCells -- 11 find empty: ["

    const-string v7, ", "

    const-string v8, "]"

    invoke-static {v6, p5, v7, v4, v8}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    if-ne p2, p4, :cond_93

    if-le v5, v3, :cond_92

    aput p5, p6, v0

    aput v4, p6, v2

    :cond_92
    return v2

    :cond_93
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_96
    :goto_96
    return v0

    :cond_97
    :goto_97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "findEmptyCells -- invalid param!!, searchIndex = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxIndex = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
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

    new-instance v11, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;

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

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;-><init>(Lcom/android/launcher/layout/CompactLayoutUtils;Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;II[I[IZ[I)V

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

    new-instance v9, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;-><init>(Lcom/android/launcher/layout/CompactLayoutUtils;Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I[I)V

    return-object v9
.end method

.method public orderIconsFree()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public shallReorderWhenTargetNotOccupied(Lcom/android/launcher3/CellLayout;[IZ)Z
    .registers 5

    instance-of p0, p1, Lcom/android/launcher3/OplusCellLayout;

    const/4 v0, 0x0

    if-nez p0, :cond_e

    const-string p0, "CompactLayoutUtils"

    const-string/jumbo p1, "shallReorderWhenTargetNotOccupied targetLayout is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_e
    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/OplusCellLayout;->isTargetCellBehindAllIcons([IZ)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusCellLayout;->findLastIconView([I)Landroid/view/View;

    aget p2, p0, v0

    const/4 p3, 0x1

    aget p0, p0, p3

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/OplusCellLayout;->hasEmptyCellAhead(II)Z

    move-result p0

    return p0

    :cond_26
    return v0
.end method
