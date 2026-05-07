.class public final Lq3/i0;
.super Lq3/w0;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I

.field public static final g:Lq3/i0;

.field public static final h:J


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lq3/i0;

    invoke-direct {v0}, Lq3/i0;-><init>()V

    sput-object v0, Lq3/i0;->g:Lq3/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lq3/v0;->r(Z)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_f
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lq3/i0;->h:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lq3/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public A(JLq3/w0$c;)V
    .registers 4

    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    const-string p1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {p0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public B(Ljava/lang/Runnable;)V
    .registers 4

    sget v0, Lq3/i0;->debugStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lq3/w0;->B(Ljava/lang/Runnable;)V

    return-void

    :cond_e
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    const-string p1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {p0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized G()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lq3/i0;->H()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_14

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x3

    :try_start_a
    sput v0, Lq3/i0;->debugStatus:I

    invoke-virtual {p0}, Lq3/w0;->E()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final H()Z
    .registers 2

    sget p0, Lq3/i0;->debugStatus:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public f(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;
    .registers 7

    invoke-static {p1, p2}, Lq3/y0;->a(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL  # 1.9999999999999998

    cmp-long p4, p1, v0

    if-gez p4, :cond_1b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance p4, Lq3/w0$b;

    add-long/2addr p1, v0

    invoke-direct {p4, p1, p2, p3}, Lq3/w0$b;-><init>(JLjava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1, p4}, Lq3/w0;->F(JLq3/w0$c;)V

    goto :goto_1d

    :cond_1b
    sget-object p4, Lq3/t1;->a:Lq3/t1;

    :goto_1d
    return-object p4
.end method

.method public run()V
    .registers 13

    sget-object v0, Lq3/b2;->a:Lq3/b2;

    sget-object v0, Lq3/b2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_83

    :try_start_9
    invoke-virtual {p0}, Lq3/i0;->H()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_80

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_83

    goto :goto_19

    :cond_12
    const/4 v1, 0x1

    :try_start_13
    sput v1, Lq3/i0;->debugStatus:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_80

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_83

    :goto_19
    if-nez v1, :cond_2a

    sput-object v0, Lq3/i0;->_thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lq3/i0;->G()V

    invoke-virtual {p0}, Lq3/w0;->D()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lq3/i0;->z()Ljava/lang/Thread;

    :cond_29
    return-void

    :cond_2a
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    :cond_30
    :goto_30
    :try_start_30
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0}, Lq3/w0;->x()J

    move-result-wide v5

    cmp-long v7, v5, v1

    const-wide/16 v8, 0x0

    if-nez v7, :cond_62

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    cmp-long v7, v3, v1

    if-nez v7, :cond_48

    sget-wide v3, Lq3/i0;->h:J
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_83

    add-long/2addr v3, v10

    :cond_48
    sub-long v10, v3, v10

    cmp-long v7, v10, v8

    if-gtz v7, :cond_5d

    sput-object v0, Lq3/i0;->_thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lq3/i0;->G()V

    invoke-virtual {p0}, Lq3/w0;->D()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p0}, Lq3/i0;->z()Ljava/lang/Thread;

    :cond_5c
    return-void

    :cond_5d
    :try_start_5d
    invoke-static {v5, v6, v10, v11}, Li1/d;->d(JJ)J

    move-result-wide v5

    goto :goto_63

    :cond_62
    move-wide v3, v1

    :goto_63
    cmp-long v7, v5, v8

    if-lez v7, :cond_30

    invoke-virtual {p0}, Lq3/i0;->H()Z

    move-result v7
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_83

    if-eqz v7, :cond_7c

    sput-object v0, Lq3/i0;->_thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lq3/i0;->G()V

    invoke-virtual {p0}, Lq3/w0;->D()Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p0}, Lq3/i0;->z()Ljava/lang/Thread;

    :cond_7b
    return-void

    :cond_7c
    :try_start_7c
    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_30

    :catchall_80
    move-exception v1

    monitor-exit p0

    throw v1
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_83

    :catchall_83
    move-exception v1

    sput-object v0, Lq3/i0;->_thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lq3/i0;->G()V

    invoke-virtual {p0}, Lq3/w0;->D()Z

    move-result v0

    if-nez v0, :cond_92

    invoke-virtual {p0}, Lq3/i0;->z()Ljava/lang/Thread;

    :cond_92
    throw v1
.end method

.method public shutdown()V
    .registers 2

    const/4 v0, 0x4

    sput v0, Lq3/i0;->debugStatus:I

    invoke-super {p0}, Lq3/w0;->shutdown()V

    return-void
.end method

.method public z()Ljava/lang/Thread;
    .registers 3

    sget-object v0, Lq3/i0;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_1e

    monitor-enter p0

    :try_start_5
    sget-object v0, Lq3/i0;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lq3/i0;->_thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :goto_1e
    return-object v0
.end method
