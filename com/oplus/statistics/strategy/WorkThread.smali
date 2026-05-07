.class public Lcom/oplus/statistics/strategy/WorkThread;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/statistics/strategy/WorkThread$PendingTask;,
        Lcom/oplus/statistics/strategy/WorkThread$SingletonHolder;,
        Lcom/oplus/statistics/strategy/WorkThread$MsgWhatType;
    }
.end annotation


# static fields
.field public static final MSG_WHAT_CHATTY_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WorkThread"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mPendingTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTaskMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/statistics/strategy/WorkThread$PendingTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    const-string v0, "OplusTrack-thread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskList:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/strategy/WorkThread$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/statistics/strategy/WorkThread;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/strategy/WorkThread;->lambda$onLooperPrepared$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {}, Lcom/oplus/statistics/strategy/WorkThread;->getInstance()Lcom/oplus/statistics/strategy/WorkThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/statistics/strategy/WorkThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/statistics/strategy/WorkThread;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/strategy/WorkThread$SingletonHolder;->access$000()Lcom/oplus/statistics/strategy/WorkThread;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$onLooperPrepared$0()Ljava/lang/String;
    .registers 1

    const-string v0, "onLooperPrepared, but looper is null"

    return-object v0
.end method


# virtual methods
.method public declared-synchronized hasMessages(I)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    monitor-exit p0

    return p1

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_18

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit p0

    return p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onLooperPrepared()V
    .registers 7

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_11

    const-string p0, "WorkThread"

    sget-object v0, Landroidx/room/e;->n:Landroidx/room/e;

    invoke-static {p0, v0}, Lcom/oplus/statistics/util/LogUtil;->e(Ljava/lang/String;Lcom/oplus/statistics/util/Supplier;)V

    return-void

    :cond_11
    monitor-enter p0

    :try_start_12
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/statistics/strategy/WorkThread;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/oplus/statistics/strategy/WorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f

    :cond_31
    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_37
    iget-object v1, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    iget-object v1, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/statistics/strategy/WorkThread$PendingTask;

    iget-object v2, p0, Lcom/oplus/statistics/strategy/WorkThread;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread$PendingTask;->access$100(Lcom/oplus/statistics/strategy/WorkThread$PendingTask;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v1}, Lcom/oplus/statistics/strategy/WorkThread$PendingTask;->access$200(Lcom/oplus/statistics/strategy/WorkThread$PendingTask;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_57
    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit p0

    return-void

    :catchall_5e
    move-exception v0

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_12 .. :try_end_60} :catchall_5e

    throw v0
.end method

.method public declared-synchronized post(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :cond_9
    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :goto_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postDelay(ILjava/lang/Runnable;J)V
    .registers 7
    .param p2  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_16

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/oplus/statistics/strategy/WorkThread$PendingTask;

    invoke-direct {v1, p2, p3, p4}, Lcom/oplus/statistics/strategy/WorkThread$PendingTask;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMessages(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_e

    :cond_9
    iget-object v0, p0, Lcom/oplus/statistics/strategy/WorkThread;->mPendingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :goto_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
