.class public Lcom/android/launcher3/folder/FolderGridOrganizer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mCountX:I

.field public mCountY:I

.field private mDisplayingUpperLeftQuadrant:Z

.field public final mMaxCountX:I

.field public final mMaxCountY:I

.field public final mMaxItemsPerPage:I

.field private mNumItemsInFolder:I

.field private final mPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mDisplayingUpperLeftQuadrant:Z

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    return-void
.end method


# virtual methods
.method public calculateGridSize(I)V
    .registers 8

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt p1, v2, :cond_10

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    iget v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    move v2, v4

    goto :goto_11

    :cond_10
    move v2, v3

    :goto_11
    if-nez v2, :cond_5b

    mul-int v2, v0, v1

    if-ge v2, p1, :cond_34

    if-le v0, v1, :cond_1d

    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    if-ne v1, v2, :cond_25

    :cond_1d
    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    if-ge v0, v2, :cond_25

    add-int/lit8 v2, v0, 0x1

    move v5, v2

    goto :goto_2e

    :cond_25
    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    if-ge v1, v2, :cond_2d

    add-int/lit8 v2, v1, 0x1

    move v5, v0

    goto :goto_2f

    :cond_2d
    move v5, v0

    :goto_2e
    move v2, v1

    :goto_2f
    if-nez v2, :cond_50

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_34
    add-int/lit8 v2, v1, -0x1

    mul-int v5, v2, v0

    if-lt v5, p1, :cond_42

    if-lt v1, v0, :cond_42

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v5, v0

    goto :goto_50

    :cond_42
    add-int/lit8 v2, v0, -0x1

    mul-int v5, v2, v1

    if-lt v5, p1, :cond_4e

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v5, v2

    goto :goto_4f

    :cond_4e
    move v5, v0

    :goto_4f
    move v2, v1

    :cond_50
    :goto_50
    if-ne v5, v0, :cond_56

    if-ne v2, v1, :cond_56

    move v0, v4

    goto :goto_57

    :cond_56
    move v0, v3

    :goto_57
    move v1, v2

    move v2, v0

    move v0, v5

    goto :goto_11

    :cond_5b
    iput v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    iput v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    return-void
.end method

.method public getCountX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    return p0
.end method

.method public getCountY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    return p0
.end method

.method public getMaxItemsPerPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    return p0
.end method

.method public getPosForRank(I)Landroid/graphics/Point;
    .registers 4

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxItemsPerPage:I

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mPoint:Landroid/graphics/Point;

    iget p0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    rem-int v1, p1, p0

    iput v1, v0, Landroid/graphics/Point;->x:I

    div-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public isItemInPreview(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(II)Z

    move-result p0

    return p0
.end method

.method public isItemInPreview(II)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_14

    iget-boolean p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mDisplayingUpperLeftQuadrant:Z

    if-eqz p1, :cond_9

    goto :goto_14

    :cond_9
    instance-of p0, p0, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result p0

    if-ge p2, p0, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    return v0

    :cond_14
    :goto_14
    instance-of p0, p0, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getFolderMaxCol(Z)I

    move-result p0

    int-to-double p0, p0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-int p0, p0

    if-ge p2, p0, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0
.end method

.method public previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:TT;>(I",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mCountY:I

    mul-int/2addr v1, v2

    mul-int v2, v1, p1

    add-int/2addr v1, v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_16
    if-ge v2, v1, :cond_37

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(II)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    instance-of v5, p0, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    invoke-static {v5}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v5

    if-ne v4, v5, :cond_32

    goto :goto_37

    :cond_32
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_37
    :goto_37
    return-object v0
.end method

.method public setContentSize(I)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mNumItemsInFolder:I

    if-eq p1, v0, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->calculateGridSize(I)V

    instance-of v0, p0, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v0

    if-le p1, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mDisplayingUpperLeftQuadrant:Z

    iput p1, p0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mNumItemsInFolder:I

    :cond_16
    return-object p0
.end method

.method public setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .registers 2

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setContentSize(I)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object p0

    return-object p0
.end method

.method public updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z
    .registers 5

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getPosForRank(I)Landroid/graphics/Point;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    if-eq p2, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget p2, p0, Landroid/graphics/Point;->x:I

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 p0, 0x1

    return p0
.end method
