.class public Lcom/oplus/fancyicon/util/ConfigThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/util/ConfigThread$OnExecuteEndListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigThread"


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mOnExecuteEndListener:Lcom/oplus/fancyicon/util/ConfigThread$OnExecuteEndListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mWaitBeforeExecuteEnd:Z


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;ZLcom/oplus/fancyicon/util/ConfigThread$OnExecuteEndListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mRunnable:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mWaitBeforeExecuteEnd:Z

    iput-object p3, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mOnExecuteEndListener:Lcom/oplus/fancyicon/util/ConfigThread$OnExecuteEndListener;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)Lcom/oplus/fancyicon/util/ConfigThread;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oplus/fancyicon/util/ConfigThread;->execute(Ljava/lang/Runnable;ZLcom/oplus/fancyicon/util/ConfigThread$OnExecuteEndListener;)Lcom/oplus/fancyicon/util/ConfigThread;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Ljava/lang/Runnable;ZLcom/oplus/fancyicon/util/ConfigThread$OnExecuteEndListener;)Lcom/oplus/fancyicon/util/ConfigThread;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/oplus/fancyicon/util/ConfigThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/fancyicon/util/ConfigThread;-><init>(Ljava/lang/Runnable;ZLcom/oplus/fancyicon/util/ConfigThread$OnExecuteEndListener;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method


# virtual methods
.method public notifyExecuteEnd()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mWaitBeforeExecuteEnd:Z

    iget-object v0, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object p0, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mOnExecuteEndListener:Lcom/oplus/fancyicon/util/ConfigThread$OnExecuteEndListener;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_e
    :try_start_e
    iget-boolean v1, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mWaitBeforeExecuteEnd:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_2b

    if-eqz v1, :cond_24

    :try_start_12
    iget-object v1, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_2b

    goto :goto_e

    :catch_18
    move-exception p0

    :try_start_19
    const-string v1, "ConfigThread"

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_2b

    iget-object p0, p0, Lcom/oplus/fancyicon/util/ConfigThread;->mOnExecuteEndListener:Lcom/oplus/fancyicon/util/ConfigThread$OnExecuteEndListener;

    invoke-interface {p0}, Lcom/oplus/fancyicon/util/ConfigThread$OnExecuteEndListener;->onExecuteEnd()V

    goto :goto_2e

    :catchall_2b
    move-exception p0

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0

    :cond_2e
    :goto_2e
    return-void
.end method
