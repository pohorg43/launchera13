.class public Lcom/oplus/uxicon/ui/ui/UxSelectableView;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field public static final y:Landroid/view/animation/PathInterpolator;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Lb/c;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/Path;

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/Rect;

.field public g:I

.field public h:I

.field public i:F

.field public j:I

.field public k:Z

.field public l:Landroid/animation/ValueAnimator;

.field public m:Landroid/animation/ValueAnimator;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Landroid/graphics/Path;

.field public r:Landroid/graphics/Paint;

.field public s:Landroid/graphics/Matrix;

.field public t:Landroid/graphics/Path;

.field public u:I

.field public v:F

.field public w:Landroid/content/Context;

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->y:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->e:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->f:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    const/16 p2, 0x8a

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->g:I

    const/16 v0, 0x9c

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->h:I

    const v0, 0x3e19999a  # 0.15f

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->i:F

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->j:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->o:Z

    iput-boolean p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->p:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->r:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->s:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->t:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/oplus/uxicon/ui/R$dimen;->ux_theme_shadow_stroke:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->u:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/oplus/uxicon/ui/R$dimen;->ux_theme_shadow_not_selected:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->v:F

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->x:Z

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->n:I

    return p0
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxSelectableView;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->n:I

    return p1
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxSelectableView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->p:Z

    return p1
.end method

.method public static synthetic b(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lb/c;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->b:Lb/c;

    return-object p0
.end method

.method public static synthetic c(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)F
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->i:F

    return p0
.end method

.method public static synthetic d(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->r:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 12

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->w:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$dimen;->ux_icon_theme_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->g:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/oplus/uxicon/ui/R$dimen;->theme_bg_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->j:I

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->e:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->g:I

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->f:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->h:I

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/oplus/uxicon/ui/R$dimen;->ux_theme_path_radius:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$dimen;->ux_theme_shadow_stroke:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->w:Landroid/content/Context;

    sget v3, Lcom/oplus/uxicon/ui/R$attr;->couiColorPrimary:I

    invoke-static {v2, v3, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oplus/uxicon/ui/R$string;->ux_icon_mask_recshape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->t:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Path;

    invoke-static {}, Lcom/oplus/uxicon/ui/util/i;->a()Lcom/oplus/uxicon/ui/util/i;

    move-result-object v4

    iget v5, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->h:I

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    int-to-float v8, v5

    int-to-float v9, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v8

    invoke-virtual/range {v4 .. v9}, Lcom/oplus/uxicon/ui/util/i;->a(FFFFF)Landroid/graphics/Path;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->q:Landroid/graphics/Path;

    new-instance v3, Lb/c;

    iget v4, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->h:I

    invoke-direct {v3, p1, v4, v1, v2}, Lb/c;-><init>(IIII)V

    iput-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->b:Lb/c;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->f:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->g:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    new-instance p1, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->t:Landroid/graphics/Path;

    invoke-direct {p1, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->d:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->s:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->s:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->g:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43160000  # 150.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->t:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->s:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->d:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#FFFBFBFB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->c:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->g:I

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->c()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->d()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->m:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->x:Z

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->m:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method public final c()Landroid/animation/ValueAnimator;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->y:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxSelectableView$a;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView$a;-><init>(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxSelectableView$b;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView$b;-><init>(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_26
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public final d()Landroid/animation/ValueAnimator;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->y:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView$c;-><init>(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxSelectableView$d;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView$d;-><init>(Lcom/oplus/uxicon/ui/ui/UxSelectableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_26
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->x:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->r:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->w:Landroid/content/Context;

    sget v2, Lcom/oplus/uxicon/ui/R$color;->theme_item_outline_default_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->v:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->u:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->q:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->u:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_38
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->b:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6c

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->h:I

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->g:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->k:Z

    if-eqz v1, :cond_5e

    int-to-float v1, v0

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6c

    :cond_5e
    int-to-float v1, v0

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_6c
    :goto_6c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_98

    iget-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->o:Z

    if-eqz p1, :cond_94

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_94

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_94

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->o:Z

    :cond_94
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->p:Z

    goto :goto_b3

    :cond_98
    iget-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->p:Z

    if-eqz p1, :cond_b3

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_b3

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_b3

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->p:Z

    :cond_b3
    :goto_b3
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_1c

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->hasTransparentPixels(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->k:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->j:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1c

    :cond_15
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->a:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    if-nez p1, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->o:Z

    :cond_8
    return-void
.end method
