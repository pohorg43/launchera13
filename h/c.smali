.class public Lh/c;
.super Lh/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/f<",
        "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lh/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public f(Lr/a;F)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lh/c;->j(Lr/a;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public i()F
    .registers 3

    invoke-virtual {p0}, Lh/a;->a()Lr/a;

    move-result-object v0

    invoke-virtual {p0}, Lh/a;->c()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lh/c;->j(Lr/a;F)F

    move-result p0

    return p0
.end method

.method public j(Lr/a;F)F
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr/a<",
            "Ljava/lang/Float;",
            ">;F)F"
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

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_2c
    iget p0, p1, Lr/a;->g:F

    const v0, -0x358c9d09

    cmpl-float p0, p0, v0

    if-nez p0, :cond_3f

    iget-object p0, p1, Lr/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lr/a;->g:F

    :cond_3f
    iget p0, p1, Lr/a;->g:F

    iget v1, p1, Lr/a;->h:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_51

    iget-object v0, p1, Lr/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lr/a;->h:F

    :cond_51
    iget p1, p1, Lr/a;->h:F

    invoke-static {p0, p1, p2}, Lq/i;->e(FFF)F

    move-result p0

    return p0

    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
