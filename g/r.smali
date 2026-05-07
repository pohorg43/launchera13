.class public Lg/r;
.super Lg/a;
.source ""


# instance fields
.field public final o:Lm/b;

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lh/a;
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


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/b;Ll/n;)V
    .registers 15

    iget v0, p3, Ll/n;->g:I

    invoke-static {v0}, Lj/b;->i(I)Landroid/graphics/Paint$Cap;

    move-result-object v4

    iget v0, p3, Ll/n;->h:I

    invoke-static {v0}, Lj/b;->j(I)Landroid/graphics/Paint$Join;

    move-result-object v5

    iget v6, p3, Ll/n;->i:F

    iget-object v7, p3, Ll/n;->e:Lk/d;

    iget-object v8, p3, Ll/n;->f:Lk/b;

    iget-object v9, p3, Ll/n;->c:Ljava/util/List;

    iget-object v10, p3, Ll/n;->b:Lk/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lg/a;-><init>(Lcom/airbnb/lottie/j;Lm/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLk/d;Lk/b;Ljava/util/List;Lk/b;)V

    iput-object p2, p0, Lg/r;->o:Lm/b;

    iget-object p1, p3, Ll/n;->a:Ljava/lang/String;

    iput-object p1, p0, Lg/r;->p:Ljava/lang/String;

    iget-boolean p1, p3, Ll/n;->j:Z

    iput-boolean p1, p0, Lg/r;->q:Z

    iget-object p1, p3, Ll/n;->d:Lk/a;

    invoke-virtual {p1}, Lk/a;->createAnimation()Lh/a;

    move-result-object p1

    iput-object p1, p0, Lg/r;->r:Lh/a;

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

    sget-object v0, Lcom/airbnb/lottie/o;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_e

    iget-object p0, p0, Lg/r;->r:Lh/a;

    iget-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/a;->e:Lr/c;

    goto :goto_2b

    :cond_e
    sget-object v0, Lcom/airbnb/lottie/o;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2b

    const/4 p1, 0x0

    if-nez p2, :cond_18

    iput-object p1, p0, Lg/r;->s:Lh/a;

    goto :goto_2b

    :cond_18
    new-instance v0, Lh/n;

    invoke-direct {v0, p2, p1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object v0, p0, Lg/r;->s:Lh/a;

    iget-object p1, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/r;->o:Lm/b;

    iget-object p0, p0, Lg/r;->r:Lh/a;

    invoke-virtual {p1, p0}, Lm/b;->c(Lh/a;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 8

    iget-boolean v0, p0, Lg/r;->q:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lg/a;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lg/r;->r:Lh/a;

    check-cast v1, Lh/b;

    invoke-virtual {v1}, Lh/a;->a()Lr/a;

    move-result-object v2

    invoke-virtual {v1}, Lh/a;->c()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lh/b;->i(Lr/a;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lg/r;->s:Lh/a;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lg/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lh/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_29
    invoke-super {p0, p1, p2, p3}, Lg/a;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lg/r;->p:Ljava/lang/String;

    return-object p0
.end method
