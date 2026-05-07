.class Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;
.super Lcom/android/launcher/layout/OplusAbstractViewCluster;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/layout/CompactLayoutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompactLayoutViewCluster"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/layout/CompactLayoutUtils;


# direct methods
.method public constructor <init>(Lcom/android/launcher/layout/CompactLayoutUtils;Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;II[I[IZ[I)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "II[I[IZ[I)V"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    iput-object v0, v7, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;->this$0:Lcom/android/launcher/layout/CompactLayoutUtils;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher/layout/OplusAbstractViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I)V

    move v0, p5

    iput v0, v7, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mSpanX:I

    move v0, p6

    iput v0, v7, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mSpanY:I

    iget-object v0, v7, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    move-object v1, p7

    move/from16 v2, p9

    move-object/from16 v3, p10

    invoke-virtual {p0, p7, v0, v3, v2}, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;->resetViewClusterRegion([I[I[IZ)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectedViewRegion:Landroid/graphics/Region;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/layout/CompactLayoutUtils;Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I[I)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "[I[I[I[I)V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;->this$0:Lcom/android/launcher/layout/CompactLayoutUtils;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher/layout/OplusAbstractViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I[I)V

    iget-object v0, v8, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    move-object v1, p5

    move-object v2, p6

    move-object/from16 v3, p8

    invoke-virtual {p0, p5, p6, v0, v3}, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;->resetViewClusterRegion([I[I[I[I)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectedViewRegion:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public resetViewClusterRegion([I[I[IZ)Landroid/graphics/Region;
    .registers 13

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    const/4 v1, 0x0

    aget p3, p3, v1

    const/4 v2, 0x1

    if-gez p3, :cond_d

    move p3, v2

    goto :goto_e

    :cond_d
    move p3, v1

    :goto_e
    aget v3, p2, v2

    aget v4, p1, v2

    if-gt v3, v4, :cond_23

    aget v3, p2, v2

    aget v4, p1, v2

    if-ne v3, v4, :cond_21

    aget v3, p2, v1

    aget v4, p1, v1

    if-le v3, v4, :cond_21

    goto :goto_23

    :cond_21
    move v3, v1

    goto :goto_24

    :cond_23
    :goto_23
    move v3, v2

    :goto_24
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-eqz v3, :cond_81

    if-nez p4, :cond_38

    aget p4, p2, v1

    if-eqz p4, :cond_38

    if-nez p3, :cond_38

    aget p3, p2, v1

    sub-int/2addr p3, v2

    aput p3, p2, v1

    :cond_38
    aget p3, p1, v1

    iget p4, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr p4, v2

    if-lt p3, p4, :cond_43

    aget p3, p1, v2

    add-int/2addr p3, v2

    goto :goto_45

    :cond_43
    aget p3, p1, v2

    :goto_45
    aget p4, p2, v2

    iget v3, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mSpanY:I

    add-int/2addr p4, v3

    sub-int/2addr p4, v2

    :goto_4b
    if-gt p3, p4, :cond_dd

    aget v3, p1, v2

    if-ne p3, v3, :cond_55

    aget v3, p1, v1

    add-int/2addr v3, v2

    goto :goto_56

    :cond_55
    move v3, v1

    :goto_56
    if-ne p3, p4, :cond_5e

    aget v5, p2, v1

    iget v6, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mSpanX:I

    add-int/2addr v5, v6

    goto :goto_60

    :cond_5e
    iget v5, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    :goto_60
    sub-int/2addr v5, v2

    :goto_61
    if-gt v3, v5, :cond_7e

    iget-object v6, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6, v3, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_6c

    goto :goto_7b

    :cond_6c
    instance-of v6, v6, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v6, :cond_71

    goto :goto_7b

    :cond_71
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {v4, v3, p3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_7e
    add-int/lit8 p3, p3, 0x1

    goto :goto_4b

    :cond_81
    if-nez p4, :cond_9d

    aget p4, p2, v1

    iget v3, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v3, v2

    if-eq p4, v3, :cond_9d

    if-eqz p3, :cond_9d

    aget p3, p1, v1

    aget p4, p2, v1

    if-ne p3, p4, :cond_98

    aget p3, p1, v2

    aget p4, p2, v2

    if-eq p3, p4, :cond_9d

    :cond_98
    aget p3, p2, v1

    add-int/2addr p3, v2

    aput p3, p2, v1

    :cond_9d
    aget p3, p1, v1

    if-nez p3, :cond_a5

    aget p3, p1, v2

    sub-int/2addr p3, v2

    goto :goto_a7

    :cond_a5
    aget p3, p1, v2

    :goto_a7
    aget p4, p2, v2

    :goto_a9
    if-lt p3, p4, :cond_dd

    aget v3, p1, v2

    if-ne p3, v3, :cond_b2

    aget v3, p1, v1

    goto :goto_b4

    :cond_b2
    iget v3, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    :goto_b4
    sub-int/2addr v3, v2

    aget v5, p2, v2

    if-le p3, v5, :cond_bb

    move v5, v1

    goto :goto_bd

    :cond_bb
    aget v5, p2, v1

    :goto_bd
    if-lt v3, v5, :cond_da

    iget-object v6, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6, v3, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_c8

    goto :goto_d7

    :cond_c8
    instance-of v6, v6, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v6, :cond_cd

    goto :goto_d7

    :cond_cd
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {v4, v3, p3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :goto_d7
    add-int/lit8 v3, v3, -0x1

    goto :goto_bd

    :cond_da
    add-int/lit8 p3, p3, -0x1

    goto :goto_a9

    :cond_dd
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    const-string p3, "CompactLayoutUtils"

    if-eqz p0, :cond_106

    const-string/jumbo p0, "target = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", empty = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "region = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public resetViewClusterRegion([I[I[I[I)Landroid/graphics/Region;
    .registers 18

    move-object v0, p0

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    const/4 v2, 0x0

    aget v3, p3, v2

    const/4 v4, 0x1

    aget v5, p3, v4

    iget v6, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v3

    aget v3, p1, v2

    const-string v7, "CompactLayoutUtils"

    if-ltz v3, :cond_5f

    aget v3, p1, v4

    if-ltz v3, :cond_5f

    aget v3, p1, v2

    aget v8, p1, v4

    mul-int/2addr v8, v6

    add-int/2addr v8, v3

    aget v3, p4, v2

    if-lez v3, :cond_27

    add-int/lit8 v3, v5, -0x1

    goto :goto_28

    :cond_27
    move v3, v5

    :goto_28
    if-gt v8, v3, :cond_49

    iget v6, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    rem-int v9, v8, v6

    div-int v6, v8, v6

    iget-object v10, v0, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;->this$0:Lcom/android/launcher/layout/CompactLayoutUtils;

    invoke-static {v10}, Lcom/android/launcher/layout/CompactLayoutUtils;->access$000(Lcom/android/launcher/layout/CompactLayoutUtils;)Landroid/graphics/Rect;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v10, v9, v6, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v0, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;->this$0:Lcom/android/launcher/layout/CompactLayoutUtils;

    invoke-static {v6}, Lcom/android/launcher/layout/CompactLayoutUtils;->access$000(Lcom/android/launcher/layout/CompactLayoutUtils;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetViewClusterRegion -- left region = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    :cond_5f
    iget-object v3, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetLayout:Lcom/android/launcher3/CellLayout;

    aget v6, p3, v2

    aget v8, p3, v4

    invoke-virtual {v3, v6, v8}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v3

    if-eqz v3, :cond_7d

    aget v3, p4, v2

    if-gez v3, :cond_7d

    aget v3, p3, v2

    iget v6, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v6, v4

    if-eq v3, v6, :cond_7d

    aget v3, p3, v2

    add-int/2addr v3, v4

    aput v3, p3, v2

    aput v4, p4, v2

    :cond_7d
    :goto_7d
    aget v3, p2, v2

    if-ltz v3, :cond_d0

    aget v3, p2, v4

    if-ltz v3, :cond_d0

    aget v3, p4, v2

    if-gez v3, :cond_92

    aget v3, p3, v2

    iget v6, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v6, v4

    if-eq v3, v6, :cond_92

    add-int/lit8 v5, v5, 0x1

    :cond_92
    aget v2, p2, v2

    aget v3, p2, v4

    iget v4, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    :goto_9a
    if-gt v5, v3, :cond_ec

    iget v2, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    rem-int v4, v5, v2

    div-int v2, v5, v2

    iget-object v6, v0, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;->this$0:Lcom/android/launcher/layout/CompactLayoutUtils;

    invoke-static {v6}, Lcom/android/launcher/layout/CompactLayoutUtils;->access$000(Lcom/android/launcher/layout/CompactLayoutUtils;)Landroid/graphics/Rect;

    move-result-object v6

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v6, v4, v2, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/android/launcher/layout/CompactLayoutUtils$CompactLayoutViewCluster;->this$0:Lcom/android/launcher/layout/CompactLayoutUtils;

    invoke-static {v2}, Lcom/android/launcher/layout/CompactLayoutUtils;->access$000(Lcom/android/launcher/layout/CompactLayoutUtils;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetViewClusterRegion -- right region = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9a

    :cond_d0
    iget-object v0, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetLayout:Lcom/android/launcher3/CellLayout;

    aget v3, p3, v2

    aget v5, p3, v4

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v0

    if-eqz v0, :cond_ec

    aget v0, p4, v2

    if-lez v0, :cond_ec

    aget v0, p3, v2

    if-lez v0, :cond_ec

    aget v0, p3, v2

    sub-int/2addr v0, v4

    aput v0, p3, v2

    const/4 v0, -0x1

    aput v0, p4, v2

    :cond_ec
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_127

    const-string/jumbo v0, "target = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", leftEmptyCell = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rightEmptyCell = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", region = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_127
    return-object v1
.end method

.method public shiftAndMarkCells(ZILcom/android/launcher3/util/GridOccupancy;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    :cond_d
    iget-object v2, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;

    invoke-direct {v3, v0}, Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;-><init>(Lcom/android/launcher/layout/OplusAbstractViewCluster;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    iget-object v5, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v6, v5, v3

    const/4 v7, 0x0

    if-gt v4, v6, :cond_32

    aget v4, v2, v3

    aget v6, v5, v3

    if-ne v4, v6, :cond_30

    aget v2, v2, v7

    aget v4, v5, v7

    if-le v2, v4, :cond_30

    goto :goto_32

    :cond_30
    move v2, v7

    goto :goto_33

    :cond_32
    :goto_32
    move v2, v3

    :goto_33
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    aget v6, v5, v7

    aget v8, v5, v3

    aget v9, v5, v7

    iget v10, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mSpanX:I

    add-int/2addr v9, v10

    aget v5, v5, v3

    iget v10, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mSpanY:I

    add-int/2addr v5, v10

    invoke-direct {v4, v6, v8, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v6, v5, v7

    aget v5, v5, v3

    const-string v7, "]"

    const-string v8, ", from ["

    const-string/jumbo v9, "shiftAndMarkCells -- shift "

    const-string v10, "CompactLayoutUtils"

    const-string v11, ", "

    const/4 v12, -0x1

    if-nez p1, :cond_e3

    if-eqz v2, :cond_60

    goto/16 :goto_e3

    :cond_60
    iget-object v2, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_67
    if-ltz v2, :cond_165

    iget-object v13, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    iget-object v14, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v14, v14, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/util/CellAndSpan;

    invoke-static {v9}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v13, v13, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v14, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v14, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const-string v3, "], right to ["

    invoke-static {v15, v13, v3, v6, v11}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_b9

    const/4 v3, 0x1

    invoke-virtual {v1, v6, v5, v3, v3}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v13

    if-nez v13, :cond_b7

    goto :goto_ba

    :cond_b7
    const/4 v12, 0x0

    goto :goto_cd

    :cond_b9
    const/4 v3, 0x1

    :goto_ba
    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_c3

    iget v6, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v6, v3

    add-int/lit8 v5, v5, -0x1

    :cond_c3
    if-gez v5, :cond_a9

    iget-object v13, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    const/4 v15, 0x0

    aput v12, v13, v15

    aput v12, v13, v3

    move v12, v15

    :goto_cd
    iget-object v13, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    iget v15, v14, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aput v15, v13, v12

    iget v12, v14, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aput v12, v13, v3

    iput v6, v14, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v5, v14, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v1, v14, v3}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    add-int/lit8 v2, v2, -0x1

    const/4 v12, -0x1

    const/4 v3, 0x1

    goto :goto_67

    :cond_e3
    :goto_e3
    iget-object v2, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_165

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    :cond_f5
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-nez v12, :cond_102

    const/4 v12, 0x1

    invoke-virtual {v1, v6, v5, v12, v12}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v13

    if-nez v13, :cond_119

    :cond_102
    add-int/lit8 v6, v6, 0x1

    iget v12, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    if-lt v6, v12, :cond_10b

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    :cond_10b
    iget v12, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountY:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-le v5, v12, :cond_f5

    iget-object v12, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    const/4 v14, -0x1

    const/4 v15, 0x0

    aput v14, v12, v15

    aput v14, v12, v13

    :cond_119
    iget-object v12, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v12, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/util/CellAndSpan;

    invoke-static {v9}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const-string v14, "], left to ["

    invoke-static {v13, v3, v14, v6, v11}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    iget v13, v12, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    const/4 v14, 0x0

    aput v13, v3, v14

    iget v13, v12, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v14, 0x1

    aput v13, v3, v14

    iput v6, v12, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v5, v12, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v1, v12, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_e9

    :cond_165
    return-void
.end method
