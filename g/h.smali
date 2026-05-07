.class public Lg/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/e;
.implements Lh/a$b;
.implements Lg/k;


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Z

.field public final c:Lm/b;

.field public final d:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/graphics/Path;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/RectF;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/m;",
            ">;"
        }
    .end annotation
.end field

.field public final j:I

.field public final k:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ll/c;",
            "Ll/c;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lh/a;
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

.field public p:Lh/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final q:Lcom/airbnb/lottie/j;

.field public final r:I


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Ll/d;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lg/h;->d:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lg/h;->e:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/h;->f:Landroid/graphics/Path;

    new-instance v1, Lf/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lf/a;-><init>(I)V

    iput-object v1, p0, Lg/h;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lg/h;->h:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/h;->i:Ljava/util/List;

    iput-object p2, p0, Lg/h;->c:Lm/b;

    iget-object v1, p3, Ll/d;->g:Ljava/lang/String;

    iput-object v1, p0, Lg/h;->a:Ljava/lang/String;

    iget-boolean v1, p3, Ll/d;->h:Z

    iput-boolean v1, p0, Lg/h;->b:Z

    iput-object p1, p0, Lg/h;->q:Lcom/airbnb/lottie/j;

    iget v1, p3, Ll/d;->a:I

    iput v1, p0, Lg/h;->j:I

    iget-object v1, p3, Ll/d;->b:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object p1, p1, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {p1}, Lcom/airbnb/lottie/d;->b()F

    move-result p1

    const/high16 v0, 0x42000000  # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lg/h;->r:I

    iget-object p1, p3, Ll/d;->c:Lk/c;

    invoke-virtual {p1}, Lk/c;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/h;->k:Lh/a;

    iget-object v0, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    iget-object p1, p3, Ll/d;->d:Lk/d;

    invoke-virtual {p1}, Lk/d;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/h;->l:Lh/a;

    iget-object v0, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    iget-object p1, p3, Ll/d;->e:Lk/e;

    invoke-virtual {p1}, Lk/e;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/h;->m:Lh/a;

    iget-object v0, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    iget-object p1, p3, Ll/d;->f:Lk/e;

    invoke-virtual {p1}, Lk/e;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/h;->n:Lh/a;

    iget-object p3, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    return-void
.end method


# virtual methods
.method public a(Lj/f;ILjava/util/List;Lj/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/f;",
            "I",
            "Ljava/util/List<",
            "Lj/f;",
            ">;",
            "Lj/f;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p0}, Lq/i;->f(Lj/f;ILjava/util/List;Lj/f;Lg/k;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Lr/c;)V
    .registers 5
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

    sget-object v0, Lcom/airbnb/lottie/o;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lg/h;->l:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_50

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/o;->C:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_29

    if-nez p2, :cond_15

    iput-object v1, p0, Lg/h;->o:Lh/a;

    goto :goto_50

    :cond_15
    new-instance p1, Lh/n;

    invoke-direct {p1, p2, v1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lg/h;->o:Lh/a;

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/h;->c:Lm/b;

    iget-object p0, p0, Lg/h;->o:Lh/a;

    invoke-virtual {p1, p0}, Lm/b;->c(Lh/a;)V

    goto :goto_50

    :cond_29
    sget-object v0, Lcom/airbnb/lottie/o;->D:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_50

    if-nez p2, :cond_3d

    iget-object p1, p0, Lg/h;->p:Lh/n;

    if-eqz p1, :cond_3a

    iget-object p2, p0, Lg/h;->c:Lm/b;

    iget-object p2, p2, Lm/b;->t:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3a
    iput-object v1, p0, Lg/h;->p:Lh/n;

    goto :goto_50

    :cond_3d
    new-instance p1, Lh/n;

    invoke-direct {p1, p2, v1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object p1, p0, Lg/h;->p:Lh/n;

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/h;->c:Lm/b;

    iget-object p0, p0, Lg/h;->p:Lh/n;

    invoke-virtual {p1, p0}, Lm/b;->c(Lh/a;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public final c([I)[I
    .registers 5

    iget-object p0, p0, Lg/h;->p:Lh/n;

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

    iget-object v0, p0, Lg/h;->m:Lh/a;

    iget v0, v0, Lh/a;->d:F

    iget v1, p0, Lg/h;->r:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lg/h;->n:Lh/a;

    iget v1, v1, Lh/a;->d:F

    iget v2, p0, Lg/h;->r:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lg/h;->k:Lh/a;

    iget v2, v2, Lh/a;->d:F

    iget p0, p0, Lg/h;->r:I

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
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lg/h;->b:Z

    if-eqz v2, :cond_9

    return-void

    :cond_9
    iget-object v2, v0, Lg/h;->f:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    iget-object v4, v0, Lg/h;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    iget-object v4, v0, Lg/h;->f:Landroid/graphics/Path;

    iget-object v5, v0, Lg/h;->i:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/m;

    invoke-interface {v5}, Lg/m;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2c
    iget-object v3, v0, Lg/h;->f:Landroid/graphics/Path;

    iget-object v4, v0, Lg/h;->h:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v3, v0, Lg/h;->j:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_80

    invoke-virtual/range {p0 .. p0}, Lg/h;->d()I

    move-result v3

    iget-object v4, v0, Lg/h;->d:Landroidx/collection/LongSparseArray;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/LinearGradient;

    if-eqz v3, :cond_49

    goto/16 :goto_d7

    :cond_49
    iget-object v3, v0, Lg/h;->m:Lh/a;

    invoke-virtual {v3}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, v0, Lg/h;->n:Lh/a;

    invoke-virtual {v4}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget-object v7, v0, Lg/h;->k:Lh/a;

    invoke-virtual {v7}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll/c;

    iget-object v8, v7, Ll/c;->b:[I

    invoke-virtual {v0, v8}, Lg/h;->c([I)[I

    move-result-object v14

    iget-object v15, v7, Ll/c;->a:[F

    new-instance v7, Landroid/graphics/LinearGradient;

    iget v10, v3, Landroid/graphics/PointF;->x:F

    iget v11, v3, Landroid/graphics/PointF;->y:F

    iget v12, v4, Landroid/graphics/PointF;->x:F

    iget v13, v4, Landroid/graphics/PointF;->y:F

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v3, v0, Lg/h;->d:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v5, v6, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v3, v7

    goto :goto_d7

    :cond_80
    invoke-virtual/range {p0 .. p0}, Lg/h;->d()I

    move-result v3

    iget-object v4, v0, Lg/h;->e:Landroidx/collection/LongSparseArray;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RadialGradient;

    if-eqz v3, :cond_90

    goto :goto_d7

    :cond_90
    iget-object v3, v0, Lg/h;->m:Lh/a;

    invoke-virtual {v3}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, v0, Lg/h;->n:Lh/a;

    invoke-virtual {v4}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget-object v7, v0, Lg/h;->k:Lh/a;

    invoke-virtual {v7}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll/c;

    iget-object v8, v7, Ll/c;->b:[I

    invoke-virtual {v0, v8}, Lg/h;->c([I)[I

    move-result-object v13

    iget-object v14, v7, Ll/c;->a:[F

    iget v10, v3, Landroid/graphics/PointF;->x:F

    iget v11, v3, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v10

    float-to-double v7, v3

    sub-float/2addr v4, v11

    float-to-double v3, v4

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_c9

    const v3, 0x3a83126f  # 0.001f

    :cond_c9
    move v12, v3

    new-instance v3, Landroid/graphics/RadialGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v4, v0, Lg/h;->e:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v5, v6, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_d7
    invoke-virtual {v3, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lg/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lg/h;->o:Lh/a;

    if-eqz v1, :cond_ee

    iget-object v3, v0, Lg/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_ee
    move/from16 v1, p3

    int-to-float v1, v1

    const/high16 v3, 0x437f0000  # 255.0f

    div-float/2addr v1, v3

    iget-object v4, v0, Lg/h;->l:Lh/a;

    invoke-virtual {v4}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v1, v4

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, v0, Lg/h;->g:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-static {v1, v2, v4}, Lq/i;->c(III)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lg/h;->f:Landroid/graphics/Path;

    iget-object v0, v0, Lg/h;->g:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 7

    iget-object p3, p0, Lg/h;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_7
    iget-object v1, p0, Lg/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lg/h;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lg/h;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/m;

    invoke-interface {v2}, Lg/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_23
    iget-object p0, p0, Lg/h;->f:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lg/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lg/h;->q:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/c;",
            ">;",
            "Ljava/util/List<",
            "Lg/c;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1b

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c;

    instance-of v1, v0, Lg/m;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lg/h;->i:Ljava/util/List;

    check-cast v0, Lg/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method
