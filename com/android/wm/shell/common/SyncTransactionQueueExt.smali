.class Lcom/android/wm/shell/common/SyncTransactionQueueExt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueueExt;->mIdleHandlers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addIdleHandlerLocked(Ljava/lang/Runnable;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueueExt;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onQueueIdleLocked()V
    .registers 6
    .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/common/SyncTransactionQueueExt;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/wm/shell/common/SyncTransactionQueueExt;->mIdleHandlers:Ljava/util/ArrayList;

    new-array v2, v0, [Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_23

    aget-object v3, v1, v2

    :try_start_18
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1b

    :catchall_1b
    iget-object v4, p0, Lcom/android/wm/shell/common/SyncTransactionQueueExt;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_23
    return-void
.end method

.method public removeIdleHandlerLocked(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/common/SyncTransactionQueueExt;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
