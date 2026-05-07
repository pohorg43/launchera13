.class public Lcom/android/launcher3/icons/span/TextCrossFadeSpan;
.super Landroid/text/style/ReplacementSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/span/TextCrossFadeSpan$IAnimationListener;,
        Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:J = 0x190L

.field private static final FADE_IN_START_DELAY:J = 0x64L

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field private static final MIN_TEXT_CONTENT_WIDTH:I = 0x1

.field private static final PATH_INTERPOLATOR_PARAM_0:F = 0.0f

.field private static final PATH_INTERPOLATOR_PARAM_0_33:F = 0.33f

.field private static final PATH_INTERPOLATOR_PARAM_0_67:F = 0.67f

.field private static final PATH_INTERPOLATOR_PARAM_1:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "TextCrossFadeSpan"


# instance fields
.field private final mAnimationListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/icons/span/TextCrossFadeSpan$IAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurText:Ljava/lang/CharSequence;

.field private mCurTextAlpha:I

.field private mCurTextLayout:Landroid/text/Layout;

.field private final mCurTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

.field private final mFadeAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mForceUpdateSpanSize:Z

.field private final mIsBubbleTextView:Z

.field private final mIsOplusBubbleTextView:Z

.field private mOplusMeasuredTextViewWidth:I

.field private mPreText:Ljava/lang/CharSequence;

.field private mPreTextAlpha:I

.field private mPreTextLayout:Landroid/text/Layout;

.field private final mPreTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

.field private mSpanAvailableWidth:I

.field private mTextChanged:Z

.field private final mTextViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 11

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;-><init>(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    new-instance v0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;-><init>(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mAnimationListenerList:Ljava/util/List;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextAlpha:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextAlpha:I

    iput-boolean v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextChanged:Z

    iput-boolean v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mForceUpdateSpanSize:Z

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    iput-boolean v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mIsBubbleTextView:Z

    instance-of p1, p1, Lcom/android/launcher3/OplusBubbleTextView;

    iput-boolean p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mIsOplusBubbleTextView:Z

    const/4 p1, 0x2

    new-array v1, p1, [I

    fill-array-data v1, :array_a2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3  # 0.33f

    const/4 v6, 0x0

    const v7, 0x3f2b851f  # 0.67f

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/launcher3/icons/span/a;

    invoke-direct {v4, p0, v0}, Lcom/android/launcher3/icons/span/a;-><init>(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;I)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$1;-><init>(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v4, p1, [I

    fill-array-data v4, :array_aa

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher3/icons/span/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/icons/span/a;-><init>(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;I)V

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$2;-><init>(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p0, p1, [Landroid/animation/Animator;

    aput-object v1, p0, v0

    aput-object v4, p0, v3

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_a2
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_aa
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mAnimationListenerList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextAlpha:I

    return p1
.end method

.method public static synthetic access$302(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextAlpha:I

    return p1
.end method

.method public static synthetic access$500(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;Landroid/widget/TextView;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->getTextViewContentWidth(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private calculateCanvasOffset(Landroid/text/Layout;)Landroid/graphics/PointF;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mIsOplusBubbleTextView:Z

    if-eqz p0, :cond_2f

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-lez p0, :cond_2f

    move-object p1, v0

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextView;->isLayoutHorizontal()Z

    move-result p1

    if-eqz p1, :cond_2f

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p1, v0

    mul-float/2addr p1, p0

    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method private drawTextLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;Ljava/lang/CharSequence;IFI)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mIsBubbleTextView:Z

    const/high16 v1, 0x437f0000  # 255.0f

    if-eqz v0, :cond_8

    int-to-float p7, p5

    goto :goto_b

    :cond_8
    int-to-float p6, p5

    int-to-float p7, p7

    div-float/2addr p7, v1

    :goto_b
    mul-float/2addr p7, p6

    if-eqz p4, :cond_13

    if-nez p2, :cond_13

    invoke-direct {p0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->updateTextLayouts()V

    :cond_13
    if-eqz p2, :cond_7d

    const/4 p0, 0x0

    cmpl-float p0, p7, p0

    if-lez p0, :cond_7d

    invoke-static {p3}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->access$400(Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;)Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p0, :cond_27

    iget p3, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, p0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_27
    invoke-virtual {p2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 p3, 0x0

    invoke-virtual {p0}, Landroid/text/TextPaint;->hasShadowLayer()Z

    move-result p4

    if-eqz p4, :cond_65

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result p3

    int-to-float p4, p5

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, v1

    mul-float/2addr p5, p4

    float-to-int p4, p5

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result p5

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result p6

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p7

    invoke-static {p4, p5, p6, p7}, Landroid/graphics/Color;->argb(IIII)I

    move-result p4

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result p5

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result p6

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result p7

    invoke-virtual {p0, p5, p6, p7, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_65
    invoke-virtual {p2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/text/TextPaint;->hasShadowLayer()Z

    move-result p1

    if-eqz p1, :cond_7d

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result p1

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result p2

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result p4

    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_7d
    return-void
.end method

.method private getBubbleTextAlphaFactor()F
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mIsBubbleTextView:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_22

    :cond_d
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_22
    :goto_22
    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method private getTextViewContentWidth(Landroid/widget/TextView;)I
    .registers 6

    const/4 v0, 0x1

    const-string v1, "TextCrossFadeSpan"

    if-nez p1, :cond_b

    const-string p0, "[getTextViewContentWidth] TextView is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_40

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "[getTextViewContentWidth]tvW="

    invoke-static {v3, v2, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1d
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v3

    sub-int v3, v2, v3

    instance-of v2, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v2, :cond_45

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusBubbleTextView;->isLayoutHorizontal()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result p1

    add-int/2addr p1, v2

    sub-int/2addr v3, p1

    goto :goto_45

    :cond_40
    const-string p1, "[getTextViewContentWidth] width is 0"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    :goto_45
    if-gtz v3, :cond_72

    iget p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mOplusMeasuredTextViewWidth:I

    if-lez p1, :cond_66

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_63

    const-string p1, "[getTextViewContentWidth]View not attached,use oMeasuredWidth="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mOplusMeasuredTextViewWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    iget v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mOplusMeasuredTextViewWidth:I

    goto :goto_73

    :cond_66
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_73

    const-string p0, "[getTextViewContentWidth]use minimum width."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    :cond_72
    move v0, v3

    :cond_73
    :goto_73
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextAlpha:I

    if-ne p1, v0, :cond_f

    return-void

    :cond_f
    iput p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextAlpha:I

    iget-object p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_24
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextAlpha:I

    if-ne p1, v0, :cond_f

    return-void

    :cond_f
    iput p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextAlpha:I

    iget-object p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_24
    return-void
.end method

.method private shouldUpdateTextLayout()Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "TextCrossFadeSpan"

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p0, "[shouldUpdateTextLayout]textview is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_13
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_1f

    const-string p0, "[shouldUpdateTextLayout]text layout is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1f
    iget-object v4, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    const/4 v5, 0x1

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayout:Landroid/text/Layout;

    if-eqz v4, :cond_30

    :cond_28
    iget-object v4, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayout:Landroid/text/Layout;

    if-nez v4, :cond_32

    :cond_30
    move v4, v5

    goto :goto_33

    :cond_32
    move v4, v2

    :goto_33
    const/4 v6, 0x2

    if-eqz v4, :cond_5a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayout:Landroid/text/Layout;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayout:Landroid/text/Layout;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    aput-object v2, v0, v6

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreText:Ljava/lang/CharSequence;

    aput-object p0, v0, v2

    const-string p0, "[shouldUpdateTextLayout]layout empty.LayoutCur=%s,LayoutPre=%s,CurText=%s,PreText=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    return v5

    :cond_5a
    iget-object v4, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->isDifferent(Landroid/widget/TextView;Landroid/text/Layout;)Z

    move-result v4

    xor-int/2addr v4, v5

    iget-object v7, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayout:Landroid/text/Layout;

    if-eqz v7, :cond_73

    iget-object v8, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_73

    move v7, v5

    goto :goto_74

    :cond_73
    move v7, v2

    :goto_74
    and-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    invoke-virtual {v7, v0, v3}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->isDifferent(Landroid/widget/TextView;Landroid/text/Layout;)Z

    move-result v0

    xor-int/2addr v0, v5

    iget-object v3, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayout:Landroid/text/Layout;

    if-eqz v3, :cond_8e

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8e

    move p0, v5

    goto :goto_8f

    :cond_8e
    move p0, v2

    :goto_8f
    and-int/2addr p0, v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_b1

    new-array v0, v6, [Ljava/lang/Object;

    xor-int/lit8 v3, v4, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    xor-int/lit8 v3, p0, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v5

    const-string v3, "[shouldUpdateTextLayout]curChange=%s,preChange=%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    if-nez v4, :cond_b6

    if-nez p0, :cond_b6

    move v2, v5

    :cond_b6
    return v2
.end method

.method private updateTextLayouts()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "TextCrossFadeSpan"

    if-nez v0, :cond_12

    const-string p0, "[updateTextLayouts]textview is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_1e

    const-string p0, "[updateTextLayouts]text layout is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreText:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const-string v3, "[updateTextLayouts]CurText=%s,PreText=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    iget-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->from(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->apply(Landroid/text/TextPaint;Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayout:Landroid/text/Layout;

    iget-object v2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    invoke-direct {p0, v1}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->calculateCanvasOffset(Landroid/text/Layout;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->access$402(Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    :cond_5e
    iget-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->from(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->apply(Landroid/text/TextPaint;Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayout:Landroid/text/Layout;

    iget-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->calculateCanvasOffset(Landroid/text/Layout;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->access$402(Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    :cond_82
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lcom/android/launcher3/icons/span/TextCrossFadeSpan$IAnimationListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mAnimationListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 21

    move-object v8, p0

    iget-boolean v0, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mForceUpdateSpanSize:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-boolean v0, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextChanged:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->shouldUpdateTextLayout()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_10
    iput-boolean v1, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mForceUpdateSpanSize:Z

    invoke-direct {p0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->updateTextLayouts()V

    :cond_15
    iget-boolean v0, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextChanged:Z

    if-eqz v0, :cond_3a

    iput-boolean v1, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextChanged:Z

    iget-object v0, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_28
    iget-object v0, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_3a
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    invoke-direct {p0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->getBubbleTextAlphaFactor()F

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayout:Landroid/text/Layout;

    iget-object v3, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    iget-object v4, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreText:Ljava/lang/CharSequence;

    iget v5, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreTextAlpha:I

    move-object v0, p0

    move-object v1, p1

    move v6, v10

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->drawTextLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;Ljava/lang/CharSequence;IFI)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayout:Landroid/text/Layout;

    iget-object v3, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextLayoutParams:Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;

    iget-object v4, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    iget v5, v8, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurTextAlpha:I

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->drawTextLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;Ljava/lang/CharSequence;IFI)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TextCrossFadeSpan"

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "[getSize] text is empty!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return v2

    :cond_15
    if-nez p1, :cond_23

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "[getSize] paint is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return v2

    :cond_23
    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    iput-boolean v4, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextChanged:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_4e

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mCurText:Ljava/lang/CharSequence;

    aput-object v5, v0, v2

    iget-object v5, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mPreText:Ljava/lang/CharSequence;

    aput-object v5, v0, v4

    const-string v5, "[getSize]text changed,CurText=%s,PreText=%s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    iget-boolean v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextChanged:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mForceUpdateSpanSize:Z

    if-eqz v0, :cond_b6

    :cond_56
    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->getTextViewContentWidth(Landroid/widget/TextView;)I

    move-result v0

    if-le v0, v4, :cond_96

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    float-to-int p2, p2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_8f

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    iget p4, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mSpanAvailableWidth:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v3

    const-string p4, "[getSize]SpanAvailableWidth=%d,TextContentWidth=%d,textMeasuredWidth=%d"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mSpanAvailableWidth:I

    goto :goto_b6

    :cond_96
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mSpanAvailableWidth:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_b6

    new-array p2, v4, [Ljava/lang/Object;

    iget p3, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mSpanAvailableWidth:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "[getSize]measure text only,SpanAvailableWidth=%d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    :goto_b6
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    if-eqz p5, :cond_d0

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    :cond_d0
    iget p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mSpanAvailableWidth:I

    return p0
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mTextChanged:Z

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public removeAnimationListener(Lcom/android/launcher3/icons/span/TextCrossFadeSpan$IAnimationListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mAnimationListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMeasuredTextViewWidth(Lcom/android/launcher3/BubbleTextView;I)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lcom/android/launcher/IHorizontalIcon;

    invoke-interface {v0}, Lcom/android/launcher/IHorizontalIcon;->isLayoutHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result p1

    goto :goto_28

    :cond_1e
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p1

    :goto_28
    sub-int/2addr v0, p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_36

    const-string p1, "[setMeasuredTextViewWidth]width="

    const-string v1, "TextCrossFadeSpan"

    invoke-static {p1, v0, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_36
    iget p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mOplusMeasuredTextViewWidth:I

    if-eq p1, p2, :cond_3d

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mForceUpdateSpanSize:Z

    :cond_3d
    iput p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->mOplusMeasuredTextViewWidth:I

    return-void
.end method
