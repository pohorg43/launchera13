.class public Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;
.super Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;
.source ""


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_SCALE:F = 1.1f

.field private static final MIN_ALPHA:I = 0x0

.field private static final MIN_SCALE:F = 1.0f


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mCurrDrawableAlpha:I

.field private mCurrentScale:F

.field private mHasAlpha:Z

.field private mHasScale:Z

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mStateListMaxScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f8ccccd  # 1.1f

    iput p3, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mStateListMaxScale:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrentScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mHasScale:Z

    iput-boolean v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mHasAlpha:Z

    sget-object v1, Lcom/android/launcher3/R$styleable;->StateListAnimatorView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mStateListMaxScale:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrentScale:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrentScale:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrDrawableAlpha:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrDrawableAlpha:I

    return p1
.end method

.method private animateToNormal()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mHasScale:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrentScale:F

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_20
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrentScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x42

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_TOUCH_END:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$2;-><init>(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mHasScale:Z

    return-void
.end method

.method private animateToPress()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mHasScale:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrentScale:F

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_20
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrentScale:F

    aput v2, v0, v1

    iget v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mStateListMaxScale:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x42

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_TOUCH_START:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$1;-><init>(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mHasScale:Z

    return-void
.end method

.method private foregroundAnimateToNormal()V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrDrawableAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-boolean v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mHasAlpha:Z

    if-nez v1, :cond_11

    return-void

    :cond_11
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_16

    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrDrawableAlpha:I

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_31
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrDrawableAlpha:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$4;-><init>(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v3, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mHasAlpha:Z

    return-void
.end method

.method private foregroundAnimateToSelected()V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrDrawableAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-boolean v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mHasAlpha:Z

    if-eqz v1, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrDrawableAlpha:I

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2c
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mCurrDrawableAlpha:I

    aput v3, v1, v2

    const/16 v2, 0xff

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView$3;-><init>(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v3, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->mHasAlpha:Z

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1a

    :cond_10
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->animateToNormal()V

    goto :goto_1d

    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->animateToPress()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->foregroundAnimateToSelected()V

    goto :goto_c

    :cond_9
    invoke-direct {p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorRoundImageView;->foregroundAnimateToNormal()V

    :goto_c
    return-void
.end method
