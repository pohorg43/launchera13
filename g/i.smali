.class public Lg/i;
.super Lg/a;
.source ""


# instance fields
.field public final o:Ljava/lang/String;

.field public final p:Z

.field public final q:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Landroid/graphics/RectF;

.field public final t:I

.field public final u:I

.field public final v:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ll/c;",
            "Ll/c;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lh/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Ll/e;)V
    .registers 15

    iget v0, p3, Ll/e;->h:I

    invoke-static {v0}, Lj/b;->i(I)Landroid/graphics/Paint$Cap;

    move-result-object v4

    iget v0, p3, Ll/e;->i:I

    invoke-static {v0}, Lj/b;->j(I)Landroid/graphics/Paint$Join;

    move-result-object v5

    iget v6, p3, Ll/e;->j:F

    iget-object v7, p3, Ll/e;->d:Lk/d;

    iget-object v8, p3, Ll/e;->g:Lk/b;

    iget-object v9, p3, Ll/e;->k:Ljava/util/List;

    iget-object v10, p3, Ll/e;->l:Lk/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lg/a;-><init>(Lcom/airbnb/lottie/j;Lm/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLk/d;Lk/b;Ljava/util/List;Lk/b;)V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lg/i;->q:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lg/i;->r:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/i;->s:Landroid/graphics/RectF;

    iget-object v0, p3, Ll/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lg/i;->o:Ljava/lang/String;

    iget v0, p3, Ll/e;->b:I

    iput v0, p0, Lg/i;->t:I

    iget-boolean v0, p3, Ll/e;->m:Z

    iput-boolean v0, p0, Lg/i;->p:Z

    iget-object p1, p1, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {p1}, Lcom/airbnb/lottie/d;->b()F

    move-result p1

    const/high16 v0, 0x42000000  # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lg/i;->u:I

    iget-object p1, p3, Ll/e;->c:Lk/c;

    invoke-virtual {p1}, Lk/c;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/i;->v:Lh/a;

    iget-object v0, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    iget-object p1, p3, Ll/e;->e:Lk/e;

    invoke-virtual {p1}, Lk/e;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/i;->w:Lh/a;

    iget-object v0, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    iget-object p1, p3, Ll/e;->f:Lk/e;

    invoke-virtual {p1}, Lk/e;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/i;->x:Lh/a;

    iget-object p3, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

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

    invoke-super {p0, p1, p2}, Lg/a;->b(Ljava/lang/Object;Lr/c;)V

    sget-object v0, Lcom/airbnb/lottie/o;->D:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2b

    const/4 p1, 0x0

    if-nez p2, :cond_18

    iget-object p2, p0, Lg/i;->y:Lh/n;

    if-eqz p2, :cond_15

    iget-object v0, p0, Lg/a;->f:Lm/b;

    iget-object v0, v0, Lm/b;->t:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_15
    iput-object p1, p0, Lg/i;->y:Lh/n;

    goto :goto_2b

    :cond_18
    new-instance v0, Lh/n;

    invoke-direct {v0, p2, p1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object v0, p0, Lg/i;->y:Lh/n;

    iget-object p1, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/a;->f:Lm/b;

    iget-object p0, p0, Lg/i;->y:Lh/n;

    invoke-virtual {p1, p0}, Lm/b;->c(Lh/a;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final c([I)[I
    .registers 5

    iget-object p0, p0, Lg/i;->y:Lh/n;

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Lh/n;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1d

    :goto_f
    array-length v0, p1

    if-ge v2, v0, :cond_2e

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    array-length p1, p0

    new-array p1, p1, [I

    :goto_20
    array-length v0, p0

    if-ge v2, v0, :cond_2e

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2e
    return-object p1
.end method

.method public final d()I
    .registers 4

    iget-object v0, p0, Lg/i;->w:Lh/a;

    iget v0, v0, Lh/a;->d:F

    iget v1, p0, Lg/i;->u:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lg/i;->x:Lh/a;

    iget v1, v1, Lh/a;->d:F

    iget v2, p0, Lg/i;->u:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lg/i;->v:Lh/a;

    iget v2, v2, Lh/a;->d:F

    iget p0, p0, Lg/i;->u:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v2, 0x11

    if-eqz v0, :cond_2b

    const/16 v2, 0x20f

    mul-int/2addr v2, v0

    :cond_2b
    if-eqz v1, :cond_30

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, v1

    :cond_30
    if-eqz p0, :cond_35

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, p0

    :cond_35
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lg/i;->p:Z

    if-eqz v2, :cond_9

    return-void

    :cond_9
    iget-object v2, v0, Lg/i;->s:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lg/a;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget v2, v0, Lg/i;->t:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5b

    invoke-virtual/range {p0 .. p0}, Lg/i;->d()I

    move-result v2

    iget-object v3, v0, Lg/i;->q:Landroidx/collection/LongSparseArray;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_25

    goto/16 :goto_a9

    :cond_25
    iget-object v2, v0, Lg/i;->w:Lh/a;

    invoke-virtual {v2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, v0, Lg/i;->x:Lh/a;

    invoke-virtual {v3}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v6, v0, Lg/i;->v:Lh/a;

    invoke-virtual {v6}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll/c;

    iget-object v7, v6, Ll/c;->b:[I

    invoke-virtual {v0, v7}, Lg/i;->c([I)[I

    move-result-object v13

    iget-object v14, v6, Ll/c;->a:[F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget v11, v3, Landroid/graphics/PointF;->x:F

    iget v12, v3, Landroid/graphics/PointF;->y:F

    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v3, v0, Lg/i;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_a9

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lg/i;->d()I

    move-result v2

    iget-object v3, v0, Lg/i;->r:Landroidx/collection/LongSparseArray;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RadialGradient;

    if-eqz v2, :cond_6b

    goto :goto_a9

    :cond_6b
    iget-object v2, v0, Lg/i;->w:Lh/a;

    invoke-virtual {v2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, v0, Lg/i;->x:Lh/a;

    invoke-virtual {v3}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v6, v0, Lg/i;->v:Lh/a;

    invoke-virtual {v6}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll/c;

    iget-object v7, v6, Ll/c;->b:[I

    invoke-virtual {v0, v7}, Lg/i;->c([I)[I

    move-result-object v12

    iget-object v13, v6, Ll/c;->a:[F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v9

    float-to-double v6, v2

    sub-float/2addr v3, v10

    float-to-double v2, v3

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v11, v2

    new-instance v2, Landroid/graphics/RadialGradient;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v3, v0, Lg/i;->r:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_a9
    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lg/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super/range {p0 .. p3}, Lg/a;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lg/i;->o:Ljava/lang/String;

    return-object p0
.end method
