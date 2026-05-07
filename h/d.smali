.class public Lh/d;
.super Lh/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/f<",
        "Ll/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic i:I

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .registers 4

    iput p2, p0, Lh/d;->i:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_33

    const/4 v0, 0x2

    if-eq p2, v0, :cond_28

    invoke-direct {p0, p1}, Lh/f;-><init>(Ljava/util/List;)V

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr/a;

    iget-object p1, p1, Lr/a;->b:Ljava/lang/Object;

    check-cast p1, Ll/c;

    if-nez p1, :cond_19

    goto :goto_1c

    :cond_19
    iget-object p1, p1, Ll/c;->b:[I

    array-length p2, p1

    :goto_1c
    new-instance p1, Ll/c;

    new-array v0, p2, [F

    new-array p2, p2, [I

    invoke-direct {p1, v0, p2}, Ll/c;-><init>([F[I)V

    iput-object p1, p0, Lh/d;->j:Ljava/lang/Object;

    return-void

    :cond_28
    invoke-direct {p0, p1}, Lh/f;-><init>(Ljava/util/List;)V

    new-instance p1, Lr/d;

    invoke-direct {p1}, Lr/d;-><init>()V

    iput-object p1, p0, Lh/d;->j:Ljava/lang/Object;

    return-void

    :cond_33
    invoke-direct {p0, p1}, Lh/f;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lh/d;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public f(Lr/a;F)Ljava/lang/Object;
    .registers 14

    iget v0, p0, Lh/d;->i:I

    const-string v1, "Missing values for keyframe."

    packed-switch v0, :pswitch_data_112

    goto/16 :goto_c3

    :pswitch_9  #0x1
    iget-object v0, p1, Lr/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_4e

    iget-object v2, p1, Lr/a;->c:Ljava/lang/Object;

    if-eqz v2, :cond_4e

    check-cast v0, Landroid/graphics/PointF;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lh/a;->e:Lr/c;

    if-eqz v3, :cond_33

    iget v4, p1, Lr/a;->e:F

    iget-object p1, p1, Lr/a;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0}, Lh/a;->d()F

    move-result v9

    iget v10, p0, Lh/a;->d:F

    move-object v6, v0

    move-object v7, v2

    move v8, p2

    invoke-virtual/range {v3 .. v10}, Lr/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_33

    goto :goto_4d

    :cond_33
    iget-object p1, p0, Lh/d;->j:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v3, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lh/d;->j:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/graphics/PointF;

    :goto_4d
    return-object p1

    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_54  #0x0
    iget-object v0, p0, Lh/d;->j:Ljava/lang/Object;

    check-cast v0, Ll/c;

    iget-object v1, p1, Lr/a;->b:Ljava/lang/Object;

    check-cast v1, Ll/c;

    iget-object p1, p1, Lr/a;->c:Ljava/lang/Object;

    check-cast p1, Ll/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Ll/c;->b:[I

    array-length v2, v2

    iget-object v3, p1, Ll/c;->b:[I

    array-length v3, v3

    if-ne v2, v3, :cond_99

    const/4 v2, 0x0

    :goto_6c
    iget-object v3, v1, Ll/c;->b:[I

    array-length v3, v3

    if-ge v2, v3, :cond_94

    iget-object v3, v0, Ll/c;->a:[F

    iget-object v4, v1, Ll/c;->a:[F

    aget v4, v4, v2

    iget-object v5, p1, Ll/c;->a:[F

    aget v5, v5, v2

    invoke-static {v4, v5, p2}, Lq/i;->e(FFF)F

    move-result v4

    aput v4, v3, v2

    iget-object v3, v0, Ll/c;->b:[I

    iget-object v4, v1, Ll/c;->b:[I

    aget v4, v4, v2

    iget-object v5, p1, Ll/c;->b:[I

    aget v5, v5, v2

    invoke-static {p2, v4, v5}, Lq/d;->i(FII)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_94
    iget-object p0, p0, Lh/d;->j:Ljava/lang/Object;

    check-cast p0, Ll/c;

    return-object p0

    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot interpolate between gradients. Lengths vary ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Ll/c;->b:[I

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ll/c;->b:[I

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_c3
    iget-object v0, p1, Lr/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_10b

    iget-object v2, p1, Lr/a;->c:Ljava/lang/Object;

    if-eqz v2, :cond_10b

    check-cast v0, Lr/d;

    check-cast v2, Lr/d;

    iget-object v3, p0, Lh/a;->e:Lr/c;

    if-eqz v3, :cond_ed

    iget v4, p1, Lr/a;->e:F

    iget-object p1, p1, Lr/a;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0}, Lh/a;->d()F

    move-result v9

    iget v10, p0, Lh/a;->d:F

    move-object v6, v0

    move-object v7, v2

    move v8, p2

    invoke-virtual/range {v3 .. v10}, Lr/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr/d;

    if-eqz p1, :cond_ed

    goto :goto_10a

    :cond_ed
    iget-object p1, p0, Lh/d;->j:Ljava/lang/Object;

    check-cast p1, Lr/d;

    iget v1, v0, Lr/d;->a:F

    iget v3, v2, Lr/d;->a:F

    invoke-static {v1, v3, p2}, Lq/i;->e(FFF)F

    move-result v1

    iget v0, v0, Lr/d;->b:F

    iget v2, v2, Lr/d;->b:F

    invoke-static {v0, v2, p2}, Lq/i;->e(FFF)F

    move-result p2

    iput v1, p1, Lr/d;->a:F

    iput p2, p1, Lr/d;->b:F

    iget-object p0, p0, Lh/d;->j:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lr/d;

    :goto_10a
    return-object p1

    :cond_10b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_54  #00000000
        :pswitch_9  #00000001
    .end packed-switch
.end method
