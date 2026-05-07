.class public final Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final cardGap:I

.field private final cardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

.field private final outCardRefreshMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;ILjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;",
            "I",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "cardSizeMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "outCardRefreshMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    iput p2, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardGap:I

    iput-object p3, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->outCardRefreshMap:Ljava/util/Map;

    return-void
.end method

.method private final mapParentPointToChild(FFLandroid/view/View;)Ly2/i;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Landroid/view/View;",
            ")",
            "Ly2/i<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    goto :goto_11

    :cond_10
    move p0, v1

    :goto_11
    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_1e

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    if-nez p0, :cond_22

    goto :goto_24

    :cond_22
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_24
    int-to-float p0, v1

    sub-float/2addr p2, p0

    new-instance p0, Ly2/i;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final getCardGap()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardGap:I

    return p0
.end method

.method public final getCardSizeMap()Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    return-object p0
.end method

.method public final getOutCardRefreshMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->outCardRefreshMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getSwitchAnimatorForOneCardIn(Landroid/view/View;Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "newCard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidCards"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "outAnimators"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_61

    new-array v0, v2, [Landroid/animation/ObjectAnimator;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v5, [F

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getCardSizeMap()Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v4

    aput v1, v7, v3

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v4

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_fc

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v3

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_104

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Li1/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_61
    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getWidth(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v6, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_80
    :goto_80
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fb

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_80

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->mapParentPointToChild(FFLandroid/view/View;)Ly2/i;

    move-result-object v7

    iget-object v8, v7, Ly2/i;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setPivotX(F)V

    iget-object v7, v7, Ly2/i;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    new-array v7, v2, [Landroid/animation/ObjectAnimator;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v5, [F

    aput v1, v9, v4

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getCardSizeMap()Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result v10

    int-to-float v10, v10

    neg-float v10, v10

    aput v10, v9, v3

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v5, [F

    fill-array-data v9, :array_10c

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v3

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v5, [F

    fill-array-data v9, :array_114

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Li1/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_80

    :cond_fb
    return-void

    :array_fc
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_104
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_10c
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data

    :array_114
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data
.end method

.method public final getSwitchAnimatorForOneCardOut(Landroid/view/View;Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "newCard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidCards"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "outAnimators"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_73

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    new-array v2, v2, [Landroid/animation/ObjectAnimator;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v5, [F

    aput v1, v7, v4

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getCardSizeMap()Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    aput v1, v7, v3

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v4

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_100

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v3

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_108

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v2}, Li1/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    :cond_73
    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getWidth(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iget-object v6, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ff

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p0, p2, v0, p1}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->mapParentPointToChild(FFLandroid/view/View;)Ly2/i;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getCardSizeMap()Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v6, p2, Ly2/i;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotX(F)V

    iget-object p2, p2, Ly2/i;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    new-array p2, v2, [Landroid/animation/ObjectAnimator;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v5, [F

    aput v0, v6, v4

    aput v1, v6, v3

    invoke-static {p1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v4

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v5, [F

    fill-array-data v1, :array_110

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v5, [F

    fill-array-data v1, :array_118

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v5

    invoke-static {p2}, Li1/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_ff
    return-void

    :array_100
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data

    :array_108
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data

    :array_110
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_118
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final getSwitchAnimatorForSingleCardAlone(Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "newCard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "oldCard"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "outAnimators"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v0, :cond_75

    instance-of v0, p2, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz v0, :cond_2a

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardView;

    goto :goto_2b

    :cond_2a
    move-object v0, v3

    :goto_2b
    if-nez v0, :cond_2e

    goto :goto_34

    :cond_2e
    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardView;->getViewContent()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_35

    :goto_34
    move-object v0, p2

    :cond_35
    new-array v7, v2, [Landroid/animation/ObjectAnimator;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v6, [F

    aput v1, v9, v5

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v10, v10

    neg-float v10, v10

    aput v10, v9, v4

    invoke-static {v0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v5

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v6, [F

    fill-array-data v9, :array_d0

    invoke-static {v0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v4

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v6, [F

    fill-array-data v9, :array_d8

    invoke-static {v0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-static {v7}, Li1/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_75
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_cf

    instance-of p2, p1, Lcom/android/launcher3/card/uscard/USCardView;

    if-eqz p2, :cond_86

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/card/uscard/USCardView;

    :cond_86
    if-nez v3, :cond_89

    goto :goto_8f

    :cond_89
    invoke-virtual {v3}, Lcom/android/launcher3/card/uscard/USCardView;->getViewContent()Landroid/view/ViewGroup;

    move-result-object p2

    if-nez p2, :cond_90

    :goto_8f
    move-object p2, p1

    :cond_90
    new-array v0, v2, [Landroid/animation/ObjectAnimator;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    aput v7, v3, v5

    aput v1, v3, v4

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_e0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_e8

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v0}, Li1/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_cf
    return-void

    :array_d0
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data

    :array_d8
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data

    :array_e0
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_e8
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final getSwitchAnimatorForTwoCardUnion(Landroid/view/View;Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "singleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "outAnimators"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_61

    new-array v0, v2, [Landroid/animation/ObjectAnimator;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v5, [F

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getCardSizeMap()Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v4

    aput v1, v7, v3

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v4

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_100

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v3

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_108

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Li1/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_61
    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    invoke-virtual {p1, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getWidth(I)I

    move-result p1

    mul-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p1, v0

    iget v6, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardGap:I

    int-to-float v6, v6

    add-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v6, p0, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->cardSizeMap:Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_84
    :goto_84
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ff

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_84

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->mapParentPointToChild(FFLandroid/view/View;)Ly2/i;

    move-result-object v7

    iget-object v8, v7, Ly2/i;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setPivotX(F)V

    iget-object v7, v7, Ly2/i;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    new-array v7, v2, [Landroid/animation/ObjectAnimator;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v5, [F

    aput v1, v9, v4

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getCardSizeMap()Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/launcher3/card/uscard/USCardContainerView$CardSizeMap;->getHeight(I)I

    move-result v10

    int-to-float v10, v10

    neg-float v10, v10

    aput v10, v9, v3

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v5, [F

    fill-array-data v9, :array_110

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v3

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v5, [F

    fill-array-data v9, :array_118

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Li1/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USUpdateAnimHelper;->getOutCardRefreshMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_84

    :cond_ff
    return-void

    :array_100
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_108
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_110
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data

    :array_118
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data
.end method
