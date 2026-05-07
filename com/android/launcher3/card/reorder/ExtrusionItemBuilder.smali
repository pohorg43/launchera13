.class public final Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_ExtrusionItemBuilder"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private canExtrusion:Z

.field private final extrusionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/card/reorder/ExtrusionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final extrusionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/reorder/ExtrusionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private isAttemptReorder:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->Companion:Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->canExtrusion:Z

    return-void
.end method

.method private final addExtrusionItems(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;IIILandroid/view/View;)V
    .registers 16

    iget-object v0, p2, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->getCountY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b9

    move v1, p3

    :goto_b
    add-int/lit8 v2, v0, -0x1

    iget-object v3, p2, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v3}, Lcom/android/launcher3/util/GridOccupancy;->getCountX()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_b3

    :goto_17
    add-int/lit8 v4, v3, -0x1

    if-gtz v1, :cond_1d

    goto/16 :goto_b3

    :cond_1d
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_29

    goto/16 :goto_ad

    :cond_29
    invoke-static {v3, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    goto/16 :goto_ad

    :cond_31
    invoke-virtual {p0, v3}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->hasExtrusionItemsContains(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_38

    goto :goto_ad

    :cond_38
    new-instance v5, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-direct {v5, p1, p2, v3}, Lcom/android/launcher3/card/reorder/ExtrusionItem;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v3

    const-string v7, "addExtrusionItems(), extrusionCount="

    const-string v8, "LCR_ExtrusionItemBuilder"

    if-eqz v3, :cond_88

    sget-object v3, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-virtual {v3, p6}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isFolderToBig(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_88

    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-lt v3, p4, :cond_88

    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-lt v3, p5, :cond_88

    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", only need add: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_88
    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    mul-int/2addr v3, v6

    sub-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", add: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_ad
    if-gez v4, :cond_b0

    goto :goto_b3

    :cond_b0
    move v3, v4

    goto/16 :goto_17

    :cond_b3
    :goto_b3
    if-gez v2, :cond_b6

    goto :goto_b9

    :cond_b6
    move v0, v2

    goto/16 :goto_b

    :cond_b9
    :goto_b9
    return-void
.end method

.method private final attemptExtrusion(Lcom/android/launcher3/OplusWorkspace;III)Z
    .registers 23

    move/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_ce

    add-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    if-ge v3, v0, :cond_3f

    :goto_12
    add-int/lit8 v5, v3, 0x1

    move-object/from16 v6, p1

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v7, v3, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v7, :cond_21

    check-cast v3, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_22

    :cond_21
    move-object v3, v4

    :goto_22
    if-nez v3, :cond_25

    goto :goto_3a

    :cond_25
    new-instance v7, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3a
    if-lt v5, v0, :cond_3d

    goto :goto_3f

    :cond_3d
    move v3, v5

    goto :goto_12

    :cond_3f
    :goto_3f
    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_47
    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_cc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_5a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_47

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_c8

    move-object v12, v10

    check-cast v12, Lcom/android/launcher3/util/GridOccupancy;

    add-int v9, v9, p2

    add-int/2addr v9, v6

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v10

    iget v10, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v13

    iget v13, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v12, v2, v10, v13}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v10

    if-eqz v10, :cond_98

    aget v13, v2, v8

    aget v14, v2, v6

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v6

    iget v15, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/16 v17, 0x1

    move/from16 v16, v5

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    goto :goto_47

    :cond_98
    add-int/lit8 v10, v0, -0x1

    if-lt v9, v10, :cond_c6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attemptExtrusion(), item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out pagecount."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_ExtrusionItemBuilder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, p4, -0x1

    if-ge v9, v0, :cond_c4

    goto :goto_c5

    :cond_c4
    move v6, v8

    :goto_c5
    return v6

    :cond_c6
    move v9, v11

    goto :goto_5a

    :cond_c8
    invoke-static {}, Li1/j;->r()V

    throw v4

    :cond_cc
    return v6

    nop

    :array_ce
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private final attemptReorder(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;I)Z
    .registers 13

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p2, v0, :cond_11

    return v1

    :cond_11
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v0

    aget v6, v0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v0

    const/4 v9, 0x1

    aget v7, v0, v9

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v8

    move-object v2, p0

    move v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->addExtrusionItems(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;IIILandroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->markTempUnoccupied(Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p0, v9}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->setAttemptReorder(Z)V

    invoke-virtual {p0, v9}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->setCanExtrusion(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/CardDragReorder;->performRealReorder()V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v0

    aget v0, v0, v1

    if-ltz v0, :cond_61

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v0

    aget v0, v0, v9

    if-ltz v0, :cond_61

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getCanExtrusion()Z

    move-result v0

    if-eqz v0, :cond_61

    move v0, v9

    goto :goto_62

    :cond_61
    move v0, v1

    :goto_62
    if-nez v0, :cond_6b

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->markTempOccupied(Lcom/android/launcher3/CellLayout;)V

    :cond_6b
    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getCanExtrusion()Z

    move-result v2

    const-string v3, "LCR_ExtrusionItemBuilder"

    if-nez v2, :cond_94

    const-string p0, "attemptReorder(), can not extrusion, count="

    const-string v0, ", result="

    invoke-static {p0, p2, v0}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e9

    :cond_94
    if-eqz v0, :cond_d2

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getExtrusionList()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getExtrusionItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attemptReorder(), add items, items size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getExtrusionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getExtrusionList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d2
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragMode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_e0

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getExtrusionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_e0
    if-eqz v0, :cond_e4

    move v1, v9

    goto :goto_e9

    :cond_e4
    add-int/2addr p2, v9

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->attemptReorder(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;I)Z

    move-result v1

    :goto_e9
    return v1
.end method

.method private final markTempOccupied(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private final markTempUnoccupied(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    goto :goto_6

    :cond_1a
    return-void
.end method


# virtual methods
.method public final attemptExtrusion(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/CellLayout;)Z
    .registers 6

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->attemptExtrusion(Lcom/android/launcher3/OplusWorkspace;III)Z

    move-result p1

    if-nez p1, :cond_32

    const-string p1, "LCR_ExtrusionItemBuilder"

    const-string v0, "attemptExtrusion(), can not extrusion to after pages."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->markTempOccupied(Lcom/android/launcher3/CellLayout;)V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const/4 p0, 0x0

    return p0

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method public final build(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;I)Z
    .registers 10

    const-string v0, "inspector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const-string v4, "cellLayout.mOccupied"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->vacantCellsCount(Lcom/android/launcher3/util/GridOccupancy;)I

    move-result v3

    const-string v4, "build(), dragInfo: span="

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "toString(this)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", extrusionCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", vacantCellsCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", curPageIndex="

    const-string v6, ", pageCount="

    invoke-static {v4, v3, v5, v0, v6}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxPageCount="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LCR_ExtrusionItemBuilder"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v3, p2

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    mul-int/2addr v2, v5

    const/4 v5, 0x0

    if-gt v3, v2, :cond_a1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_8d

    goto :goto_a1

    :cond_8d
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->attemptReorder(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;I)Z

    move-result p1

    if-nez p1, :cond_a0

    const-string p1, "build(), cant reorder."

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->getExtrusionItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v5

    :cond_a0
    return v2

    :cond_a1
    :goto_a1
    return v5
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getCanExtrusion()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->canExtrusion:Z

    return p0
.end method

.method public final getExtrusionItems()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/card/reorder/ExtrusionItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getExtrusionList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/reorder/ExtrusionItem;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final hasExtrusionItemsContains(Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionItems:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6

    return v2

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->extrusionList:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_30

    return v2

    :cond_43
    const/4 p0, 0x0

    return p0
.end method

.method public final isAttemptReorder()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->isAttemptReorder:Z

    return p0
.end method

.method public final setAttemptReorder(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->isAttemptReorder:Z

    return-void
.end method

.method public final setCanExtrusion(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItemBuilder;->canExtrusion:Z

    return-void
.end method
