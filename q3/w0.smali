.class public abstract Lq3/w0;
.super Lq3/x0;
.source ""

# interfaces
.implements Lq3/m0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/w0$c;,
        Lq3/w0$a;,
        Lq3/w0$b;,
        Lq3/w0$d;
    }
.end annotation


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lq3/w0;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lq3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/w0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lq3/x0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lq3/w0;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lq3/w0;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lq3/w0;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p1}, Lq3/w0;->C(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lq3/x0;->z()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_19

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_19

    :cond_14
    sget-object p0, Lq3/i0;->g:Lq3/i0;

    invoke-virtual {p0, p1}, Lq3/i0;->B(Ljava/lang/Runnable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final C(Ljava/lang/Runnable;)Z
    .registers 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lq3/w0;->_queue:Ljava/lang/Object;

    iget v1, p0, Lq3/w0;->_isCompleted:I

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    return v2

    :cond_8
    const/4 v1, 0x1

    if-nez v0, :cond_15

    sget-object v0, Lq3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_15
    instance-of v3, v0, Lv3/n;

    if-eqz v3, :cond_34

    move-object v3, v0

    check-cast v3, Lv3/n;

    invoke-virtual {v3, p1}, Lv3/n;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_33

    if-eq v4, v1, :cond_29

    const/4 v0, 0x2

    if-eq v4, v0, :cond_28

    goto :goto_0

    :cond_28
    return v2

    :cond_29
    sget-object v1, Lq3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lv3/n;->e()Lv3/n;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_33
    return v1

    :cond_34
    sget-object v3, Lq3/y0;->b:Lv3/y;

    if-ne v0, v3, :cond_39

    return v2

    :cond_39
    new-instance v2, Lv3/n;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lv3/n;-><init>(IZ)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lv3/n;->a(Ljava/lang/Object;)I

    invoke-virtual {v2, p1}, Lv3/n;->a(Ljava/lang/Object;)I

    sget-object v3, Lq3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method public D()Z
    .registers 5

    iget-object v0, p0, Lq3/v0;->c:Lv3/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    goto :goto_d

    :cond_7
    iget v3, v0, Lv3/a;->b:I

    iget v0, v0, Lv3/a;->c:I

    if-ne v3, v0, :cond_f

    :goto_d
    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    if-nez v0, :cond_13

    return v2

    :cond_13
    iget-object v0, p0, Lq3/w0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lq3/w0$d;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lv3/b0;->c()Z

    move-result v0

    if-nez v0, :cond_20

    return v2

    :cond_20
    iget-object p0, p0, Lq3/w0;->_queue:Ljava/lang/Object;

    if-nez p0, :cond_25

    goto :goto_36

    :cond_25
    instance-of v0, p0, Lv3/n;

    if-eqz v0, :cond_30

    check-cast p0, Lv3/n;

    invoke-virtual {p0}, Lv3/n;->d()Z

    move-result v1

    goto :goto_36

    :cond_30
    sget-object v0, Lq3/y0;->b:Lv3/y;

    if-ne p0, v0, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    return v1
.end method

.method public final E()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lq3/w0;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lq3/w0;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public final F(JLq3/w0$c;)V
    .registers 16

    iget v0, p0, Lq3/w0;->_isCompleted:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    goto :goto_37

    :cond_9
    iget-object v0, p0, Lq3/w0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lq3/w0$d;

    if-nez v0, :cond_20

    sget-object v0, Lq3/w0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v5, Lq3/w0$d;

    invoke-direct {v5, p1, p2}, Lq3/w0$d;-><init>(J)V

    invoke-virtual {v0, p0, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lq3/w0;->_delayed:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lq3/w0$d;

    :cond_20
    monitor-enter p3

    :try_start_21
    iget-object v5, p3, Lq3/w0$c;->b:Ljava/lang/Object;

    sget-object v6, Lq3/y0;->a:Lv3/y;
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_a4

    if-ne v5, v6, :cond_2a

    monitor-exit p3

    move v0, v2

    goto :goto_64

    :cond_2a
    :try_start_2a
    monitor-enter v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_a4

    :try_start_2b
    invoke-virtual {v0}, Lv3/b0;->b()Lv3/c0;

    move-result-object v5

    check-cast v5, Lq3/w0$c;

    iget v6, p0, Lq3/w0;->_isCompleted:I
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_a1

    if-eqz v6, :cond_39

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_a4

    monitor-exit p3

    :goto_37
    move v0, v4

    goto :goto_64

    :cond_39
    const-wide/16 v6, 0x0

    if-nez v5, :cond_40

    :try_start_3d
    iput-wide p1, v0, Lq3/w0$d;->b:J

    goto :goto_53

    :cond_40
    iget-wide v8, v5, Lq3/w0$c;->a:J

    sub-long v10, v8, p1

    cmp-long v5, v10, v6

    if-ltz v5, :cond_49

    move-wide v8, p1

    :cond_49
    iget-wide v10, v0, Lq3/w0$d;->b:J

    sub-long v10, v8, v10

    cmp-long v5, v10, v6

    if-lez v5, :cond_53

    iput-wide v8, v0, Lq3/w0$d;->b:J

    :cond_53
    :goto_53
    iget-wide v8, p3, Lq3/w0$c;->a:J

    iget-wide v10, v0, Lq3/w0$d;->b:J

    sub-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-gez v5, :cond_5e

    iput-wide v10, p3, Lq3/w0$c;->a:J

    :cond_5e
    invoke-virtual {v0, p3}, Lv3/b0;->a(Lv3/c0;)V
    :try_end_61
    .catchall {:try_start_3d .. :try_end_61} :catchall_a1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_a4

    monitor-exit p3

    move v0, v1

    :goto_64
    if-eqz v0, :cond_7b

    if-eq v0, v4, :cond_77

    if-ne v0, v2, :cond_6b

    goto :goto_9d

    :cond_6b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected result"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_77
    invoke-virtual {p0, p1, p2, p3}, Lq3/x0;->A(JLq3/w0$c;)V

    goto :goto_9d

    :cond_7b
    iget-object p1, p0, Lq3/w0;->_delayed:Ljava/lang/Object;

    check-cast p1, Lq3/w0$d;

    if-nez p1, :cond_82

    goto :goto_8b

    :cond_82
    monitor-enter p1

    :try_start_83
    invoke-virtual {p1}, Lv3/b0;->b()Lv3/c0;

    move-result-object p2
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_9e

    monitor-exit p1

    move-object v3, p2

    check-cast v3, Lq3/w0$c;

    :goto_8b
    if-ne v3, p3, :cond_8e

    move v1, v4

    :cond_8e
    if-eqz v1, :cond_9d

    invoke-virtual {p0}, Lq3/x0;->z()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_9d

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_9d
    :goto_9d
    return-void

    :catchall_9e
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_a1
    move-exception p0

    :try_start_a2
    monitor-exit v0

    throw p0
    :try_end_a4
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception p0

    monitor-exit p3

    throw p0
.end method

.method public c(JLq3/k;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq3/k<",
            "-",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lq3/y0;->a(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL  # 1.9999999999999998

    cmp-long v0, p1, v0

    if-gez v0, :cond_22

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v2, Lq3/w0$a;

    add-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2, p3}, Lq3/w0$a;-><init>(Lq3/w0;JLq3/k;)V

    new-instance p1, Lq3/h;

    invoke-direct {p1, v2}, Lq3/h;-><init>(Lq3/s0;)V

    invoke-interface {p3, p1}, Lq3/k;->j(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, v1, v2}, Lq3/w0;->F(JLq3/w0$c;)V

    :cond_22
    return-void
.end method

.method public final dispatch(Lb3/f;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p2}, Lq3/w0;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;
    .registers 5

    sget-object p0, Lq3/j0;->b:Lq3/m0;

    invoke-interface {p0, p1, p2, p3, p4}, Lq3/m0;->f(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;

    move-result-object p0

    return-object p0
.end method

.method public shutdown()V
    .registers 7

    sget-object v0, Lq3/b2;->a:Lq3/b2;

    sget-object v0, Lq3/b2;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lq3/w0;->_isCompleted:I

    :cond_b
    iget-object v2, p0, Lq3/w0;->_queue:Ljava/lang/Object;

    if-nez v2, :cond_1a

    sget-object v2, Lq3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lq3/y0;->b:Lv3/y;

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3e

    :cond_1a
    instance-of v3, v2, Lv3/n;

    if-eqz v3, :cond_24

    check-cast v2, Lv3/n;

    invoke-virtual {v2}, Lv3/n;->b()Z

    goto :goto_3e

    :cond_24
    sget-object v3, Lq3/y0;->b:Lv3/y;

    if-ne v2, v3, :cond_29

    goto :goto_3e

    :cond_29
    new-instance v3, Lv3/n;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v0}, Lv3/n;-><init>(IZ)V

    move-object v4, v2

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lv3/n;->a(Ljava/lang/Object;)I

    sget-object v4, Lq3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_3e
    invoke-virtual {p0}, Lq3/w0;->x()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_49

    goto :goto_3e

    :cond_49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_4d
    iget-object v0, p0, Lq3/w0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lq3/w0$d;

    if-nez v0, :cond_55

    move-object v0, v1

    goto :goto_5b

    :cond_55
    invoke-virtual {v0}, Lv3/b0;->e()Lv3/c0;

    move-result-object v0

    check-cast v0, Lq3/w0$c;

    :goto_5b
    if-nez v0, :cond_5e

    return-void

    :cond_5e
    invoke-virtual {p0, v2, v3, v0}, Lq3/x0;->A(JLq3/w0$c;)V

    goto :goto_4d
.end method

.method public x()J
    .registers 12

    invoke-virtual {p0}, Lq3/v0;->y()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    :cond_9
    iget-object v0, p0, Lq3/w0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lq3/w0$d;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lv3/b0;->c()Z

    move-result v6

    if-nez v6, :cond_4c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    :cond_1c
    monitor-enter v0

    :try_start_1d
    invoke-virtual {v0}, Lv3/b0;->b()Lv3/c0;

    move-result-object v8
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_49

    if-nez v8, :cond_26

    monitor-exit v0

    move-object v8, v5

    goto :goto_44

    :cond_26
    :try_start_26
    check-cast v8, Lq3/w0$c;

    iget-wide v9, v8, Lq3/w0$c;->a:J

    sub-long v9, v6, v9

    cmp-long v9, v9, v1

    if-ltz v9, :cond_32

    move v9, v3

    goto :goto_33

    :cond_32
    move v9, v4

    :goto_33
    if-eqz v9, :cond_3a

    invoke-virtual {p0, v8}, Lq3/w0;->C(Ljava/lang/Runnable;)Z

    move-result v8

    goto :goto_3b

    :cond_3a
    move v8, v4

    :goto_3b
    if-eqz v8, :cond_42

    invoke-virtual {v0, v4}, Lv3/b0;->d(I)Lv3/c0;

    move-result-object v8
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_49

    goto :goto_43

    :cond_42
    move-object v8, v5

    :goto_43
    monitor-exit v0

    :goto_44
    check-cast v8, Lq3/w0$c;

    if-nez v8, :cond_1c

    goto :goto_4c

    :catchall_49
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4c
    :goto_4c
    iget-object v0, p0, Lq3/w0;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_52

    :goto_50
    move-object v7, v5

    goto :goto_7e

    :cond_52
    instance-of v6, v0, Lv3/n;

    if-eqz v6, :cond_6e

    move-object v6, v0

    check-cast v6, Lv3/n;

    invoke-virtual {v6}, Lv3/n;->f()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lv3/n;->g:Lv3/y;

    if-eq v7, v8, :cond_64

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_7e

    :cond_64
    sget-object v7, Lq3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6}, Lv3/n;->e()Lv3/n;

    move-result-object v6

    invoke-virtual {v7, p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_6e
    sget-object v6, Lq3/y0;->b:Lv3/y;

    if-ne v0, v6, :cond_73

    goto :goto_50

    :cond_73
    sget-object v6, Lq3/w0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    move-object v7, v0

    check-cast v7, Ljava/lang/Runnable;

    :goto_7e
    if-eqz v7, :cond_84

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_84
    iget-object v0, p0, Lq3/v0;->c:Lv3/a;

    const-wide v6, 0x7fffffffffffffffL

    if-nez v0, :cond_8e

    goto :goto_98

    :cond_8e
    iget v8, v0, Lv3/a;->b:I

    iget v0, v0, Lv3/a;->c:I

    if-ne v8, v0, :cond_95

    goto :goto_96

    :cond_95
    move v3, v4

    :goto_96
    if-eqz v3, :cond_9a

    :goto_98
    move-wide v3, v6

    goto :goto_9b

    :cond_9a
    move-wide v3, v1

    :goto_9b
    cmp-long v0, v3, v1

    if-nez v0, :cond_a0

    goto :goto_db

    :cond_a0
    iget-object v0, p0, Lq3/w0;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_a5

    goto :goto_b2

    :cond_a5
    instance-of v3, v0, Lv3/n;

    if-eqz v3, :cond_d6

    check-cast v0, Lv3/n;

    invoke-virtual {v0}, Lv3/n;->d()Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_db

    :cond_b2
    :goto_b2
    iget-object p0, p0, Lq3/w0;->_delayed:Ljava/lang/Object;

    check-cast p0, Lq3/w0$d;

    if-nez p0, :cond_b9

    goto :goto_c2

    :cond_b9
    monitor-enter p0

    :try_start_ba
    invoke-virtual {p0}, Lv3/b0;->b()Lv3/c0;

    move-result-object v0
    :try_end_be
    .catchall {:try_start_ba .. :try_end_be} :catchall_d3

    monitor-exit p0

    move-object v5, v0

    check-cast v5, Lq3/w0$c;

    :goto_c2
    if-nez v5, :cond_c5

    goto :goto_da

    :cond_c5
    iget-wide v3, v5, Lq3/w0$c;->a:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-gez p0, :cond_d1

    goto :goto_db

    :cond_d1
    move-wide v1, v3

    goto :goto_db

    :catchall_d3
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d6
    sget-object p0, Lq3/y0;->b:Lv3/y;

    if-ne v0, p0, :cond_db

    :goto_da
    move-wide v1, v6

    :cond_db
    :goto_db
    return-wide v1
.end method
