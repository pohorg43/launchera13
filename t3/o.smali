.class public final Lt3/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lt3/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt3/e<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public final a(Lb3/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lt3/o$a;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lt3/o$a;

    iget v1, v0, Lt3/o$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lt3/o$a;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lt3/o$a;

    invoke-direct {v0, p0, p1}, Lt3/o$a;-><init>(Lt3/o;Lb3/d;)V

    :goto_18
    iget-object p1, v0, Lt3/o$a;->c:Ljava/lang/Object;

    iget v1, v0, Lt3/o$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_46

    if-eq v1, v2, :cond_32

    const/4 p0, 0x2

    if-ne v1, p0, :cond_2a

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    :goto_27
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    iget-object p0, v0, Lt3/o$a;->b:Ljava/lang/Object;

    check-cast p0, Lu3/q;

    iget-object v0, v0, Lt3/o$a;->a:Ljava/lang/Object;

    check-cast v0, Lt3/o;

    :try_start_3a
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_44

    invoke-virtual {p0}, Lu3/q;->releaseIntercepted()V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :catchall_44
    move-exception p1

    goto :goto_5e

    :cond_46
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    new-instance p1, Lu3/q;

    invoke-interface {v0}, Lb3/d;->getContext()Lb3/f;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p1, v3, v1}, Lu3/q;-><init>(Lt3/e;Lb3/f;)V

    :try_start_53
    iput-object p0, v0, Lt3/o$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lt3/o$a;->b:Ljava/lang/Object;

    iput v2, v0, Lt3/o$a;->e:I

    throw v3
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_5e
    invoke-virtual {p0}, Lu3/q;->releaseIntercepted()V

    throw p1
.end method

.method public emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method
