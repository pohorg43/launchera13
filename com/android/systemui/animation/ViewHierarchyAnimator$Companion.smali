.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ViewHierarchyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;[FLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval$lambda-0(Landroid/view/View;[FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->getBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isVisible(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;IIIII)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->isVisible(IIIII)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$processStartValues(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIIIIIIIZ)Ljava/util/Map;
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->processStartValues(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIIIIIIIZ)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$recursivelyRemoveListener(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->recursivelyRemoveListener(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    return-void
.end method

.method public static final synthetic access$startAnimation(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V

    return-void
.end method

.method private final addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V
    .registers 7

    sget v0, Lcom/android/systemui/animation/R$id;->tag_layout_listener:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    instance-of v2, v1, Landroid/view/View$OnLayoutChangeListener;

    if-eqz v2, :cond_11

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_11
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3b

    if-eqz p3, :cond_3b

    const/4 p3, 0x0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3b

    :goto_26
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    const-string/jumbo v2, "view.getChildAt(i)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, p3, p2, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V

    if-lt v1, v0, :cond_39

    goto :goto_3b

    :cond_39
    move p3, v1

    goto :goto_26

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static synthetic addListener$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;ZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V

    return-void
.end method

.method private final animate(Landroid/view/View;Landroid/view/animation/Interpolator;JZ)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->isVisible(IIIII)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 p0, 0x0

    return p0

    :cond_1d
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createUpdateListener(Landroid/view/animation/Interpolator;JZ)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V

    return p3
.end method

.method public static synthetic animate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_d

    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator;->access$getDEFAULT_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object p2

    const-string p6, "DEFAULT_INTERPOLATOR"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_13

    const-wide/16 p3, 0x1f4

    :cond_13
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animate(Landroid/view/View;Landroid/view/animation/Interpolator;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic animateAddition$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZILjava/lang/Object;)Z
    .registers 16

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_6

    sget-object p2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->CENTER:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    :cond_6
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_14

    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator;->access$getDEFAULT_ADDITION_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object p3

    const-string p2, "DEFAULT_ADDITION_INTERPOLATOR"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    move-object v3, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1b

    const-wide/16 p4, 0x1f4

    :cond_1b
    move-wide v4, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    const/4 p6, 0x0

    :cond_21
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateAddition(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic animateNextUpdate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_d

    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator;->access$getDEFAULT_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object p2

    const-string p6, "DEFAULT_INTERPOLATOR"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_13

    const-wide/16 p3, 0x1f4

    :cond_13
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateNextUpdate(Landroid/view/View;Landroid/view/animation/Interpolator;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic animateRemoval$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z
    .registers 14

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_6

    sget-object p2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->CENTER:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    :cond_6
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_14

    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator;->access$getDEFAULT_REMOVAL_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object p3

    const-string p2, "DEFAULT_REMOVAL_INTERPOLATOR"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1b

    const-wide/16 p4, 0x1f4

    :cond_1b
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;J)Z

    move-result p0

    return p0
.end method

.method private static final animateRemoval$lambda-0(Landroid/view/View;[FLandroid/animation/ValueAnimator;)V
    .registers 9

    const-string v0, "$rootView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$startAlphas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_33

    const/4 v1, 0x0

    :goto_13
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aget v1, p1, v1

    mul-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    if-lt v2, v0, :cond_31

    goto :goto_33

    :cond_31
    move v1, v2

    goto :goto_13

    :cond_33
    :goto_33
    return-void
.end method

.method private static final animateRemoval$lambda-1(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    const-string v0, "$parent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval$lambda-1(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private final createAdditionListener(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZ)Landroid/view/View$OnLayoutChangeListener;
    .registers 13

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v5, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createListener(Landroid/view/animation/Interpolator;JZLcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Z)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p0

    return-object p0
.end method

.method private final createListener(Landroid/view/animation/Interpolator;JZLcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Z)Landroid/view/View$OnLayoutChangeListener;
    .registers 14

    new-instance p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;

    move-object v0, p0

    move-object v1, p5

    move v2, p6

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;ZLandroid/view/animation/Interpolator;JZ)V

    return-object p0
.end method

.method public static synthetic createListener$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/animation/Interpolator;JZLcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;ZILjava/lang/Object;)Landroid/view/View$OnLayoutChangeListener;
    .registers 16

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v5, p5

    and-int/lit8 p5, p7, 0x10

    if-eqz p5, :cond_b

    const/4 p6, 0x0

    :cond_b
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createListener(Landroid/view/animation/Interpolator;JZLcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Z)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p0

    return-object p0
.end method

.method private final createUpdateListener(Landroid/view/animation/Interpolator;JZ)Landroid/view/View$OnLayoutChangeListener;
    .registers 14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createListener$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/animation/Interpolator;JZLcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;ZILjava/lang/Object;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p0

    return-object p0
.end method

.method private final createViewProperty(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Landroid/util/IntProperty;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            ")",
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;
    .registers 3

    invoke-virtual {p2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getOverrideTag()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/Integer;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method private final isVisible(IIIII)Z
    .registers 6

    if-nez p1, :cond_8

    if-eq p2, p4, :cond_8

    if-eq p3, p5, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private final processChildEndValuesForRemoval(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIIIII)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;",
            "IIIIII)",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sub-int p0, p4, p2

    const/4 v0, 0x2

    div-int/2addr p0, v0

    sub-int v1, p5, p3

    div-int/2addr v1, v0

    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v2, v3

    packed-switch v3, :pswitch_data_9e

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_18  #0x7, 0x8, 0x9
    sub-int p2, p6, p0

    goto :goto_20

    :pswitch_1b  #0x2, 0x3, 0x4
    neg-int p2, p0

    goto :goto_20

    :pswitch_1d  #0x1
    div-int/lit8 p2, p6, 0x2

    sub-int/2addr p2, p0

    :goto_20
    :pswitch_20  #0x5, 0x6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v2, v3

    packed-switch v3, :pswitch_data_b4

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_2f  #0x4, 0x5, 0x7
    neg-int p3, v1

    goto :goto_37

    :pswitch_31  #0x2, 0x6, 0x9
    sub-int p3, p7, v1

    goto :goto_37

    :pswitch_34  #0x1
    div-int/lit8 p3, p7, 0x2

    sub-int/2addr p3, v1

    :goto_37
    :pswitch_37  #0x3, 0x8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v2, v3

    packed-switch v3, :pswitch_data_ca

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_46  #0x2, 0x3, 0x4
    move p4, p0

    goto :goto_4b

    :pswitch_48  #0x1
    div-int/2addr p6, v0

    :pswitch_49  #0x7, 0x8, 0x9
    add-int p4, p6, p0

    :goto_4b
    :pswitch_4b  #0x5, 0x6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    packed-switch p0, :pswitch_data_e0

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_5a  #0x4, 0x5, 0x7
    move p5, v1

    goto :goto_5f

    :pswitch_5c  #0x1
    div-int/2addr p7, v0

    :pswitch_5d  #0x2, 0x6, 0x9
    add-int p5, p7, v1

    :goto_5f
    :pswitch_5f  #0x3, 0x8
    const/4 p0, 0x4

    new-array p0, p0, [Ly2/i;

    const/4 p1, 0x0

    sget-object p6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p7, Ly2/i;

    invoke-direct {p7, p6, p2}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p7, p0, p1

    const/4 p1, 0x1

    sget-object p2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p6, Ly2/i;

    invoke-direct {p6, p2, p3}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p6, p0, p1

    sget-object p1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Ly2/i;

    invoke-direct {p3, p1, p2}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p0, v0

    const/4 p1, 0x3

    sget-object p2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p4, Ly2/i;

    invoke-direct {p4, p2, p3}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, p0, p1

    invoke-static {p0}, Lz2/c0;->d([Ly2/i;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_1b  #00000002
        :pswitch_1b  #00000003
        :pswitch_1b  #00000004
        :pswitch_20  #00000005
        :pswitch_20  #00000006
        :pswitch_18  #00000007
        :pswitch_18  #00000008
        :pswitch_18  #00000009
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_34  #00000001
        :pswitch_31  #00000002
        :pswitch_37  #00000003
        :pswitch_2f  #00000004
        :pswitch_2f  #00000005
        :pswitch_31  #00000006
        :pswitch_2f  #00000007
        :pswitch_37  #00000008
        :pswitch_31  #00000009
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_46  #00000002
        :pswitch_46  #00000003
        :pswitch_46  #00000004
        :pswitch_4b  #00000005
        :pswitch_4b  #00000006
        :pswitch_49  #00000007
        :pswitch_49  #00000008
        :pswitch_49  #00000009
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_5c  #00000001
        :pswitch_5d  #00000002
        :pswitch_5f  #00000003
        :pswitch_5a  #00000004
        :pswitch_5a  #00000005
        :pswitch_5d  #00000006
        :pswitch_5a  #00000007
        :pswitch_5f  #00000008
        :pswitch_5d  #00000009
    .end packed-switch
.end method

.method private final processEndValuesForRemoval(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIII)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;",
            "IIII)",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, p0, v0

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_94

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_12  #0x7, 0x8, 0x9
    move v0, p4

    goto :goto_19

    :pswitch_14  #0x2, 0x3, 0x4, 0x5, 0x6
    move v0, p2

    goto :goto_19

    :pswitch_16  #0x1
    add-int v0, p2, p4

    div-int/2addr v0, v1

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, p0, v2

    packed-switch v2, :pswitch_data_aa

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_28  #0x3, 0x4, 0x5, 0x7, 0x8
    move v2, p3

    goto :goto_2f

    :pswitch_2a  #0x2, 0x6, 0x9
    move v2, p5

    goto :goto_2f

    :pswitch_2c  #0x1
    add-int v2, p3, p5

    div-int/2addr v2, v1

    :goto_2f
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, p0, v3

    packed-switch v3, :pswitch_data_c0

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_3e  #0x5, 0x6, 0x7, 0x8, 0x9
    move p2, p4

    goto :goto_42

    :pswitch_40  #0x1
    add-int/2addr p2, p4

    div-int/2addr p2, v1

    :goto_42
    :pswitch_42  #0x2, 0x3, 0x4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_d6

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_51  #0x2, 0x3, 0x6, 0x8, 0x9
    move p3, p5

    goto :goto_55

    :pswitch_53  #0x1
    add-int/2addr p3, p5

    div-int/2addr p3, v1

    :goto_55
    :pswitch_55  #0x4, 0x5, 0x7
    const/4 p0, 0x4

    new-array p0, p0, [Ly2/i;

    const/4 p1, 0x0

    sget-object p4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    new-instance v0, Ly2/i;

    invoke-direct {v0, p4, p5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p0, p1

    const/4 p1, 0x1

    sget-object p4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    new-instance v0, Ly2/i;

    invoke-direct {v0, p4, p5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p0, p1

    sget-object p1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p4, Ly2/i;

    invoke-direct {p4, p1, p2}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, p0, v1

    const/4 p1, 0x3

    sget-object p2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p4, Ly2/i;

    invoke-direct {p4, p2, p3}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, p0, p1

    invoke-static {p0}, Lz2/c0;->d([Ly2/i;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_16  #00000001
        :pswitch_14  #00000002
        :pswitch_14  #00000003
        :pswitch_14  #00000004
        :pswitch_14  #00000005
        :pswitch_14  #00000006
        :pswitch_12  #00000007
        :pswitch_12  #00000008
        :pswitch_12  #00000009
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_2a  #00000002
        :pswitch_28  #00000003
        :pswitch_28  #00000004
        :pswitch_28  #00000005
        :pswitch_2a  #00000006
        :pswitch_28  #00000007
        :pswitch_28  #00000008
        :pswitch_2a  #00000009
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_40  #00000001
        :pswitch_42  #00000002
        :pswitch_42  #00000003
        :pswitch_42  #00000004
        :pswitch_3e  #00000005
        :pswitch_3e  #00000006
        :pswitch_3e  #00000007
        :pswitch_3e  #00000008
        :pswitch_3e  #00000009
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_53  #00000001
        :pswitch_51  #00000002
        :pswitch_51  #00000003
        :pswitch_55  #00000004
        :pswitch_55  #00000005
        :pswitch_51  #00000006
        :pswitch_55  #00000007
        :pswitch_51  #00000008
        :pswitch_51  #00000009
    .end packed-switch
.end method

.method private final processStartValues(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIIIIIIIZ)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;",
            "IIIIIIIIZ)",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p10, :cond_3

    move p6, p2

    :cond_3
    if-eqz p10, :cond_6

    move p7, p3

    :cond_6
    if-eqz p10, :cond_9

    move p8, p4

    :cond_9
    if-eqz p10, :cond_c

    move p9, p5

    :cond_c
    const/4 p0, 0x2

    if-eqz p1, :cond_89

    sget-object p10, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, p10, v0

    packed-switch v0, :pswitch_data_c8

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_20  #0x7, 0x8, 0x9
    invoke-static {p8, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2f

    :pswitch_25  #0x5, 0x6
    move v0, p2

    goto :goto_2f

    :pswitch_27  #0x2, 0x3, 0x4
    invoke-static {p6, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2f

    :pswitch_2c  #0x1
    add-int v0, p2, p4

    div-int/2addr v0, p0

    :goto_2f
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, p10, v1

    packed-switch v1, :pswitch_data_de

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_3e  #0x4, 0x5, 0x7
    invoke-static {p7, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4d

    :pswitch_43  #0x3, 0x8
    move v1, p3

    goto :goto_4d

    :pswitch_45  #0x2, 0x6, 0x9
    invoke-static {p9, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4d

    :pswitch_4a  #0x1
    add-int v1, p3, p5

    div-int/2addr v1, p0

    :goto_4d
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, p10, v2

    packed-switch v2, :pswitch_data_f4

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_5c  #0x7, 0x8, 0x9
    invoke-static {p8, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    goto :goto_69

    :pswitch_61  #0x2, 0x3, 0x4
    invoke-static {p6, p2}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_69

    :pswitch_66  #0x1
    add-int/2addr p2, p4

    div-int/lit8 p4, p2, 0x2

    :goto_69
    :pswitch_69  #0x5, 0x6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p10, p1

    packed-switch p1, :pswitch_data_10a

    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :pswitch_78  #0x4, 0x5, 0x7
    invoke-static {p7, p3}, Ljava/lang/Math;->min(II)I

    move-result p5

    goto :goto_85

    :pswitch_7d  #0x2, 0x6, 0x9
    invoke-static {p9, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_85

    :pswitch_82  #0x1
    add-int/2addr p3, p5

    div-int/lit8 p5, p3, 0x2

    :goto_85
    :pswitch_85  #0x3, 0x8
    move p8, p4

    move p9, p5

    move p6, v0

    move p7, v1

    :cond_89
    const/4 p1, 0x4

    new-array p1, p1, [Ly2/i;

    const/4 p2, 0x0

    sget-object p3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-instance p5, Ly2/i;

    invoke-direct {p5, p3, p4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p5, p1, p2

    const/4 p2, 0x1

    sget-object p3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-instance p5, Ly2/i;

    invoke-direct {p5, p3, p4}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p5, p1, p2

    sget-object p2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p4, Ly2/i;

    invoke-direct {p4, p2, p3}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, p1, p0

    const/4 p0, 0x3

    sget-object p2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p4, Ly2/i;

    invoke-direct {p4, p2, p3}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, p1, p0

    invoke-static {p1}, Lz2/c0;->d([Ly2/i;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_27  #00000002
        :pswitch_27  #00000003
        :pswitch_27  #00000004
        :pswitch_25  #00000005
        :pswitch_25  #00000006
        :pswitch_20  #00000007
        :pswitch_20  #00000008
        :pswitch_20  #00000009
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_4a  #00000001
        :pswitch_45  #00000002
        :pswitch_43  #00000003
        :pswitch_3e  #00000004
        :pswitch_3e  #00000005
        :pswitch_45  #00000006
        :pswitch_3e  #00000007
        :pswitch_43  #00000008
        :pswitch_45  #00000009
    .end packed-switch

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_66  #00000001
        :pswitch_61  #00000002
        :pswitch_61  #00000003
        :pswitch_61  #00000004
        :pswitch_69  #00000005
        :pswitch_69  #00000006
        :pswitch_5c  #00000007
        :pswitch_5c  #00000008
        :pswitch_5c  #00000009
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_82  #00000001
        :pswitch_7d  #00000002
        :pswitch_85  #00000003
        :pswitch_78  #00000004
        :pswitch_78  #00000005
        :pswitch_7d  #00000006
        :pswitch_78  #00000007
        :pswitch_85  #00000008
        :pswitch_7d  #00000009
    .end packed-switch
.end method

.method private final recursivelyRemoveListener(Landroid/view/View;)V
    .registers 6

    sget v0, Lcom/android/systemui/animation/R$id;->tag_layout_listener:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    instance-of v2, v1, Landroid/view/View$OnLayoutChangeListener;

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_15
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_36

    :goto_22
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v3, "view.getChildAt(i)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->recursivelyRemoveListener(Landroid/view/View;)V

    if-lt v2, v1, :cond_34

    goto :goto_36

    :cond_34
    move v0, v2

    goto :goto_22

    :cond_36
    :goto_36
    return-void
.end method

.method private final setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V
    .registers 5

    invoke-virtual {p2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getOverrideTag()I

    move-result p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->setValue(Landroid/view/View;I)V

    return-void
.end method

.method private final shiftChildrenForRemoval(Landroid/view/ViewGroup;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Ljava/util/Map;Landroid/view/animation/Interpolator;J)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "J)V"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_10c

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    add-int/lit8 v4, v3, 0x1

    move-object/from16 v5, p1

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v3, 0x4

    new-array v3, v3, [Ly2/i;

    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ly2/i;

    invoke-direct {v9, v6, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v3, v2

    sget-object v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ly2/i;

    invoke-direct {v10, v8, v9}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    aput-object v10, v3, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Ly2/i;

    invoke-direct {v12, v10, v11}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v3, v9

    const/4 v9, 0x3

    sget-object v11, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ly2/i;

    invoke-direct {v13, v11, v12}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v3, v9

    invoke-static {v3}, Lz2/c0;->d([Ly2/i;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v16

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v17

    invoke-static {v0, v10}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v0, v6}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    sub-int v18, v3, v12

    invoke-static {v0, v11}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v0, v8}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    sub-int v19, v3, v12

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v19}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->processChildEndValuesForRemoval(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIIIII)Ljava/util/Map;

    move-result-object v3

    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-static {v0, v6}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_bc

    invoke-interface {v12, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_bc
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v0, v8}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-eq v6, v13, :cond_cf

    invoke-interface {v12, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_cf
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v0, v10}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eq v6, v8, :cond_e2

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e2
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-static {v0, v11}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eq v6, v8, :cond_f5

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f5
    const-string v6, "child"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x1

    move-object/from16 v6, p0

    move-object v8, v12

    move-object v10, v3

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    invoke-direct/range {v6 .. v14}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V

    if-lt v4, v1, :cond_109

    goto :goto_10c

    :cond_109
    move v3, v4

    goto/16 :goto_a

    :cond_10c
    :goto_10c
    return-void
.end method

.method private final startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "JZ)V"
        }
    .end annotation

    new-instance p0, La3/a;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, La3/a;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator;->access$getPROPERTIES$cp()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-static {p3, v1}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p4, v1}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aput v1, v4, v2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, La3/a;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_46
    invoke-static {p0}, Li1/j;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-array p4, v2, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {p0, p4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string p4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p0, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Landroid/animation/PropertyValuesHolder;

    sget p4, Lcom/android/systemui/animation/R$id;->tag_animator:I

    invoke-virtual {p1, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    instance-of v0, p4, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_64

    check-cast p4, Landroid/animation/ObjectAnimator;

    goto :goto_65

    :cond_64
    const/4 p4, 0x0

    :goto_65
    if-nez p4, :cond_68

    goto :goto_6b

    :cond_68
    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_6b
    array-length p4, p0

    invoke-static {p0, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p6, p7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;

    invoke-direct {p4, p1, p2, p8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;-><init>(Landroid/view/View;Ljava/util/Set;Z)V

    invoke-virtual {p0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_88
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    sget-object p5, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    invoke-static {p3, p4}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Number;

    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    move-result p6

    invoke-direct {p5, p1, p4, p6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    goto :goto_88

    :cond_a4
    sget p2, Lcom/android/systemui/animation/R$id;->tag_animator:I

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final animate(Landroid/view/View;)Z
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animate(Landroid/view/View;Landroid/view/animation/Interpolator;)Z
    .registers 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animate(Landroid/view/View;Landroid/view/animation/Interpolator;J)Z
    .registers 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animate(Landroid/view/View;Landroid/view/animation/Interpolator;JZ)Z

    move-result p0

    return p0
.end method

.method public final animateAddition(Landroid/view/View;)Z
    .registers 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateAddition$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateAddition(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;)Z
    .registers 13
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateAddition$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateAddition(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;)Z
    .registers 14
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateAddition$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateAddition(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;J)Z
    .registers 16
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateAddition$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateAddition(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZ)Z
    .registers 14
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->isVisible(IIIII)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 p0, 0x0

    return p0

    :cond_2c
    const/4 v0, 0x1

    xor-int/lit8 v6, p6, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createAdditionListener(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JZ)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V

    return v0
.end method

.method public final animateNextUpdate(Landroid/view/View;)Z
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateNextUpdate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateNextUpdate(Landroid/view/View;Landroid/view/animation/Interpolator;)Z
    .registers 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateNextUpdate$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateNextUpdate(Landroid/view/View;Landroid/view/animation/Interpolator;J)Z
    .registers 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animate(Landroid/view/View;Landroid/view/animation/Interpolator;JZ)Z

    move-result p0

    return p0
.end method

.method public final animateRemoval(Landroid/view/View;)Z
    .registers 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;)Z
    .registers 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;)Z
    .registers 13
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;JILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;J)Z
    .registers 27
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-wide/from16 v12, p4

    const-string v0, "rootView"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->isVisible(IIIII)Z

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_37

    return v15

    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    invoke-direct {v9, v11, v12, v13, v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createUpdateListener(Landroid/view/animation/Interpolator;JZ)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_69

    move v2, v15

    :goto_4f
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_64

    :cond_5c
    const-string v4, "child"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v2, v0, v15}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Z)V

    :goto_64
    if-lt v3, v1, :cond_67

    goto :goto_69

    :cond_67
    move v2, v3

    goto :goto_4f

    :cond_69
    :goto_69
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ly2/i;

    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ly2/i;

    invoke-direct {v2, v7, v1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v15

    sget-object v5, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ly2/i;

    invoke-direct {v2, v5, v1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v6

    sget-object v4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ly2/i;

    invoke-direct {v2, v4, v1}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, Ly2/i;

    invoke-direct {v6, v2, v3}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v0, v1

    invoke-static {v0}, Lz2/c0;->d([Ly2/i;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v15, v2

    move v2, v3

    move/from16 v3, v18

    move-object/from16 v17, v8

    move-object v8, v4

    move/from16 v4, v19

    move-object v9, v5

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->processEndValuesForRemoval(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;IIII)Ljava/util/Map;

    move-result-object v5

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v5, v7}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_fc

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_fc
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v5, v9}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_10f

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {v5, v8}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_122

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_122
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v5, v15}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_135

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_135
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v6

    move-object v4, v5

    move-object v9, v5

    move-object/from16 v5, p3

    const/4 v15, 0x1

    move-wide/from16 v6, p4

    move-object/from16 v15, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V

    instance-of v0, v10, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a2

    move-object v7, v10

    check-cast v7, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p2

    move-object v3, v9

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->shiftChildrenForRemoval(Landroid/view/ViewGroup;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Ljava/util/Map;Landroid/view/animation/Interpolator;J)V

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [F

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_179

    const/4 v2, 0x0

    :goto_168
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v0, v2

    if-lt v3, v1, :cond_177

    goto :goto_179

    :cond_177
    move v2, v3

    goto :goto_168

    :cond_179
    :goto_179
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_1cc

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v3, v1

    div-long v3, v12, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/w0;

    invoke-direct {v1, v10, v0}, Lcom/android/launcher3/w0;-><init>(Landroid/view/View;[F)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;

    invoke-direct {v0, v10, v12, v13, v15}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;-><init>(Landroid/view/View;JLandroid/view/ViewGroup;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1ca

    :cond_1a2
    const/4 v1, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, v1

    div-long v1, v12, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/h;

    const/4 v2, 0x0

    invoke-direct {v1, v15, v10, v2}, Lcom/android/systemui/animation/h;-><init>(Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1ca
    const/4 v0, 0x1

    return v0

    :array_1cc
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final stopAnimating(Landroid/view/View;)V
    .registers 3

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->recursivelyRemoveListener(Landroid/view/View;)V

    return-void
.end method
