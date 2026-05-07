.class public Lcom/android/launcher/views/PressFeedbackButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/views/PressFeedbackButton$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/views/PressFeedbackButton$Companion;

.field private static final DISABLE_STATE:[I

.field private static final ENABLE_STATE:[I


# instance fields
.field private mAnimColorAlpha:I

.field private mCustomEnabled:Z

.field private mDisEnabledColorAlpha:I

.field private mDisableColor:I

.field private mDisablePaint:Landroid/graphics/Paint;

.field private mDisableTextColorAlpha:I

.field private mDrawableColor:I

.field private mDrawableRadius:F

.field private mEnableStateAnim:Landroid/animation/ValueAnimator;

.field private mEnableTextColor:I

.field private mEnableTextColorAlpha:I

.field private mEnabledColorAlpha:I

.field private mKeepVisibility:Z

.field private mPressFeedbackHandler:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;

.field private mSrcDrawable:Landroid/graphics/drawable/Drawable;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/launcher/views/PressFeedbackButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/views/PressFeedbackButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/views/PressFeedbackButton;->Companion:Lcom/android/launcher/views/PressFeedbackButton$Companion;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, -0x101009e

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/launcher/views/PressFeedbackButton;->DISABLE_STATE:[I

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v3

    sput-object v0, Lcom/android/launcher/views/PressFeedbackButton;->ENABLE_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/views/PressFeedbackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/PressFeedbackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mCustomEnabled:Z

    sget-object v1, Lcom/android/launcher3/R$styleable;->PressFeedbackButton:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisableColor:I

    const/4 p2, 0x2

    const/high16 p3, -0x40800000  # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDrawableRadius:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDrawableColor:I

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/views/PressFeedbackButton;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDrawableColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnabledColorAlpha:I

    iget p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisableColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisEnabledColorAlpha:I

    iput p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mAnimColorAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher/views/PressFeedbackButton;->setStateColor()V

    invoke-virtual {p0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    sget-object p2, Lcom/android/launcher/views/PressFeedbackButton;->DISABLE_STATE:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget p2, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableTextColor:I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableTextColorAlpha:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisableTextColorAlpha:I

    new-instance p1, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;

    iget p2, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDrawableColor:I

    iget p3, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDrawableRadius:F

    invoke-direct {p1, p0, p2, p3}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;-><init>(Landroid/view/View;IF)V

    iput-object p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mPressFeedbackHandler:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mTempRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisablePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisablePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisableColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/views/PressFeedbackButton;ZLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/views/PressFeedbackButton;->doEnableStateAnim$lambda-1$lambda-0(Lcom/android/launcher/views/PressFeedbackButton;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$setEnabled$s987396597(Lcom/android/launcher/views/PressFeedbackButton;Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private final doEnableStateAnim(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableStateAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableStateAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    :goto_10
    if-eqz p1, :cond_15

    iget v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisEnabledColorAlpha:I

    goto :goto_17

    :cond_15
    iget v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnabledColorAlpha:I

    :goto_17
    if-eqz p1, :cond_1c

    iget v1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnabledColorAlpha:I

    goto :goto_1e

    :cond_1c
    iget v1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisEnabledColorAlpha:I

    :goto_1e
    iput v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mAnimColorAlpha:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_NORMAL:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher/pageindicators/c;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/pageindicators/c;-><init>(Lcom/android/launcher/views/PressFeedbackButton;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableStateAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher/views/PressFeedbackButton$doEnableStateAnim$$inlined$doOnCancel$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/views/PressFeedbackButton$doEnableStateAnim$$inlined$doOnCancel$1;-><init>(Lcom/android/launcher/views/PressFeedbackButton;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableStateAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher/views/PressFeedbackButton$doEnableStateAnim$$inlined$doOnEnd$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/views/PressFeedbackButton$doEnableStateAnim$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher/views/PressFeedbackButton;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableStateAnim:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final doEnableStateAnim$lambda-1$lambda-0(Lcom/android/launcher/views/PressFeedbackButton;ZLandroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mAnimColorAlpha:I

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    if-eqz p1, :cond_24

    iget p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisableTextColorAlpha:I

    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableTextColorAlpha:I

    goto :goto_29

    :cond_24
    iget p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableTextColorAlpha:I

    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisableTextColorAlpha:I

    :goto_29
    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget p2, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableTextColor:I

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p2

    iget v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableTextColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final markKeepVisibility()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mKeepVisibility:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mCustomEnabled:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mPressFeedbackHandler:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->drawPressedColor(Landroid/graphics/Canvas;)V

    goto :goto_43

    :cond_15
    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisablePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mAnimColorAlpha:I

    iget v2, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisableColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisableColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisableColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDrawableRadius:F

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisablePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_43
    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4d
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mPressFeedbackHandler:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->onLayout(II)V

    iget-object p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7c

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher/views/PressFeedbackButton;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result p3

    iget-object p4, p0, Lcom/android/launcher/views/PressFeedbackButton;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/android/launcher/views/PressFeedbackButton;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    iget-object p5, p0, Lcom/android/launcher/views/PressFeedbackButton;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    add-int/2addr p5, p4

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result p4

    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    iget-object p0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p2, p3, p5, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_7c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableStateAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableStateAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_10
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mPressFeedbackHandler:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setDisableColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisableColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDisEnabledColorAlpha:I

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public final setDrawableColor(I)V
    .registers 3

    iput p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mDrawableColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnabledColorAlpha:I

    iget-object v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mPressFeedbackHandler:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->setDrawableColor(I)V

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mCustomEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/launcher/views/PressFeedbackButton;->mCustomEnabled:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/views/PressFeedbackButton;->doEnableStateAnim(Z)V

    return-void
.end method

.method public final setStateColor()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/views/PressFeedbackButton;->ENABLE_STATE:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mEnableTextColor:I

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/views/PressFeedbackButton;->mKeepVisibility:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
