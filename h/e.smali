.class public Lh/e;
.super Lh/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/f<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr/a<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lh/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public f(Lr/a;F)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lh/e;->i(Lr/a;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public i(Lr/a;F)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr/a<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    iget-object v0, p1, Lr/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_58

    iget-object v0, p1, Lr/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_58

    iget-object v1, p0, Lh/a;->e:Lr/c;

    if-eqz v1, :cond_2c

    iget v2, p1, Lr/a;->e:F

    iget-object v0, p1, Lr/a;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lr/a;->b:Ljava/lang/Object;

    iget-object v5, p1, Lr/a;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lh/a;->d()F

    move-result v7

    iget v8, p0, Lh/a;->d:F

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lr/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2c
    iget p0, p1, Lr/a;->i:I

    const v0, 0x2ec8fb09

    if-ne p0, v0, :cond_3d

    iget-object p0, p1, Lr/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lr/a;->i:I

    :cond_3d
    iget p0, p1, Lr/a;->i:I

    iget v1, p1, Lr/a;->j:I

    if-ne v1, v0, :cond_4d

    iget-object v0, p1, Lr/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lr/a;->j:I

    :cond_4d
    iget p1, p1, Lr/a;->j:I

    sget-object v0, Lq/i;->a:Landroid/graphics/PointF;

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr p2, v0

    float-to-int p0, p2

    return p0

    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
