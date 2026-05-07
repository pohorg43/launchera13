.class public final Lq3/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/k0;
    .registers 7

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    sget-object p1, Lb3/h;->a:Lb3/h;

    :cond_6
    const/4 p5, 0x2

    and-int/2addr p4, p5

    const/4 v0, 0x1

    if-eqz p4, :cond_c

    move p2, v0

    :cond_c
    invoke-static {p0, p1}, Lq3/z;->c(Lq3/f0;Lb3/f;)Lb3/f;

    move-result-object p0

    invoke-static {p2}, Lj/b;->h(I)V

    if-ne p2, p5, :cond_17

    move p1, v0

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_20

    new-instance p1, Lq3/p1;

    invoke-direct {p1, p0, p3}, Lq3/p1;-><init>(Lb3/f;Lkotlin/jvm/functions/Function2;)V

    goto :goto_25

    :cond_20
    new-instance p1, Lq3/l0;

    invoke-direct {p1, p0, v0}, Lq3/l0;-><init>(Lb3/f;Z)V

    :goto_25
    invoke-virtual {p1, p2, p1, p3}, Lq3/a;->k0(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method

.method public static final b(Lb3/f;Ljava/util/concurrent/CancellationException;)V
    .registers 3

    sget v0, Lq3/i1;->C:I

    sget-object v0, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {p0, v0}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object p0

    check-cast p0, Lq3/i1;

    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-interface {p0, p1}, Lq3/i1;->b(Ljava/util/concurrent/CancellationException;)V

    :goto_10
    return-void
.end method

.method public static synthetic c(Lb3/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .registers 4

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lq3/g;->b(Lb3/f;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final d(Lb3/f;)V
    .registers 2

    sget v0, Lq3/i1;->C:I

    sget-object v0, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {p0, v0}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object p0

    check-cast p0, Lq3/i1;

    if-nez p0, :cond_d

    goto :goto_13

    :cond_d
    invoke-interface {p0}, Lq3/i1;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_13
    return-void

    :cond_14
    invoke-interface {p0}, Lq3/i1;->i()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;
    .registers 7

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    sget-object p1, Lb3/h;->a:Lb3/h;

    :cond_6
    const/4 p5, 0x2

    and-int/2addr p4, p5

    const/4 v0, 0x1

    if-eqz p4, :cond_c

    move p2, v0

    :cond_c
    invoke-static {p0, p1}, Lq3/z;->c(Lq3/f0;Lb3/f;)Lb3/f;

    move-result-object p0

    invoke-static {p2}, Lj/b;->h(I)V

    if-ne p2, p5, :cond_17

    move p1, v0

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_20

    new-instance p1, Lq3/q1;

    invoke-direct {p1, p0, p3}, Lq3/q1;-><init>(Lb3/f;Lkotlin/jvm/functions/Function2;)V

    goto :goto_25

    :cond_20
    new-instance p1, Lq3/y1;

    invoke-direct {p1, p0, v0}, Lq3/y1;-><init>(Lb3/f;Z)V

    :goto_25
    invoke-virtual {p1, p2, p1, p3}, Lq3/a;->k0(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method

.method public static final f(Lb3/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb3/f;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lq3/f0;",
            "-",
            "Lb3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lb3/e$a;->a:Lb3/e$a;

    invoke-interface {p0, v1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v2

    check-cast v2, Lb3/e;

    const/4 v3, 0x1

    if-nez v2, :cond_2e

    sget-object v2, Lq3/b2;->a:Lq3/b2;

    invoke-static {}, Lq3/b2;->a()Lq3/v0;

    move-result-object v2

    invoke-interface {p0, v2}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    sget-object v4, Lb3/h;->a:Lb3/h;

    invoke-static {v4, p0, v3}, Lq3/z;->a(Lb3/f;Lb3/f;Z)Lb3/f;

    move-result-object p0

    sget-object v4, Lq3/q0;->a:Lq3/b0;

    if-eq p0, v4, :cond_52

    invoke-interface {p0, v1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v1

    if-nez v1, :cond_52

    invoke-interface {p0, v4}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    goto :goto_52

    :cond_2e
    instance-of v4, v2, Lq3/v0;

    if-eqz v4, :cond_34

    check-cast v2, Lq3/v0;

    :cond_34
    sget-object v2, Lq3/b2;->a:Lq3/b2;

    sget-object v2, Lq3/b2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq3/v0;

    sget-object v4, Lb3/h;->a:Lb3/h;

    invoke-static {v4, p0, v3}, Lq3/z;->a(Lb3/f;Lb3/f;Z)Lb3/f;

    move-result-object p0

    sget-object v4, Lq3/q0;->a:Lq3/b0;

    if-eq p0, v4, :cond_52

    invoke-interface {p0, v1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v1

    if-nez v1, :cond_52

    invoke-interface {p0, v4}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    :cond_52
    :goto_52
    new-instance v1, Lq3/e;

    invoke-direct {v1, p0, v0, v2}, Lq3/e;-><init>(Lb3/f;Ljava/lang/Thread;Lq3/v0;)V

    invoke-virtual {v1, v3, v1, p1}, Lq3/a;->k0(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :try_start_5a
    iget-object p0, v1, Lq3/e;->d:Lq3/v0;

    const/4 p1, 0x0

    if-nez p0, :cond_60

    goto :goto_65

    :cond_60
    sget v0, Lq3/v0;->d:I

    invoke-virtual {p0, p1}, Lq3/v0;->r(Z)V
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_bb

    :goto_65
    :try_start_65
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p0

    if-nez p0, :cond_a7

    iget-object p0, v1, Lq3/e;->d:Lq3/v0;

    if-nez p0, :cond_75

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_79

    :cond_75
    invoke-virtual {p0}, Lq3/v0;->x()J

    move-result-wide v4

    :goto_79
    invoke-virtual {v1}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lq3/f1;
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_b0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_a3

    :try_start_82
    iget-object p0, v1, Lq3/e;->d:Lq3/v0;

    if-nez p0, :cond_87

    goto :goto_8c

    :cond_87
    sget v0, Lq3/v0;->d:I

    invoke-virtual {p0, p1}, Lq3/v0;->l(Z)V
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_bb

    :goto_8c
    invoke-virtual {v1}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lq3/o1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lq3/u;

    if-eqz p1, :cond_9c

    move-object p1, p0

    check-cast p1, Lq3/u;

    goto :goto_9d

    :cond_9c
    const/4 p1, 0x0

    :goto_9d
    if-nez p1, :cond_a0

    return-object p0

    :cond_a0
    iget-object p0, p1, Lq3/u;->a:Ljava/lang/Throwable;

    throw p0

    :cond_a3
    :try_start_a3
    invoke-static {v1, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_65

    :cond_a7
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v1, p0}, Lq3/n1;->C(Ljava/lang/Object;)Z

    throw p0
    :try_end_b0
    .catchall {:try_start_a3 .. :try_end_b0} :catchall_b0

    :catchall_b0
    move-exception p0

    :try_start_b1
    iget-object v0, v1, Lq3/e;->d:Lq3/v0;

    if-eqz v0, :cond_ba

    sget v1, Lq3/v0;->d:I

    invoke-virtual {v0, p1}, Lq3/v0;->l(Z)V

    :cond_ba
    throw p0
    :try_end_bb
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_bb

    :catchall_bb
    move-exception p0

    throw p0
.end method

.method public static final g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb3/f;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lq3/f0;",
            "-",
            "Lb3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p2}, Lb3/d;->getContext()Lb3/f;

    move-result-object v0

    invoke-static {p0}, Lq3/z;->b(Lb3/f;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {v0, p0}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    goto :goto_14

    :cond_f
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lq3/z;->a(Lb3/f;Lb3/f;Z)Lb3/f;

    move-result-object p0

    :goto_14
    invoke-static {p0}, Lq3/g;->d(Lb3/f;)V

    if-ne p0, v0, :cond_23

    new-instance v0, Lv3/w;

    invoke-direct {v0, p0, p2}, Lv3/w;-><init>(Lb3/f;Lb3/d;)V

    invoke-static {v0, v0, p1}, Li1/k;->f(Lv3/w;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5a

    :cond_23
    sget v1, Lb3/e;->A:I

    sget-object v1, Lb3/e$a;->a:Lb3/e$a;

    invoke-interface {p0, v1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v2

    invoke-interface {v0, v1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    new-instance v0, Lq3/f2;

    invoke-direct {v0, p0, p2}, Lq3/f2;-><init>(Lb3/f;Lb3/d;)V

    invoke-static {p0, v1}, Lv3/a0;->c(Lb3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_3f
    invoke-static {v0, v0, p1}, Li1/k;->f(Lv3/w;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_48

    invoke-static {p0, v1}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_5a

    :catchall_48
    move-exception p1

    invoke-static {p0, v1}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    throw p1

    :cond_4d
    new-instance v0, Lq3/o0;

    invoke-direct {v0, p0, p2}, Lq3/o0;-><init>(Lb3/f;Lb3/d;)V

    const/4 p0, 0x4

    invoke-static {p1, v0, v0, v1, p0}, Li1/j;->q(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lb3/d;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0}, Lq3/o0;->l0()Ljava/lang/Object;

    move-result-object p0

    :goto_5a
    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_63

    const-string p1, "frame"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_63
    return-object p0
.end method
