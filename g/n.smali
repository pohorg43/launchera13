.class public Lg/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/m;
.implements Lh/a$b;
.implements Lg/k;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/airbnb/lottie/j;

.field public final d:I

.field public final e:Z

.field public final f:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lh/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lh/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lg/b;

.field public n:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Ll/h;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/n;->a:Landroid/graphics/Path;

    new-instance v0, Lg/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/b;-><init>(I)V

    iput-object v0, p0, Lg/n;->m:Lg/b;

    iput-object p1, p0, Lg/n;->c:Lcom/airbnb/lottie/j;

    iget-object p1, p3, Ll/h;->a:Ljava/lang/String;

    iput-object p1, p0, Lg/n;->b:Ljava/lang/String;

    iget p1, p3, Ll/h;->b:I

    iput p1, p0, Lg/n;->d:I

    iget-boolean v0, p3, Ll/h;->j:Z

    iput-boolean v0, p0, Lg/n;->e:Z

    iget-object v0, p3, Ll/h;->c:Lk/b;

    invoke-virtual {v0}, Lk/b;->createAnimation()Lh/a;

    move-result-object v0

    iput-object v0, p0, Lg/n;->f:Lh/a;

    iget-object v1, p3, Ll/h;->d:Lk/l;

    invoke-interface {v1}, Lk/l;->createAnimation()Lh/a;

    move-result-object v1

    iput-object v1, p0, Lg/n;->g:Lh/a;

    iget-object v2, p3, Ll/h;->e:Lk/b;

    invoke-virtual {v2}, Lk/b;->createAnimation()Lh/a;

    move-result-object v2

    iput-object v2, p0, Lg/n;->h:Lh/a;

    iget-object v3, p3, Ll/h;->g:Lk/b;

    invoke-virtual {v3}, Lk/b;->createAnimation()Lh/a;

    move-result-object v3

    iput-object v3, p0, Lg/n;->j:Lh/a;

    iget-object v4, p3, Ll/h;->i:Lk/b;

    invoke-virtual {v4}, Lk/b;->createAnimation()Lh/a;

    move-result-object v4

    iput-object v4, p0, Lg/n;->l:Lh/a;

    const/4 v5, 0x1

    if-ne p1, v5, :cond_5c

    iget-object v6, p3, Ll/h;->f:Lk/b;

    invoke-virtual {v6}, Lk/b;->createAnimation()Lh/a;

    move-result-object v6

    iput-object v6, p0, Lg/n;->i:Lh/a;

    iget-object p3, p3, Ll/h;->h:Lk/b;

    invoke-virtual {p3}, Lk/b;->createAnimation()Lh/a;

    move-result-object p3

    iput-object p3, p0, Lg/n;->k:Lh/a;

    goto :goto_61

    :cond_5c
    const/4 p3, 0x0

    iput-object p3, p0, Lg/n;->i:Lh/a;

    iput-object p3, p0, Lg/n;->k:Lh/a;

    :goto_61
    invoke-virtual {p2, v0}, Lm/b;->c(Lh/a;)V

    invoke-virtual {p2, v1}, Lm/b;->c(Lh/a;)V

    invoke-virtual {p2, v2}, Lm/b;->c(Lh/a;)V

    invoke-virtual {p2, v3}, Lm/b;->c(Lh/a;)V

    invoke-virtual {p2, v4}, Lm/b;->c(Lh/a;)V

    if-ne p1, v5, :cond_7c

    iget-object p3, p0, Lg/n;->i:Lh/a;

    invoke-virtual {p2, p3}, Lm/b;->c(Lh/a;)V

    iget-object p3, p0, Lg/n;->k:Lh/a;

    invoke-virtual {p2, p3}, Lm/b;->c(Lh/a;)V

    :cond_7c
    iget-object p2, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, v1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, v2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, v3, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, v4, Lh/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p1, v5, :cond_a5

    iget-object p1, p0, Lg/n;->i:Lh/a;

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/n;->k:Lh/a;

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a5
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

    sget-object v0, Lcom/airbnb/lottie/o;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lg/n;->f:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_50

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/o;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_16

    iget-object p0, p0, Lg/n;->h:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_50

    :cond_16
    sget-object v0, Lcom/airbnb/lottie/o;->j:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_21

    iget-object p0, p0, Lg/n;->g:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_50

    :cond_21
    sget-object v0, Lcom/airbnb/lottie/o;->u:Ljava/lang/Float;

    if-ne p1, v0, :cond_2e

    iget-object v0, p0, Lg/n;->i:Lh/a;

    if-eqz v0, :cond_2e

    iget-object p0, v0, Lh/a;->e:Lr/c;

    iput-object p2, v0, Lh/a;->e:Lr/c;

    goto :goto_50

    :cond_2e
    sget-object v0, Lcom/airbnb/lottie/o;->v:Ljava/lang/Float;

    if-ne p1, v0, :cond_39

    iget-object p0, p0, Lg/n;->j:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_50

    :cond_39
    sget-object v0, Lcom/airbnb/lottie/o;->w:Ljava/lang/Float;

    if-ne p1, v0, :cond_46

    iget-object v0, p0, Lg/n;->k:Lh/a;

    if-eqz v0, :cond_46

    iget-object p0, v0, Lh/a;->e:Lr/c;

    iput-object p2, v0, Lh/a;->e:Lr/c;

    goto :goto_50

    :cond_46
    sget-object v0, Lcom/airbnb/lottie/o;->x:Ljava/lang/Float;

    if-ne p1, v0, :cond_50

    iget-object p0, p0, Lg/n;->l:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    :cond_50
    :goto_50
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lg/n;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 42

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lg/n;->n:Z

    if-eqz v1, :cond_9

    iget-object v0, v0, Lg/n;->a:Landroid/graphics/Path;

    return-object v0

    :cond_9
    iget-object v1, v0, Lg/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lg/n;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    iput-boolean v2, v0, Lg/n;->n:Z

    iget-object v0, v0, Lg/n;->a:Landroid/graphics/Path;

    return-object v0

    :cond_18
    iget v1, v0, Lg/n;->d:I

    invoke-static {v1}, Lj/b;->f(I)I

    move-result v1

    const/high16 v3, 0x42c80000  # 100.0f

    const-wide v4, 0x401921fb54442d18L  # 6.283185307179586

    const-wide v6, 0x4056800000000000L  # 90.0

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_12b

    if-eq v1, v2, :cond_32

    goto/16 :goto_313

    :cond_32
    iget-object v1, v0, Lg/n;->f:Lh/a;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, v0, Lg/n;->h:Lh/a;

    if-nez v2, :cond_49

    goto :goto_54

    :cond_49
    invoke-virtual {v2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    :goto_54
    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    int-to-double v1, v1

    div-double/2addr v4, v1

    double-to-float v4, v4

    iget-object v5, v0, Lg/n;->l:Lh/a;

    invoke-virtual {v5}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v5, v3

    iget-object v3, v0, Lg/n;->j:Lh/a;

    invoke-virtual {v3}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v8, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    double-to-float v10, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    double-to-float v11, v11

    iget-object v12, v0, Lg/n;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v12, v4

    add-double/2addr v6, v12

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const/4 v4, 0x0

    :goto_8e
    int-to-double v14, v4

    cmpg-double v14, v14, v1

    if-gez v14, :cond_113

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    double-to-float v14, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-wide/from16 v23, v1

    mul-double v1, v15, v8

    double-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_fa

    move-wide/from16 v25, v8

    float-to-double v8, v11

    move-wide/from16 v27, v6

    float-to-double v6, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v8, 0x3ff921fb54442d18L  # 1.5707963267948966

    sub-double/2addr v6, v8

    double-to-float v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v2, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v1

    move-wide/from16 v29, v12

    float-to-double v12, v14

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v12, 0x3ff921fb54442d18L  # 1.5707963267948966

    sub-double/2addr v7, v12

    double-to-float v7, v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v9, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v8, v3, v5

    const/high16 v12, 0x3e800000  # 0.25f

    mul-float/2addr v8, v12

    mul-float/2addr v2, v8

    mul-float/2addr v6, v8

    mul-float/2addr v9, v8

    mul-float/2addr v8, v7

    iget-object v7, v0, Lg/n;->a:Landroid/graphics/Path;

    sub-float v17, v10, v2

    sub-float v18, v11, v6

    add-float v19, v14, v9

    add-float v20, v1, v8

    move-object/from16 v16, v7

    move/from16 v21, v14

    move/from16 v22, v1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_105

    :cond_fa
    move-wide/from16 v27, v6

    move-wide/from16 v25, v8

    move-wide/from16 v29, v12

    iget-object v2, v0, Lg/n;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v14, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_105
    add-double v6, v27, v29

    add-int/lit8 v4, v4, 0x1

    move v11, v1

    move v10, v14

    move-wide/from16 v1, v23

    move-wide/from16 v8, v25

    move-wide/from16 v12, v29

    goto/16 :goto_8e

    :cond_113
    iget-object v1, v0, Lg/n;->g:Lh/a;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lg/n;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lg/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_313

    :cond_12b
    iget-object v1, v0, Lg/n;->f:Lh/a;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Lg/n;->h:Lh/a;

    if-nez v2, :cond_13c

    goto :goto_147

    :cond_13c
    invoke-virtual {v2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    :goto_147
    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    float-to-double v8, v1

    div-double/2addr v4, v8

    double-to-float v2, v4

    const/high16 v4, 0x40000000  # 2.0f

    div-float v4, v2, v4

    float-to-int v5, v1

    int-to-float v5, v5

    sub-float/2addr v1, v5

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_161

    const/high16 v10, 0x3f800000  # 1.0f

    sub-float/2addr v10, v1

    mul-float/2addr v10, v4

    float-to-double v10, v10

    add-double/2addr v6, v10

    :cond_161
    iget-object v10, v0, Lg/n;->j:Lh/a;

    invoke-virtual {v10}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget-object v11, v0, Lg/n;->i:Lh/a;

    invoke-virtual {v11}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v12, v0, Lg/n;->k:Lh/a;

    if-eqz v12, :cond_189

    invoke-virtual {v12}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float/2addr v12, v3

    goto :goto_18a

    :cond_189
    const/4 v12, 0x0

    :goto_18a
    iget-object v13, v0, Lg/n;->l:Lh/a;

    if-eqz v13, :cond_19a

    invoke-virtual {v13}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v13, v3

    goto :goto_19b

    :cond_19a
    const/4 v13, 0x0

    :goto_19b
    if-eqz v5, :cond_1c1

    invoke-static {v10, v11, v1, v11}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v3

    float-to-double v14, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move/from16 v18, v11

    move/from16 v19, v12

    mul-double v11, v16, v14

    double-to-float v11, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v12, v14

    iget-object v14, v0, Lg/n;->a:Landroid/graphics/Path;

    invoke-virtual {v14, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v14, v2, v1

    const/high16 v15, 0x40000000  # 2.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    add-double/2addr v6, v14

    goto :goto_1df

    :cond_1c1
    move/from16 v18, v11

    move/from16 v19, v12

    float-to-double v11, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v11

    double-to-float v3, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v11

    double-to-float v12, v14

    iget-object v11, v0, Lg/n;->a:Landroid/graphics/Path;

    invoke-virtual {v11, v3, v12}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v14, v4

    add-double/2addr v6, v14

    const/4 v11, 0x0

    move/from16 v40, v11

    move v11, v3

    move/from16 v3, v40

    :goto_1df
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    const-wide/high16 v14, 0x4000000000000000L  # 2.0

    mul-double/2addr v8, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v14, v16

    move/from16 v15, v17

    :goto_1f2
    int-to-double v4, v14

    cmpg-double v22, v4, v8

    if-gez v22, :cond_2fd

    if-eqz v15, :cond_1fc

    move/from16 v22, v10

    goto :goto_1fe

    :cond_1fc
    move/from16 v22, v18

    :goto_1fe
    const/16 v23, 0x0

    cmpl-float v23, v3, v23

    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    if-eqz v23, :cond_219

    sub-double v24, v8, v16

    cmpl-double v24, v4, v24

    if-nez v24, :cond_219

    mul-float v24, v2, v1

    const/high16 v25, 0x40000000  # 2.0f

    div-float v24, v24, v25

    move/from16 v40, v24

    move/from16 v24, v2

    move/from16 v2, v40

    goto :goto_21d

    :cond_219
    move/from16 v24, v2

    move/from16 v2, v20

    :goto_21d
    const-wide/high16 v25, 0x3ff0000000000000L  # 1.0

    if-eqz v23, :cond_22c

    sub-double v27, v8, v25

    cmpl-double v23, v4, v27

    if-nez v23, :cond_22c

    move/from16 v22, v2

    move/from16 v23, v3

    goto :goto_232

    :cond_22c
    move/from16 v23, v3

    move/from16 v3, v22

    move/from16 v22, v2

    :goto_232
    float-to-double v2, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    move-wide/from16 v29, v4

    mul-double v4, v27, v2

    double-to-float v4, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v2, v2, v27

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v5, v19, v3

    if-nez v5, :cond_25b

    cmpl-float v3, v13, v3

    if-nez v3, :cond_25b

    iget-object v3, v0, Lg/n;->a:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v38, v2

    move-wide/from16 v27, v6

    move/from16 v39, v13

    :goto_257
    move/from16 v2, v22

    goto/16 :goto_2eb

    :cond_25b
    move-wide/from16 v27, v6

    float-to-double v5, v12

    move v7, v12

    move v3, v13

    float-to-double v12, v11

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v12, 0x3ff921fb54442d18L  # 1.5707963267948966

    sub-double/2addr v5, v12

    double-to-float v5, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    move v13, v7

    float-to-double v6, v2

    move/from16 v38, v2

    move/from16 v39, v3

    float-to-double v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v6, 0x3ff921fb54442d18L  # 1.5707963267948966

    sub-double/2addr v2, v6

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    if-eqz v15, :cond_299

    move/from16 v3, v19

    goto :goto_29b

    :cond_299
    move/from16 v3, v39

    :goto_29b
    if-eqz v15, :cond_2a0

    move/from16 v7, v39

    goto :goto_2a2

    :cond_2a0
    move/from16 v7, v19

    :goto_2a2
    if-eqz v15, :cond_2a7

    move/from16 v31, v18

    goto :goto_2a9

    :cond_2a7
    move/from16 v31, v10

    :goto_2a9
    if-eqz v15, :cond_2ae

    move/from16 v32, v10

    goto :goto_2b0

    :cond_2ae
    move/from16 v32, v18

    :goto_2b0
    mul-float v31, v31, v3

    const v3, 0x3ef4e26d  # 0.47829f

    mul-float v31, v31, v3

    mul-float v12, v12, v31

    mul-float v31, v31, v5

    mul-float v32, v32, v7

    mul-float v32, v32, v3

    mul-float v6, v6, v32

    mul-float v32, v32, v2

    if-eqz v21, :cond_2d4

    if-nez v14, :cond_2cb

    mul-float/2addr v12, v1

    mul-float v31, v31, v1

    goto :goto_2d4

    :cond_2cb
    sub-double v2, v8, v25

    cmpl-double v2, v29, v2

    if-nez v2, :cond_2d4

    mul-float/2addr v6, v1

    mul-float v32, v32, v1

    :cond_2d4
    :goto_2d4
    iget-object v2, v0, Lg/n;->a:Landroid/graphics/Path;

    sub-float v3, v11, v12

    sub-float v33, v13, v31

    add-float v34, v4, v6

    add-float v35, v38, v32

    move-object/from16 v31, v2

    move/from16 v32, v3

    move/from16 v36, v4

    move/from16 v37, v38

    invoke-virtual/range {v31 .. v37}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_257

    :goto_2eb
    float-to-double v2, v2

    add-double v6, v27, v2

    xor-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v11, v4

    move/from16 v3, v23

    move/from16 v2, v24

    move/from16 v12, v38

    move/from16 v13, v39

    goto/16 :goto_1f2

    :cond_2fd
    iget-object v1, v0, Lg/n;->g:Lh/a;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lg/n;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lg/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :goto_313
    iget-object v1, v0, Lg/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lg/n;->m:Lg/b;

    iget-object v2, v0, Lg/n;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lg/b;->a(Landroid/graphics/Path;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/n;->n:Z

    iget-object v0, v0, Lg/n;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public onValueChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/n;->n:Z

    iget-object p0, p0, Lg/n;->c:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 6
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

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_29

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c;

    instance-of v1, v0, Lg/s;

    if-eqz v1, :cond_26

    check-cast v0, Lg/s;

    iget v1, v0, Lg/s;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    iget-object v1, p0, Lg/n;->m:Lg/b;

    iget-object v1, v1, Lg/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lg/s;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_29
    return-void
.end method
