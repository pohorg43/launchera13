.class public final Lcom/android/launcher3/card/reorder/ExtrusionOption;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private farthestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

.field private finalX:F

.field private nearestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;


# direct methods
.method public constructor <init>(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/reorder/ExtrusionItem;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "extrusionItemList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lz2/r;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    iput-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->farthestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-static {p2}, Lz2/r;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    iput-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->nearestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    if-nez p3, :cond_42

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getNearestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-le v1, v2, :cond_3d

    goto :goto_54

    :cond_3d
    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getNearestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v1

    goto :goto_5a

    :cond_42
    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getNearestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v1, v2, :cond_56

    :goto_54
    move-object v1, v0

    goto :goto_5a

    :cond_56
    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getNearestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v1

    :goto_5a
    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->setNearestItem(Lcom/android/launcher3/card/reorder/ExtrusionItem;)V

    if-nez p3, :cond_77

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getFarthestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v1, v2, :cond_72

    goto :goto_8e

    :cond_72
    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getFarthestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v0

    goto :goto_8e

    :cond_77
    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getFarthestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-le v1, v2, :cond_8a

    goto :goto_8e

    :cond_8a
    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->getFarthestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v0

    :goto_8e
    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/reorder/ExtrusionOption;->setFarthestItem(Lcom/android/launcher3/card/reorder/ExtrusionItem;)V

    goto :goto_1c

    :cond_92
    if-nez p3, :cond_a2

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->farthestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x3f800000  # 1.0f

    mul-float/2addr p1, p2

    goto :goto_bc

    :cond_a2
    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->farthestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    div-int/lit8 p3, p1, 0x2

    const/high16 v0, -0x40800000  # -1.0f

    if-le p2, p3, :cond_b1

    goto :goto_ba

    :cond_b1
    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->farthestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    sub-int/2addr p1, p2

    :goto_ba
    int-to-float p1, p1

    mul-float/2addr p1, v0

    :goto_bc
    iput p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->finalX:F

    return-void
.end method


# virtual methods
.method public final getFarthestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->farthestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    return-object p0
.end method

.method public final getFinalX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->finalX:F

    return p0
.end method

.method public final getNearestItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->nearestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    return-object p0
.end method

.method public final setFarthestItem(Lcom/android/launcher3/card/reorder/ExtrusionItem;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->farthestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    return-void
.end method

.method public final setNearestItem(Lcom/android/launcher3/card/reorder/ExtrusionItem;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->nearestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    return-void
.end method

.method public final startDelay(Lcom/android/launcher3/model/data/ItemInfo;)J
    .registers 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionOption;->nearestItem:Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->getExtrusionDelay(II)J

    move-result-wide p0

    return-wide p0
.end method
