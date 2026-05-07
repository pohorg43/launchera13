.class public Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field public static final q:Landroid/view/animation/PathInterpolator;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/Path;

.field public f:Landroid/graphics/Matrix;

.field public g:F

.field public h:Landroid/graphics/Bitmap;

.field public i:Landroid/graphics/Canvas;

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Paint;

.field public l:I

.field public m:I

.field public n:I

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->q:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x96

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->a:I

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->b:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->c:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->f:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->g:F

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->h:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->i:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->j:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->k:Landroid/graphics/Paint;

    const/4 v1, 0x4

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->n:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/oplus/uxicon/ui/R$dimen;->shape_foreground_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->l:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/oplus/uxicon/ui/R$dimen;->shape_background_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->m:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/oplus/uxicon/ui/R$dimen;->ux_shape_stroke_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->n:I

    sget-object v1, Lcom/oplus/uxicon/ui/R$styleable;->UxCustomAdaptiveIconView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oplus/uxicon/ui/R$styleable;->UxCustomAdaptiveIconView_foreground_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_6f

    iget p3, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->l:I

    invoke-virtual {p2, v3, v3, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6f
    sget p3, Lcom/oplus/uxicon/ui/R$styleable;->UxCustomAdaptiveIconView_mask:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_83

    invoke-static {p3}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p2, p3, v1}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;Landroid/content/res/Resources;)V

    goto :goto_8a

    :cond_83
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p0, p2, v0, p3}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;Landroid/content/res/Resources;)V

    :goto_8a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->j:Landroid/graphics/Paint;

    iget-object p2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget p3, Lcom/oplus/uxicon/ui/R$attr;->couiColorPrimary:I

    invoke-static {p2, p3, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->j:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->j:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->n:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, v2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;)Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->j:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->i:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->i:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->i:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->g:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->i:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->m:I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->l:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->n:I

    rsub-int/lit8 v1, v1, 0x1

    shr-int/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->i:Landroid/graphics/Canvas;

    int-to-float v2, v0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_37

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->i:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_37
    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->i:Landroid/graphics/Canvas;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->i:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->h:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->k:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    if-eqz v1, :cond_62

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->f:Landroid/graphics/Matrix;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x43160000  # 150.0f

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_24
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->h:Landroid/graphics/Bitmap;

    if-nez p1, :cond_36

    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->a:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->h:Landroid/graphics/Bitmap;

    :cond_36
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->k:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;Landroid/content/res/Resources;)V
    .registers 6

    sget v0, Lcom/oplus/uxicon/ui/R$dimen;->icon_mask_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->a:I

    iput p3, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->b:I

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->k:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->c:Landroid/graphics/Rect;

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->b:I

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/oplus/uxicon/ui/R$color;->ux_oplus_custom_shape_normal:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_29
    if-eqz p2, :cond_3e

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1, p2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->f:Landroid/graphics/Matrix;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->a(Landroid/graphics/Rect;)V

    :cond_3e
    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->b()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->c()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->p:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final b()Landroid/animation/ValueAnimator;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView$a;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView$a;-><init>(Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView$b;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView$b;-><init>(Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_26
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->m:I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->l:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->n:I

    rsub-int/lit8 v1, v1, 0x1

    shr-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_18
    neg-int p0, v0

    int-to-float p0, p0

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final c()Landroid/animation/ValueAnimator;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView$c;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView$c;-><init>(Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView$d;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView$d;-><init>(Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_26
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public getFadeInAnim()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->o:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getFadeOutAnim()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->p:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->n:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->n:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_22

    :cond_1f
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->b(Landroid/graphics/Canvas;)V

    :goto_22
    return-void
.end method

.method public setMask(Landroid/graphics/Path;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    if-nez v1, :cond_16

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->f:Landroid/graphics/Matrix;

    goto :goto_20

    :cond_16
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    goto :goto_20

    :cond_1e
    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    :goto_20
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->e:Landroid/graphics/Path;

    if-nez p1, :cond_26

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->f:Landroid/graphics/Matrix;

    :cond_26
    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSquareShapeView;->a()V

    return-void
.end method
