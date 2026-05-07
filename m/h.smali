.class public Lm/h;
.super Lm/b;
.source ""


# instance fields
.field public final A:Lm/e;

.field public B:Lh/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Landroid/graphics/RectF;

.field public final x:Landroid/graphics/Paint;

.field public final y:[F

.field public final z:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/e;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lm/b;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lm/h;->w:Landroid/graphics/RectF;

    new-instance p1, Lf/a;

    invoke-direct {p1}, Lf/a;-><init>()V

    iput-object p1, p0, Lm/h;->x:Landroid/graphics/Paint;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lm/h;->y:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm/h;->z:Landroid/graphics/Path;

    iput-object p2, p0, Lm/h;->A:Lm/e;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p0, p2, Lm/e;->l:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lr/c;)V
    .registers 4
    .param p2  # Lr/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lr/c<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lm/b;->u:Lh/m;

    invoke-virtual {v0, p1, p2}, Lh/m;->c(Ljava/lang/Object;Lr/c;)Z

    sget-object v0, Lcom/airbnb/lottie/o;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_16

    const/4 p1, 0x0

    if-nez p2, :cond_f

    iput-object p1, p0, Lm/h;->B:Lh/a;

    goto :goto_16

    :cond_f
    new-instance v0, Lh/n;

    invoke-direct {v0, p2, p1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object v0, p0, Lm/h;->B:Lh/a;

    :cond_16
    :goto_16
    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 13

    iget-object v0, p0, Lm/h;->A:Lm/e;

    iget v0, v0, Lm/e;->l:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lm/b;->u:Lh/m;

    iget-object v1, v1, Lh/m;->j:Lh/a;

    if-nez v1, :cond_14

    const/16 v1, 0x64

    goto :goto_1e

    :cond_14
    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1e
    int-to-float p3, p3

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr p3, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    mul-float/2addr v0, v2

    float-to-int p3, v0

    iget-object v0, p0, Lm/h;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lm/h;->B:Lh/a;

    if-eqz v0, :cond_40

    iget-object v1, p0, Lm/h;->x:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_40
    if-lez p3, :cond_b2

    iget-object p3, p0, Lm/h;->y:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p3, v0

    const/4 v2, 0x1

    aput v1, p3, v2

    iget-object v3, p0, Lm/h;->A:Lm/e;

    iget v4, v3, Lm/e;->j:I

    int-to-float v5, v4

    const/4 v6, 0x2

    aput v5, p3, v6

    const/4 v5, 0x3

    aput v1, p3, v5

    int-to-float v4, v4

    const/4 v7, 0x4

    aput v4, p3, v7

    iget v3, v3, Lm/e;->k:I

    int-to-float v4, v3

    const/4 v8, 0x5

    aput v4, p3, v8

    const/4 v4, 0x6

    aput v1, p3, v4

    int-to-float v1, v3

    const/4 v3, 0x7

    aput v1, p3, v3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p2, p0, Lm/h;->z:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lm/h;->z:Landroid/graphics/Path;

    iget-object p3, p0, Lm/h;->y:[F

    aget v1, p3, v0

    aget p3, p3, v2

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lm/h;->z:Landroid/graphics/Path;

    iget-object p3, p0, Lm/h;->y:[F

    aget v1, p3, v6

    aget p3, p3, v5

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lm/h;->z:Landroid/graphics/Path;

    iget-object p3, p0, Lm/h;->y:[F

    aget v1, p3, v7

    aget p3, p3, v8

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lm/h;->z:Landroid/graphics/Path;

    iget-object p3, p0, Lm/h;->y:[F

    aget v1, p3, v4

    aget p3, p3, v3

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lm/h;->z:Landroid/graphics/Path;

    iget-object p3, p0, Lm/h;->y:[F

    aget v0, p3, v0

    aget p3, p3, v2

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lm/h;->z:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lm/h;->z:Landroid/graphics/Path;

    iget-object p0, p0, Lm/h;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b2
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lm/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lm/h;->w:Landroid/graphics/RectF;

    iget-object p3, p0, Lm/h;->A:Lm/e;

    iget v0, p3, Lm/e;->j:I

    int-to-float v0, v0

    iget p3, p3, Lm/e;->k:I

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lm/b;->m:Landroid/graphics/Matrix;

    iget-object p3, p0, Lm/h;->w:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lm/h;->w:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
