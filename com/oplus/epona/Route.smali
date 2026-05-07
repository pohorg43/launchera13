.class public Lcom/oplus/epona/Route;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mMaxRequests:I

.field private mReadyAsyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/oplus/epona/internal/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAsyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/oplus/epona/internal/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lcom/oplus/epona/Route;->mMaxRequests:I

    invoke-direct {p0}, Lcom/oplus/epona/Route;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/epona/Route;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Route;->mReadyAsyncCalls:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Route;->mRunningAsyncCalls:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/epona/Route;->lambda$createThreadFactory$0(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private createThreadFactory(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    new-instance p0, Lcom/oplus/epona/a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/epona/a;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method private declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/epona/Route;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_22

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "Epona Route"

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v8}, Lcom/oplus/epona/Route;->createThreadFactory(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/oplus/epona/Route;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_22
    iget-object v0, p0, Lcom/oplus/epona/Route;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static synthetic lambda$createThreadFactory$0(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private declared-synchronized promoteCalls()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/epona/Route;->mRunningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_44

    const/16 v1, 0x40

    if-lt v0, v1, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/oplus/epona/Route;->mReadyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_44

    if-eqz v0, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/oplus/epona/Route;->mReadyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/epona/internal/RealCall$AsyncCall;

    iget-object v3, p0, Lcom/oplus/epona/Route;->mRunningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oplus/epona/Route;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/oplus/epona/Route;->mReadyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/oplus/epona/Route;->mRunningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_44

    if-lt v2, v1, :cond_1d

    monitor-exit p0

    return-void

    :cond_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized asyncExecute(Lcom/oplus/epona/internal/RealCall$AsyncCall;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/epona/Route;->mRunningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_16

    iget-object v0, p0, Lcom/oplus/epona/Route;->mRunningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oplus/epona/Route;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lcom/oplus/epona/Route;->mReadyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :goto_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public executed(Lcom/oplus/epona/internal/RealCall;)V
    .registers 2

    return-void
.end method

.method public finished(Lcom/oplus/epona/internal/RealCall$AsyncCall;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/epona/Route;->mRunningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    if-nez p2, :cond_d

    iget-object p2, p0, Lcom/oplus/epona/Route;->mReadyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    invoke-direct {p0}, Lcom/oplus/epona/Route;->promoteCalls()V

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public finished(Lcom/oplus/epona/internal/RealCall;)V
    .registers 2

    return-void
.end method

.method public newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/epona/internal/RealCall;->newCall(Lcom/oplus/epona/Route;Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    return-object p0
.end method
