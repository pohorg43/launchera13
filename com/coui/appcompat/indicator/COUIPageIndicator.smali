.class public Lcom/coui/appcompat/indicator/COUIPageIndicator;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/coui/appcompat/indicator/COUIIPagerIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;
    }
.end annotation


# static fields
.field public static final T:F

.field public static final U:F

.field public static final V:F

.field public static final W:F

.field public static final a0:F

.field public static final b0:F

.field public static final c0:F


# instance fields
.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Landroid/widget/LinearLayout;

.field public I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public J:Landroid/graphics/Paint;

.field public K:Landroid/graphics/Path;

.field public L:Landroid/graphics/Path;

.field public M:Landroid/graphics/RectF;

.field public N:Landroid/graphics/RectF;

.field public O:Landroid/graphics/RectF;

.field public P:Landroid/animation/ValueAnimator;

.field public Q:Landroid/os/Handler;

.field public R:I

.field public S:Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:F

    const/high16 v1, 0x40200000  # 2.5f

    mul-float/2addr v1, v0

    const/high16 v2, 0x40f00000  # 7.5f

    sub-float v1, v2, v1

    sput v1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->U:F

    mul-float/2addr v2, v0

    const/high16 v1, 0x41a80000  # 21.0f

    sub-float/2addr v2, v1

    sput v2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:F

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float v2, v0, v1

    sput v2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:F

    const/high16 v2, 0x3f200000  # 0.625f

    mul-float/2addr v2, v0

    sput v2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:F

    const/high16 v2, -0x40600000  # -1.25f

    mul-float/2addr v2, v0

    sput v2, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:F

    mul-float/2addr v0, v1

    sput v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiPageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:F

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:F

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o:F

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:F

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q:F

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->r:F

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->x:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->F:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->G:Z

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->K:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->L:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/RectF;

    if-eqz p2, :cond_55

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_55
    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->I:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz p2, :cond_ad

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIPageIndicator:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPageIndicator_traceDotColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPageIndicator_dotColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPageIndicator_dotSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPageIndicator_dotSpacing:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPageIndicator_dotCornerRadius:I

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000  # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPageIndicator_dotClickable:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->w:Z

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPageIndicator_dotStrokeWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_ad
    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iput v1, p2, Landroid/graphics/RectF;->top:F

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float p3, p3

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    const/4 p2, 0x2

    new-array p3, p2, [F

    fill-array-data p3, :array_136

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    invoke-virtual {p3, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$1;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$2;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->J:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p3

    iput v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    new-instance p2, Lcom/coui/appcompat/indicator/COUIPageIndicator$3;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$3;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V

    iput-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/os/Handler;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o:F

    iput p2, p1, Landroid/graphics/RectF;->left:F

    iget p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:F

    iput p2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :array_136
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(IFFFZ)Landroid/graphics/Path;
    .registers 15

    if-eqz p5, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->K:Landroid/graphics/Path;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->L:Landroid/graphics/Path;

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    sub-float v1, p2, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x403ccccd  # 2.95f

    mul-float/2addr v2, p4

    cmpl-float v2, v1, v2

    if-gez v2, :cond_128

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1d

    goto/16 :goto_128

    :cond_1d
    const/high16 p1, -0x40800000  # -1.0f

    mul-float/2addr p1, v1

    const/high16 p5, 0x40400000  # 3.0f

    mul-float/2addr p5, p4

    add-float/2addr p5, p1

    const/high16 p1, 0x3f800000  # 1.0f

    mul-float/2addr p1, p4

    invoke-static {p5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p5, 0x0

    mul-float v2, p4, p5

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    const/high16 p1, 0x3fc00000  # 1.5f

    mul-float/2addr p1, p4

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    iput p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    const v2, 0x40333333  # 2.8f

    mul-float/2addr v2, p4

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_66

    sget p5, Lcom/coui/appcompat/indicator/COUIPageIndicator;->U:F

    mul-float/2addr p5, v1

    sget v3, Lcom/coui/appcompat/indicator/COUIPageIndicator;->V:F

    mul-float/2addr v3, p4

    add-float/2addr v3, p5

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sget p5, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:F

    mul-float/2addr p5, p4

    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    const/high16 p5, 0x40000000  # 2.0f

    mul-float/2addr p1, p5

    sub-float p1, v1, p1

    mul-float/2addr p1, p4

    sget v3, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:F

    mul-float/2addr v3, v1

    mul-float/2addr p5, p4

    sub-float/2addr v3, p5

    div-float/2addr p1, v3

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    goto :goto_90

    :cond_66
    sget p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a0:F

    mul-float/2addr p1, v1

    sget v1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b0:F

    mul-float/2addr v1, p4

    add-float/2addr v1, p1

    sget p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c0:F

    mul-float/2addr p1, p4

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    float-to-double v3, p4

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    :goto_90
    sget p1, Lcom/coui/appcompat/indicator/COUIPageIndicator;->T:F

    const/high16 p5, 0x3f000000  # 0.5f

    mul-float v1, p1, p5

    mul-float/2addr v1, p4

    mul-float/2addr p1, p5

    mul-float/2addr p1, p4

    cmpl-float v3, p2, p3

    if-lez v3, :cond_a3

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    neg-float v3, v3

    iput v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    neg-float v1, v1

    :cond_a3
    if-ltz v2, :cond_ed

    add-float v2, p2, v1

    add-float v3, p4, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    add-float/2addr v4, p2

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    add-float/2addr v5, p4

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v4, p2, p3

    mul-float/2addr v4, p5

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    add-float/2addr p5, p4

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    sub-float v5, p3, v5

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    add-float/2addr v6, p4

    invoke-virtual {v0, v4, p5, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float p5, p3, v1

    invoke-virtual {v0, p5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float p1, p4, p1

    invoke-virtual {v0, p5, p1}, Landroid/graphics/Path;->lineTo(FF)V

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    sub-float/2addr p3, p5

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    sub-float p5, p4, p5

    invoke-virtual {v0, p3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    sub-float p3, p4, p3

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    add-float/2addr p2, p5

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    sub-float/2addr p4, p0

    invoke-virtual {v0, v4, p3, p2, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_127

    :cond_ed
    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    add-float/2addr p1, p2

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    add-float/2addr v1, p4

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-float p1, p2, p3

    mul-float/2addr p1, p5

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    add-float/2addr p5, p4

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    add-float/2addr v2, p4

    invoke-virtual {v0, p1, p5, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    sub-float/2addr p3, p5

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    sub-float p5, p4, p5

    invoke-virtual {v0, p3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    iget p3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    sub-float p3, p4, p3

    iget p5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    add-float/2addr p5, p2

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    sub-float v1, p4, v1

    invoke-virtual {v0, p1, p3, p5, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->u:F

    add-float/2addr p2, p1

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->v:F

    add-float/2addr p4, p0

    invoke-virtual {v0, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_127
    return-object v0

    :cond_128
    :goto_128
    invoke-virtual {p0, p5}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b(Z)V

    return-object v0
.end method

.method public final b(Z)V
    .registers 3

    const/4 v0, -0x1

    if-eqz p1, :cond_10

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->K:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    goto :goto_1c

    :cond_10
    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->L:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    :goto_1c
    return-void
.end method

.method public c(I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_15

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V

    iget-boolean p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    if-eqz p1, :cond_43

    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    goto :goto_43

    :cond_15
    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_43

    :cond_20
    if-nez p1, :cond_43

    iget-boolean p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    if-nez p1, :cond_2a

    iget-boolean p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->G:Z

    if-nez p1, :cond_43

    :cond_2a
    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_39
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g()V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_43
    :goto_43
    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->G:Z

    return-void
.end method

.method public d(IF)V
    .registers 14

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    if-le v1, p1, :cond_10

    goto :goto_e

    :cond_c
    if-gt v1, p1, :cond_10

    :goto_e
    move v1, v2

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_89

    if-eqz v0, :cond_27

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:I

    int-to-float v0, v0

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    mul-int v5, p1, v4

    add-int/2addr v5, v3

    int-to-float v3, v5

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v4, v3

    sub-float/2addr v0, v4

    goto :goto_39

    :cond_27
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    mul-int v4, p1, v3

    add-int/2addr v4, v0

    int-to-float v0, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v0, v3

    :goto_39
    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iput v0, v3, Landroid/graphics/RectF;->right:F

    iget-boolean v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    if-eqz v4, :cond_6d

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_59

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    goto/16 :goto_f7

    :cond_59
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float v4, v3, v4

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_f7

    sub-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/RectF;->left:F

    goto/16 :goto_f7

    :cond_6d
    iget-boolean v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    if-eqz v4, :cond_79

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iput v0, v3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_f7

    :cond_79
    iget v4, v3, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_f7

    sub-float/2addr v0, v5

    iput v0, v3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_f7

    :cond_89
    if-eqz v0, :cond_a2

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:I

    int-to-float v0, v0

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    int-to-float v3, v3

    int-to-float v4, p1

    add-float/2addr v4, p2

    mul-float/2addr v4, v3

    sub-float/2addr v0, v4

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_ae

    :cond_a2
    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    int-to-float v0, v0

    iget v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    int-to-float v3, v3

    int-to-float v4, p1

    add-float/2addr v4, p2

    mul-float/2addr v4, v3

    add-float/2addr v0, v4

    :goto_ae
    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iput v0, v3, Landroid/graphics/RectF;->left:F

    iget-boolean v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->E:Z

    if-eqz v4, :cond_df

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_cd

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    goto :goto_f7

    :cond_cd
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_f7

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->right:F

    goto :goto_f7

    :cond_df
    iget-boolean v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    if-eqz v4, :cond_ea

    iget v4, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    iput v0, v3, Landroid/graphics/RectF;->right:F

    goto :goto_f7

    :cond_ea
    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_f7

    add-float/2addr v0, v5

    iput v0, v3, Landroid/graphics/RectF;->right:F

    :cond_f7
    :goto_f7
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iput v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->m:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:F

    const/high16 v4, 0x3f000000  # 0.5f

    if-eqz v1, :cond_10d

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q:F

    goto :goto_114

    :cond_10d
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q:F

    :goto_114
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    invoke-virtual {p0, v0, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i(IZ)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v1, v1

    mul-float v9, v1, v4

    add-float v8, v9, v0

    iget v6, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j:I

    iget v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->q:F

    const/4 v10, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a(IFFFZ)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->K:Landroid/graphics/Path;

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_13a

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b(Z)V

    :cond_13a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->K:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->L:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public e(I)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->G:Z

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    const/4 v2, 0x0

    if-eq v1, p1, :cond_e

    iget-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    if-eqz v1, :cond_e

    iput-boolean v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->y:Z

    :cond_e
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    if-gt v1, p1, :cond_1f

    goto :goto_1d

    :cond_19
    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    if-le v1, p1, :cond_1f

    :goto_1d
    move v1, v0

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    iput-boolean v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->x:Z

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    iget-object v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    mul-int/lit16 v0, v0, 0x12c

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h(I)V

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k:I

    invoke-virtual {p0, v0, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i(IZ)V

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    const/16 v1, 0x11

    if-eq v0, p1, :cond_5d

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_52
    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g()V

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6a

    :cond_5d
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->Q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6a
    :goto_6a
    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    return-void
.end method

.method public final f(ZLandroid/view/View;I)V
    .registers 4

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_11

    :cond_e
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_11
    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method public g()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->z:Z

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_16
    return-void
.end method

.method public getDotsCount()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g:I

    return p0
.end method

.method public final h(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    mul-int/2addr p1, v2

    add-int/2addr p1, v1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:F

    goto :goto_1f

    :cond_13
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    mul-int/2addr p1, v1

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:F

    :goto_1f
    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:F

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o:F

    return-void
.end method

.method public final i(IZ)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_3a

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Landroid/graphics/RectF;

    iput v0, p2, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_21

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    mul-int/2addr p1, v2

    add-int/2addr p1, v1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2f

    :cond_21
    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    mul-int/2addr p1, v1

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->right:F

    :goto_2f
    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->N:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    goto :goto_70

    :cond_3a
    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/RectF;

    iput v0, p2, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_58

    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    mul-int/2addr p1, v2

    add-int/2addr p1, v1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_66

    :cond_58
    iget-object p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    mul-int/2addr p1, v1

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->right:F

    :goto_66
    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->O:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    :goto_70
    return-void
.end method

.method public isLayoutRtl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onMeasure(II)V
    .registers 3

    iget p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:I

    iget p2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->i:I

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->h(I)V

    iget-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->M:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDotCornerRadius(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->e:I

    return-void
.end method

.method public setDotSize(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    return-void
.end method

.method public setDotSpacing(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    return-void
.end method

.method public setDotStrokeWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d:I

    return-void
.end method

.method public setDotsCount(I)V
    .registers 10

    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g:I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_1f

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    iget-object v3, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->I:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1f
    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_25

    goto :goto_2d

    :cond_25
    iget v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->l:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->R:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :goto_2d
    move v0, v1

    :goto_2e
    if-ge v0, p1, :cond_8b

    iget v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$layout;->coui_page_indicator_dot_layout:I

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$id;->page_indicator_dot:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$drawable;->coui_page_indicator_dot:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->a:I

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v7, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b:I

    invoke-virtual {v6, v7, v1, v7, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1, v5, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f(ZLandroid/view/View;I)V

    iget-boolean v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->w:Z

    if-eqz v2, :cond_7a

    new-instance v2, Lcom/coui/appcompat/indicator/COUIPageIndicator$4;

    invoke-direct {v2, p0, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator$4;-><init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7a
    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->I:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_8b
    return-void
.end method

.method public setIsClickable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->w:Z

    return-void
.end method

.method public setOnDotClickListener(Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->S:Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;

    return-void
.end method

.method public setPageIndicatorDotsColor(I)V
    .registers 5

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c:I

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->I:Ljava/util/List;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f(ZLandroid/view/View;I)V

    goto :goto_12

    :cond_23
    return-void
.end method

.method public setTraceDotColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->f:I

    iget-object p0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->J:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
