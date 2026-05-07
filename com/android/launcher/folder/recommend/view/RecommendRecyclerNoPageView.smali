.class public Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""

# interfaces
.implements Lcom/android/launcher/views/NestedScrollingChildView;
.implements Lcom/android/launcher/folder/recommend/view/RecommendViewMethods;


# static fields
.field private static final DEBUG_SCROLL:Z = false

.field public static final ITEM_COUNT_ONE_PAGE:I = 0x5

.field private static final STABLE_ANIMATION_DURATION:I = 0x168

.field private static TAG:Ljava/lang/String; = "RecommendRecyclerNoPageView"


# instance fields
.field private mCurrentPosition:I

.field private mDestPageListener:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;

.field private mIsRTL:Z

.field public mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

.field private mOpenedAnimator:Landroid/animation/Animator;

.field private mOrientation:I

.field private mRecommendItem:I

.field public mStableAnimationDuration:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->lambda$onVisibilityChanged$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mIsRTL:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mOrientation:I

    invoke-static {v0}, Lcom/android/common/util/ScreenUtils;->isLandscape(I)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mIsRTL:Z

    new-instance p1, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$1;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$1;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mStableAnimationDuration:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private synthetic lambda$onVisibilityChanged$0()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void
.end method


# virtual methods
.method public addLastPageListener(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mDestPageListener:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;

    return-void
.end method

.method public getCurrentPosition()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mCurrentPosition:I

    return p0
.end method

.method public getPosition(Landroid/view/View;)I
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p0

    return p0
.end method

.method public isScrolledToEnd()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public isScrolledToStart()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :goto_11
    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    if-nez p2, :cond_a

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public resetCurrentPage(I)V
    .registers 2

    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mCurrentPosition:I

    return-void
.end method

.method public setScrollEnable(Z)V
    .registers 2

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    :cond_6
    return-void
.end method

.method public snapToNextPage()V
    .registers 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mRecommendItem:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->getPosition(Landroid/view/View;)I

    move-result v1

    new-instance v2, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$2;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$2;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x5

    iget v3, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mRecommendItem:I

    if-ge v1, v3, :cond_23

    move v0, v1

    :cond_23
    const/16 v1, 0x168

    invoke-virtual {v2, v1}, Lcom/android/launcher/views/VHLinearSmoothScroller;->setScrollTime(I)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public snapToPage(ZI)V
    .registers 4

    new-instance p1, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$3;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$3;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;Landroid/content/Context;)V

    const/16 v0, 0x168

    invoke-virtual {p1, v0}, Lcom/android/launcher/views/VHLinearSmoothScroller;->setScrollTime(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public updatePageWidth()V
    .registers 1

    return-void
.end method
