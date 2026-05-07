.class public Lcom/airbnb/lottie/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/r$a;
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
.field public static e:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/l<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/l<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Landroid/os/Handler;

.field public volatile d:Lcom/airbnb/lottie/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/r;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/p<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/r;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/r;->b:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/airbnb/lottie/r;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    sget-object v0, Lcom/airbnb/lottie/r;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/airbnb/lottie/r$a;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/r$a;-><init>(Lcom/airbnb/lottie/r;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/airbnb/lottie/l;)Lcom/airbnb/lottie/r;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/l<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/airbnb/lottie/r<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    iget-object v0, v0, Lcom/airbnb/lottie/p;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    iget-object v0, v0, Lcom/airbnb/lottie/p;->b:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/l;->onResult(Ljava/lang/Object;)V

    :cond_12
    iget-object v0, p0, Lcom/airbnb/lottie/r;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object p0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/airbnb/lottie/l;)Lcom/airbnb/lottie/r;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/l<",
            "TT;>;)",
            "Lcom/airbnb/lottie/r<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    iget-object v0, v0, Lcom/airbnb/lottie/p;->a:Ljava/lang/Object;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    iget-object v0, v0, Lcom/airbnb/lottie/p;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/airbnb/lottie/l;->onResult(Ljava/lang/Object;)V

    :cond_12
    iget-object v0, p0, Lcom/airbnb/lottie/r;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object p0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lcom/airbnb/lottie/p;)V
    .registers 3
    .param p1  # Lcom/airbnb/lottie/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/p<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    if-nez v0, :cond_11

    iput-object p1, p0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    iget-object p1, p0, Lcom/airbnb/lottie/r;->c:Landroid/os/Handler;

    new-instance v0, Lcom/airbnb/lottie/q;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/q;-><init>(Lcom/airbnb/lottie/r;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A task may only be set once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
