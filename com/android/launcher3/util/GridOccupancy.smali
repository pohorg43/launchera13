.class public Lcom/android/launcher3/util/GridOccupancy;
.super Lcom/android/launcher3/util/OplusBaseGridOccupancy;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "GridOccupancy"


# direct methods
.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;-><init>()V

    iput p1, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    iput p2, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 p2, 0x0

    aput p1, v0, p2

    const-class p1, Z

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    iget v3, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    return-void
.end method

.method public copyTo(Lcom/android/launcher3/util/GridOccupancy;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    if-ge v1, v2, :cond_1d

    move v2, v0

    :goto_7
    iget v3, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-ge v2, v3, :cond_1a

    iget-object v3, p1, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return-void
.end method

.method public bridge synthetic findConsecutiveVacantCellsInTail(Ljava/util/List;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->findConsecutiveVacantCellsInTail(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic findLastOccupiedCell([I)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->findLastOccupiedCell([I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic findLastVacantCell([III)Z
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->findLastVacantCell([III)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic findPreferVacantCell([IIIII)Z
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->findPreferVacantCell([IIIII)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic findPreferVacantVDFCell([IIIII)Z
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->findPreferVacantVDFCell([IIIII)Z

    move-result p0

    return p0
.end method

.method public findVacantCell([III)Z
    .registers 11

    iget-object v2, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    iget v3, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-super/range {v0 .. v6}, Lcom/android/launcher3/util/AbsGridOccupancy;->findVacantCell([I[[ZIIII)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic findVacantCellBackwards([III)Z
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->findVacantCellBackwards([III)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic findVacantCellReverse([III)Z
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->findVacantCellReverse([III)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getCountX()I
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->getCountX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getCountY()I
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->getCountY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic isAvailable(IIII)Z
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->isAvailable(IIII)Z

    move-result p0

    return p0
.end method

.method public isRegionVacant(IIII)Z
    .registers 9

    add-int/2addr p3, p1

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    add-int/2addr p4, p2

    sub-int/2addr p4, v0

    const/4 v1, 0x0

    if-ltz p1, :cond_28

    if-ltz p2, :cond_28

    iget v2, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    if-ge p3, v2, :cond_28

    iget v2, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-lt p4, v2, :cond_13

    goto :goto_28

    :cond_13
    :goto_13
    if-gt p1, p3, :cond_27

    move v2, p2

    :goto_16
    if-gt v2, p4, :cond_24

    iget-object v3, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v3, v3, p1

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_21

    return v1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_27
    return v0

    :cond_28
    :goto_28
    return v1
.end method

.method public markCells(IIIIZ)V
    .registers 9

    if-ltz p1, :cond_23

    if-gez p2, :cond_5

    goto :goto_23

    :cond_5
    move v0, p1

    :goto_6
    add-int v1, p1, p3

    if-ge v0, v1, :cond_23

    iget v1, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    if-ge v0, v1, :cond_23

    move v1, p2

    :goto_f
    add-int v2, p2, p4

    if-ge v1, v2, :cond_20

    iget v2, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-ge v1, v2, :cond_20

    iget-object v2, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_23
    :goto_23
    return-void
.end method

.method public markCells(Landroid/graphics/Rect;Z)V
    .registers 9

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    return-void
.end method

.method public markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 9

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    return-void
.end method

.method public markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V
    .registers 9

    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
