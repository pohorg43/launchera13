.class Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;
.super Lcom/android/launcher/layout/OplusAbstractViewCluster;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/layout/FreeLayoutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FreeLayoutViewCluster"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/layout/FreeLayoutUtils;


# direct methods
.method public constructor <init>(Lcom/android/launcher/layout/FreeLayoutUtils;Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;II[I[IZ[I)V
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

    iput-object v0, v7, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;->this$0:Lcom/android/launcher/layout/FreeLayoutUtils;

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

    invoke-virtual {p0, p7, v0, v3, v2}, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;->resetViewClusterRegion([I[I[IZ)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectedViewRegion:Landroid/graphics/Region;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/layout/FreeLayoutUtils;Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I[I)V
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

    iput-object v0, v8, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;->this$0:Lcom/android/launcher/layout/FreeLayoutUtils;

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

    invoke-virtual {p0, p5, p6, v0, v3}, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;->resetViewClusterRegion([I[I[I[I)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectedViewRegion:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public resetViewClusterRegion([I[I[IZ)Landroid/graphics/Region;
    .registers 15

    new-instance p3, Landroid/graphics/Region;

    invoke-direct {p3}, Landroid/graphics/Region;-><init>()V

    const/4 p4, 0x1

    aget v0, p2, p4

    aget v1, p1, p4

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1c

    aget v0, p2, p4

    aget v1, p1, p4

    if-ne v0, v1, :cond_1a

    aget v0, p2, v2

    aget v1, p1, v2

    if-le v0, v1, :cond_1a

    goto :goto_1c

    :cond_1a
    move v0, v2

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v0, p4

    :goto_1d
    if-eqz v0, :cond_3f

    aget v0, p1, v2

    iget v1, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v1, p4

    if-lt v0, v1, :cond_32

    aget v0, p1, p4

    add-int/2addr v0, p4

    iget v1, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountY:I

    sub-int/2addr v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v2

    goto :goto_3a

    :cond_32
    aget v0, p1, v2

    add-int/2addr v0, p4

    aget v1, p1, p4

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_3a
    aget v3, p2, v2

    aget v4, p2, p4

    goto :goto_53

    :cond_3f
    aget v1, p2, v2

    aget v0, p2, p4

    aget v3, p1, v2

    if-nez v3, :cond_4e

    iget v3, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v3, p4

    aget v4, p1, p4

    sub-int/2addr v4, p4

    goto :goto_53

    :cond_4e
    aget v3, p1, v2

    sub-int/2addr v3, p4

    aget v4, p1, p4

    :goto_53
    if-gt v0, v4, :cond_7a

    if-eq v0, v4, :cond_5b

    iget v5, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v5, p4

    goto :goto_5c

    :cond_5b
    move v5, v3

    :goto_5c
    if-gt v1, v5, :cond_76

    iget-object v6, p0, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;->this$0:Lcom/android/launcher/layout/FreeLayoutUtils;

    invoke-static {v6}, Lcom/android/launcher/layout/FreeLayoutUtils;->access$000(Lcom/android/launcher/layout/FreeLayoutUtils;)Landroid/graphics/Rect;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v1, v0, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;->this$0:Lcom/android/launcher/layout/FreeLayoutUtils;

    invoke-static {v1}, Lcom/android/launcher/layout/FreeLayoutUtils;->access$000(Lcom/android/launcher/layout/FreeLayoutUtils;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    move v1, v7

    goto :goto_5c

    :cond_76
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_53

    :cond_7a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    const-string p4, "FreeLayoutUtils"

    if-eqz p0, :cond_a3

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

    invoke-static {p4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "region = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
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

    const-string v7, "FreeLayoutUtils"

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

    iget-object v10, v0, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;->this$0:Lcom/android/launcher/layout/FreeLayoutUtils;

    invoke-static {v10}, Lcom/android/launcher/layout/FreeLayoutUtils;->access$000(Lcom/android/launcher/layout/FreeLayoutUtils;)Landroid/graphics/Rect;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v10, v9, v6, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v0, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;->this$0:Lcom/android/launcher/layout/FreeLayoutUtils;

    invoke-static {v6}, Lcom/android/launcher/layout/FreeLayoutUtils;->access$000(Lcom/android/launcher/layout/FreeLayoutUtils;)Landroid/graphics/Rect;

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
    if-gt v5, v3, :cond_ee

    iget v2, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    rem-int v4, v5, v2

    div-int v2, v5, v2

    iget-object v6, v0, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;->this$0:Lcom/android/launcher/layout/FreeLayoutUtils;

    invoke-static {v6}, Lcom/android/launcher/layout/FreeLayoutUtils;->access$000(Lcom/android/launcher/layout/FreeLayoutUtils;)Landroid/graphics/Rect;

    move-result-object v6

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v6, v4, v2, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/android/launcher/layout/FreeLayoutUtils$FreeLayoutViewCluster;->this$0:Lcom/android/launcher/layout/FreeLayoutUtils;

    invoke-static {v2}, Lcom/android/launcher/layout/FreeLayoutUtils;->access$000(Lcom/android/launcher/layout/FreeLayoutUtils;)Landroid/graphics/Rect;

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
    iget-object v3, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetLayout:Lcom/android/launcher3/CellLayout;

    aget v5, p3, v2

    aget v6, p3, v4

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v3

    if-eqz v3, :cond_ee

    aget v3, p4, v2

    if-gez v3, :cond_ee

    aget v3, p3, v2

    iget v0, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v0, v4

    if-eq v3, v0, :cond_ee

    aget v0, p3, v2

    add-int/2addr v0, v4

    aput v0, p3, v2

    aput v4, p4, v2

    :cond_ee
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_129

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

    :cond_129
    return-object v1
.end method
