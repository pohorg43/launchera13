.class public final Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final HORIZONTAL:I = 0x1

.field public static final INSTANCE:Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;

.field private static final TAG:Ljava/lang/String; = "ReorderAnimationDelayLogic"

.field private static final VERTICAL:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;

    invoke-direct {v0}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->INSTANCE:Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final animateFolderChildToPosition(Lcom/android/launcher3/CellLayout;IIII)Z
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    :cond_14
    add-int v2, p1, p3

    rem-int v3, v2, p4

    div-int v4, v2, p4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_23

    move-object v5, v4

    goto :goto_27

    :cond_23
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    :goto_27
    instance-of v6, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v6, :cond_2e

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_2f

    :cond_2e
    move-object v5, v4

    :goto_2f
    if-nez v5, :cond_32

    goto :goto_42

    :cond_32
    new-instance v6, Lcom/android/launcher3/util/CellAndSpan;

    rem-int v7, p1, p4

    div-int/2addr p1, p4

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-direct {v6, v7, p1, v8, v5}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v2

    :goto_42
    if-ne p1, p2, :cond_14

    invoke-static {v0, v4}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->generateReorderDelayMap(Landroid/util/ArrayMap;Landroid/view/View;)Landroid/util/ArrayMap;

    move-result-object p1

    if-nez p1, :cond_4b

    return v1

    :cond_4b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_53
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_89

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/view/View;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-nez p4, :cond_78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_78
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget v4, p3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v5, p3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v6, 0xe6

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    goto :goto_53

    :cond_89
    const/4 p0, 0x1

    return p0
.end method

.method private final assignReorderDelay(Landroid/util/ArrayMap;Ljava/util/PriorityQueue;ILjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/PriorityQueue<",
            "Landroid/view/View;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 p0, 0x32

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_63

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_14

    goto :goto_3

    :cond_14
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-ne p3, v2, :cond_25

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    goto :goto_27

    :cond_25
    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :goto_27
    if-eq v0, v2, :cond_2b

    add-int/lit8 p0, p0, 0x11

    :cond_2b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assignReorderDelay(), view="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", dir="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", curPos="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pos="

    const-string v4, ", delay="

    invoke-static {v1, v0, v3, v2, v4}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReorderAnimationDelayLogic"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_3

    :cond_63
    return-void
.end method

.method public static final generateReorderDelayMap(Landroid/util/ArrayMap;Landroid/view/View;)Landroid/util/ArrayMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/util/CellAndSpan;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "arrayMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Ljava/util/PriorityQueue;

    new-instance v2, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic$generateReorderDelayMap$$inlined$compareBy$1;

    invoke-direct {v2}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic$generateReorderDelayMap$$inlined$compareBy$1;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/PriorityQueue;

    new-instance v3, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic$generateReorderDelayMap$$inlined$compareByDescending$1;

    invoke-direct {v3}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic$generateReorderDelayMap$$inlined$compareByDescending$1;-><init>()V

    invoke-direct {v2, v3}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/PriorityQueue;

    new-instance v4, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic$generateReorderDelayMap$$inlined$compareBy$2;

    invoke-direct {v4}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic$generateReorderDelayMap$$inlined$compareBy$2;-><init>()V

    invoke-direct {v3, v4}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    new-instance v4, Ljava/util/PriorityQueue;

    new-instance v5, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic$generateReorderDelayMap$$inlined$compareByDescending$2;

    invoke-direct {v5}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic$generateReorderDelayMap$$inlined$compareByDescending$2;-><init>()V

    invoke-direct {v4, v5}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3a
    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/CellAndSpan;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    iget v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v9, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ne v8, v9, :cond_75

    iget v10, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v11, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ne v10, v11, :cond_75

    goto :goto_3a

    :cond_75
    iget v7, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ge v7, v6, :cond_83

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_83
    if-le v7, v6, :cond_8d

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_8d
    if-ge v9, v8, :cond_97

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_97
    if-le v9, v8, :cond_3a

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_a1
    sget-object p0, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->INSTANCE:Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;

    const/4 p1, 0x2

    const-string/jumbo v5, "top"

    invoke-direct {p0, v0, v1, p1, v5}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->assignReorderDelay(Landroid/util/ArrayMap;Ljava/util/PriorityQueue;ILjava/lang/String;)V

    const-string v1, "bottom"

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->assignReorderDelay(Landroid/util/ArrayMap;Ljava/util/PriorityQueue;ILjava/lang/String;)V

    const/4 p1, 0x1

    const-string v1, "left"

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->assignReorderDelay(Landroid/util/ArrayMap;Ljava/util/PriorityQueue;ILjava/lang/String;)V

    const-string/jumbo v1, "right"

    invoke-direct {p0, v0, v4, p1, v1}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->assignReorderDelay(Landroid/util/ArrayMap;Ljava/util/PriorityQueue;ILjava/lang/String;)V

    return-object v0
.end method

.method public static final getExtrusionDelay(II)J
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sub-int/2addr p0, p1

    int-to-long p0, p0

    const-wide/16 v0, 0x11

    mul-long/2addr p0, v0

    const-wide/16 v0, 0x32

    add-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final getReorderDelay(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "Landroid/view/View;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "solution"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    iget-object p0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    const-string/jumbo p1, "solution.map"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->generateReorderDelayMap(Landroid/util/ArrayMap;Landroid/view/View;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method
