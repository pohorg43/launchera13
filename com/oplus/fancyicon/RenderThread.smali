.class public Lcom/oplus/fancyicon/RenderThread;
.super Ljava/lang/Thread;
.source ""


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"


# instance fields
.field private isThreadSleeping:Z

.field private final mControllerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/oplus/fancyicon/BaseRendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private final mResumeSignal:Ljava/lang/Object;

.field private volatile mSignaled:Z

.field private final mSleepSignal:Ljava/lang/Object;

.field private mStart:Z

.field private mStoped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/RenderThread;->mResumeSignal:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/RenderThread;->mSleepSignal:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    iput-boolean p1, p0, Lcom/oplus/fancyicon/RenderThread;->mSignaled:Z

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/fancyicon/RenderThread;->isThreadSleeping:Z

    return-void
.end method

.method private sleepForFramerate(J)V
    .registers 7

    iget-boolean v0, p0, Lcom/oplus/fancyicon/RenderThread;->mSignaled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/oplus/fancyicon/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-boolean v2, p0, Lcom/oplus/fancyicon/RenderThread;->mSignaled:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_29

    if-nez v2, :cond_27

    const/4 v2, 0x1

    :try_start_13
    iput-boolean v2, p0, Lcom/oplus/fancyicon/RenderThread;->isThreadSleeping:Z

    iget-object v2, p0, Lcom/oplus/fancyicon/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    iput-boolean v1, p0, Lcom/oplus/fancyicon/RenderThread;->isThreadSleeping:Z
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1c} :catch_1d
    .catchall {:try_start_13 .. :try_end_1c} :catchall_29

    goto :goto_27

    :catch_1d
    move-exception p1

    :try_start_1e
    const-string p2, "RenderThread"

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw p0

    :cond_2c
    :goto_2c
    iput-boolean v1, p0, Lcom/oplus/fancyicon/RenderThread;->mSignaled:Z

    return-void
.end method


# virtual methods
.method public addController(Lcom/oplus/fancyicon/BaseRendererController;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object p0, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string p0, "RenderThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debugFancyIcon, addController(),  add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public isStarted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/RenderThread;->mStart:Z

    return p0
.end method

.method public isThreadPaused()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    return p0
.end method

.method public notifyWakeup()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/oplus/fancyicon/RenderThread;->mSignaled:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/oplus/fancyicon/RenderThread;->isThreadSleeping:Z

    if-eqz v1, :cond_13

    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/fancyicon/RenderThread;->mSignaled:Z

    iget-object p0, p0, Lcom/oplus/fancyicon/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public pauseSelf()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->notifyWakeup()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    return-void
.end method

.method public pauseSelfSafely()V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v4}, Lcom/oplus/fancyicon/BaseRendererController;->isPaused()Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v3, 0x0

    goto :goto_10

    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2d

    if-eqz v3, :cond_2c

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->notifyWakeup()V

    iput-boolean v2, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    :cond_2c
    return-void

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public removeController(Lcom/oplus/fancyicon/BaseRendererController;)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    const-string v1, "RenderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debugFancyIcon, removeController(),  remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->stopSelf()V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_2c
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public resumeSelf()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->notifyWakeup()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    iget-object v0, p0, Lcom/oplus/fancyicon/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-object p0, p0, Lcom/oplus/fancyicon/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p0
.end method

.method public run()V
    .registers 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/RenderThread;->mStart:Z

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/oplus/fancyicon/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-boolean v2, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_90

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    :try_start_b
    iput-boolean v0, p0, Lcom/oplus/fancyicon/RenderThread;->isThreadSleeping:Z

    iget-object v2, p0, Lcom/oplus/fancyicon/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    iput-boolean v3, p0, Lcom/oplus/fancyicon/RenderThread;->isThreadSleeping:Z
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_14} :catch_15
    .catchall {:try_start_b .. :try_end_14} :catchall_90

    goto :goto_1f

    :catch_15
    move-exception v2

    :try_start_16
    const-string v4, "RenderThread"

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    iget-boolean v2, p0, Lcom/oplus/fancyicon/RenderThread;->mStoped:Z

    if-eqz v2, :cond_27

    iput-boolean v3, p0, Lcom/oplus/fancyicon/RenderThread;->mStart:Z

    monitor-exit v1

    return-void

    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_90

    iget-object v1, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_33

    iput-boolean v0, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    goto :goto_3

    :cond_33
    iget-boolean v1, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    if-nez v1, :cond_3

    const-wide v1, 0x7fffffffffffffffL

    iget-object v3, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    monitor-enter v3

    :try_start_3f
    iget-object v4, p0, Lcom/oplus/fancyicon/RenderThread;->mControllerList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_45
    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v5}, Lcom/oplus/fancyicon/BaseRendererController;->caculateControlSleepTime()J

    move-result-wide v6

    cmp-long v8, v1, v6

    if-lez v8, :cond_5a

    move-wide v1, v6

    :cond_5a
    invoke-virtual {v5}, Lcom/oplus/fancyicon/BaseRendererController;->generateFrameStartTime()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/oplus/fancyicon/BaseRendererController;->maxFramerateWillbeZero()Z

    move-result v8

    invoke-virtual {v5}, Lcom/oplus/fancyicon/BaseRendererController;->nextFrameisComing()Z

    move-result v9

    if-nez v8, :cond_76

    if-nez v9, :cond_76

    invoke-virtual {v5}, Lcom/oplus/fancyicon/BaseRendererController;->isRequestRender()Z

    move-result v8

    if-nez v8, :cond_76

    invoke-virtual {v5}, Lcom/oplus/fancyicon/BaseRendererController;->hasEvent()Z

    move-result v8

    if-eqz v8, :cond_45

    :cond_76
    invoke-virtual {v5}, Lcom/oplus/fancyicon/BaseRendererController;->onTouch()V

    invoke-virtual {v5, v6, v7}, Lcom/oplus/fancyicon/BaseRendererController;->tick(J)V

    invoke-virtual {v5}, Lcom/oplus/fancyicon/BaseRendererController;->recordInvalidateViewTime()V

    invoke-virtual {v5}, Lcom/oplus/fancyicon/BaseRendererController;->postInvalidate()V

    goto :goto_45

    :cond_83
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_3f .. :try_end_84} :catchall_8d

    iget-boolean v3, p0, Lcom/oplus/fancyicon/RenderThread;->mPaused:Z

    if-nez v3, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/oplus/fancyicon/RenderThread;->sleepForFramerate(J)V

    goto/16 :goto_3

    :catchall_8d
    move-exception p0

    :try_start_8e
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0

    :catchall_90
    move-exception p0

    :try_start_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public stopSelf()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/RenderThread;->mStoped:Z

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->notifyWakeup()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/RenderThread;->resumeSelf()V

    return-void
.end method
