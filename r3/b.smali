.class public final Lr3/b;
.super Lr3/c;
.source ""


# instance fields
.field private volatile _immediate:Lr3/b;

.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lr3/b;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lr3/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lr3/b;->a:Landroid/os/Handler;

    iput-object p2, p0, Lr3/b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lr3/b;->c:Z

    if-eqz p3, :cond_d

    move-object v0, p0

    :cond_d
    iput-object v0, p0, Lr3/b;->_immediate:Lr3/b;

    iget-object p3, p0, Lr3/b;->_immediate:Lr3/b;

    if-nez p3, :cond_1b

    new-instance p3, Lr3/b;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lr3/b;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lr3/b;->_immediate:Lr3/b;

    :cond_1b
    iput-object p3, p0, Lr3/b;->d:Lr3/b;

    return-void
.end method


# virtual methods
.method public c(JLq3/k;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq3/k<",
            "-",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lr3/b$a;

    invoke-direct {v0, p3, p0}, Lr3/b$a;-><init>(Lq3/k;Lr3/b;)V

    iget-object v1, p0, Lr3/b;->a:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL  # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Li1/d;->d(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1f

    new-instance p1, Lr3/b$b;

    invoke-direct {p1, p0, v0}, Lr3/b$b;-><init>(Lr3/b;Ljava/lang/Runnable;)V

    invoke-interface {p3, p1}, Lq3/k;->j(Lkotlin/jvm/functions/Function1;)V

    goto :goto_26

    :cond_1f
    invoke-interface {p3}, Lb3/d;->getContext()Lb3/f;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lr3/b;->n(Lb3/f;Ljava/lang/Runnable;)V

    :goto_26
    return-void
.end method

.method public dispatch(Lb3/f;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lr3/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lr3/b;->n(Lb3/f;Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lr3/b;

    if-eqz v0, :cond_e

    check-cast p1, Lr3/b;

    iget-object p1, p1, Lr3/b;->a:Landroid/os/Handler;

    iget-object p0, p0, Lr3/b;->a:Landroid/os/Handler;

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public f(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;
    .registers 8

    iget-object v0, p0, Lr3/b;->a:Landroid/os/Handler;

    const-wide v1, 0x3fffffffffffffffL  # 1.9999999999999998

    invoke-static {p1, p2, v1, v2}, Li1/d;->d(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Lr3/a;

    invoke-direct {p1, p0, p3}, Lr3/a;-><init>(Lr3/b;Ljava/lang/Runnable;)V

    return-object p1

    :cond_17
    invoke-virtual {p0, p4, p3}, Lr3/b;->n(Lb3/f;Ljava/lang/Runnable;)V

    sget-object p0, Lq3/t1;->a:Lq3/t1;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lr3/b;->a:Landroid/os/Handler;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDispatchNeeded(Lb3/f;)Z
    .registers 2

    iget-boolean p1, p0, Lr3/b;->c:Z

    if-eqz p1, :cond_17

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p0, p0, Lr3/b;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public l()Lq3/r1;
    .registers 1

    iget-object p0, p0, Lr3/b;->d:Lr3/b;

    return-object p0
.end method

.method public final n(Lb3/f;Ljava/lang/Runnable;)V
    .registers 6

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' was closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lq3/g;->b(Lb3/f;Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Lq3/q0;->c:Lq3/b0;

    check-cast p0, Lw3/b;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lw3/b;->b:Lq3/b0;

    invoke-virtual {p0, p1, p2}, Lq3/b0;->dispatch(Lb3/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lq3/r1;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lr3/b;->b:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lr3/b;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    iget-boolean p0, p0, Lr3/b;->c:Z

    if-eqz p0, :cond_1b

    const-string p0, ".immediate"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_1b
    return-object v0
.end method
