.class public Lcom/android/launcher/widget/WidgetsRecyclerViewR;
.super Lcom/android/launcher3/BaseRecyclerView;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field private mAdapter:Lcom/android/launcher3/views/OplusWidgetsListAdapter;

.field private final mFastScrollerOffset:Landroid/graphics/Point;

.field private final mScrollbarTop:I

.field private mTouchDownOnScroller:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/widget/WidgetsRecyclerViewR;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/widget/WidgetsRecyclerViewR;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705ae

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mScrollbarTop:I

    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method private isModelNotReady()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mAdapter:Lcom/android/launcher3/views/OplusWidgetsListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->getItemCount()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public getAvailableScrollHeight()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mAdapter:Lcom/android/launcher3/views/OplusWidgetsListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->getItemCount()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    sub-int/2addr v1, v0

    iget p0, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mScrollbarTop:I

    sub-int/2addr v1, p0

    return v1
.end method

.method public getCurrentScrollY()I
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->isModelNotReady()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2a

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v2

    sub-int/2addr p0, v0

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, -0x1

    return p0
.end method

.method public getScrollBarTop()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mScrollbarTop:I

    return p0
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mTouchDownOnScroller:Z

    :cond_18
    iget-boolean p1, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mTouchDownOnScroller:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-object p0, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result p0

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3

    iget-boolean p1, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mTouchDownOnScroller:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-object p0, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    :cond_b
    return-void
.end method

.method public onUpdateScrollbar(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->isModelNotReady()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->getCurrentScrollY()I

    move-result p1

    if-gez p1, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->getAvailableScrollHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BaseRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->isModelNotReady()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mAdapter:Lcom/android/launcher3/views/OplusWidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->getAvailableScrollHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2d

    sub-float/2addr v0, v1

    :cond_2d
    float-to-int p1, v0

    iget-object p0, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mAdapter:Lcom/android/launcher3/views/OplusWidgetsListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    check-cast p1, Lcom/android/launcher3/views/OplusWidgetsListAdapter;

    iput-object p1, p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->mAdapter:Lcom/android/launcher3/views/OplusWidgetsListAdapter;

    return-void
.end method
