.class public Lg/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/a$b;
.implements Lg/k;
.implements Lg/m;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/RectF;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lcom/airbnb/lottie/j;

.field public final f:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Landroid/graphics/PointF;",
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

.field public i:Lg/b;

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Ll/i;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/o;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/o;->b:Landroid/graphics/RectF;

    new-instance v0, Lg/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/b;-><init>(I)V

    iput-object v0, p0, Lg/o;->i:Lg/b;

    iget v0, p3, Ll/i;->a:I

    packed-switch v0, :pswitch_data_68

    goto :goto_22

    :pswitch_1f  #0x0
    iget-object v1, p3, Ll/i;->b:Ljava/lang/String;

    goto :goto_24

    :goto_22
    iget-object v1, p3, Ll/i;->b:Ljava/lang/String;

    :goto_24
    iput-object v1, p0, Lg/o;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_6e

    goto :goto_2d

    :pswitch_2a  #0x0
    iget-boolean v0, p3, Ll/i;->f:Z

    goto :goto_2f

    :goto_2d
    iget-boolean v0, p3, Ll/i;->f:Z

    :goto_2f
    iput-boolean v0, p0, Lg/o;->d:Z

    iput-object p1, p0, Lg/o;->e:Lcom/airbnb/lottie/j;

    iget-object p1, p3, Ll/i;->d:Ljava/lang/Object;

    check-cast p1, Lk/l;

    invoke-interface {p1}, Lk/l;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/o;->f:Lh/a;

    iget-object v0, p3, Ll/i;->e:Ljava/lang/Object;

    check-cast v0, Lk/e;

    invoke-virtual {v0}, Lk/e;->createAnimation()Lh/a;

    move-result-object v0

    iput-object v0, p0, Lg/o;->g:Lh/a;

    iget-object p3, p3, Ll/i;->c:Lk/b;

    invoke-virtual {p3}, Lk/b;->createAnimation()Lh/a;

    move-result-object p3

    iput-object p3, p0, Lg/o;->h:Lh/a;

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    invoke-virtual {p2, v0}, Lm/b;->c(Lh/a;)V

    invoke-virtual {p2, p3}, Lm/b;->c(Lh/a;)V

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_1f  #00000000
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_2a  #00000000
    .end packed-switch
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

    sget-object v0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lg/o;->g:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_20

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/o;->j:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_16

    iget-object p0, p0, Lg/o;->f:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_20

    :cond_16
    sget-object v0, Lcom/airbnb/lottie/o;->i:Ljava/lang/Float;

    if-ne p1, v0, :cond_20

    iget-object p0, p0, Lg/o;->h:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    :cond_20
    :goto_20
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lg/o;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lg/o;->j:Z

    if-eqz v1, :cond_9

    iget-object v0, v0, Lg/o;->a:Landroid/graphics/Path;

    return-object v0

    :cond_9
    iget-object v1, v0, Lg/o;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lg/o;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    iput-boolean v2, v0, Lg/o;->j:Z

    iget-object v0, v0, Lg/o;->a:Landroid/graphics/Path;

    return-object v0

    :cond_18
    iget-object v1, v0, Lg/o;->g:Lh/a;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    iget-object v5, v0, Lg/o;->h:Lh/a;

    const/4 v6, 0x0

    if-nez v5, :cond_2f

    move v5, v6

    goto :goto_35

    :cond_2f
    check-cast v5, Lh/c;

    invoke-virtual {v5}, Lh/c;->i()F

    move-result v5

    :goto_35
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    cmpl-float v8, v5, v7

    if-lez v8, :cond_3e

    move v5, v7

    :cond_3e
    iget-object v7, v0, Lg/o;->f:Lh/a;

    invoke-virtual {v7}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget-object v8, v0, Lg/o;->a:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget v10, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v1

    add-float/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, v0, Lg/o;->a:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget v10, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v1

    sub-float/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v8, v5, v6

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000  # 90.0f

    if-lez v8, :cond_80

    iget-object v11, v0, Lg/o;->b:Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    add-float v13, v12, v3

    mul-float v14, v5, v4

    sub-float/2addr v13, v14

    iget v15, v7, Landroid/graphics/PointF;->y:F

    add-float v16, v15, v1

    sub-float v14, v16, v14

    add-float/2addr v12, v3

    add-float/2addr v15, v1

    invoke-virtual {v11, v13, v14, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v11, v0, Lg/o;->a:Landroid/graphics/Path;

    iget-object v12, v0, Lg/o;->b:Landroid/graphics/RectF;

    invoke-virtual {v11, v12, v6, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_80
    iget-object v6, v0, Lg/o;->a:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v3

    add-float/2addr v11, v5

    iget v12, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v1

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_a8

    iget-object v6, v0, Lg/o;->b:Landroid/graphics/RectF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v3

    iget v13, v7, Landroid/graphics/PointF;->y:F

    add-float v14, v13, v1

    mul-float v15, v5, v4

    sub-float/2addr v14, v15

    sub-float/2addr v11, v3

    add-float/2addr v11, v15

    add-float/2addr v13, v1

    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lg/o;->a:Landroid/graphics/Path;

    iget-object v11, v0, Lg/o;->b:Landroid/graphics/RectF;

    invoke-virtual {v6, v11, v10, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_a8
    iget-object v6, v0, Lg/o;->a:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v3

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v1

    add-float/2addr v12, v5

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_d2

    iget-object v6, v0, Lg/o;->b:Landroid/graphics/RectF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v3

    iget v13, v7, Landroid/graphics/PointF;->y:F

    sub-float v14, v13, v1

    sub-float/2addr v11, v3

    mul-float v15, v5, v4

    add-float/2addr v11, v15

    sub-float/2addr v13, v1

    add-float/2addr v13, v15

    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lg/o;->a:Landroid/graphics/Path;

    iget-object v11, v0, Lg/o;->b:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000  # 180.0f

    invoke-virtual {v6, v11, v12, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_d2
    iget-object v6, v0, Lg/o;->a:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v3

    sub-float/2addr v11, v5

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v1

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_fb

    iget-object v6, v0, Lg/o;->b:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    add-float v11, v8, v3

    mul-float/2addr v5, v4

    sub-float/2addr v11, v5

    iget v4, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v4, v1

    add-float/2addr v8, v3

    sub-float/2addr v4, v1

    add-float/2addr v4, v5

    invoke-virtual {v6, v11, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lg/o;->a:Landroid/graphics/Path;

    iget-object v3, v0, Lg/o;->b:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000  # 270.0f

    invoke-virtual {v1, v3, v4, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_fb
    iget-object v1, v0, Lg/o;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lg/o;->i:Lg/b;

    iget-object v3, v0, Lg/o;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lg/b;->a(Landroid/graphics/Path;)V

    iput-boolean v2, v0, Lg/o;->j:Z

    iget-object v0, v0, Lg/o;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public onValueChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/o;->j:Z

    iget-object p0, p0, Lg/o;->e:Lcom/airbnb/lottie/j;

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

    iget-object v1, p0, Lg/o;->i:Lg/b;

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
