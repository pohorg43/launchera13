.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;
.super Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$Companion;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$WhenMappings;
    }
.end annotation


# static fields
.field private static final CARD_TURN_OFFSET:I

.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$Companion;

.field private static final DECELE_RATE_FACTOR:F = 1.5f

.field private static final FOUR_PLUS_FOUR_CARD_SCROLL_SPEED_FACTOR:F = 3.0f

.field private static final PAGE_SCROLL_POWER:F = 3.0f

.field private static final SCROLL:Landroid/view/animation/Interpolator;

.field private static final SPEED_FACTOR_FLING:F = 0.8f

.field private static final SPEED_FACTOR_NON_FLING:F = 4.0f


# instance fields
.field private final container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

.field private mGravityScroller:Landroid/widget/Scroller;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$Companion;

    const/high16 v0, 0x41700000  # 15.0f

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v0

    sput v0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->CARD_TURN_OFFSET:I

    sget-object v0, Lcom/android/launcher3/popup/pendingcard/h;->b:Lcom/android/launcher3/popup/pendingcard/h;

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->SCROLL:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;)V
    .registers 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    new-instance p1, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$mScrollListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$mScrollListener$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private static final SCROLL$lambda-3(F)F
    .registers 7

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v0, 0x1

    int-to-double v0, v0

    float-to-double v2, p0

    const-wide/high16 v4, 0x4008000000000000L  # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public static synthetic a(F)F
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->SCROLL$lambda-3(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$calculateDistanceToFinalSnap(Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMRecyclerView$p(Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private final calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->distanceToTarget(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    move-result p0

    aput p0, v0, v2

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    aput p0, v0, v2

    :goto_14
    return-object v0
.end method

.method private final createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object p0

    return-object p0
.end method

.method private final createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .registers 3

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez p1, :cond_6

    const/4 p0, 0x0

    goto :goto_15

    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$createSnapScroller$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$createSnapScroller$1;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;Landroid/content/Context;)V

    move-object p0, v0

    :goto_15
    return-object p0
.end method

.method private final destroyCallbacks()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    return-void
.end method

.method private final distanceToTarget(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMFirstVisibleView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMLastVisibleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    const/4 v2, -0x1

    if-nez v1, :cond_15

    move v3, v2

    goto :goto_19

    :cond_15
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_19
    if-nez v0, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_20
    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    sget-object v5, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCompletelyVisibleView(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2c

    return v5

    :cond_2c
    if-eq p2, v2, :cond_42

    const/16 v2, 0xa

    if-ne v3, v2, :cond_33

    goto :goto_42

    :cond_33
    if-ne p2, v3, :cond_41

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->getTargetVisualArea(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    invoke-direct {p0, v1, p2, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->getDecoratedStart(Landroid/view/View;Landroid/graphics/Point;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p0

    goto :goto_4d

    :cond_41
    return v5

    :cond_42
    :goto_42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->getTargetVisualArea(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->getDecoratedEnd(Landroid/view/View;Landroid/graphics/Point;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p0

    :goto_4d
    return p0
.end method

.method private final findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)I
    .registers 4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_b

    return v0

    :cond_b
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMFirstVisualCardScrollEvent()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result p0

    if-ne p0, v0, :cond_18

    return v0

    :cond_18
    if-lez p2, :cond_1c

    add-int/lit8 p0, p0, 0x1

    :cond_1c
    return p0
.end method

.method private final getDecoratedEnd(Landroid/view/View;Landroid/graphics/Point;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .registers 4

    iget p0, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    neg-int p0, p0

    return p0
.end method

.method private final getDecoratedStart(Landroid/view/View;Landroid/graphics/Point;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .registers 4

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    iget p1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private final getTargetVisualArea(Landroid/view/View;)Landroid/graphics/Point;
    .registers 7

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7c

    const/4 v4, 0x3

    if-eq v1, v4, :cond_57

    const/4 v2, 0x4

    if-eq v1, v2, :cond_22

    goto/16 :goto_b2

    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMinCardSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne p1, v1, :cond_4a

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMinCardSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result p0

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_b2

    :cond_4a
    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMaxCardSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_b2

    :cond_57
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMinCardSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne p1, v1, :cond_6f

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result p1

    mul-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Point;->x:I

    goto :goto_71

    :cond_6f
    iput v3, v0, Landroid/graphics/Point;->x:I

    :goto_71
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMaxCardSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_b2

    :cond_7c
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMinCardSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne p1, v1, :cond_95

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMinCardSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_9f

    :cond_95
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMaxCardSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    :goto_9f
    iput v3, v0, Landroid/graphics/Point;->x:I

    goto :goto_b2

    :cond_a2
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p1, p0, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    :goto_b2
    return-object v0
.end method

.method private final setupCallbacks()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    move-result-object v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    return-void
.end method

.method private final snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Z
    .registers 5

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-result-object v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_15

    return v1

    :cond_15
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->destroyCallbacks()V

    :cond_a
    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_29

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->setupCallbacks()V

    new-instance p1, Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->snapToTargetExistingView()V

    :cond_29
    return-void
.end method

.method public final calculateScrollDistance(II)[I
    .registers 13

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    const/4 p2, 0x0

    aput p1, v0, p2

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalY()I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method public final findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 5

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getScrolledDirection()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCardCenterX()F

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sget v2, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->CARD_TURN_OFFSET:I

    int-to-float v2, v2

    add-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    goto :goto_48

    :cond_26
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getScrolledDirection()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    if-ne v0, v1, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCardCenterX()F

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sget v2, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->CARD_TURN_OFFSET:I

    int-to-float v2, v2

    sub-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    goto :goto_48

    :cond_47
    const/4 p0, 0x0

    :goto_48
    if-nez p0, :cond_57

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "layoutManager.getChildAt(0)!!"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_57
    return-object p0
.end method

.method public final getContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    return-object p0
.end method

.method public final getMillisecondsPreInchBase(F)F
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->container:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-int/lit8 v0, p0, 0x2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_15

    const p0, 0x3eaaaaab

    goto :goto_1f

    :cond_15
    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1d

    const/high16 p0, 0x3f000000  # 0.5f

    goto :goto_1f

    :cond_1d
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_1f
    return p0
.end method

.method public final getRecyclerView()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    return-object p0
.end method

.method public onFling(II)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_22

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v2, :cond_29

    :cond_22
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public final snapToTargetExistingView()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMHasInitLayout()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4a

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_29

    aget v2, v0, v3

    if-eqz v2, :cond_4a

    :cond_29
    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->recyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    aget v1, v0, v1

    aget v4, v0, v3

    sget-object v5, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->SCROLL:Landroid/view/animation/Interpolator;

    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->getMillisecondsPreInchBase(F)F

    move-result p0

    mul-float/2addr p0, v6

    const/high16 v0, 0x40800000  # 4.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Li1/j;->o(F)I

    move-result p0

    invoke-virtual {v2, v1, v4, v5, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    :cond_4a
    :goto_4a
    return-void
.end method
