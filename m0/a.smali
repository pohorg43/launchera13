.class public final Lm0/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/a$b;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lj0/c;",
            "Lm0/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lm0/q<",
            "*>;>;"
        }
    .end annotation
.end field

.field public d:Lm0/q$a;


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    new-instance v0, Lm0/a$a;

    invoke-direct {v0}, Lm0/a$a;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lm0/a;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lm0/a;->c:Ljava/lang/ref/ReferenceQueue;

    iput-boolean p1, p0, Lm0/a;->a:Z

    new-instance p1, Lm0/b;

    invoke-direct {p1, p0}, Lm0/b;-><init>(Lm0/a;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lj0/c;Lm0/q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/c;",
            "Lm0/q<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lm0/a$b;

    iget-object v1, p0, Lm0/a;->c:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lm0/a;->a:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lm0/a$b;-><init>(Lj0/c;Lm0/q;Ljava/lang/ref/ReferenceQueue;Z)V

    iget-object p2, p0, Lm0/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm0/a$b;

    if-eqz p1, :cond_1a

    const/4 p2, 0x0

    iput-object p2, p1, Lm0/a$b;->c:Lm0/w;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lm0/a$b;)V
    .registers 9
    .param p1  # Lm0/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm0/a;->b:Ljava/util/Map;

    iget-object v1, p1, Lm0/a$b;->a:Lj0/c;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lm0/a$b;->b:Z

    if-eqz v0, :cond_26

    iget-object v2, p1, Lm0/a$b;->c:Lm0/w;

    if-nez v2, :cond_11

    goto :goto_26

    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    new-instance v0, Lm0/q;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lm0/a$b;->a:Lj0/c;

    iget-object v6, p0, Lm0/a;->d:Lm0/q$a;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lm0/q;-><init>(Lm0/w;ZZLj0/c;Lm0/q$a;)V

    iget-object p0, p0, Lm0/a;->d:Lm0/q$a;

    iget-object p1, p1, Lm0/a$b;->a:Lj0/c;

    invoke-interface {p0, p1, v0}, Lm0/q$a;->a(Lj0/c;Lm0/q;)V

    return-void

    :cond_26
    :goto_26
    :try_start_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    throw p1
.end method
