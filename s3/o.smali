.class public final Ls3/o;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ls3/q;Lkotlin/jvm/functions/Function0;Lb3/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/q<",
            "*>;",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ls3/o$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Ls3/o$a;

    iget v1, v0, Ls3/o$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Ls3/o$a;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Ls3/o$a;

    invoke-direct {v0, p2}, Ls3/o$a;-><init>(Lb3/d;)V

    :goto_18
    iget-object p2, v0, Ls3/o$a;->c:Ljava/lang/Object;

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Ls3/o$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p0, v0, Ls3/o$a;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iget-object p0, v0, Ls3/o$a;->a:Ljava/lang/Object;

    check-cast p0, Ls3/q;

    :try_start_2c
    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_78

    :catchall_30
    move-exception p0

    goto :goto_7e

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    invoke-interface {v0}, Lb3/d;->getContext()Lb3/f;

    move-result-object p2

    sget v2, Lq3/i1;->C:I

    sget-object v2, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {p2, v2}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object p2

    if-ne p2, p0, :cond_4d

    move p2, v3

    goto :goto_4e

    :cond_4d
    const/4 p2, 0x0

    :goto_4e
    if-eqz p2, :cond_82

    :try_start_50
    iput-object p0, v0, Ls3/o$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Ls3/o$a;->b:Ljava/lang/Object;

    iput v3, v0, Ls3/o$a;->d:I

    new-instance p2, Lq3/l;

    invoke-static {v0}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Lq3/l;-><init>(Lb3/d;I)V

    invoke-virtual {p2}, Lq3/l;->u()V

    new-instance v2, Ls3/o$b;

    invoke-direct {v2, p2}, Ls3/o$b;-><init>(Lq3/k;)V

    invoke-interface {p0, v2}, Ls3/w;->v(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2}, Lq3/l;->t()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_75

    const-string p2, "frame"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_50 .. :try_end_75} :catchall_30

    :cond_75
    if-ne p0, v1, :cond_78

    return-object v1

    :cond_78
    :goto_78
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :goto_7e
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    throw p0

    :cond_82
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
