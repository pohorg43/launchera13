.class public Lcom/android/launcher/guide/side/CarouselViewPager;
.super Lcom/oplus/widget/OplusViewPager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/side/CarouselViewPager$OnViewChangedListener;
    }
.end annotation


# static fields
.field private static final RATIO_1:F = 100.0f

.field private static final RATIO_2:F = 5.0f

.field public static final TAG:Ljava/lang/String;

.field private static final UNLOCK_EVENT_DELAY:I = 0x12c


# instance fields
.field private mCanListViewScroll:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsCarouselPlayed:Z

.field private mIsEventLock:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaxPageHeight:I

.field private mParent:Landroid/view/ViewGroup;

.field private mViewChangedListener:Lcom/android/launcher/guide/side/CarouselViewPager$OnViewChangedListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/launcher/guide/side/CarouselViewPager;

    const-string v0, "CarouselViewPager"

    sput-object v0, Lcom/android/launcher/guide/side/CarouselViewPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/widget/OplusViewPager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mIsCarouselPlayed:Z

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mCanListViewScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mIsEventLock:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/CarouselViewPager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/widget/OplusViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mIsCarouselPlayed:Z

    iput-boolean p2, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mCanListViewScroll:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mIsEventLock:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/CarouselViewPager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/guide/side/CarouselViewPager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/side/CarouselViewPager;->unlockEvent()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private unlockEvent()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mIsEventLock:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000  # 100.0f

    if-eqz v0, :cond_66

    const/4 v4, 0x2

    if-eq v0, v4, :cond_29

    iget-object v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mCanListViewScroll:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/android/launcher/guide/side/CarouselViewPager;->unlockEvent()V

    goto/16 :goto_87

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/guide/side/b;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/side/b;-><init>(Lcom/android/launcher/guide/side/CarouselViewPager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_87

    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    mul-float/2addr v4, v3

    iget-boolean v3, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mIsEventLock:Z

    if-nez v3, :cond_53

    iget v3, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mLastMotionX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mLastMotionY:F

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40a00000  # 5.0f

    mul-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4e

    move v0, v1

    goto :goto_4f

    :cond_4e
    move v0, v2

    :goto_4f
    iput-boolean v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mCanListViewScroll:Z

    iput-boolean v1, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mIsEventLock:Z

    :cond_53
    iget-boolean v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mCanListViewScroll:Z

    if-eqz v0, :cond_58

    return v2

    :cond_58
    iget-boolean v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mIsCarouselPlayed:Z

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mViewChangedListener:Lcom/android/launcher/guide/side/CarouselViewPager$OnViewChangedListener;

    if-eqz v0, :cond_87

    invoke-interface {v0}, Lcom/android/launcher/guide/side/CarouselViewPager$OnViewChangedListener;->onViewMoved()V

    iput-boolean v2, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mIsCarouselPlayed:Z

    goto :goto_87

    :cond_66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mLastMotionY:F

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mCanListViewScroll:Z

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_87

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_87

    :cond_80
    iget-object v0, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_87

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_87
    :goto_87
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-super {p0, p1, p2}, Lcom/oplus/widget/OplusViewPager;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, p2, :cond_27

    invoke-virtual {p0, v1}, Lcom/oplus/widget/OplusViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mMaxPageHeight:I

    if-le v3, v4, :cond_24

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mMaxPageHeight:I

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_27
    iget p1, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mMaxPageHeight:I

    if-lez p1, :cond_34

    invoke-virtual {p0}, Lcom/oplus/widget/OplusViewPager;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mMaxPageHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/oplus/widget/OplusViewPager;->setMeasuredDimension(II)V

    :cond_34
    return-void
.end method

.method public setNestedParent(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method public setViewChangedListener(Lcom/android/launcher/guide/side/CarouselViewPager$OnViewChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/CarouselViewPager;->mViewChangedListener:Lcom/android/launcher/guide/side/CarouselViewPager$OnViewChangedListener;

    return-void
.end method
