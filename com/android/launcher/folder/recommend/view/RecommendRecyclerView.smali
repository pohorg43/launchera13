.class public Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;
.super Lcom/android/launcher/views/VHPageScrollRecyclerView;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/view/RecommendViewMethods;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;
    }
.end annotation


# static fields
.field private static final FLOAT_1:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "RecommendRecyclerView"


# instance fields
.field private mDestPageListener:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mOpenedAnimator:Landroid/animation/Animator;


# direct methods
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

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/views/VHPageScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;

    invoke-direct {p1, p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mStableAnimationDuration:Z

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

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/VHPageScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;

    invoke-direct {p1, p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$2;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mStableAnimationDuration:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->lambda$onVisibilityChanged$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)Lcom/android/launcher/views/VHLinearLayoutManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)Lcom/android/launcher/views/VHLinearLayoutManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)Lcom/android/launcher/views/VHLinearLayoutManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mIsRTL:Z

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->lambda$updatePageWidth$1()V

    return-void
.end method

.method private synthetic lambda$onVisibilityChanged$0()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void
.end method

.method private synthetic lambda$updatePageWidth$1()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    return-void
.end method


# virtual methods
.method public addLastPageListener(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mDestPageListener:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;

    return-void
.end method

.method public getActualCurrentPage()I
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->getCurrentPage()I

    move-result p0

    return p0
.end method

.method public getCurrentPage()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->getPageCount()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->getCurrentPage()I

    move-result p0

    rem-int/2addr p0, v0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getPageCount()I
    .registers 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x5

    :goto_10
    return p0
.end method

.method public isLastPage()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->getPageCount()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    if-nez p2, :cond_b

    new-instance v0, Lcom/android/launcher/folder/recommend/view/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public resetCurrentPage(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->setCurrentPage(I)V

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

.method public showWithAnimation(Ljava/lang/Runnable;)Landroid/animation/Animator;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mOpenedAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mOpenedAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const-string/jumbo v1, "showWithAnimation, firstVisibleItem = "

    const-string v2, ", child count = "

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecommendRecyclerView"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_53

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout;

    if-eqz v1, :cond_53

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    check-cast v0, Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout;->buildShowAnimatorAfterOpened()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mOpenedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_53

    new-instance v1, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$1;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mOpenedAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_53
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mOpenedAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public snapToNextPage()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->getPageCount()I

    move-result v0

    if-nez v0, :cond_f

    const-string p0, "RecommendRecyclerView"

    const-string/jumbo v0, "snap to next page, page count is 0"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->isLandScape()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->getCurrentPage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->snapToPage(ZI)V

    return-void
.end method

.method public snapToPage(ZI)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->getCurrentPage()I

    move-result v0

    invoke-super {p0, p1, p2}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->snapToPage(ZI)V

    if-ne v0, p2, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->mDestPageListener:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;->getCurrentPage()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;->onSnapToDestPage(II)V

    :cond_15
    return-void
.end method

.method public updatePageWidth()V
    .registers 3

    new-instance v0, Lcom/android/launcher/folder/recommend/view/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
