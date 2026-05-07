.class public Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;
.super Lcom/android/launcher/views/AdaptiveScreenRotateTextView;
.source ""


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_SCALE:F = 1.1f

.field private static final MIN_ALPHA:I = 0x0

.field private static final MIN_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "AdaptiveRotateStateAnimatorTextView"


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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/AdaptiveScreenRotateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f8ccccd  # 1.1f

    iput p3, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mStateListMaxScale:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrentScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mHasScale:Z

    iput-boolean v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mHasAlpha:Z

    sget-object v1, Lcom/android/launcher3/R$styleable;->StateListAnimatorView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mStateListMaxScale:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrentScale:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrentScale:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrDrawableAlpha:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrDrawableAlpha:I

    return p1
.end method

.method private animateToNormal()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mHasScale:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrentScale:F

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_20
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrentScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x42

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_TOUCH_END:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView$2;-><init>(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mHasScale:Z

    return-void
.end method

.method private animateToPress()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mHasScale:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrentScale:F

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_20
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrentScale:F

    aput v2, v0, v1

    iget v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mStateListMaxScale:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x42

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->CURVE_TOUCH_START:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView$1;-><init>(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mHasScale:Z

    return-void
.end method

.method private foregroundAnimateToNormal()V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrDrawableAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-boolean v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mHasAlpha:Z

    if-nez v1, :cond_11

    return-void

    :cond_11
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_16

    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrDrawableAlpha:I

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_31
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrDrawableAlpha:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView$4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView$4;-><init>(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v3, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mHasAlpha:Z

    return-void
.end method

.method private foregroundAnimateToSelected()V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrDrawableAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-boolean v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mHasAlpha:Z

    if-eqz v1, :cond_11

    return-void

    :cond_11
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_16

    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrDrawableAlpha:I

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_31
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mCurrDrawableAlpha:I

    aput v3, v1, v2

    const/16 v2, 0xff

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView$3;-><init>(Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v3, p0, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->mHasAlpha:Z

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1a

    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->animateToNormal()V

    goto :goto_1d

    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->animateToPress()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_f
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->foregroundAnimateToSelected()V

    goto :goto_c

    :cond_9
    invoke-direct {p0}, Lcom/android/launcher/views/AdaptiveRotateStateAnimatorTextView;->foregroundAnimateToNormal()V

    :goto_c
    return-void
.end method
