.class public Lcom/android/launcher/shimmer/ShimmerDrawable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher/shimmer/IShimmerView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final SHIMMER_DURATION:I = 0x3e8

.field private static final SHIMMER_EDGE_COLOR:I = 0xffffff

.field private static final SHIMMER_MIDDLE_COLOR:I = -0x4c000001

.field private static final SHIMMER_POSITION_1:F = 0.0f

.field private static final SHIMMER_POSITION_2:F = 0.4f

.field private static final SHIMMER_POSITION_3:F = 0.6f

.field private static final SHIMMER_POSITION_4:F = 1.0f

.field private static final SHIMMER_WIDTH:I = 0x8c


# instance fields
.field private mOnShimmerFinishListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private mShimmerGradient:Landroid/graphics/LinearGradient;

.field private mShimmerPaint:Landroid/graphics/Paint;

.field private final mShimmerRect:Landroid/graphics/Rect;

.field private mShimmerView:Lcom/android/launcher/shimmer/IShimmerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mTotalTranslateX:I

.field private mTotalTranslateY:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method private constructor <init>(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/shimmer/ShimmerDrawable$Builder<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-static {p1}, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->access$000(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)Lcom/android/launcher/shimmer/IShimmerView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerView:Lcom/android/launcher/shimmer/IShimmerView;

    invoke-static {p1}, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->access$000(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)Lcom/android/launcher/shimmer/IShimmerView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher/shimmer/IShimmerView;->getShimmerRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->access$100(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mOnShimmerFinishListener:Ljava/util/function/Consumer;

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/ShimmerDrawable;->initial(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;Lcom/android/launcher/shimmer/ShimmerDrawable$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/ShimmerDrawable;-><init>(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/shimmer/ShimmerDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/ShimmerDrawable;->lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher/shimmer/ShimmerDrawable;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/shimmer/ShimmerDrawable;->onShimmerFinished()V

    return-void
.end method

.method private initAnimator()V
    .registers 6

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd  # 0.2f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_44

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher/shimmer/ShimmerDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/shimmer/ShimmerDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/shimmer/ShimmerDrawable$1;-><init>(Lcom/android/launcher/shimmer/ShimmerDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_44
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private initPaint()V
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private initShimmerGradient(II)V
    .registers 12

    new-instance v8, Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int p1, v1, p1

    int-to-float p1, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int p2, v0, p2

    int-to-float v2, p2

    int-to-float v3, v1

    int-to-float v4, v0

    const/4 p2, 0x4

    new-array v5, p2, [I

    fill-array-data v5, :array_4e

    new-array v6, p2, [F

    fill-array-data v6, :array_5a

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    move v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerGradient:Landroid/graphics/LinearGradient;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object p2, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p2, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {p2, p1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_4e
    .array-data 4
        0xffffff
        -0x4c000001
        -0x4c000001
        0xffffff
    .end array-data

    :array_5a
    .array-data 4
        0x0
        0x3ecccccd  # 0.4f
        0x3f19999a  # 0.6f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private initial(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/shimmer/ShimmerDrawable$Builder<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->access$200(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x4061800000000000L  # 140.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {p1}, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->access$200(Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;)I

    move-result p1

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int p1, v4

    iget-object v1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mTotalTranslateX:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mTotalTranslateY:I

    invoke-direct {p0}, Lcom/android/launcher/shimmer/ShimmerDrawable;->initPaint()V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/shimmer/ShimmerDrawable;->initShimmerGradient(II)V

    invoke-direct {p0}, Lcom/android/launcher/shimmer/ShimmerDrawable;->initAnimator()V

    return-void
.end method

.method private synthetic lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerView:Lcom/android/launcher/shimmer/IShimmerView;

    invoke-interface {p0}, Lcom/android/launcher/shimmer/IShimmerView;->postInvalidate()V

    return-void
.end method

.method private onShimmerFinished()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mOnShimmerFinishListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerView:Lcom/android/launcher/shimmer/IShimmerView;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_a
    iput-object v1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerView:Lcom/android/launcher/shimmer/IShimmerView;

    iput-object v1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mOnShimmerFinishListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public drawShimmer(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget v1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mTotalTranslateX:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mTotalTranslateY:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public startShimmer()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    return-void
.end method
