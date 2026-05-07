.class public abstract Lcom/android/launcher/layout/OplusAbstractViewCluster;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusAbstractViewCluster"


# instance fields
.field public final mCellCountX:I

.field public final mCellCountY:I

.field public final mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

.field public mDirection:[I

.field public mEmptyCell:[I

.field public mIntersectedViewRegion:Landroid/graphics/Region;

.field public final mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mLeftEmptyCell:[I

.field public mRightEmptyCell:[I

.field public mSpanX:I

.field public mSpanY:I

.field public mTargetCell:[I

.field public mTargetLayout:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "[I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectedViewRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    iget-object p1, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountY:I

    iput-object p4, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "[I[I[I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher/layout/OplusAbstractViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I)V

    iput-object p4, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    iput-object p6, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mDirection:[I

    invoke-virtual {p0}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->sortConfigurationByCellXY()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I[I)V
    .registers 8
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

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/launcher/layout/OplusAbstractViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I)V

    iput-object p4, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mLeftEmptyCell:[I

    iput-object p5, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mRightEmptyCell:[I

    iput-object p7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mDirection:[I

    invoke-virtual {p0}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->sortConfigurationByCellXY()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEmptyCellOverShift()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    return-object p0
.end method

.method public isIntersectedView(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectedViewRegion:Landroid/graphics/Region;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string p0, "OplusAbstractViewCluster"

    const-string p1, "mIntersectedViewRegion not initial!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object p0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectedViewRegion:Landroid/graphics/Region;

    iget v0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public removeInterestsViews(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_20

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_20
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract resetViewClusterRegion([I[I[IZ)Landroid/graphics/Region;
.end method

.method public abstract resetViewClusterRegion([I[I[I[I)Landroid/graphics/Region;
.end method

.method public shiftAndMarkCells(Lcom/android/launcher3/util/GridOccupancy;)V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    iget v4, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    mul-int/2addr v0, v4

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mLeftEmptyCell:[I

    iput-object v2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v4, v2, v1

    const-string/jumbo v5, "shiftAndMarkCells empty will out of range! empty = "

    const-string v6, ", "

    const-string v7, ", from ["

    const-string/jumbo v8, "shiftAndMarkCells -- shift "

    const/4 v9, -0x1

    const-string v10, "OplusAbstractViewCluster"

    if-eq v4, v9, :cond_fc

    aget v2, v2, v3

    if-eq v2, v9, :cond_fc

    iget-object v2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mDirection:[I

    aget v2, v2, v1

    if-gez v2, :cond_2d

    move v2, v0

    goto :goto_2f

    :cond_2d
    add-int/lit8 v2, v0, -0x1

    :goto_2f
    const-string/jumbo v3, "shiftAndMarkCells -- move left, endIndex = "

    invoke-static {v3, v2, v10}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v9, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v9, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/util/CellAndSpan;

    iget v11, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v12, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v13, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v11

    if-le v12, v2, :cond_5d

    goto/16 :goto_e5

    :cond_5d
    invoke-static {v8}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], left to "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v11, v4, v1

    iput v11, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    const/4 v11, 0x1

    aget v4, v4, v11

    iput v4, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ltz v4, :cond_a6

    iget v12, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountY:I

    sub-int/2addr v12, v11

    if-gt v4, v12, :cond_a6

    invoke-virtual {p1, v9, v11}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_a6
    :goto_a6
    iget-object v4, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v9, v4, v1

    aget v4, v4, v11

    invoke-virtual {p1, v9, v4, v11, v11}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v4

    if-nez v4, :cond_3b

    iget-object v4, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v9, v4, v1

    add-int/2addr v9, v11

    aput v9, v4, v1

    aget v9, v4, v1

    iget v12, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    if-lt v9, v12, :cond_c6

    aput v1, v4, v1

    aget v9, v4, v11

    add-int/2addr v9, v11

    aput v9, v4, v11

    :cond_c6
    aget v4, v4, v11

    iget v9, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountY:I

    sub-int/2addr v9, v11

    if-le v4, v9, :cond_e3

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    :cond_e3
    const/4 v11, 0x1

    goto :goto_a6

    :cond_e5
    :goto_e5
    const-string/jumbo v2, "shiftAndMarkCells -- move left end, mEmptyCell="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fc
    iget-object v2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mRightEmptyCell:[I

    aget v3, v2, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e3

    const/4 v3, 0x1

    aget v9, v2, v3

    if-eq v9, v4, :cond_1e3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aget v9, v2, v1

    aput v9, v4, v1

    aget v2, v2, v3

    aput v2, v4, v3

    iget-object v2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mDirection:[I

    aget v2, v2, v1

    if-gez v2, :cond_124

    iget-object v2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    aget v2, v2, v1

    iget v9, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v9, v3

    if-eq v2, v9, :cond_124

    add-int/lit8 v0, v0, 0x1

    :cond_124
    const-string/jumbo v2, "shiftAndMarkCells -- move right, endIndex = "

    invoke-static {v2, v0, v10}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_132
    if-ltz v2, :cond_1ce

    iget-object v3, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v9, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v9, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/util/CellAndSpan;

    iget v11, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v12, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v13, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v11

    if-ge v12, v0, :cond_152

    goto/16 :goto_1ce

    :cond_152
    invoke-static {v8}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], right to "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget v3, v4, v1

    iput v3, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    const/4 v3, 0x1

    aget v11, v4, v3

    iput v11, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ltz v11, :cond_197

    iget v12, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountY:I

    sub-int/2addr v12, v3

    if-gt v11, v12, :cond_197

    invoke-virtual {p1, v9, v3}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_197
    aget v9, v4, v1

    aget v11, v4, v3

    invoke-virtual {p1, v9, v11, v3, v3}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v9

    if-nez v9, :cond_1ca

    aget v9, v4, v1

    sub-int/2addr v9, v3

    aput v9, v4, v1

    aget v9, v4, v1

    if-gez v9, :cond_1b4

    iget v9, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v9, v3

    aput v9, v4, v1

    aget v9, v4, v3

    sub-int/2addr v9, v3

    aput v9, v4, v3

    :cond_1b4
    aget v9, v4, v3

    if-gez v9, :cond_197

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ca
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_132

    :cond_1ce
    :goto_1ce
    const-string/jumbo p0, "shiftAndMarkCells -- move right end, mEmptyCell="

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e3
    return-void
.end method

.method public shiftAndMarkCells(Lcom/android/launcher3/util/GridOccupancy;II)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;-><init>(Lcom/android/launcher/layout/OplusAbstractViewCluster;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v6, v1, v2

    add-int/2addr v6, p2

    aget p2, v1, v4

    add-int/2addr p2, p3

    invoke-direct {v0, v3, v5, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mTargetCell:[I

    aget p3, p2, v4

    iget-object v1, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v3, v1, v4

    if-gt p3, v3, :cond_3f

    aget p3, p2, v4

    aget v3, v1, v4

    if-ne p3, v3, :cond_3d

    aget p2, p2, v2

    aget p3, v1, v2

    if-le p2, p3, :cond_3d

    goto :goto_3f

    :cond_3d
    move p2, v2

    goto :goto_40

    :cond_3f
    :goto_3f
    move p2, v4

    :goto_40
    const-string/jumbo p3, "shiftAndMarkCells empty will out of range! empty = "

    const-string v1, ", "

    const-string v3, ", from ["

    const-string/jumbo v5, "shiftAndMarkCells -- shift "

    const-string v6, "OplusAbstractViewCluster"

    if-eqz p2, :cond_f4

    iget-object p2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_54
    :goto_54
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_199

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v8, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/util/CellAndSpan;

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], left to "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v9, v7, v2

    iput v9, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v7, v7, v4

    iput v7, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {p1, v8, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_ab
    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v8, v7, v2

    aget v7, v7, v4

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_c3

    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v8, v7, v2

    aget v7, v7, v4

    invoke-virtual {p1, v8, v7, v4, v4}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v7

    if-nez v7, :cond_54

    :cond_c3
    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v8, v7, v2

    add-int/2addr v8, v4

    aput v8, v7, v2

    aget v8, v7, v2

    iget v9, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    if-lt v8, v9, :cond_d7

    aput v2, v7, v2

    aget v8, v7, v4

    add-int/2addr v8, v4

    aput v8, v7, v4

    :cond_d7
    aget v7, v7, v4

    iget v8, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountY:I

    sub-int/2addr v8, v4

    if-le v7, v8, :cond_ab

    invoke-static {p3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    :cond_f4
    iget-object p2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v4

    :goto_fb
    if-ltz p2, :cond_199

    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v8, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/util/CellAndSpan;

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], right to "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v9, v7, v2

    iput v9, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v7, v7, v4

    iput v7, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {p1, v8, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_150
    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v8, v7, v2

    aget v7, v7, v4

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_168

    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v8, v7, v2

    aget v7, v7, v4

    invoke-virtual {p1, v8, v7, v4, v4}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v7

    if-nez v7, :cond_195

    :cond_168
    iget-object v7, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    aget v8, v7, v2

    sub-int/2addr v8, v4

    aput v8, v7, v2

    aget v8, v7, v2

    if-gez v8, :cond_17d

    iget v8, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v8, v4

    aput v8, v7, v2

    aget v8, v7, v4

    sub-int/2addr v8, v4

    aput v8, v7, v4

    :cond_17d
    aget v7, v7, v4

    if-gez v7, :cond_150

    invoke-static {p3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mEmptyCell:[I

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_195
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_fb

    :cond_199
    return-void
.end method

.method public shiftAndMarkCells(ZILcom/android/launcher3/util/GridOccupancy;)V
    .registers 14

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const-string/jumbo v5, "shiftAndMarkCells cellY will out of range! c = "

    const-string v6, "OplusAbstractViewCluster"

    const/4 v7, 0x1

    if-eqz p1, :cond_5c

    :cond_2b
    iget v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v8, p2

    iput v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-gez v8, :cond_51

    iget v8, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v8, v7

    iput v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v8, v7

    iput v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-gez v8, :cond_51

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :cond_51
    iget v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v9, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {p3, v8, v9, v7, v7}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v8

    if-eqz v8, :cond_2b

    goto :goto_90

    :cond_5c
    iget v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v8, p2

    iput v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v9, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountX:I

    sub-int/2addr v9, v7

    if-le v8, v9, :cond_86

    const/4 v8, 0x0

    iput v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v8, v7

    iput v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v9, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountY:I

    sub-int/2addr v9, v7

    if-le v8, v9, :cond_86

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :cond_86
    iget v8, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v9, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {p3, v8, v9, v7, v7}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v8

    if-eqz v8, :cond_5c

    :goto_90
    const-string/jumbo v5, "shiftAndMarkCells -- end. shift "

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", from ("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), to "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Drag"

    invoke-static {v3, v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ltz v1, :cond_9

    iget v3, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mCellCountY:I

    sub-int/2addr v3, v7

    if-gt v1, v3, :cond_9

    invoke-virtual {p3, v2, v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto/16 :goto_9

    :cond_d1
    return-void
.end method

.method public sortConfigurationByCellXY()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mConfig:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/OplusAbstractViewCluster$CellXYPositionComparator;-><init>(Lcom/android/launcher/layout/OplusAbstractViewCluster;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
