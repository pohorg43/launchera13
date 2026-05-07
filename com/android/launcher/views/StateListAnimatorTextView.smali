.class public Lcom/android/launcher/views/StateListAnimatorTextView;
.super Landroid/widget/TextView;
.source ""


# static fields
.field private static final MAX_SCALE:F = 1.1f

.field private static final MIN_SCALE:F = 1.0f


# instance fields
.field private mCurrentScale:F

.field private mHasScale:Z

.field private mScaleAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/StateListAnimatorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mCurrentScale:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mHasScale:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/views/StateListAnimatorTextView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mCurrentScale:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/views/StateListAnimatorTextView;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mCurrentScale:F

    return p1
.end method

.method private animateToNormal()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mHasScale:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mCurrentScale:F

    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_20
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mCurrentScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x42

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_TOUCH_END:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/views/StateListAnimatorTextView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/views/StateListAnimatorTextView$2;-><init>(Lcom/android/launcher/views/StateListAnimatorTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mHasScale:Z

    return-void
.end method

.method private animateToPress()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mHasScale:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mCurrentScale:F

    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_20
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mCurrentScale:F

    aput v2, v0, v1

    const v1, 0x3f8ccccd  # 1.1f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x42

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_TOUCH_START:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/views/StateListAnimatorTextView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/views/StateListAnimatorTextView$1;-><init>(Lcom/android/launcher/views/StateListAnimatorTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/android/launcher/views/StateListAnimatorTextView;->mHasScale:Z

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_14

    :cond_10
    invoke-direct {p0}, Lcom/android/launcher/views/StateListAnimatorTextView;->animateToNormal()V

    goto :goto_17

    :cond_14
    :goto_14
    invoke-direct {p0}, Lcom/android/launcher/views/StateListAnimatorTextView;->animateToPress()V

    :goto_17
    return-void
.end method
