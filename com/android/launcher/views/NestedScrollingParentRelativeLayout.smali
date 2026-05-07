.class public Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroidx/core/view/NestedScrollingParent2;


# static fields
.field private static final BACK_ANIM_MAX_DURATION:I = 0x12c

.field private static final CONTAINER_SCROLL_FADE_FACTOR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NestedScrollingParentRelativeLayout"


# instance fields
.field private final mIsRtl:Z

.field private mSpringBackAnimator:Landroid/animation/ValueAnimator;

.field private mSpringBackEndListener:Ljava/lang/Runnable;

.field private mSupportOverScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSupportOverScroll:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mIsRtl:Z

    sget-boolean p1, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz p1, :cond_1a

    const p1, -0x7fcc4a1b

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_1a
    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSpringBackEndListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getNestedScrollingChildView(Landroid/view/View;)Lcom/android/launcher/views/NestedScrollingChildView;
    .registers 2

    instance-of p0, p1, Lcom/android/launcher/views/NestedScrollingChildView;

    if-eqz p0, :cond_7

    check-cast p1, Lcom/android/launcher/views/NestedScrollingChildView;

    return-object p1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private isLandScape()Z
    .registers 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/ScreenUtils;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isSpringBackAnimationIsRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSpringBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private startSpringBackAnimation(ZII)V
    .registers 6

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSpringBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSpringBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_19
    if-eqz p1, :cond_1c

    move p2, p3

    :cond_1c
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    const/16 v0, 0x96

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/16 v0, 0x12c

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput v1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSpringBackAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSpringBackAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSpringBackAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$1;

    invoke-direct {p3, p0, p1}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$1;-><init>(Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSpringBackAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$2;

    invoke-direct {p2, p0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$2;-><init>(Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSpringBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isStableInterface()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->isSpringBackAnimationIsRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->isLandScape()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result p0

    if-nez p0, :cond_16

    move v1, v2

    :cond_16
    return v1

    :cond_17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result p0

    if-nez p0, :cond_1e

    move v1, v2

    :cond_1e
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 9
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->getNestedScrollingChildView(Landroid/view/View;)Lcom/android/launcher/views/NestedScrollingChildView;

    move-result-object p1

    if-eqz p1, :cond_55

    invoke-direct {p0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->isLandScape()Z

    move-result p5

    if-eqz p5, :cond_d

    move p2, p3

    :cond_d
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-gez p2, :cond_24

    iget-boolean v1, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mIsRtl:Z

    if-eqz v1, :cond_1c

    invoke-interface {p1}, Lcom/android/launcher/views/NestedScrollingChildView;->isScrolledToEnd()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_22

    :cond_1c
    invoke-interface {p1}, Lcom/android/launcher/views/NestedScrollingChildView;->isScrolledToStart()Z

    move-result v1

    if-eqz v1, :cond_24

    :goto_22
    move v1, p3

    goto :goto_25

    :cond_24
    move v1, v0

    :goto_25
    if-lez p2, :cond_3a

    iget-boolean v2, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mIsRtl:Z

    if-eqz v2, :cond_32

    invoke-interface {p1}, Lcom/android/launcher/views/NestedScrollingChildView;->isScrolledToStart()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_38

    :cond_32
    invoke-interface {p1}, Lcom/android/launcher/views/NestedScrollingChildView;->isScrolledToEnd()Z

    move-result p1

    if-eqz p1, :cond_3a

    :goto_38
    move p1, p3

    goto :goto_3b

    :cond_3a
    move p1, v0

    :goto_3b
    if-nez v1, :cond_3f

    if-eqz p1, :cond_55

    :cond_3f
    iget-boolean p1, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSupportOverScroll:Z

    if-nez p1, :cond_44

    return-void

    :cond_44
    if-eqz p5, :cond_4e

    div-int/lit8 p1, p2, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    aput p2, p4, p3

    goto :goto_55

    :cond_4e
    div-int/lit8 p1, p2, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    aput p2, p4, v0

    :cond_55
    :goto_55
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->isLandScape()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->isSpringBackAnimationIsRunning()Z

    move-result p0

    if-nez p0, :cond_13

    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_13

    move p2, p4

    :cond_13
    return p2

    :cond_14
    invoke-direct {p0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->isSpringBackAnimationIsRunning()Z

    move-result p0

    if-nez p0, :cond_1f

    and-int/lit8 p0, p3, 0x1

    if-eqz p0, :cond_1f

    move p2, p4

    :cond_1f
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->isLandScape()Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->startSpringBackAnimation(ZII)V

    return-void
.end method

.method public setSpringBackEndListener(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSpringBackEndListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setSupportOverScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->mSupportOverScroll:Z

    return-void
.end method
