.class public Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mCount:I

.field public mDecrementRunnable:Ljava/lang/Runnable;

.field public mErrorRunnable:Ljava/lang/Runnable;

.field public mFirstIncRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mIncrementRunnable:Ljava/lang/Runnable;

.field public mLastDecRunnables:Ljava/util/ArrayList;
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

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    new-instance v0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger$1;-><init>(Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;)V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mIncrementRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger$2;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger$2;-><init>(Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;)V

    iput-object v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mDecrementRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    if-eqz p2, :cond_2d

    iget-object p1, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iput-object p3, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public addLastDecrementRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized decrement()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mCount:I

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    goto :goto_1f

    :cond_d
    if-gez v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1f

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid ref count"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger$3;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger$3;-><init>(Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;)V

    return-object v0
.end method

.method public flushLastDecrementRunnables()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    iget-object p0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCount()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mCount:I

    return p0
.end method

.method public increment()V
    .registers 4

    iget v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mCount:I

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_23

    iget-object v2, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_23
    iget v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mCount:I

    return-void
.end method

.method public incrementAsRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/memory/ReferenceCountedTrigger;->mIncrementRunnable:Ljava/lang/Runnable;

    return-object p0
.end method
