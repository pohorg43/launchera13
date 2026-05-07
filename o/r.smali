.class public Lo/r;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "k"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/r;->a:Lp/c$a;

    return-void
.end method

.method public static a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp/c;",
            "Lcom/airbnb/lottie/d;",
            "F",
            "Lo/h0<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lr/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v1

    sget-object v2, Lp/c$b;->f:Lp/c$b;

    if-ne v1, v2, :cond_13

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    return-object v0

    :cond_13
    invoke-virtual {p0}, Lp/c;->b()V

    :goto_16
    invoke-virtual {p0}, Lp/c;->e()Z

    move-result v1

    if-eqz v1, :cond_5f

    sget-object v1, Lo/r;->a:Lp/c$a;

    invoke-virtual {p0, v1}, Lp/c;->m(Lp/c$a;)I

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lp/c;->o()V

    goto :goto_16

    :cond_28
    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v1

    sget-object v2, Lp/c$b;->a:Lp/c$b;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_57

    invoke-virtual {p0}, Lp/c;->a()V

    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v1

    sget-object v2, Lp/c$b;->g:Lp/c$b;

    if-ne v1, v2, :cond_44

    invoke-static {p0, p1, p2, p3, v3}, Lo/q;->a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;Z)Lr/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_44
    :goto_44
    invoke-virtual {p0}, Lp/c;->e()Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3, v1}, Lo/q;->a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;Z)Lr/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_53
    :goto_53
    invoke-virtual {p0}, Lp/c;->c()V

    goto :goto_16

    :cond_57
    invoke-static {p0, p1, p2, p3, v3}, Lo/q;->a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;Z)Lr/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_5f
    invoke-virtual {p0}, Lp/c;->d()V

    invoke-static {v0}, Lo/r;->b(Ljava/util/List;)V

    return-object v0
.end method

.method public static b(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lr/a<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_5
    :goto_5
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_33

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/a;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr/a;

    iget v4, v3, Lr/a;->e:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lr/a;->f:Ljava/lang/Float;

    iget-object v4, v2, Lr/a;->c:Ljava/lang/Object;

    if-nez v4, :cond_5

    iget-object v3, v3, Lr/a;->b:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iput-object v3, v2, Lr/a;->c:Ljava/lang/Object;

    instance-of v3, v2, Lh/h;

    if-eqz v3, :cond_5

    check-cast v2, Lh/h;

    invoke-virtual {v2}, Lh/h;->e()V

    goto :goto_5

    :cond_33
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    iget-object v1, v0, Lr/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_41

    iget-object v1, v0, Lr/a;->c:Ljava/lang/Object;

    if-nez v1, :cond_4b

    :cond_41
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4b

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4b
    return-void
.end method
