.class public Lo/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "k"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "y"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/a;->a:Lp/c$a;

    return-void
.end method

.method public static a(Lp/c;Lcom/airbnb/lottie/d;)Lg/b;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v1

    sget-object v2, Lp/c$b;->a:Lp/c$b;

    if-ne v1, v2, :cond_3b

    invoke-virtual {p0}, Lp/c;->a()V

    :goto_10
    invoke-virtual {p0}, Lp/c;->e()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v1

    sget-object v2, Lp/c$b;->c:Lp/c$b;

    if-ne v1, v2, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    invoke-static {}, Lq/j;->c()F

    move-result v2

    sget-object v3, Lo/v;->a:Lo/v;

    invoke-static {p0, p1, v2, v3, v1}, Lo/q;->a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;Z)Lr/a;

    move-result-object v1

    new-instance v2, Lh/h;

    invoke-direct {v2, p1, v1}, Lh/h;-><init>(Lcom/airbnb/lottie/d;Lr/a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_34
    invoke-virtual {p0}, Lp/c;->c()V

    invoke-static {v0}, Lo/r;->b(Ljava/util/List;)V

    goto :goto_4b

    :cond_3b
    new-instance p1, Lr/a;

    invoke-static {}, Lq/j;->c()F

    move-result v1

    invoke-static {p0, v1}, Lo/p;->b(Lp/c;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Lr/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4b
    new-instance p0, Lg/b;

    invoke-direct {p0, v0}, Lg/b;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static b(Lp/c;Lcom/airbnb/lottie/d;)Lk/l;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/c;",
            "Lcom/airbnb/lottie/d;",
            ")",
            "Lk/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lp/c$b;->f:Lp/c$b;

    invoke-virtual {p0}, Lp/c;->b()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    move-object v3, v4

    :goto_b
    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v6

    sget-object v7, Lp/c$b;->d:Lp/c$b;

    if-eq v6, v7, :cond_4b

    sget-object v6, Lo/a;->a:Lp/c$a;

    invoke-virtual {p0, v6}, Lp/c;->m(Lp/c$a;)I

    move-result v6

    if-eqz v6, :cond_46

    if-eq v6, v1, :cond_36

    const/4 v7, 0x2

    if-eq v6, v7, :cond_27

    invoke-virtual {p0}, Lp/c;->n()V

    invoke-virtual {p0}, Lp/c;->o()V

    goto :goto_b

    :cond_27
    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v6

    if-ne v6, v0, :cond_31

    invoke-virtual {p0}, Lp/c;->o()V

    goto :goto_3f

    :cond_31
    invoke-static {p0, p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v4

    goto :goto_b

    :cond_36
    invoke-virtual {p0}, Lp/c;->k()Lp/c$b;

    move-result-object v6

    if-ne v6, v0, :cond_41

    invoke-virtual {p0}, Lp/c;->o()V

    :goto_3f
    move v5, v1

    goto :goto_b

    :cond_41
    invoke-static {p0, p1}, Lo/d;->c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;

    move-result-object v3

    goto :goto_b

    :cond_46
    invoke-static {p0, p1}, Lo/a;->a(Lp/c;Lcom/airbnb/lottie/d;)Lg/b;

    move-result-object v2

    goto :goto_b

    :cond_4b
    invoke-virtual {p0}, Lp/c;->d()V

    if-eqz v5, :cond_55

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    :cond_55
    if-eqz v2, :cond_58

    return-object v2

    :cond_58
    new-instance p0, Lk/h;

    invoke-direct {p0, v3, v4}, Lk/h;-><init>(Lk/b;Lk/b;)V

    return-object p0
.end method
