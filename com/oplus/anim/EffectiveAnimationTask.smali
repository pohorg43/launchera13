.class public Lcom/oplus/anim/EffectiveAnimationTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final failureListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private volatile result:Lcom/oplus/anim/EffectiveAnimationResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final successListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationTask;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/anim/EffectiveAnimationTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .registers 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "TT;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->successListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->failureListeners:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    if-eqz p2, :cond_36

    :try_start_22
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationTask;->setResult(Lcom/oplus/anim/EffectiveAnimationResult;)V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2c

    goto :goto_40

    :catchall_2c
    move-exception p1

    new-instance p2, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {p2, p1}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, Lcom/oplus/anim/EffectiveAnimationTask;->setResult(Lcom/oplus/anim/EffectiveAnimationResult;)V

    goto :goto_40

    :cond_36
    sget-object p2, Lcom/oplus/anim/EffectiveAnimationTask;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;

    invoke-direct {v0, p0, p1}, Lcom/oplus/anim/EffectiveAnimationTask$EffectiveFutureTask;-><init>(Lcom/oplus/anim/EffectiveAnimationTask;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_40
    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/anim/EffectiveAnimationTask;)Lcom/oplus/anim/EffectiveAnimationResult;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/anim/EffectiveAnimationTask;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationTask;->notifySuccessListeners(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/anim/EffectiveAnimationTask;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationTask;->notifyFailureListeners(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/oplus/anim/EffectiveAnimationTask;Lcom/oplus/anim/EffectiveAnimationResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationTask;->setResult(Lcom/oplus/anim/EffectiveAnimationResult;)V

    return-void
.end method

.method private declared-synchronized notifyFailureListeners(Ljava/lang/Throwable;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationTask;->failureListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "EffectiveAnimation encountered an error but no failure listener was added:"

    invoke-static {v0, p1}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2b

    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationListener;

    invoke-interface {v1, p1}, Lcom/oplus/anim/EffectiveAnimationListener;->onResult(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2b

    goto :goto_19

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private notifyListeners()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationTask$1;

    invoke-direct {v1, p0}, Lcom/oplus/anim/EffectiveAnimationTask$1;-><init>(Lcom/oplus/anim/EffectiveAnimationTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized notifySuccessListeners(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationTask;->successListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationListener;

    invoke-interface {v1, p1}, Lcom/oplus/anim/EffectiveAnimationListener;->onResult(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    goto :goto_c

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setResult(Lcom/oplus/anim/EffectiveAnimationResult;)V
    .registers 3
    .param p1  # Lcom/oplus/anim/EffectiveAnimationResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    if-nez v0, :cond_a

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationTask;->notifyListeners()V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A task may only be set once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized addFailureListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oplus/anim/EffectiveAnimationListener;->onResult(Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->failureListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object p0

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "TT;>;)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->result:Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oplus/anim/EffectiveAnimationListener;->onResult(Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->successListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object p0

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearFailureListener()Lcom/oplus/anim/EffectiveAnimationTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->failureListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearSuccessListener()Lcom/oplus/anim/EffectiveAnimationTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->successListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFailureListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->failureListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "TT;>;)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask;->successListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
