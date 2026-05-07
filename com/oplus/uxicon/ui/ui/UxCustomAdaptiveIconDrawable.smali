.class public Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source ""


# static fields
.field private static final DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field private static final EXTRA_INSET_PERCENTAGE:F = 0.25f


# instance fields
.field private mBackgroundPositionBounds:Landroid/graphics/Rect;

.field private mBackgroundSizeBounds:Landroid/graphics/Rect;

.field private mBounds:Landroid/graphics/Rect;

.field private mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

.field private mCustomMatrix:Landroid/graphics/Matrix;

.field private mForegroundPositionBounds:Landroid/graphics/Rect;

.field private mForegroundSizeBounds:Landroid/graphics/Rect;

.field private mOplusCanvas:Landroid/graphics/Canvas;

.field private mOplusLayersBitmap:Landroid/graphics/Bitmap;

.field private mOplusMask:Landroid/graphics/Path;

.field private mOplusMaskScaleOnly:Landroid/graphics/Path;

.field private mOplusPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mSize:I

.field private mSizeBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mCustomMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mSizeBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mBackgroundSizeBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mBackgroundPositionBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mForegroundSizeBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mForegroundPositionBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mScale:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mSize:I

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getCustomMask()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getCustomMask()Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusMask:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusMask:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusMaskScaleOnly:Landroid/graphics/Path;

    :cond_27
    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)I
    .registers 8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getCustomIconSize()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getCustomIconSize()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getCustomIconSize()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getScalePercent()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mBackgroundPositionBounds:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    invoke-virtual {v3, v2, v2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mBackgroundSizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getScalePercent()F

    move-result v3

    mul-float/2addr v3, v0

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getForegroundScalePercent()F

    move-result v0

    mul-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v1, v3

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mForegroundSizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v3, v5, v5, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mForegroundPositionBounds:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getIsPlatformDrawable()Z

    move-result p1

    if-nez p1, :cond_9f

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getIsAdaptiveIconDrawable()Z

    move-result p1

    if-eqz p1, :cond_9f

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mBackgroundSizeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->updateThirdPartAdaptiveIconDrawableBound(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mForegroundSizeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->updateThirdPartAdaptiveIconDrawableBound(Landroid/graphics/Rect;)V

    :cond_9f
    return v2
.end method

.method private updateDrawableBounds()V
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mBackgroundSizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mForegroundSizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_16
    return-void
.end method

.method private updateMaskBounds(Landroid/graphics/Rect;I)V
    .registers 7

    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mCustomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mCustomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getScalePercent()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x43160000  # 150.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getScalePercent()F

    move-result v3

    mul-float/2addr v3, p1

    mul-float/2addr v3, v0

    div-float/2addr v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusMask:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mCustomMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusMaskScaleOnly:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-void
.end method

.method private updateParams(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusLayersBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusLayersBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_2a

    :cond_1a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusLayersBitmap:Landroid/graphics/Bitmap;

    :cond_2a
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private updateThirdPartAdaptiveIconDrawableBound(Landroid/graphics/Rect;)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3faaaaab

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v2, v3

    sub-int v3, p0, v1

    sub-int v4, v0, v2

    add-int/2addr p0, v1

    add-int/2addr v0, v2

    invoke-virtual {p1, v3, v4, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getCustomMask()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusLayersBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getScalePercent()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getScalePercent()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3a
    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v2}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getForegroundScalePercent()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v3}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getForegroundScalePercent()F

    move-result v3

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v4}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getDefaultIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v5}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getDefaultIconSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_71
    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusMaskScaleOnly:Landroid/graphics/Path;

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusMaskScaleOnly:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_a0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a7

    :cond_a4
    invoke-super {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_a7
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 1

    invoke-super {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    return-object p0
.end method

.method public getIconMask()Landroid/graphics/Path;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mOplusMask:Landroid/graphics/Path;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getDefaultIconSize()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getDefaultIconSize()I

    move-result p0

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getCustomMask()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_23

    :try_start_8
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mSizeBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->updateBounds(Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->updateDrawableBounds()V

    invoke-direct {p0, p1, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->updateMaskBounds(Landroid/graphics/Rect;I)V

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->updateParams(Landroid/graphics/Rect;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_23

    return-void

    :catch_23
    :cond_23
    invoke-super {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDrawableBoundsChange(Landroid/graphics/Rect;)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mConfig:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getCustomMask()Landroid/graphics/Path;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->updateBounds(Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->updateDrawableBounds()V

    invoke-direct {p0, p1, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->updateMaskBounds(Landroid/graphics/Rect;I)V

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->updateParams(Landroid/graphics/Rect;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_19

    const/4 p0, 0x1

    return p0

    :catch_19
    return v1
.end method

.method public setScale(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconDrawable;->mSize:I

    return-void
.end method
