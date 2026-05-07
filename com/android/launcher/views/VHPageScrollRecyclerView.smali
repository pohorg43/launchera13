.class public Lcom/android/launcher/views/VHPageScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""

# interfaces
.implements Lcom/android/launcher/views/NestedScrollingChildView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollDraggingStateListener;,
        Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollIdleStateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_OFFSET_FACTOR:F = 0.3f

.field private static final DEBUG_SCROLL:Z = false

.field private static final ONE_SECOND:I = 0x3e8

.field private static final SNAP_VELOCITY:I = 0xc8

.field private static final STABLE_ANIMATION_DURATION:I = 0x168

.field private static final TAG:Ljava/lang/String; = "VHPageScrollRecyclerView"


# instance fields
.field private mCurrentPage:I

.field public mIsRTL:Z

.field public mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mOrientation:I

.field public mPageWidth:I

.field private mScrollDraggingListener:Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollDraggingStateListener;

.field private mScrollIdleListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollIdleStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mStableAnimationDuration:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mScrollIdleListener:Ljava/util/List;

    new-instance p2, Lcom/android/launcher/views/VHPageScrollRecyclerView$1;

    invoke-direct {p2, p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView$1;-><init>(Lcom/android/launcher/views/VHPageScrollRecyclerView;)V

    iput-object p2, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mOrientation:I

    invoke-static {p2}, Lcom/android/common/util/ScreenUtils;->isLandscape(I)Z

    move-result p2

    new-instance p3, Lcom/android/launcher/views/VHLinearLayoutManager;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/android/launcher/views/VHLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p3, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mIsRTL:Z

    iget-object p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/views/VHPageScrollRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->dispatchScrollIdleState()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/views/VHPageScrollRecyclerView;)Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollDraggingStateListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mScrollDraggingListener:Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollDraggingStateListener;

    return-object p0
.end method

.method private checkItemVisibleInfo()[Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-ltz v1, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->getPageCount()I

    move-result p0

    sub-int/2addr p0, v3

    if-ge v1, p0, :cond_1e

    move p0, v3

    goto :goto_1f

    :cond_1e
    move p0, v2

    :goto_1f
    const/4 v1, 0x2

    new-array v1, v1, [Z

    aput-boolean v0, v1, v2

    aput-boolean p0, v1, v3

    return-object v1
.end method

.method private computeScrollOffset(Z)I
    .registers 2

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p0

    return p0
.end method

.method private declared-synchronized dispatchScrollIdleState()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mScrollIdleListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollIdleStateListener;

    invoke-direct {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->checkItemVisibleInfo()[Z

    move-result-object v2

    const/4 v3, 0x0

    aget-boolean v3, v2, v3

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    invoke-interface {v1, v3, v2}, Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollIdleStateListener;->onScrollIdle(ZZ)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    goto :goto_7

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getScrollPageDistance()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    if-nez p0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_20

    :cond_1c
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_20
    return p0

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScrollPageDistance no child, this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VHPageScrollRecyclerView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    return p0
.end method

.method private getVelocity(ZLandroid/view/VelocityTracker;)F
    .registers 3

    if-nez p2, :cond_b

    const-string p0, "VHPageScrollRecyclerView"

    const-string p1, "getVelocity, tracker is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_b
    if-eqz p1, :cond_12

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0

    :cond_12
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    return p0
.end method

.method private obtainVelocityTracker(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private releaseVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private snapToDestination(ZI)V
    .registers 6

    iget v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    if-nez v0, :cond_d

    const-string p0, "VHPageScrollRecyclerView"

    const-string/jumbo p1, "snapToDestination, page width is 0!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->computeScrollOffset(Z)I

    move-result v0

    const/16 v1, 0xc8

    if-le p2, v1, :cond_19

    iget p2, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    div-int/2addr v0, p2

    goto :goto_2d

    :cond_19
    const/16 v1, -0xc8

    if-ge p2, v1, :cond_22

    iget p2, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    add-int/2addr v0, p2

    div-int/2addr v0, p2

    goto :goto_2d

    :cond_22
    int-to-float p2, v0

    iget v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p2

    int-to-float p2, v0

    div-float/2addr v1, p2

    float-to-int v0, v1

    :goto_2d
    iget-boolean p2, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mIsRTL:Z

    if-eqz p2, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->getPageCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    sub-int v0, p2, v0

    :cond_39
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->snapToPage(ZI)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addScrolledItemVisibleChangeListener(Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollIdleStateListener;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_16

    :try_start_3
    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mScrollIdleListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_16

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mScrollIdleListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_16
    :goto_16
    monitor-exit p0

    return-void
.end method

.method public getCurrentPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mCurrentPage:I

    return p0
.end method

.method public getPageCount()I
    .registers 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public isLandScape()Z
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/ScreenUtils;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isScrolledToEnd()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

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

    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

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

.method public onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget p2, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mOrientation:I

    if-eq p2, p1, :cond_1e

    iput p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mOrientation:I

    invoke-static {p1}, Lcom/android/common/util/ScreenUtils;->isLandscape(I)Z

    move-result p1

    iget-object p2, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mLayoutManager:Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    :cond_1e
    iget p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    if-nez p1, :cond_28

    invoke-direct {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->getScrollPageDistance()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    :cond_28
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->obtainVelocityTracker(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v1, 0x3

    if-eq p1, v1, :cond_11

    goto :goto_27

    :cond_11
    iget-object p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->isLandScape()Z

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->getVelocity(ZLandroid/view/VelocityTracker;)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->snapToDestination(ZI)V

    invoke-direct {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->releaseVelocityTracker()V

    :goto_27
    return v0
.end method

.method public declared-synchronized removeScrolledItemVisibleChangeListener(Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollIdleStateListener;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_16

    :try_start_3
    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mScrollIdleListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_16

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mScrollIdleListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_16
    :goto_16
    monitor-exit p0

    return-void
.end method

.method public setCurrentPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mCurrentPage:I

    return-void
.end method

.method public setScrollDraggingListener(Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollDraggingStateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mScrollDraggingListener:Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollDraggingStateListener;

    return-void
.end method

.method public snapToNextPage()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->isLandScape()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mIsRTL:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    if-eqz v0, :cond_12

    move v1, v2

    :cond_12
    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget v1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->snapToPage(ZI)V

    goto :goto_29

    :cond_1d
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget v1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->snapToPage(ZI)V

    :goto_29
    return-void
.end method

.method public snapToPage(ZI)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->computeScrollOffset(Z)I

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mIsRTL:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    mul-int/2addr v0, v1

    goto :goto_25

    :cond_22
    iget v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mPageWidth:I

    mul-int/2addr v0, p2

    :goto_25
    if-eq p1, v0, :cond_52

    iput p2, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mCurrentPage:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3e99999a  # 0.3f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x78

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mStableAnimationDuration:Z

    if-eqz v0, :cond_40

    const/16 p1, 0x168

    :cond_40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_4b

    check-cast v0, Lcom/android/launcher/views/VHLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher/views/VHLinearLayoutManager;->setScrollTime(I)V

    :cond_4b
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_61

    :cond_52
    iget-object p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_5b

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_5b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_61
    return-void
.end method

.method public snapToPrePage()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->isLandScape()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mIsRTL:Z

    if-eqz v1, :cond_15

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget v1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->snapToPage(ZI)V

    goto :goto_29

    :cond_15
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    if-eqz v0, :cond_1f

    move v1, v2

    :cond_1f
    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget v1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->snapToPage(ZI)V

    :goto_29
    return-void
.end method
