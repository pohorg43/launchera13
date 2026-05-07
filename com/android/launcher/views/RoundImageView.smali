.class public Lcom/android/launcher/views/RoundImageView;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field private static final BORDER_CIRCLE_WIDTH:I = 0x5

.field private static final BORDER_WIDTH:I = 0x2

.field public static final CIRCLE:I = 0x0

.field private static final DEFAULT_BORDER_RADIUS:I = 0x1

.field private static final FLOAT_COMPARE_THRESHOLD:F = 1.0E-5f

.field private static final NUM_ADDEND_0_5:F = 0.5f

.field private static final NUM_DIVISOR_2:F = 2.0f

.field public static final ROUND:I = 0x1

.field private static final SCALE_DEFAULT:F = 1.0f

.field public static final SHADOW:I = 0x2


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderRadius:I

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasBorder:Z

.field private mHasDefaultPic:Z

.field private mIsNeedRecycleBitmap:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOutCircle:Landroid/graphics/Paint;

.field private mOuterRect:Landroid/graphics/RectF;

.field private mRadius:F

.field private mRoundRect:Landroid/graphics/RectF;

.field private mScale:F

.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field private mShadowBitmapShader:Landroid/graphics/BitmapShader;

.field private mShadowBorderWidth:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableHeight:I

.field private mShadowDrawableWidth:I

.field private final mShadowInsideRect:Landroid/graphics/RectF;

.field private mSourceDrawableHeight:I

.field private mSourceDrawableWidth:I

.field private mSourceRect:Landroid/graphics/RectF;

.field private mType:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRect:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/android/launcher/views/RoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/launcher/views/RoundImageView;->mType:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mOutCircle:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mOutCircle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x7f0804e5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableWidth:I

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070449

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher/views/RoundImageView;->mSourceDrawableWidth:I

    iput v0, p0, Lcom/android/launcher/views/RoundImageView;->mSourceDrawableHeight:I

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/launcher3/R$styleable;->COUIRoundImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRadius:I

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/views/RoundImageView;->mType:I

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher/views/RoundImageView;->mHasBorder:Z

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher/views/RoundImageView;->mHasDefaultPic:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/launcher/views/RoundImageView;->initShadow()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/views/RoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private setupShader(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    if-nez p1, :cond_b

    goto :goto_10

    :cond_b
    if-eq v0, p1, :cond_44

    iput-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_44

    :cond_10
    :goto_10
    iget-boolean p1, p0, Lcom/android/launcher/views/RoundImageView;->mIsNeedRecycleBitmap:Z

    if-eqz p1, :cond_2d

    sget-object p1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_2d
    iget-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_81

    iget-boolean p1, p0, Lcom/android/launcher/views/RoundImageView;->mHasDefaultPic:Z

    if-eqz p1, :cond_81

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080635

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapWidth:I

    iget-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapHeight:I

    iget-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/android/launcher/views/RoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/android/launcher/views/RoundImageView;->mType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_72

    invoke-virtual {p0}, Lcom/android/launcher/views/RoundImageView;->creatBitmapWithShadow()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    :cond_72
    iget-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_81

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    :cond_81
    return-void
.end method

.method private updateShaderMatrix()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/android/launcher/views/RoundImageView;->mSourceDrawableWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v0, v2

    iget v4, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapWidth:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    iget v1, p0, Lcom/android/launcher/views/RoundImageView;->mSourceDrawableHeight:I

    int-to-double v4, v1

    mul-double/2addr v4, v2

    iget v1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapHeight:I

    int-to-double v1, v1

    div-double/2addr v4, v1

    double-to-float v1, v4

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_20

    move v0, v2

    :cond_20
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_25

    move v1, v2

    :cond_25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher/views/RoundImageView;->mSourceDrawableWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/android/launcher/views/RoundImageView;->mSourceDrawableHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget p0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBorderWidth:I

    int-to-float v4, p0

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    add-float/2addr v3, v2

    float-to-int v1, v3

    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr p0, v5

    add-float/2addr p0, v1

    invoke-virtual {v0, v4, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public creatBitmapWithShadow()Landroid/graphics/Bitmap;
    .registers 7

    invoke-direct {p0}, Lcom/android/launcher/views/RoundImageView;->updateShaderMatrix()V

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableWidth:I

    iget v1, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/android/launcher/views/RoundImageView;->mSourceDrawableWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRadius:I

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/views/RoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRadius:I

    int-to-float v4, v4

    iget-object v2, v2, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v2, v3, v4}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableWidth:I

    iget v4, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public initShadow()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableWidth:I

    iget v1, p0, Lcom/android/launcher/views/RoundImageView;->mSourceDrawableWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBorderWidth:I

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget p0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBorderWidth:I

    int-to-float v1, p0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/views/RoundImageView;->mScale:F

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_ed

    iget v4, p0, Lcom/android/launcher/views/RoundImageView;->mType:I

    if-eqz v4, :cond_c3

    if-eq v4, v2, :cond_54

    const/4 v1, 0x2

    if-eq v4, v1, :cond_1a

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_dd

    :cond_1a
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher/views/RoundImageView;->mShadowDrawableHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/RoundImageView;->mScale:F

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/launcher/views/RoundImageView;->mScale:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_54
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/RoundImageView;->mScale:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3727c5ac  # 1.0E-5f

    cmpg-float v5, v5, v6

    const/high16 v7, 0x40000000  # 2.0f

    if-gez v5, :cond_93

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    move v1, v3

    goto :goto_b1

    :cond_93
    iget v1, p0, Lcom/android/launcher/views/RoundImageView;->mScale:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_af

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v1, v5

    div-float/2addr v1, v7

    move v4, v3

    goto :goto_b1

    :cond_af
    move v1, v3

    move v4, v1

    :goto_b1
    iget-object v5, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget-object v5, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/launcher/views/RoundImageView;->mScale:F

    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v5, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_dd

    :cond_c3
    iget v4, p0, Lcom/android/launcher/views/RoundImageView;->mWidth:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher/views/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    iput v4, p0, Lcom/android/launcher/views/RoundImageView;->mScale:F

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_dd
    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_ed

    iget-object v4, p0, Lcom/android/launcher/views/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_ed
    iget v1, p0, Lcom/android/launcher/views/RoundImageView;->mType:I

    if-nez v1, :cond_110

    iget-boolean v0, p0, Lcom/android/launcher/views/RoundImageView;->mHasBorder:Z

    if-eqz v0, :cond_108

    iget v0, p0, Lcom/android/launcher/views/RoundImageView;->mRadius:F

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/launcher/views/RoundImageView;->mRadius:F

    const/high16 v1, 0x3f000000  # 0.5f

    sub-float v1, v0, v1

    iget-object p0, p0, Lcom/android/launcher/views/RoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_179

    :cond_108
    iget v0, p0, Lcom/android/launcher/views/RoundImageView;->mRadius:F

    iget-object p0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_179

    :cond_110
    if-ne v1, v2, :cond_179

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    if-nez v1, :cond_127

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    :cond_127
    iget-boolean v1, p0, Lcom/android/launcher/views/RoundImageView;->mHasBorder:Z

    if-eqz v1, :cond_166

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/views/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRadius:I

    int-to-float v3, v3

    iget-object v1, v1, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v1, v2, v3}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/views/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRadius:I

    int-to-float v3, v3

    iget-object v1, v1, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v1, v2, v3}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/views/RoundImageView;->mOuterRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRadius:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget-object v0, v1, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v0, v2, v3}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/launcher/views/RoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_179

    :cond_166
    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/views/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRadius:I

    int-to-float v2, v2

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/launcher/views/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_179
    :goto_179
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget p1, p0, Lcom/android/launcher/views/RoundImageView;->mType:I

    if-nez p1, :cond_22

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_17

    iget p1, p0, Lcom/android/launcher/views/RoundImageView;->mWidth:I

    :cond_17
    iput p1, p0, Lcom/android/launcher/views/RoundImageView;->mWidth:I

    int-to-float p2, p1

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/android/launcher/views/RoundImageView;->mRadius:F

    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :cond_22
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/android/launcher/views/RoundImageView;->mType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_b

    const/4 p2, 0x2

    if-ne p1, p2, :cond_32

    :cond_b
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000  # 1.0f

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p3

    invoke-direct {p1, p3, p3, p2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/launcher/views/RoundImageView;->mOuterRect:Landroid/graphics/RectF;

    :cond_32
    return-void
.end method

.method public setHasBorder(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/views/RoundImageView;->mHasBorder:Z

    return-void
.end method

.method public setHasDefaultPic(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/views/RoundImageView;->mHasDefaultPic:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/views/RoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher/views/RoundImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/views/RoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNeedRecycleBitmap(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/views/RoundImageView;->mIsNeedRecycleBitmap:Z

    return-void
.end method

.method public setRoundRadius(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/RoundImageView;->mBorderRadius:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/views/RoundImageView;->mType:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/android/launcher/views/RoundImageView;->mType:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_9
    return-void
.end method
