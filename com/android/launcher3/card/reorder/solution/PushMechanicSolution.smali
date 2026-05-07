.class public final Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/reorder/solution/IReorderSolution;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_PushMechanicSolution"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mOccupiedRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->Companion:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->mOccupiedRect:Landroid/graphics/Rect;

    return-void
.end method

.method private final findInRecursion(IIZLcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;I)V
    .registers 21

    move v1, p1

    move/from16 v9, p2

    move-object/from16 v10, p5

    move-object v0, p0

    move-object/from16 v11, p4

    move/from16 v12, p6

    invoke-direct {p0, v11, p1, v9, v10}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->rearrangementExists(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IILcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_22

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v0

    new-array v2, v3, [I

    aput v1, v2, v4

    aput v9, v2, v13

    invoke-virtual {v10, v0, v2}, Lcom/android/launcher3/card/reorder/CardConfiguration;->success([I[I)V

    goto/16 :goto_9c

    :cond_22
    if-ne v12, v13, :cond_45

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getMinSpan()[I

    move-result-object v2

    aget v2, v2, v4

    if-le v1, v2, :cond_45

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getMinSpan()[I

    move-result-object v2

    aget v2, v2, v13

    if-eq v2, v9, :cond_36

    if-eqz p3, :cond_45

    :cond_36
    sub-int/2addr v1, v13

    const/4 v3, 0x0

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->findInRecursion(IIZLcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;I)V

    goto :goto_9c

    :cond_45
    if-ne v12, v3, :cond_5e

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getMinSpan()[I

    move-result-object v2

    aget v2, v2, v13

    if-le v9, v2, :cond_5e

    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->findInRecursion(IIZLcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;I)V

    goto :goto_9c

    :cond_5e
    const/4 v2, 0x3

    if-ne v12, v2, :cond_99

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getMinSpan()[I

    move-result-object v2

    aget v2, v2, v4

    if-le v1, v2, :cond_82

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getMinSpan()[I

    move-result-object v2

    aget v2, v2, v13

    if-eq v2, v9, :cond_73

    if-eqz p3, :cond_82

    :cond_73
    add-int/lit8 v3, v1, -0x1

    const/4 v5, 0x0

    move-object v2, p0

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->findInRecursion(IIZLcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;I)V

    :cond_82
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getMinSpan()[I

    move-result-object v2

    aget v2, v2, v13

    if-le v9, v2, :cond_9c

    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->findInRecursion(IIZLcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;I)V

    goto :goto_9c

    :cond_99
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/card/reorder/CardConfiguration;->failed()V

    :cond_9c
    :goto_9c
    return-void
.end method

.method private final rearrangementExists(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IILcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .registers 16

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v0, :cond_123

    if-gez v2, :cond_14

    goto/16 :goto_123

    :cond_14
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getIntersectingViews()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->mOccupiedRect:Landroid/graphics/Rect;

    add-int/2addr p2, v0

    add-int/2addr p3, v2

    invoke-virtual {v5, v0, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p4, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/CellAndSpan;

    if-nez p2, :cond_3a

    goto :goto_3e

    :cond_3a
    iput v0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v2, p2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_3e
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object p3, p4, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    const-string/jumbo v0, "solution.map"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_53
    :goto_53
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v5

    if-ne v2, v5, :cond_72

    goto :goto_53

    :cond_72
    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v7, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v7, v5

    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v0, v6

    invoke-virtual {p2, v5, v6, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->mOccupiedRect:Landroid/graphics/Rect;

    invoke-static {v0, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rearrangementExists(), intersects, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "child"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mOccupiedRect="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->mOccupiedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", r1="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "LCR_PushMechanicSolution"

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_c3
    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object p3

    aget p3, p3, v1

    aput p3, p2, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object p3

    aget p3, p3, v3

    aput p3, p2, v3

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p4, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->mOccupiedRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v9

    move-object v6, v4

    move-object v8, p2

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p3

    if-eqz p3, :cond_f1

    return v3

    :cond_f1
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->mOccupiedRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v9

    move-object v6, v4

    move-object v8, p2

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p3

    if-eqz p3, :cond_105

    return v3

    :cond_105
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_109
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_122

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->mOccupiedRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v4, p2, p4}, Lcom/android/launcher3/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_109

    return v1

    :cond_122
    return v3

    :cond_123
    :goto_123
    return v1
.end method


# virtual methods
.method public find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z
    .registers 12

    const-string v0, "inspector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "solution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->initTmpOccupancy()V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v3, v0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v4, v0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getResizeMode()I

    move-result v8

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->findInRecursion(IIZLcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;I)V

    iget-boolean p0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return p0
.end method
