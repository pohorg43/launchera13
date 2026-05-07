.class public Lcom/android/launcher3/dot/OplusFolderDotInfo;
.super Lcom/android/launcher3/dot/FolderDotInfo;
.source ""


# instance fields
.field private mBadgeType:I

.field private mNumberCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    iput v0, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mBadgeType:I

    return-void
.end method


# virtual methods
.method public addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    iget v0, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->getNumberCount()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    goto :goto_1f

    :cond_18
    invoke-virtual {p1}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result p1

    if-eqz p1, :cond_1f

    move v1, v2

    :cond_1f
    :goto_1f
    iget p1, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    if-lez p1, :cond_26

    iput v2, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mBadgeType:I

    goto :goto_2b

    :cond_26
    if-eqz v1, :cond_2b

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mBadgeType:I

    :cond_2b
    :goto_2b
    return-void
.end method

.method public canShowBadgeNumber()Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_a

    iget p0, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mBadgeType:I

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public extractDotInfoFromItems(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    iput v0, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mBadgeType:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/launcher3/OplusAppFilter;->isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_9

    :cond_20
    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_9

    :cond_27
    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    iget v2, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getNumberCount()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    goto :goto_45

    :cond_38
    iget v2, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    if-nez v2, :cond_45

    if-nez v0, :cond_45

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result v1

    if-eqz v1, :cond_45

    move v0, v3

    :cond_45
    :goto_45
    iget v1, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    if-lez v1, :cond_4c

    iput v3, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mBadgeType:I

    goto :goto_9

    :cond_4c
    if-eqz v0, :cond_9

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mBadgeType:I

    goto :goto_9

    :cond_52
    return-void
.end method

.method public getBadgeType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mBadgeType:I

    return p0
.end method

.method public getNumberCount()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    return p0
.end method

.method public hasDot()Z
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mBadgeType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public subtractDotInfo(Lcom/android/launcher3/dot/DotInfo;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/dot/FolderDotInfo;->subtractDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "FolderDotInfo:[type="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mBadgeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/dot/OplusFolderDotInfo;->mNumberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasDot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusFolderDotInfo;->hasDot()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
