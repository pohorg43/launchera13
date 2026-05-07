.class public final synthetic Lt3/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lt3/e;Ls3/s;ZLb3/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt3/e<",
            "-TT;>;",
            "Ls3/s<",
            "+TT;>;Z",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lt3/f$a;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lt3/f$a;

    iget v1, v0, Lt3/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lt3/f$a;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lt3/f$a;

    invoke-direct {v0, p3}, Lt3/f$a;-><init>(Lb3/d;)V

    :goto_18
    iget-object p3, v0, Lt3/f$a;->d:Ljava/lang/Object;

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lt3/f$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_55

    if-eq v2, v4, :cond_40

    if-ne v2, v3, :cond_38

    iget-boolean p0, v0, Lt3/f$a;->c:Z

    iget-object p1, v0, Lt3/f$a;->b:Ljava/lang/Object;

    check-cast p1, Ls3/s;

    iget-object p2, v0, Lt3/f$a;->a:Ljava/lang/Object;

    check-cast p2, Lt3/e;

    :try_start_31
    invoke-static {p3}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_52

    :cond_34
    move-object v6, p2

    move p2, p0

    move-object p0, v6

    goto :goto_5c

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    iget-boolean p0, v0, Lt3/f$a;->c:Z

    iget-object p1, v0, Lt3/f$a;->b:Ljava/lang/Object;

    check-cast p1, Ls3/s;

    iget-object p2, v0, Lt3/f$a;->a:Ljava/lang/Object;

    check-cast p2, Lt3/e;

    :try_start_4a
    invoke-static {p3}, Lq/d;->p(Ljava/lang/Object;)V

    check-cast p3, Ls3/i;

    iget-object p3, p3, Ls3/i;->a:Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_52

    goto :goto_6e

    :catchall_52
    move-exception p2

    goto/16 :goto_be

    :cond_55
    invoke-static {p3}, Lq/d;->p(Ljava/lang/Object;)V

    instance-of p3, p0, Lt3/p;

    if-nez p3, :cond_c6

    :goto_5c
    :try_start_5c
    iput-object p0, v0, Lt3/f$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lt3/f$a;->b:Ljava/lang/Object;

    iput-boolean p2, v0, Lt3/f$a;->c:Z

    iput v4, v0, Lt3/f$a;->e:I

    invoke-interface {p1, v0}, Ls3/s;->c(Lb3/d;)Ljava/lang/Object;

    move-result-object p3
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_ba

    if-ne p3, v1, :cond_6b

    return-object v1

    :cond_6b
    move v6, p2

    move-object p2, p0

    move p0, v6

    :goto_6e
    :try_start_6e
    instance-of v2, p3, Ls3/i$a;

    if-eqz v2, :cond_8b

    instance-of p2, p3, Ls3/i$a;

    if-eqz p2, :cond_79

    check-cast p3, Ls3/i$a;

    goto :goto_7a

    :cond_79
    move-object p3, v5

    :goto_7a
    if-nez p3, :cond_7e

    move-object p2, v5

    goto :goto_80

    :cond_7e
    iget-object p2, p3, Ls3/i$a;->a:Ljava/lang/Throwable;
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_52

    :goto_80
    if-nez p2, :cond_8a

    if-eqz p0, :cond_87

    invoke-static {p1, v5}, Li1/c;->b(Ls3/s;Ljava/lang/Throwable;)V

    :cond_87
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_8a
    :try_start_8a
    throw p2

    :cond_8b
    instance-of v2, p3, Ls3/i$b;

    if-nez v2, :cond_9e

    iput-object p2, v0, Lt3/f$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lt3/f$a;->b:Ljava/lang/Object;

    iput-boolean p0, v0, Lt3/f$a;->c:Z

    iput v3, v0, Lt3/f$a;->e:I

    invoke-interface {p2, p3, v0}, Lt3/e;->emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_34

    return-object v1

    :cond_9e
    instance-of p2, p3, Ls3/i$a;

    if-eqz p2, :cond_aa

    move-object p2, p3

    check-cast p2, Ls3/i$a;

    iget-object p2, p2, Ls3/i$a;->a:Ljava/lang/Throwable;

    if-eqz p2, :cond_aa

    throw p2

    :cond_aa
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to call \'getOrThrow\' on a failed channel result: "

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_ba
    .catchall {:try_start_8a .. :try_end_ba} :catchall_52

    :catchall_ba
    move-exception p0

    move v6, p2

    move-object p2, p0

    move p0, v6

    :goto_be
    :try_start_be
    throw p2
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bf

    :catchall_bf
    move-exception p3

    if-eqz p0, :cond_c5

    invoke-static {p1, p2}, Li1/c;->b(Ls3/s;Ljava/lang/Throwable;)V

    :cond_c5
    throw p3

    :cond_c6
    check-cast p0, Lt3/p;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v5
.end method
