.class public Lcom/android/launcher3/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public animX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public animY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public dropped:Z

.field public isHotseatChild:Z

.field public isHotseatDivider:Z

.field public isHotseatExpand:Z

.field public isLockedToGrid:Z

.field public lastCellX:I

.field public lastCellY:I

.field public reorderToCellX:I

.field public reorderToCellY:I

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .registers 7

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatDivider:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpand:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatDivider:Z

    iput-boolean p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpand:Z

    iput-boolean p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatDivider:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpand:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatDivider:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpand:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public setCellXY(Landroid/graphics/Point;)V
    .registers 3

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    return-void
.end method

.method public setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 14
    .param p9  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean p5, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz p5, :cond_b2

    iget p5, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_f

    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_11

    :cond_f
    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    :goto_11
    if-eqz v1, :cond_16

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_18

    :cond_16
    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_18
    if-eqz p3, :cond_1d

    sub-int/2addr p4, v2

    sub-int v2, p4, p5

    :cond_1d
    add-int/lit8 p3, p5, -0x1

    iget p4, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr p3, p4

    add-int/lit8 p4, v0, -0x1

    iget v3, p8, Landroid/graphics/Point;->y:I

    mul-int/2addr p4, v3

    mul-int/2addr p5, p1

    add-int/2addr p5, p3

    int-to-float p3, p5

    div-float/2addr p3, p6

    mul-int/2addr v0, p2

    add-int/2addr v0, p4

    int-to-float p4, v0

    div-float/2addr p4, p7

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p3, p5

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, p5

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p3, p4

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p3, p4

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-boolean p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatDivider:Z

    if-eqz p3, :cond_57

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result p3

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v2, :cond_57

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getHotseatNormalItemCount()I

    move-result v2

    :cond_57
    iget-boolean p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpand:Z

    if-eqz p3, :cond_73

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result p3

    if-eqz p3, :cond_73

    add-int/lit8 v2, v2, -0x1

    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    mul-int/2addr p1, v2

    add-int/2addr p1, p3

    iget p3, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p3

    add-int/2addr v2, p1

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    goto :goto_7d

    :cond_73
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    mul-int/2addr p1, v2

    add-int/2addr p1, p3

    iget p3, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p3

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    :goto_7d
    iget-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    if-eqz p1, :cond_8a

    iget p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->getHotseatBgPaddingHorizontal()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    :cond_8a
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    iget p1, p8, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    if-eqz p9, :cond_b2

    iget p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget p2, p9, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget p1, p9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p4, p9, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    add-int/2addr p2, p3

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p3, p9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_b2
    return-void
.end method

.method public setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 18
    .param p7  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "("

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHotseatDivider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatDivider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHotseatExpand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isHotseatChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSpanXY(II)V
    .registers 3

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method
