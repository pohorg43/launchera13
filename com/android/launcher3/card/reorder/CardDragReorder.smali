.class public final Lcom/android/launcher3/card/reorder/CardDragReorder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/CardDragReorder$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/CardDragReorder$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_CardDragReorder"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

.field private mCellLayout:Lcom/android/launcher3/OplusCellLayout;

.field private final mExtrusionSolution:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final mReorderSolutionDispatcher:Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/CardDragReorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/CardDragReorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->Companion:Lcom/android/launcher3/card/reorder/CardDragReorder$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 4

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    new-instance p1, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    new-instance p2, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

    invoke-direct {p2, p1}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;-><init>(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;)V

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mExtrusionSolution:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

    new-instance p2, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;

    invoke-direct {p2, p1}, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;-><init>(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;)V

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mReorderSolutionDispatcher:Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;

    return-void
.end method

.method private final applyResult([I[I)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p1, v1

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    aput v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResultSpan()[I

    move-result-object v0

    aget v0, v0, v1

    aput v0, p2, v1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResultSpan()[I

    move-result-object p0

    aget p0, p0, v2

    aput p0, p2, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_5c

    const-string/jumbo p0, "perform(), END, result="

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", resultSpan="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LCR_CardDragReorder"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    return-void
.end method

.method private final performBigFolder([I[I)Z
    .registers 13

    sget-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isFolderToBig(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    move-object v0, v2

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_1f
    instance-of v3, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_26

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_26
    const/4 v0, 0x1

    if-nez v2, :cond_2a

    return v0

    :cond_2a
    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    iget-object v4, v3, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardDragReorder;->performRealReorder()V

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v3

    aget v3, v3, v1

    if-ltz v3, :cond_71

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v3

    aget v3, v3, v0

    if-ltz v3, :cond_71

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/reorder/CardDragReorder;->applyResult([I[I)V

    aget p2, p1, v1

    if-ltz p2, :cond_5e

    aget p1, p1, v0

    if-gez p1, :cond_70

    :cond_5e
    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_70
    return v0

    :cond_71
    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mExtrusionSolution:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->attemptExtrusion()V

    aget v1, p1, v1

    if-ltz v1, :cond_7e

    aget v1, p1, v0

    if-gez v1, :cond_90

    :cond_7e
    iget-object v1, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v3, v1, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_90
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/reorder/CardDragReorder;->applyResult([I[I)V

    return v0
.end method


# virtual methods
.method public final getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    return-object p0
.end method

.method public final handleExtrusionList(II)Ljava/lang/Integer;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mExtrusionSolution:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->hadAnimation()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    sget v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->cardScreenId:I

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getReorderScreenId()I

    move-result p0

    const-string v1, "handleExtrusionList(), reorderScreenId="

    const-string v2, ", mCardScreenId="

    const-string v3, ", screenId="

    invoke-static {v1, p0, v2, v0, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", invokeFrom="

    const-string v3, "LCR_CardDragReorder"

    invoke-static {v1, p1, v2, p2, v3}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const/4 p2, -0x1

    if-eq v0, p2, :cond_28

    if-eq v0, p1, :cond_34

    :cond_28
    if-ne v0, p2, :cond_2c

    if-eq p1, p2, :cond_34

    :cond_2c
    if-eq v0, p2, :cond_30

    if-eq p1, p2, :cond_34

    :cond_30
    if-eq p1, p2, :cond_3a

    if-eq p0, p1, :cond_3a

    :cond_34
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3f

    :cond_3a
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_3f
    return-object p0
.end method

.method public final isInExtrusionList(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mExtrusionSolution:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->isExtrusionContains(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final onDrop()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->updateClip(Lcom/android/launcher3/CellLayout;Z)V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mExtrusionSolution:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->dropExtrusionItems()V

    return-void
.end method

.method public final onRevert()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mExtrusionSolution:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->revertExtrusionItems(Lcom/android/launcher3/OplusCellLayout;)V

    return-void
.end method

.method public final perform(ZIIIIIILandroid/view/View;[I[II)[I
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    const-string/jumbo v1, "result"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "resultSpan"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_16

    const/4 v0, 0x0

    return-object v0

    :cond_16
    iget-object v1, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const-string v2, "mLauncher.workspace"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isDragInLauncher(Lcom/android/launcher3/Workspace;)Z

    move-result v1

    const-string v13, "LCR_CardDragReorder"

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v1, :cond_50

    iget-object v1, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->getDragCardInfo()Lcom/android/launcher3/dragndrop/DragCardInfo;

    move-result-object v1

    if-nez v1, :cond_38

    goto :goto_41

    :cond_38
    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    move v1, v14

    goto :goto_42

    :cond_41
    :goto_41
    move v1, v15

    :goto_42
    if-eqz v1, :cond_50

    const-string/jumbo v0, "perform(), not drag in Launcher, reutrn."

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    aput v0, v11, v15

    aput v0, v11, v14

    return-object v11

    :cond_50
    iget-object v1, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->onPerformStart(IIIIIILandroid/view/View;[II)V

    sget-object v1, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    move-object/from16 v3, p8

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCellLayoutChild(Landroid/view/View;Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->calculateDirection()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string v3, "mCellLayout.mOccupied"

    if-eqz v2, :cond_11b

    const-string/jumbo v2, "perform(), START, mode="

    const-string v4, ", area="

    move/from16 v5, p11

    invoke-static {v2, v5, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int v4, p6, p7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", vacantCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->vacantCellsCount(Lcom/android/launcher3/util/GridOccupancy;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isChild="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasNeighbor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getHasNeighbor()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", direction="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "toString(this)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mCellLayout: index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", resizeMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getResizeMode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p9 .. p9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mOccupied="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11b
    invoke-direct {v0, v11, v12}, Lcom/android/launcher3/card/reorder/CardDragReorder;->performBigFolder([I[I)Z

    move-result v2

    if-eqz v2, :cond_122

    return-object v11

    :cond_122
    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->vacantCellsCount(Lcom/android/launcher3/util/GridOccupancy;)I

    move-result v2

    mul-int v3, p6, p7

    if-ge v2, v3, :cond_133

    if-eqz v1, :cond_161

    :cond_133
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/card/reorder/CardDragReorder;->performRealReorder()V

    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v2

    aget v2, v2, v15

    if-ltz v2, :cond_14e

    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v2

    aget v2, v2, v14

    if-ltz v2, :cond_14e

    invoke-direct {v0, v11, v12}, Lcom/android/launcher3/card/reorder/CardDragReorder;->applyResult([I[I)V

    return-object v11

    :cond_14e
    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v2

    if-eqz v2, :cond_161

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v2

    if-eqz v2, :cond_161

    goto :goto_162

    :cond_161
    move v15, v1

    :goto_162
    if-nez v15, :cond_169

    iget-object v1, v0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mExtrusionSolution:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->attemptExtrusion()V

    :cond_169
    invoke-direct {v0, v11, v12}, Lcom/android/launcher3/card/reorder/CardDragReorder;->applyResult([I[I)V

    return-object v11
.end method

.method public final performRealReorder()V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mExtrusionSolution:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->canAddExtrusionItems()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mReorderSolutionDispatcher:Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->dispatch()Lcom/android/launcher3/card/reorder/CardConfiguration;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/OplusCellLayout;->setUseTempCoords(Z)V

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->applySolutionToResult(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragMode()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_78

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->onFoundSolution(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    if-eq v1, v2, :cond_32

    if-eq v1, v4, :cond_32

    if-eq v1, v3, :cond_32

    goto :goto_79

    :cond_32
    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    iget-object v7, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v7}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mExtrusionSolution:Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;

    iget-object v7, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getIntersectingViews()Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "mCellLayout.intersectingViews"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v7}, Lcom/android/launcher3/card/reorder/ExtrusionReorderSolution;->performExtrusion(Lcom/android/launcher3/card/reorder/CardConfiguration;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v6, v2}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    iget-object v7, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v7}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v7

    if-ne v1, v4, :cond_5e

    move v8, v2

    goto :goto_5f

    :cond_5e
    move v8, v5

    :goto_5f
    invoke-static {v6, v0, v7, v8}, Lcom/android/launcher3/card/reorder/CardReorderInject;->animateItemsToSolution(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eq v1, v4, :cond_67

    if-eq v1, v3, :cond_67

    goto :goto_79

    :cond_67
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    goto :goto_79

    :cond_78
    move v2, v5

    :goto_79
    if-eq v1, v4, :cond_7f

    if-eq v1, v3, :cond_7f

    if-nez v2, :cond_84

    :cond_7f
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/OplusCellLayout;->setUseTempCoords(Z)V

    :cond_84
    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final reorderInCompact(Landroid/view/View;Z)V
    .registers 5

    const-string/jumbo v0, "reorderInCompact(), cellLayoutIndex="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->inspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", revert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_CardDragReorder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->INSTANCE:Lcom/android/launcher3/card/reorder/CardCompactArrangement;

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardDragReorder;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    if-nez p1, :cond_31

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object p1

    :cond_31
    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->applyAndCommit(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusCellLayout;Landroid/view/View;Z)V

    return-void
.end method
