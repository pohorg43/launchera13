.class public Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OVSS.ThreadTaskPool"

.field private static final TIMEOUT_INFINITE:J

.field private static executorThread:Ljava/lang/Thread;

.field private static running:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

.field private static stopRecordTime:J

.field private static stopTimeout:J

.field private static tasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/oplus/ovoiceskillservice/utils/ThreadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->tasks:Ljava/util/Queue;

    sget-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->RUNNING:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    sput-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->running:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->stopTimeout:J

    sput-wide v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->stopRecordTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()V
    .registers 0

    invoke-static {}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->doRun()V

    return-void
.end method

.method public static add(Lcom/oplus/ovoiceskillservice/utils/ThreadTask;)V
    .registers 4

    sget-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->executorThread:Ljava/lang/Thread;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->start()V

    goto :goto_2c

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->executorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_16
    const-string v0, "OVSS.ThreadTaskPool"

    const-string v1, "executorThread is not alive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1d
    sget-object v1, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->executorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->start()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    move-exception v1

    const-string v2, "executorThread.start error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    :goto_2c
    sget-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->tasks:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private static doRun()V
    .registers 13

    const-string v0, "OVSS.ThreadTaskPool"

    const-string v1, "taskThread run start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_a
    :goto_a
    sget-object v5, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->running:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    sget-object v6, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->STOP_NOW:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ab

    const-wide/16 v5, 0x12c

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1b

    return-void

    :cond_1b
    :try_start_1b
    sget-object v5, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->tasks:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/ovoiceskillservice/utils/ThreadTask;
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_23} :catch_9f

    const/4 v6, 0x1

    if-eqz v5, :cond_54

    :try_start_26
    sget-object v3, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$2;->$SwitchMap$com$oplus$ovoiceskillservice$utils$ThreadTask$TaskGuard:[I

    invoke-virtual {v5}, Lcom/oplus/ovoiceskillservice/utils/ThreadTask;->guard()Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v6, :cond_47

    const/4 v4, 0x2

    if-eq v3, v4, :cond_41

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3b

    goto :goto_4f

    :cond_3b
    sget-object v3, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->tasks:Ljava/util/Queue;

    invoke-interface {v3, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_41
    const-string v3, "task discard"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_47
    const-string v3, "task enter"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_4f} :catch_51

    :goto_4f
    move-wide v3, v1

    goto :goto_54

    :catch_51
    move-exception v3

    move-wide v4, v1

    goto :goto_a3

    :cond_54
    :goto_54
    :try_start_54
    sget-object v5, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->running:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    sget-object v7, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->STOP_TASKOVER:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    invoke-virtual {v5, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    sget-object v5, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->tasks:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    if-nez v5, :cond_6f

    const-string v5, "stop task over"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->terminate()V

    goto :goto_ab

    :cond_6f
    sget-object v5, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->running:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    invoke-virtual {v5, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->stopRecordTime:J

    sub-long/2addr v7, v9

    sget-wide v9, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->stopTimeout:J

    cmp-long v5, v7, v9

    if-ltz v5, :cond_8d

    const-string v5, "stop timeout"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->terminate()V

    goto :goto_ab

    :cond_8d
    sget-object v5, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->tasks:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    if-gt v5, v6, :cond_a

    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9a
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_9a} :catch_9f

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto/16 :goto_a

    :catch_9f
    move-exception v5

    move-wide v11, v3

    move-object v3, v5

    move-wide v4, v11

    :goto_a3
    const-string v6, "sleep interrupted"

    invoke-static {v0, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v3, v4

    goto/16 :goto_a

    :cond_ab
    :goto_ab
    const-string v1, "taskThread run over!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static shutdown()V
    .registers 2

    const-string v0, "OVSS.ThreadTaskPool"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->shutdown(J)V

    return-void
.end method

.method public static shutdown(J)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutdown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OVSS.ThreadTaskPool"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide p0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->stopTimeout:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->stopRecordTime:J

    sget-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->STOP_TASKOVER:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    sput-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->running:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    :try_start_22
    sget-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->executorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_30

    invoke-virtual {v0, p0, p1}, Ljava/lang/Thread;->join(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception p0

    const-string p1, "join interrupted"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    :goto_30
    return-void
.end method

.method public static shutdownAndWait(JLjava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->shutdown(J)V

    return-void
.end method

.method public static start()V
    .registers 2

    sget-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->RUNNING:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    sput-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->running:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->stopTimeout:J

    sput-wide v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->stopRecordTime:J

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$1;

    invoke-direct {v1}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->executorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static terminate()V
    .registers 2

    const-string v0, "OVSS.ThreadTaskPool"

    const-string v1, "terminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;->STOP_NOW:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    sput-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->running:Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool$RunState;

    sget-object v0, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->tasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method
