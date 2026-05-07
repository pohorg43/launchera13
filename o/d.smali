.class public Lo/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lp/c;Lcom/airbnb/lottie/d;Lo/h0;)Ljava/util/List;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp/c;",
            "Lcom/airbnb/lottie/d;",
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

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p0, p1, v0, p2}, Lo/r;->a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lp/c;Lcom/airbnb/lottie/d;)Lk/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lk/a;

    sget-object v1, Lo/f;->a:Lo/f;

    invoke-static {p0, p1, v1}, Lo/d;->a(Lp/c;Lcom/airbnb/lottie/d;Lo/h0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Lp/c;Lcom/airbnb/lottie/d;)Lk/b;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lo/d;->d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lp/c;Lcom/airbnb/lottie/d;Z)Lk/b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lk/b;

    if-eqz p2, :cond_9

    invoke-static {}, Lq/j;->c()F

    move-result p2

    goto :goto_b

    :cond_9
    const/high16 p2, 0x3f800000  # 1.0f

    :goto_b
    sget-object v1, Lo/i;->a:Lo/i;

    invoke-static {p0, p1, p2, v1}, Lo/r;->a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lp/c;Lcom/airbnb/lottie/d;)Lk/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lk/d;

    sget-object v1, Lo/o;->a:Lo/o;

    invoke-static {p0, p1, v1}, Lo/d;->a(Lp/c;Lcom/airbnb/lottie/d;Lo/h0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static f(Lp/c;Lcom/airbnb/lottie/d;)Lk/e;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lk/e;

    invoke-static {}, Lq/j;->c()F

    move-result v1

    sget-object v2, Lo/w;->a:Lo/w;

    invoke-static {p0, p1, v1, v2}, Lo/r;->a(Lp/c;Lcom/airbnb/lottie/d;FLo/h0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/e;-><init>(Ljava/util/List;)V

    return-object v0
.end method
