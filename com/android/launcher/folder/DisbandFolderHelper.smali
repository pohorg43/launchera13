.class public Lcom/android/launcher/folder/DisbandFolderHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/DisbandFolderHelper;->lambda$computeEmptyCellsAndItemCells$2(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public static animateExistItemsToPosition(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/OplusCellLayout;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/graphics/Point;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_29

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    new-instance v6, Landroid/graphics/Point;

    iget v7, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v5, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-direct {v6, v7, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_29
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v10

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_36
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Point;

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/view/View;

    iget v14, v2, Landroid/graphics/Point;->x:I

    iget v15, v2, Landroid/graphics/Point;->y:I

    const/16 v16, 0x190

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v3

    const/16 v5, -0x64

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    iget v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/model/OplusModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    goto :goto_36

    :cond_85
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/DisbandFolderHelper;->lambda$computeEmptyCellsAndItemCells$3(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method public static batchBindItemToEmptyPoint(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/OplusCellLayout;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result p1

    const/4 v0, 0x0

    move v6, v0

    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2c

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v2

    const/16 v3, -0x64

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object v0, v2

    move v2, v3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_2c
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/DisbandFolderHelper;->lambda$removeFolderContent$1(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public static computeEmptyCellsAndItemCells(Landroid/graphics/Point;ILjava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "I",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/graphics/Point;",
            ">;>;>;"
        }
    .end annotation

    sget-object v0, Lu/c;->b:Lu/c;

    sget-object v1, Lu/a;->b:Lu/a;

    invoke-interface {p2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {p3, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    add-int/2addr v3, v5

    const/4 v6, 0x0

    :goto_1f
    add-int/lit8 v7, p1, -0x1

    if-ge v6, v7, :cond_41

    if-ge v3, v2, :cond_31

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_31
    if-ltz v4, :cond_3e

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    :cond_3e
    :goto_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_41
    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5b
    :goto_5b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ef

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5b

    const/16 v7, 0x63

    if-ne v6, v7, :cond_71

    goto :goto_5b

    :cond_71
    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-gt v6, v5, :cond_5b

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-le v6, v5, :cond_7a

    goto :goto_5b

    :cond_7a
    if-eqz p1, :cond_b5

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, p1, Landroid/graphics/Point;->y:I

    if-lt v6, v7, :cond_b5

    iget v8, p0, Landroid/graphics/Point;->y:I

    if-gt v6, v8, :cond_b5

    if-le v6, v7, :cond_8e

    if-ge v6, v8, :cond_8e

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    goto :goto_b5

    :cond_8e
    if-ne v7, v8, :cond_9e

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p0, Landroid/graphics/Point;->x:I

    if-ge v6, v7, :cond_b5

    iget v7, p1, Landroid/graphics/Point;->x:I

    if-le v6, v7, :cond_b5

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    goto :goto_b5

    :cond_9e
    if-ne v6, v7, :cond_aa

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p1, Landroid/graphics/Point;->x:I

    if-le v6, v7, :cond_b5

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    goto :goto_b5

    :cond_aa
    if-ne v6, v8, :cond_b5

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p0, Landroid/graphics/Point;->x:I

    if-ge v6, v7, :cond_b5

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    :cond_b5
    :goto_b5
    if-eqz p2, :cond_5b

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, p0, Landroid/graphics/Point;->y:I

    if-lt v6, v7, :cond_5b

    iget v8, p2, Landroid/graphics/Point;->y:I

    if-gt v6, v8, :cond_5b

    if-le v6, v7, :cond_c9

    if-ge v6, v8, :cond_c9

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_c9
    if-ne v8, v7, :cond_d5

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p0, Landroid/graphics/Point;->x:I

    if-le v6, v7, :cond_5b

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_d5
    if-ne v6, v7, :cond_e2

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p0, Landroid/graphics/Point;->x:I

    if-le v6, v7, :cond_5b

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    :cond_e2
    if-ne v6, v8, :cond_5b

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p2, Landroid/graphics/Point;->x:I

    if-ge v6, v7, :cond_5b

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    :cond_ef
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance p2, Landroid/graphics/Point;

    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-direct {p2, p3, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    goto :goto_f3

    :cond_10c
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_110
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_129

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance p2, Landroid/graphics/Point;

    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-direct {p2, p3, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    goto :goto_110

    :cond_129
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->sort(Ljava/util/Comparator;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_131
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14c

    new-instance p1, Landroid/util/Pair;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Point;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_131

    :cond_14c
    :goto_14c
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_167

    new-instance p1, Landroid/util/Pair;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Point;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14c

    :cond_167
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic d(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/DisbandFolderHelper;->lambda$getEmptyCellsAndFolderPointFromCellLayout$0(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public static getEmptyCellsAndFolderPointFromCellLayout(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/OplusCellLayout;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            "Lcom/android/launcher3/OplusCellLayout;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->getEmptyCells()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_1c

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lu/b;->b:Lu/b;

    invoke-interface {p1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static isSupportDisbandFolder()Z
    .registers 1

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isSupportDisbandFolder()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$computeEmptyCellsAndItemCells$2(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 4

    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-le v0, v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    iget p0, p0, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$computeEmptyCellsAndItemCells$3(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ge v0, v1, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-le v0, v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$getEmptyCellsAndFolderPointFromCellLayout$0(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 4

    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-le v0, v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    iget p0, p0, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$removeFolderContent$1(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "container="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static removeFolderContent(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/FolderIcon;ZZ)V
    .registers 12

    if-eqz p3, :cond_c

    sget-object p3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_c
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZ)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method public static statsClickDisbandFolder(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsClickDisbandFolder()V

    return-void
.end method
