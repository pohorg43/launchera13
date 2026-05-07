.class public Lb/c;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source ""


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroid/graphics/Path;

.field public h:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(IIII)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lb/c;->a:Landroid/graphics/Paint;

    const/16 v0, 0xa2

    iput v0, p0, Lb/c;->b:I

    const/4 v0, 0x6

    iput v0, p0, Lb/c;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lb/c;->d:I

    const/16 v1, 0x2d

    iput v1, p0, Lb/c;->e:I

    iput v0, p0, Lb/c;->f:I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lb/c;->g:Landroid/graphics/Path;

    iput p2, p0, Lb/c;->b:I

    iput p3, p0, Lb/c;->c:I

    iput p1, p0, Lb/c;->e:I

    iput p4, p0, Lb/c;->d:I

    iget-object p1, p0, Lb/c;->a:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p1, p0, Lb/c;->b:I

    invoke-virtual {p0, v0, v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p1, Landroid/graphics/Path;

    invoke-static {}, Lcom/oplus/uxicon/ui/util/i;->a()Lcom/oplus/uxicon/ui/util/i;

    move-result-object v0

    iget p2, p0, Lb/c;->b:I

    iget p3, p0, Lb/c;->c:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    int-to-float v4, p2

    iget p2, p0, Lb/c;->e:I

    int-to-float v5, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/uxicon/ui/util/i;->a(FFFFF)Landroid/graphics/Path;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lb/c;->g:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    iget-object p2, p0, Lb/c;->g:Landroid/graphics/Path;

    invoke-direct {p1, p2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lb/c;->h:Landroid/graphics/Path;

    iget p1, p0, Lb/c;->b:I

    iget p2, p0, Lb/c;->c:I

    mul-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    const/high16 p3, 0x3f800000  # 1.0f

    mul-float/2addr p1, p3

    iget p3, p0, Lb/c;->b:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-virtual {p2, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lb/c;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lb/c;->h:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p0, Lb/c;->a:Landroid/graphics/Paint;

    iget p0, p0, Lb/c;->c:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lb/c;->c:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lb/c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lb/c;->a:Landroid/graphics/Paint;

    iget v1, p0, Lb/c;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lb/c;->a:Landroid/graphics/Paint;

    iget v1, p0, Lb/c;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lb/c;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lb/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lb/c;->c:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lb/c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lb/c;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lb/c;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lb/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lb/c;->c:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget p0, p0, Lb/c;->c:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
