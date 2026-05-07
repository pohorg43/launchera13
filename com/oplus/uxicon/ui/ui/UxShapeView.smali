.class public Lcom/oplus/uxicon/ui/ui/UxShapeView;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field public static final q:Landroid/view/animation/PathInterpolator;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/graphics/Rect;

.field public c:I

.field public d:I

.field public e:Landroid/animation/ValueAnimator;

.field public f:Landroid/animation/ValueAnimator;

.field public g:I

.field public h:Landroid/graphics/Path;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Matrix;

.field public k:Landroid/graphics/Path;

.field public l:Ljava/lang/String;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:I

.field public o:Z

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->q:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/uxicon/ui/ui/UxShapeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/uxicon/ui/ui/UxShapeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->b:Landroid/graphics/Rect;

    const/16 p3, 0x96

    iput p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->c:I

    const/16 p3, 0x9c

    iput p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->d:I

    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->i:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->j:Landroid/graphics/Matrix;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->k:Landroid/graphics/Path;

    const-string p3, ""

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->l:Ljava/lang/String;

    const/4 p3, 0x4

    iput p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->n:I

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->o:Z

    const/4 p3, 0x3

    iput p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->p:I

    sget-object p3, Lcom/oplus/uxicon/ui/R$styleable;->UxShapeView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/oplus/uxicon/ui/R$styleable;->UxShapeView_view_tag:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->l:Ljava/lang/String;

    sget p3, Lcom/oplus/uxicon/ui/R$styleable;->UxShapeView_foreground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxShapeView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxShapeView;)I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->g:I

    return p0
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxShapeView;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->g:I

    return p1
.end method

.method public static synthetic b(Lcom/oplus/uxicon/ui/ui/UxShapeView;)Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->i:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/animation/ValueAnimator;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/uxicon/ui/ui/UxShapeView;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxShapeView$a;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxShapeView$a;-><init>(Lcom/oplus/uxicon/ui/ui/UxShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxShapeView$b;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxShapeView$b;-><init>(Lcom/oplus/uxicon/ui/ui/UxShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_26
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public final a(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$dimen;->shape_foreground_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->c:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$dimen;->shape_background_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->d:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$dimen;->ux_shape_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->n:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$dimen;->ux_shape_gap_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->p:I

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->b:Landroid/graphics/Rect;

    iget v2, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->c:I

    invoke-virtual {v1, v0, v0, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/oplus/uxicon/ui/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->k:Landroid/graphics/Path;

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->m:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->m:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/oplus/uxicon/ui/R$color;->ux_oplus_custom_shape_normal:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance p1, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->k:Landroid/graphics/Path;

    invoke-direct {p1, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#FFFBFBFB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->c:I

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->o:Z

    const/high16 v1, 0x43160000  # 150.0f

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_9b

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->i:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->j:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->d:I

    iget v4, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->n:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->p:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_b2

    :cond_9b
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->i:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget v4, Lcom/oplus/uxicon/ui/R$attr;->couiColorPrimary:I

    invoke-static {v3, v4, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->j:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->c:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_b2
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->i:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->n:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxShapeView;->a()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxShapeView;->b()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->f:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final b()Landroid/animation/ValueAnimator;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/uxicon/ui/ui/UxShapeView;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxShapeView$c;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxShapeView$c;-><init>(Lcom/oplus/uxicon/ui/ui/UxShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxShapeView$d;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxShapeView$d;-><init>(Lcom/oplus/uxicon/ui/ui/UxShapeView;)V

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

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->e:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getFadeOutAnim()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->f:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->d:I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->c:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->n:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxShapeView;->n:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
