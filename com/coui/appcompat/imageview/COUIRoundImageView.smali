.class public Lcom/coui/appcompat/imageview/COUIRoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# instance fields
.field public E:F

.field public F:Landroid/graphics/Paint;

.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/RectF;

.field public c:I

.field public d:Landroid/content/Context;

.field public e:Z

.field public f:I

.field public g:Landroid/graphics/RectF;

.field public h:Landroid/graphics/RectF;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/graphics/Bitmap;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Landroid/graphics/BitmapShader;

.field public p:I

.field public q:I

.field public r:I

.field public s:Landroid/graphics/Paint;

.field public t:Landroid/graphics/Paint;

.field public u:Landroid/graphics/Matrix;

.field public v:Landroid/graphics/BitmapShader;

.field public w:I

.field public x:F

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->d:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->a()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_roundimageview_outcircle_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->c:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_roundimageview_default_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->w:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->b:Landroid/graphics/RectF;

    if-eqz p2, :cond_16

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->d:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->a()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$drawable;->coui_round_image_view_shadow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->k:I

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$dimen;->coui_roundimageView_src_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->m:I

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->n:I

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIRoundImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiBorderRadius:I

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->f:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->c:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiHasBorder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->e:Z

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiHasDefaultPic:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiRoundImageViewOutCircleColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->b()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->a:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->b()V

    return-void
.end method

.method private setupShader(Landroid/graphics/drawable/Drawable;)V
    .registers 9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_112

    if-nez p1, :cond_c

    goto/16 :goto_112

    :cond_c
    if-eq v0, p1, :cond_10

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->y:Landroid/graphics/drawable/Drawable;

    :cond_10
    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->p:I

    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->q:I

    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->y:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_51

    :cond_2e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p1, v3

    :goto_51
    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->z:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->c:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_103

    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->m:I

    int-to-float p1, p1

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float/2addr p1, v2

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->p:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->n:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->q:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_74

    move p1, v2

    :cond_74
    cmpg-float v4, v3, v2

    if-gtz v4, :cond_79

    goto :goto_7a

    :cond_79
    move v2, v3

    :goto_7a
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->p:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->n:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->q:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->r:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    int-to-float v3, v3

    add-float/2addr v5, v3

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->z:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->o:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->o:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->k:I

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->l:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->m:I

    div-int/2addr v3, v0

    iput v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->f:I

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->a:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->f:I

    int-to-float v4, v4

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v0, v3, v4}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->i:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->k:I

    iget v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->l:I

    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->j:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->j:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->o:Landroid/graphics/BitmapShader;

    :cond_103
    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->z:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_112

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->z:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->v:Landroid/graphics/BitmapShader;

    :cond_112
    :goto_112
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->F:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->F:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->F:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/appcompat/R$color;->coui_border:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->k:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->l:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->k:I

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->m:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->r:I

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->a:Landroid/graphics/RectF;

    iget p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->r:I

    div-int/lit8 v1, p0, 0x2

    int-to-float v1, v1

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->y:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_18
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->E:F

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->z:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    if-eqz v1, :cond_9f

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->c:I

    if-eqz v3, :cond_72

    if-eq v3, v2, :cond_4f

    const/4 v1, 0x2

    if-eq v3, v1, :cond_13

    goto :goto_88

    :cond_13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->k:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->l:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->E:F

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->E:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->o:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->o:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->g:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_4f
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->E:F

    goto :goto_88

    :cond_72
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->w:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->E:F

    :goto_88
    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->E:F

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->v:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_9f

    iget-object v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->u:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->v:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_9f
    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->c:I

    if-nez v1, :cond_c3

    iget-boolean v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->e:Z

    if-eqz v0, :cond_bb

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->x:F

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->x:F

    const/high16 v1, 0x3f000000  # 0.5f

    sub-float v1, v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_131

    :cond_bb
    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->x:F

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_131

    :cond_c3
    if-ne v1, v2, :cond_131

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->g:Landroid/graphics/RectF;

    if-nez v1, :cond_db

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->g:Landroid/graphics/RectF;

    :cond_db
    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->h:Landroid/graphics/RectF;

    if-nez v1, :cond_f2

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->h:Landroid/graphics/RectF;

    :cond_f2
    iget-boolean v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->e:Z

    if-eqz v1, :cond_11e

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->g:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->f:I

    int-to-float v3, v3

    iget-object v1, v1, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v1, v2, v3}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->h:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->f:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget-object v0, v1, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v0, v2, v3}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_131

    :cond_11e
    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->g:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->f:I

    int-to-float v2, v2

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_131
    :goto_131
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->c:I

    if-nez p1, :cond_22

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_17

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->w:I

    :cond_17
    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->w:I

    int-to-float p2, p1

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->x:F

    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :cond_22
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->c:I

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

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->g:Landroid/graphics/RectF;

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

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->h:Landroid/graphics/RectF;

    :cond_32
    return-void
.end method

.method public setBorderRectRadius(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->f:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setHasBorder(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->e:Z

    return-void
.end method

.method public setHasDefaultPic(Z)V
    .registers 2

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOutCircleColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->c:I

    if-eq v0, p1, :cond_23

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->c:I

    if-nez p1, :cond_20

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_18

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->w:I

    :cond_18
    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->w:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->x:F

    :cond_20
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_23
    return-void
.end method
