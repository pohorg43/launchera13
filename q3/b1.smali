.class public final Lq3/b1;
.super Lq3/a1;
.source ""

# interfaces
.implements Lq3/m0;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0}, Lq3/a1;-><init>()V

    iput-object p1, p0, Lq3/b1;->a:Ljava/util/concurrent/Executor;

    sget-object p0, Lv3/d;->a:Ljava/lang/reflect/Method;

    :try_start_7
    instance-of p0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz p0, :cond_e

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-nez p1, :cond_12

    goto :goto_22

    :cond_12
    sget-object p0, Lv3/d;->a:Ljava/lang/reflect/Method;

    if-nez p0, :cond_17

    goto :goto_22

    :cond_17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_22

    :catchall_22
    :goto_22
    return-void
.end method


# virtual methods
.method public c(JLq3/k;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq3/k<",
            "-",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lq3/b1;->a:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v0

    goto :goto_c

    :cond_b
    move-object v4, v2

    :goto_c
    if-nez v4, :cond_f

    goto :goto_1e

    :cond_f
    new-instance v5, Lq3/x1;

    invoke-direct {v5, p0, p3}, Lq3/x1;-><init>(Lq3/b0;Lq3/k;)V

    invoke-interface {p3}, Lb3/d;->getContext()Lb3/f;

    move-result-object v6

    move-object v3, p0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lq3/b1;->l(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lb3/f;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    :goto_1e
    if-eqz v2, :cond_29

    new-instance p0, Lq3/h;

    invoke-direct {p0, v2}, Lq3/h;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p3, p0}, Lq3/k;->j(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_29
    sget-object p0, Lq3/i0;->g:Lq3/i0;

    invoke-virtual {p0, p1, p2, p3}, Lq3/w0;->c(JLq3/k;)V

    return-void
.end method

.method public close()V
    .registers 2

    iget-object p0, p0, Lq3/b1;->a:Ljava/util/concurrent/Executor;

    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_9

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_10
    return-void
.end method

.method public dispatch(Lb3/f;Ljava/lang/Runnable;)V
    .registers 4

    :try_start_0
    iget-object p0, p0, Lq3/b1;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1c

    :catch_6
    move-exception p0

    const-string v0, "The task was rejected"

    invoke-static {v0, p0}, Li1/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-static {p1, p0}, Lq3/g;->b(Lb3/f;Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Lq3/q0;->c:Lq3/b0;

    check-cast p0, Lw3/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lw3/b;->b:Lq3/b0;

    invoke-virtual {p0, p1, p2}, Lq3/b0;->dispatch(Lb3/f;Ljava/lang/Runnable;)V

    :goto_1c
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lq3/b1;

    if-eqz v0, :cond_e

    check-cast p1, Lq3/b1;

    iget-object p1, p1, Lq3/b1;->a:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lq3/b1;->a:Ljava/util/concurrent/Executor;

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public f(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;
    .registers 14

    iget-object v0, p0, Lq3/b1;->a:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v0

    goto :goto_c

    :cond_b
    move-object v4, v2

    :goto_c
    if-nez v4, :cond_f

    goto :goto_17

    :cond_f
    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lq3/b1;->l(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lb3/f;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    :goto_17
    if-eqz v2, :cond_1f

    new-instance p0, Lq3/r0;

    invoke-direct {p0, v2}, Lq3/r0;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_25

    :cond_1f
    sget-object p0, Lq3/i0;->g:Lq3/i0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lq3/i0;->f(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;

    move-result-object p0

    :goto_25
    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lq3/b1;->a:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final l(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lb3/f;J)Ljava/util/concurrent/ScheduledFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            "Lb3/f;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p4, p5, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_6
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_12

    :catch_7
    move-exception p0

    const-string p1, "The task was rejected"

    invoke-static {p1, p0}, Li1/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-static {p3, p0}, Lq3/g;->b(Lb3/f;Ljava/util/concurrent/CancellationException;)V

    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lq3/b1;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
