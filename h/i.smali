.class public Lh/i;
.super Lh/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/f<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Landroid/graphics/PointF;

.field public final j:[F

.field public k:Lh/h;

.field public l:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lr/a<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lh/f;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lh/i;->i:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lh/i;->j:[F

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lh/i;->l:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public f(Lr/a;F)Ljava/lang/Object;
    .registers 13

    move-object v0, p1

    check-cast v0, Lh/h;

    iget-object v1, v0, Lh/h;->o:Landroid/graphics/Path;

    if-nez v1, :cond_c

    iget-object p0, p1, Lr/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    goto :goto_54

    :cond_c
    iget-object v2, p0, Lh/a;->e:Lr/c;

    if-eqz v2, :cond_2d

    iget v3, v0, Lr/a;->e:F

    iget-object p1, v0, Lr/a;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, Lr/a;->b:Ljava/lang/Object;

    iget-object v6, v0, Lr/a;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lh/a;->d()F

    move-result v7

    iget v9, p0, Lh/a;->d:F

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Lr/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_2d

    move-object p0, p1

    goto :goto_54

    :cond_2d
    iget-object p1, p0, Lh/i;->k:Lh/h;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_39

    iget-object p1, p0, Lh/i;->l:Landroid/graphics/PathMeasure;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lh/i;->k:Lh/h;

    :cond_39
    iget-object p1, p0, Lh/i;->l:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    mul-float/2addr v0, p2

    iget-object p2, p0, Lh/i;->j:[F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object p1, p0, Lh/i;->i:Landroid/graphics/PointF;

    iget-object p2, p0, Lh/i;->j:[F

    aget v0, p2, v2

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lh/i;->i:Landroid/graphics/PointF;

    :goto_54
    return-object p0
.end method
