.class public Lg/f;
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

.field public final d:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ll/a;

.field public g:Lg/b;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Ll/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/f;->a:Landroid/graphics/Path;

    new-instance v0, Lg/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/b;-><init>(I)V

    iput-object v0, p0, Lg/f;->g:Lg/b;

    iget-object v0, p3, Ll/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lg/f;->b:Ljava/lang/String;

    iput-object p1, p0, Lg/f;->c:Lcom/airbnb/lottie/j;

    iget-object p1, p3, Ll/a;->c:Lk/e;

    invoke-virtual {p1}, Lk/e;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/f;->d:Lh/a;

    iget-object v0, p3, Ll/a;->b:Lk/l;

    invoke-interface {v0}, Lk/l;->createAnimation()Lh/a;

    move-result-object v0

    iput-object v0, p0, Lg/f;->e:Lh/a;

    iput-object p3, p0, Lg/f;->f:Ll/a;

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    invoke-virtual {p2, v0}, Lm/b;->c(Lh/a;)V

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    sget-object v0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lg/f;->d:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_15

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/o;->j:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_15

    iget-object p0, p0, Lg/f;->e:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    :cond_15
    :goto_15
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lg/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lg/f;->h:Z

    if-eqz v1, :cond_9

    iget-object v0, v0, Lg/f;->a:Landroid/graphics/Path;

    return-object v0

    :cond_9
    iget-object v1, v0, Lg/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lg/f;->f:Ll/a;

    iget-boolean v1, v1, Ll/a;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    iput-boolean v2, v0, Lg/f;->h:Z

    iget-object v0, v0, Lg/f;->a:Landroid/graphics/Path;

    return-object v0

    :cond_1a
    iget-object v1, v0, Lg/f;->d:Lh/a;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    const v4, 0x3f0d6239  # 0.55228f

    mul-float v12, v3, v4

    mul-float/2addr v4, v1

    iget-object v5, v0, Lg/f;->a:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, v0, Lg/f;->f:Ll/a;

    iget-boolean v5, v5, Ll/a;->d:Z

    const/4 v13, 0x0

    if-eqz v5, :cond_7b

    iget-object v5, v0, Lg/f;->a:Landroid/graphics/Path;

    neg-float v11, v1

    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v14, v0, Lg/f;->a:Landroid/graphics/Path;

    sub-float v8, v13, v12

    neg-float v6, v3

    sub-float v21, v13, v4

    const/16 v20, 0x0

    move v15, v8

    move/from16 v16, v11

    move/from16 v17, v6

    move/from16 v18, v21

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lg/f;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v7, v4

    move v9, v1

    move v14, v11

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lg/f;->a:Landroid/graphics/Path;

    add-float/2addr v12, v13

    const/4 v11, 0x0

    move v6, v12

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lg/f;->a:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v21

    move v8, v12

    move v9, v14

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_b9

    :cond_7b
    iget-object v5, v0, Lg/f;->a:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lg/f;->a:Landroid/graphics/Path;

    add-float v14, v12, v13

    sub-float v16, v13, v4

    const/4 v11, 0x0

    move v6, v14

    move v7, v15

    move v8, v3

    move/from16 v9, v16

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lg/f;->a:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v6, v3

    move v7, v4

    move v8, v14

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lg/f;->a:Landroid/graphics/Path;

    sub-float v17, v13, v12

    neg-float v3, v3

    const/4 v11, 0x0

    move/from16 v6, v17

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v14, v0, Lg/f;->a:Landroid/graphics/Path;

    const/16 v19, 0x0

    move v1, v15

    move v15, v3

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_b9
    iget-object v1, v0, Lg/f;->e:Lh/a;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v3, v0, Lg/f;->a:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lg/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lg/f;->g:Lg/b;

    iget-object v3, v0, Lg/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lg/b;->a(Landroid/graphics/Path;)V

    iput-boolean v2, v0, Lg/f;->h:Z

    iget-object v0, v0, Lg/f;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public onValueChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/f;->h:Z

    iget-object p0, p0, Lg/f;->c:Lcom/airbnb/lottie/j;

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

    iget-object v1, p0, Lg/f;->g:Lg/b;

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
