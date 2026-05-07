.class public Lcom/android/launcher3/card/DefaultCardView;
.super Landroid/view/View;
.source ""


# static fields
.field private static final DARK_BACKGROUND_COLOR:I = -0xc7c7c8

.field private static final DARK_SHIMMER_EDGE_COLOR:I = 0x5b5b5b

.field private static final DARK_SHIMMER_MIDDLE_COLOR:I = 0x595b5b5b

.field private static final LIGHT_BACKGROUND_COLOR:I = -0x111112

.field private static final LIGHT_OFFSET:F = 0.167f

.field private static final LIGHT_SHIMMER_EDGE_COLOR:I = 0xffffff

.field private static final LIGHT_SHIMMER_MIDDLE_COLOR:I = -0x1

.field private static final SHIMMER_DURATION:I = 0x44c

.field private static final SHIMMER_PATH:Landroid/view/animation/PathInterpolator;

.field private static final SHIMMER_POSITION_1:F = 0.0f

.field private static final SHIMMER_POSITION_2:F = 0.5f

.field private static final SHIMMER_POSITION_3:F = 1.0f

.field private static final SHIMMER_REPEAT_CONT:I = 0xa


# instance fields
.field private mClipRect:Landroid/graphics/RectF;

.field private mIsDarkMode:Ljava/lang/Boolean;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:I

.field private mRemoveOnGlobalLayoutListenerTask:Ljava/lang/Runnable;

.field private mShaderMatrix:Landroid/graphics/Matrix;

.field private mShimmerGradient:Landroid/graphics/LinearGradient;

.field private mShimmerPaint:Landroid/graphics/Paint;

.field private mShimmerRect:Landroid/graphics/Rect;

.field private mShimmerWidth:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/card/DefaultCardView;->SHIMMER_PATH:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/card/DefaultCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/card/DefaultCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/DefaultCardView;->mShaderMatrix:Landroid/graphics/Matrix;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/launcher3/card/DefaultCardView;->mIsDarkMode:Ljava/lang/Boolean;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/DefaultCardView;->mPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/card/DefaultCardView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07021f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/card/DefaultCardView;->mRadius:I

    invoke-static {p1}, Lcom/android/common/util/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/DefaultCardView;->mIsDarkMode:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3d

    const p1, -0xc7c7c8

    goto :goto_40

    :cond_3d
    const p1, -0x111112

    :goto_40
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/DefaultCardView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/DefaultCardView;->lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/card/DefaultCardView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/card/DefaultCardView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/android/launcher3/card/DefaultCardView;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerWidth:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher3/card/DefaultCardView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/DefaultCardView;->initPaint()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher3/card/DefaultCardView;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/DefaultCardView;->initShimmerGradient(F)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher3/card/DefaultCardView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/DefaultCardView;->initAnimator(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher3/card/DefaultCardView;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/DefaultCardView;->mRemoveOnGlobalLayoutListenerTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/launcher3/card/DefaultCardView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/DefaultCardView;->mRemoveOnGlobalLayoutListenerTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method private initAnimator(Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_40

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/launcher3/card/DefaultCardView;->SHIMMER_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/card/DefaultCardView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/card/DefaultCardView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/card/DefaultCardView$3;-><init>(Lcom/android/launcher3/card/DefaultCardView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/card/DefaultCardView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_40
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private initPaint()V
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private initShimmerGradient(F)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mIsDarkMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_f

    new-array v0, v1, [I

    fill-array-data v0, :array_60

    goto :goto_14

    :cond_f
    new-array v0, v1, [I

    fill-array-data v0, :array_6a

    :goto_14
    move-object v7, v0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerWidth:I

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v6, p1, v2

    new-array v8, v1, [F

    fill-array-data v8, :array_74

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerGradient:Landroid/graphics/LinearGradient;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, p1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_60
    .array-data 4
        0x5b5b5b
        0x595b5b5b
        0x5b5b5b
    .end array-data

    :array_6a
    .array-data 4
        0xffffff
        -0x1
        0xffffff
    .end array-data

    :array_74
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private synthetic lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/card/DefaultCardView;->mClipRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/card/DefaultCardView;->mRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawShimmer(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerGradient:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    neg-int v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    const v1, 0x3e2b020c  # 0.167f

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/card/DefaultCardView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/android/launcher3/card/DefaultCardView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/launcher3/card/DefaultCardView;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_32
    return-void
.end method

.method public getClipRoundRect(Landroid/graphics/Rect;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public initial(Ljava/lang/Runnable;)V
    .registers 3

    new-instance v0, Lcom/android/launcher3/card/DefaultCardView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/card/DefaultCardView$1;-><init>(Lcom/android/launcher3/card/DefaultCardView;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_e
    new-instance p1, Lcom/android/launcher3/card/DefaultCardView$2;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/card/DefaultCardView$2;-><init>(Lcom/android/launcher3/card/DefaultCardView;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object p1, p0, Lcom/android/launcher3/card/DefaultCardView;->mRemoveOnGlobalLayoutListenerTask:Ljava/lang/Runnable;

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/card/DefaultCardView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    iget-object p0, p0, Lcom/android/launcher3/card/DefaultCardView;->mRemoveOnGlobalLayoutListenerTask:Ljava/lang/Runnable;

    if-eqz p0, :cond_17

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/DefaultCardView;->drawShimmer(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRadius(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/DefaultCardView;->mRadius:I

    return-void
.end method
