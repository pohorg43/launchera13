.class public Lg/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/e;
.implements Lg/m;
.implements Lg/j;
.implements Lh/a$b;
.implements Lg/k;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Path;

.field public final c:Lcom/airbnb/lottie/j;

.field public final d:Lm/b;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lh/m;

.field public j:Lg/d;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Ll/i;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/p;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/p;->b:Landroid/graphics/Path;

    iput-object p1, p0, Lg/p;->c:Lcom/airbnb/lottie/j;

    iput-object p2, p0, Lg/p;->d:Lm/b;

    iget p1, p3, Ll/i;->a:I

    packed-switch p1, :pswitch_data_64

    goto :goto_1e

    :pswitch_1b  #0x0
    iget-object v0, p3, Ll/i;->b:Ljava/lang/String;

    goto :goto_20

    :goto_1e
    iget-object v0, p3, Ll/i;->b:Ljava/lang/String;

    :goto_20
    iput-object v0, p0, Lg/p;->e:Ljava/lang/String;

    packed-switch p1, :pswitch_data_6a

    goto :goto_29

    :pswitch_26  #0x0
    iget-boolean p1, p3, Ll/i;->f:Z

    goto :goto_2b

    :goto_29
    iget-boolean p1, p3, Ll/i;->f:Z

    :goto_2b
    iput-boolean p1, p0, Lg/p;->f:Z

    iget-object p1, p3, Ll/i;->c:Lk/b;

    invoke-virtual {p1}, Lk/b;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/p;->g:Lh/a;

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Ll/i;->d:Ljava/lang/Object;

    check-cast p1, Lk/b;

    invoke-virtual {p1}, Lk/b;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/p;->h:Lh/a;

    invoke-virtual {p2, p1}, Lm/b;->c(Lh/a;)V

    iget-object p1, p1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Ll/i;->e:Ljava/lang/Object;

    check-cast p1, Lk/k;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lh/m;

    invoke-direct {p3, p1}, Lh/m;-><init>(Lk/k;)V

    iput-object p3, p0, Lg/p;->i:Lh/m;

    invoke-virtual {p3, p2}, Lh/m;->a(Lm/b;)V

    invoke-virtual {p3, p0}, Lh/m;->b(Lh/a$b;)V

    return-void

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_1b  #00000000
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_26  #00000000
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

.method public absorbContent(Ljava/util/ListIterator;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lg/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lg/p;->j:Lg/d;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_12

    goto :goto_5

    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_17
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_17

    :cond_28
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lg/d;

    iget-object v2, p0, Lg/p;->c:Lcom/airbnb/lottie/j;

    iget-object v3, p0, Lg/p;->d:Lm/b;

    iget-boolean v5, p0, Lg/p;->f:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lg/d;-><init>(Lcom/airbnb/lottie/j;Lm/b;Ljava/lang/String;ZLjava/util/List;Lk/k;)V

    iput-object p1, p0, Lg/p;->j:Lg/d;

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

    iget-object v0, p0, Lg/p;->i:Lh/m;

    invoke-virtual {v0, p1, p2}, Lh/m;->c(Ljava/lang/Object;Lr/c;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/airbnb/lottie/o;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_14

    iget-object p0, p0, Lg/p;->g:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_1e

    :cond_14
    sget-object v0, Lcom/airbnb/lottie/o;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_1e

    iget-object p0, p0, Lg/p;->h:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    :cond_1e
    :goto_1e
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 13

    iget-object v0, p0, Lg/p;->g:Lh/a;

    invoke-virtual {v0}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lg/p;->h:Lh/a;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lg/p;->i:Lh/m;

    iget-object v2, v2, Lh/m;->m:Lh/a;

    invoke-virtual {v2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lg/p;->i:Lh/m;

    iget-object v4, v4, Lh/m;->n:Lh/a;

    invoke-virtual {v4}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_3b
    if-ltz v3, :cond_62

    iget-object v5, p0, Lg/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lg/p;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Lg/p;->i:Lh/m;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lh/m;->f(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, Lq/i;->e(FFF)F

    move-result v6

    mul-float/2addr v6, v5

    iget-object v5, p0, Lg/p;->j:Lg/d;

    iget-object v7, p0, Lg/p;->a:Landroid/graphics/Matrix;

    float-to-int v6, v6

    invoke-virtual {v5, p1, v7, v6}, Lg/d;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    :cond_62
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 4

    iget-object p0, p0, Lg/p;->j:Lg/d;

    invoke-virtual {p0, p1, p2, p3}, Lg/d;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lg/p;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 7

    iget-object v0, p0, Lg/p;->j:Lg/d;

    invoke-virtual {v0}, Lg/d;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lg/p;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lg/p;->g:Lh/a;

    invoke-virtual {v1}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lg/p;->h:Lh/a;

    invoke-virtual {v2}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_26
    if-ltz v1, :cond_3f

    iget-object v3, p0, Lg/p;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lg/p;->i:Lh/m;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lh/m;->f(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lg/p;->b:Landroid/graphics/Path;

    iget-object v4, p0, Lg/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    :cond_3f
    iget-object p0, p0, Lg/p;->b:Landroid/graphics/Path;

    return-object p0
.end method

.method public onValueChanged()V
    .registers 1

    iget-object p0, p0, Lg/p;->c:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 3
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

    iget-object p0, p0, Lg/p;->j:Lg/d;

    invoke-virtual {p0, p1, p2}, Lg/d;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
