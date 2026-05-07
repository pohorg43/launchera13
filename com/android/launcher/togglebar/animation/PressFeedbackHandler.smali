.class public Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/animation/PressFeedbackHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler$Companion;

.field public static final INVALIDATE_RADIUS:F = -1.0f


# instance fields
.field private mAnimColorNormalAlpha:I

.field private mAnimColorPressedAlpha:I

.field private mCurrentColorAlpha:I

.field private mDrawableColor:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private mIsNeedToDelayCancelScaleAnim:Z

.field private mPressAnimation:Landroid/animation/ValueAnimator;

.field private mPressAnimationValue:F

.field private mRadius:F

.field private final mTempBgRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->Companion:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IF)V
    .registers 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mPressAnimationValue:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mTempBgRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mFillPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mAnimColorNormalAlpha:I

    iput v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mAnimColorPressedAlpha:I

    iput v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mCurrentColorAlpha:I

    iput-object p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->setDrawableColor(I)V

    iput p3, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mRadius:F

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mFillPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->initPressAnimation$lambda-0(Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final animateNormal(Landroid/view/View;F)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    sget-object v1, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    const-wide/16 v4, 0x163

    move-object v2, p1

    move v3, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->generateResumeAnimation(Landroid/view/View;FJLcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;)Landroid/view/animation/ScaleAnimation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_15
    return-void
.end method

.method private final animatePress(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    sget-object v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    const v1, 0x3f666666  # 0.9f

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->generatePressAnimation$OplusLauncher_OPPOPallExportAallRelease(Landroid/view/View;FLcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;)Landroid/view/animation/ScaleAnimation;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler$animatePress$1;

    invoke-direct {v0, p2}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler$animatePress$1;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private final cancelAnimation(Landroid/animation/ValueAnimator;Z)V
    .registers 5

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez p2, :cond_1e

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float p2, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr v0, v1

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    iput-boolean p2, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez p2, :cond_26

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_26
    return-void
.end method

.method private final initPressAnimation()V
    .registers 5

    sget-object v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    const-wide/16 v1, 0xc8

    const v3, 0x3f666666  # 0.9f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->generatePressAnimationRecord(JF)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_10

    goto :goto_18

    :cond_10
    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_18
    return-void
.end method

.method private static final initPressAnimation$lambda-0(Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mPressAnimationValue:F

    iget-boolean v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mIsNeedToDelayCancelScaleAnim:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3ecccccd  # 0.4f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mIsNeedToDelayCancelScaleAnim:Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mPressAnimationValue:F

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->animateNormal(Landroid/view/View;F)V

    :cond_3b
    return-void
.end method


# virtual methods
.method public alphaColor(FZ)V
    .registers 5

    if-eqz p2, :cond_10

    iget p2, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mAnimColorNormalAlpha:I

    int-to-float v0, p2

    iget v1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mAnimColorPressedAlpha:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    invoke-static {p2}, Li1/j;->o(F)I

    move-result p1

    goto :goto_1d

    :cond_10
    iget p2, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mAnimColorPressedAlpha:I

    int-to-float v0, p2

    iget v1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mAnimColorNormalAlpha:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    invoke-static {p2}, Li1/j;->o(F)I

    move-result p1

    :goto_1d
    iput p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mCurrentColorAlpha:I

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final drawCircleColor(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mCurrentColorAlpha:I

    iget v2, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mDrawableColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mDrawableColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mDrawableColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mTempBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawPressedColor(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mCurrentColorAlpha:I

    iget v2, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mDrawableColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mDrawableColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mDrawableColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mTempBgRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mRadius:F

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getMRadius()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mRadius:F

    return p0
.end method

.method public final getMTempBgRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mTempBgRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public onLayout(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mTempBgRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mRadius:F

    const/high16 v0, -0x40800000  # -1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    if-eqz v1, :cond_28

    div-int/lit8 p2, p2, 0x2

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a5b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iput p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mRadius:F

    :cond_28
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_c
    const/4 v0, 0x1

    if-nez p1, :cond_10

    goto :goto_26

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_26

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mPressAnimation:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->cancelAnimation(Landroid/animation/ValueAnimator;Z)V

    invoke-direct {p0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->initPressAnimation()V

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mPressAnimation:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->animatePress(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    goto :goto_4b

    :cond_26
    :goto_26
    const/4 v1, 0x0

    if-nez p1, :cond_2a

    goto :goto_31

    :cond_2a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_31

    goto :goto_3d

    :cond_31
    :goto_31
    const/4 v2, 0x3

    if-nez p1, :cond_35

    goto :goto_3c

    :cond_35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_3c

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v0, v1

    :goto_3d
    if-eqz v0, :cond_4b

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mPressAnimation:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->cancelAnimation(Landroid/animation/ValueAnimator;Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mPressAnimationValue:F

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->animateNormal(Landroid/view/View;F)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final setDrawableColor(I)V
    .registers 4

    iput p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mDrawableColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mAnimColorNormalAlpha:I

    mul-int/lit8 v0, p1, 0x2

    const/16 v1, 0xff

    if-le v0, v1, :cond_f

    move v0, v1

    :cond_f
    iput v0, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mAnimColorPressedAlpha:I

    iput p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mCurrentColorAlpha:I

    return-void
.end method

.method public final setMRadius(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->mRadius:F

    return-void
.end method
