.class public final Lcom/android/launcher3/card/reorder/CardNeighbor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/CardNeighbor$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/CardNeighbor$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_CardNeighbor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private dragViewCellX:I

.field private dragViewCellY:I

.field private mCollectInRow:Z

.field private mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

.field private final neighborBounding:Landroid/graphics/Rect;

.field private final neighborMaps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/util/CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final neighborViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final perfectDragResult:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/CardNeighbor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/CardNeighbor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->Companion:Lcom/android/launcher3/card/reorder/CardNeighbor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;)V
    .registers 3

    const-string v0, "mInspector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborBounding:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_28

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    return-void

    :array_28
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private final calculateRowOrColumn(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v5

    aget v5, v5, v1

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v6

    aget v6, v6, v3

    add-int/2addr v6, v2

    invoke-direct {v4, v0, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    const-string/jumbo v2, "solution.map"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3e
    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v6

    if-ne v5, v6, :cond_5f

    goto :goto_3e

    :cond_5f
    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v7, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v8, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v8, v6

    iget v9, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v9, v7

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v4, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3e

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget-object v7, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v7}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v7

    const-string v8, "child"

    const-string v9, "LCR_CardNeighbor"

    if-ne v6, v7, :cond_9d

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_9a

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "calculateRowOrColumn(), mCollectInRow false, child="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    iput-boolean v1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    return-void

    :cond_9d
    iget v2, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    if-ne v2, v6, :cond_3e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_c1

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "calculateRowOrColumn(), mCollectInRow true, child="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    iput-boolean v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    return-void

    :cond_c4
    iget-object p1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object p1

    aget p1, p1, v1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d1

    if-ne p1, v3, :cond_d2

    :cond_d1
    move v1, v3

    :cond_d2
    iput-boolean v1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    return-void
.end method

.method private final getViewFromSolution(Lcom/android/launcher3/card/reorder/CardConfiguration;II)Landroid/view/View;
    .registers 6

    iget-object p0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    const-string/jumbo p1, "solution.map"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/CellAndSpan;

    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ne p2, v1, :cond_10

    iget p1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ne p3, p1, :cond_10

    return-object v0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method private final isDragViewFullInRow()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v0

    aget v0, v0, v2

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    if-eq v0, v3, :cond_48

    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v0

    aget v0, v0, v1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p0

    if-ne v0, p0, :cond_47

    goto :goto_48

    :cond_47
    move v1, v2

    :cond_48
    :goto_48
    return v1
.end method

.method private final loopNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;IIII)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    if-ge v2, v3, :cond_109

    move v6, v2

    :goto_f
    add-int/lit8 v7, v6, 0x1

    if-ge v4, v5, :cond_103

    move v8, v4

    :goto_14
    add-int/lit8 v9, v8, 0x1

    invoke-direct {v0, v1, v6, v8}, Lcom/android/launcher3/card/reorder/CardNeighbor;->getViewFromSolution(Lcom/android/launcher3/card/reorder/CardConfiguration;II)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_1e

    goto/16 :goto_fd

    :cond_1e
    iget-object v10, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v10}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v10

    if-ne v8, v10, :cond_28

    goto/16 :goto_fd

    :cond_28
    iget-object v10, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v10, :cond_34

    goto/16 :goto_fd

    :cond_34
    invoke-static {v8}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v11

    const-string v12, "LCR_CardNeighbor"

    if-eqz v11, :cond_ac

    iget-boolean v11, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-eqz v11, :cond_54

    iget v11, v10, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ge v11, v2, :cond_45

    goto :goto_46

    :cond_45
    move v11, v2

    :goto_46
    iget v13, v10, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v14, v10, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int v15, v13, v14

    if-le v15, v5, :cond_50

    add-int/2addr v13, v14

    goto :goto_51

    :cond_50
    move v13, v3

    :goto_51
    move v15, v3

    move v14, v4

    goto :goto_68

    :cond_54
    iget v11, v10, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ge v11, v4, :cond_5a

    move v13, v11

    goto :goto_5b

    :cond_5a
    move v13, v4

    :goto_5b
    iget v14, v10, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int v15, v11, v14

    if-le v15, v5, :cond_63

    add-int/2addr v11, v14

    goto :goto_64

    :cond_63
    move v11, v5

    :goto_64
    move v15, v11

    move v14, v13

    move v11, v2

    move v13, v3

    :goto_68
    if-ne v11, v2, :cond_70

    if-ne v13, v3, :cond_70

    if-ne v14, v4, :cond_70

    if-eq v15, v5, :cond_ac

    :cond_70
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_9b

    const-string v6, "loopTogetherViews(), old=[ "

    const-string v7, ", "

    invoke-static {v6, v2, v7, v3, v7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], new=[ "

    invoke-static {v2, v4, v7, v5, v3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v2, v11, v7, v13, v7}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/card/reorder/CardNeighbor;->loopNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;IIII)V

    return-void

    :cond_ac
    iget v11, v10, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-gt v2, v11, :cond_b6

    if-ge v11, v3, :cond_b6

    move v11, v13

    goto :goto_b7

    :cond_b6
    move v11, v14

    :goto_b7
    if-eqz v11, :cond_fd

    iget v11, v10, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-gt v4, v11, :cond_c0

    if-ge v11, v5, :cond_c0

    goto :goto_c1

    :cond_c0
    move v13, v14

    :goto_c1
    if-eqz v13, :cond_fd

    iget-object v11, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_fd

    iget-object v11, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v11}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v11, v10, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v11

    if-eqz v11, :cond_f8

    const-string v11, "loopNeighborViews(), add "

    invoke-static {v11}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", c="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f8
    iget-object v10, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fd
    :goto_fd
    if-lt v9, v5, :cond_100

    goto :goto_103

    :cond_100
    move v8, v9

    goto/16 :goto_14

    :cond_103
    :goto_103
    if-lt v7, v3, :cond_106

    goto :goto_109

    :cond_106
    move v6, v7

    goto/16 :goto_f

    :cond_109
    :goto_109
    return-void
.end method


# virtual methods
.method public final collectAllNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 16

    const-string v0, "collectSolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->isDragViewFullInRow()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/CardConfiguration;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v0

    aget v0, v0, v3

    if-eq v0, v2, :cond_28

    move v0, v3

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    iget-object v4, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-static {p1, v0, v1, v4, v5}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->copyStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;ZZLandroid/view/View;Lcom/android/launcher3/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v0

    aget v0, v0, v1

    if-eq v0, v2, :cond_72

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v0

    aget v0, v0, v3

    if-eq v0, v2, :cond_72

    new-instance v0, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v2

    aget v2, v2, v1

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v4

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v5

    aget v5, v5, v1

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v6

    aget v3, v6, v3

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    goto :goto_ab

    :cond_72
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v0

    aget v0, v0, v1

    if-eq v0, v2, :cond_1f9

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v0

    aget v0, v0, v3

    if-eq v0, v2, :cond_1f9

    new-instance v0, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v2

    aget v2, v2, v1

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v4

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v5

    aget v5, v5, v1

    iget-object v6, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v6

    aget v3, v6, v3

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    :goto_ab
    invoke-direct {p0, p1}, Lcom/android/launcher3/card/reorder/CardNeighbor;->calculateRowOrColumn(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v2, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellX:I

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    iget-boolean v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-eqz v3, :cond_bc

    move v10, v2

    goto :goto_bd

    :cond_bc
    move v10, v1

    :goto_bd
    if-eqz v3, :cond_c3

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    goto :goto_cd

    :cond_c3
    iget-object v2, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v2

    :goto_cd
    iget-boolean v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-eqz v3, :cond_d2

    goto :goto_d4

    :cond_d2
    iget v1, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    :goto_d4
    if-eqz v3, :cond_e1

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v3

    goto :goto_e6

    :cond_e1
    iget v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    :goto_e6
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    const-string v11, "LCR_CardNeighbor"

    if-eqz v4, :cond_fb

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/CardConfiguration;->print()Ljava/lang/String;

    move-result-object v4

    const-string v5, "collectAllNeighborViews(), start, collectSolution="

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fb
    move-object v4, p0

    move-object v5, p1

    move v6, v10

    move v7, v2

    move v8, v1

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/card/reorder/CardNeighbor;->loopNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;IIII)V

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_139

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v6, :cond_121

    goto :goto_10a

    :cond_121
    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->getNeighborMaps()Landroid/util/ArrayMap;

    move-result-object v7

    new-instance v8, Lcom/android/launcher3/util/CellAndSpan;

    iget v9, v6, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v12, v6, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v13, v6, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v6, v6, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    invoke-direct {v8, v9, v12, v13, v6}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Lcom/android/launcher3/card/reorder/CardConfiguration;->remove(Landroid/view/View;)V

    goto :goto_10a

    :cond_139
    iget-object v4, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    iget-boolean v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-eqz v5, :cond_149

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    goto :goto_14c

    :cond_149
    const/4 v6, 0x0

    iget v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellX:I

    :goto_14c
    aput v5, v4, v6

    iget-object v4, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    iget-boolean v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-eqz v5, :cond_158

    iget v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    const/4 v6, 0x1

    goto :goto_161

    :cond_158
    iget-object v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    :goto_161
    aput v5, v4, v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_1f9

    const-string v4, "collectAllNeighborViews(), end, mCollectInRow="

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", preValidResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreValidResult()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "toString(this)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", dragViewLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", dragSpan="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startX="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", endX="

    const-string v5, ", startY="

    invoke-static {v4, v10, v0, v2, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ", endY="

    const-string v2, ", size="

    invoke-static {v4, v1, v0, v3, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", perfectDragResult="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mOccupied="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", collectSolution="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/CardConfiguration;->print()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f9
    return-void
.end method

.method public final getDragViewCellX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellX:I

    return p0
.end method

.method public final getDragViewCellY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    return p0
.end method

.method public final getNeighborBounding()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborBounding:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getNeighborMaps()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/util/CellAndSpan;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getNeighborViews()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getPerfectDragResult()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    return-object p0
.end method

.method public final hasPerfectDragResult()Z
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->perfectDragResult:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-ltz v1, :cond_d

    aget p0, p0, v2

    if-ltz p0, :cond_d

    move v0, v2

    :cond_d
    return v0
.end method

.method public final isOverlapping()Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v3

    aget v3, v3, v2

    if-ne v0, v3, :cond_22

    :cond_12
    iget-boolean v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    if-nez v0, :cond_23

    iget v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellX:I

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object p0

    aget p0, p0, v1

    if-eq v0, p0, :cond_23

    :cond_22
    move v1, v2

    :cond_23
    return v1
.end method

.method public final restoreNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 11

    const-string/jumbo v0, "solution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v3, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    const-string/jumbo v4, "solution.map"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v7, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v8, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "view"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "restoreNeighborViews(), "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LCR_CardNeighbor"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_69
    iget-object p0, p0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final updateWillGoLocation(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "solution"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v2

    aget v2, v2, v4

    iget v5, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellX:I

    goto :goto_25

    :cond_1b
    iget-object v2, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v2

    aget v2, v2, v3

    iget v5, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->dragViewCellY:I

    :goto_25
    sub-int/2addr v2, v5

    iget-object v5, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v5}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v5

    iget-object v6, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v6}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v6

    iget-object v7, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->neighborMaps:Landroid/util/ArrayMap;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_44
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_115

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/util/CellAndSpan;

    iget-boolean v10, v0, Lcom/android/launcher3/card/reorder/CardNeighbor;->mCollectInRow:Z

    iget v11, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-eqz v10, :cond_63

    add-int/2addr v11, v2

    :cond_63
    if-eqz v10, :cond_68

    iget v10, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_6b

    :cond_68
    iget v10, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v10, v2

    :goto_6b
    if-ltz v11, :cond_70

    if-gt v11, v5, :cond_70

    goto :goto_71

    :cond_70
    move v3, v4

    :goto_71
    const-string v4, " to ["

    const-string/jumbo v12, "view"

    const-string v13, "LCR_CardNeighbor"

    const-string v14, ", "

    if-eqz v3, :cond_dd

    iget v3, v8, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int v15, v11, v3

    if-gt v15, v5, :cond_dd

    if-ltz v10, :cond_88

    if-gt v10, v6, :cond_88

    const/4 v15, 0x1

    goto :goto_89

    :cond_88
    const/4 v15, 0x0

    :goto_89
    if-eqz v15, :cond_dd

    add-int/2addr v3, v10

    if-le v3, v6, :cond_8f

    goto :goto_dd

    :cond_8f
    iget-object v3, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    const-string/jumbo v15, "solution.map"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lcom/android/launcher3/util/CellAndSpan;

    iget v0, v8, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v8, v8, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    invoke-direct {v15, v11, v10, v0, v8}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-interface {v3, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_10f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWillGoLocation(), animate, diff="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10f

    :cond_dd
    :goto_dd
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_10f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWillGoLocation(), diff="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], invalid."

    invoke-static {v0, v3, v13}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10f
    :goto_10f
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_44

    :cond_115
    return-void
.end method
