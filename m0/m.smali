.class public Lm0/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm0/i$a;
.implements Lh1/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/m$c;,
        Lm0/m$d;,
        Lm0/m$e;,
        Lm0/m$b;,
        Lm0/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm0/i$a<",
        "TR;>;",
        "Lh1/a$d;"
    }
.end annotation


# static fields
.field public static final y:Lm0/m$c;


# instance fields
.field public final a:Lm0/m$e;

.field public final b:Lh1/d;

.field public final c:Lm0/q$a;

.field public final d:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lm0/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Lm0/m$c;

.field public final f:Lm0/n;

.field public final g:Lp0/a;

.field public final h:Lp0/a;

.field public final i:Lp0/a;

.field public final j:Lp0/a;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public l:Lj0/c;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lm0/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/w<",
            "*>;"
        }
    .end annotation
.end field

.field public r:Lcom/bumptech/glide/load/a;

.field public s:Z

.field public t:Lm0/r;

.field public u:Z

.field public v:Lm0/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/q<",
            "*>;"
        }
    .end annotation
.end field

.field public w:Lm0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/i<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile x:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm0/m$c;

    invoke-direct {v0}, Lm0/m$c;-><init>()V

    sput-object v0, Lm0/m;->y:Lm0/m$c;

    return-void
.end method

.method public constructor <init>(Lp0/a;Lp0/a;Lp0/a;Lp0/a;Lm0/n;Lm0/q$a;Landroidx/core/util/Pools$Pool;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp0/a;",
            "Lp0/a;",
            "Lp0/a;",
            "Lp0/a;",
            "Lm0/n;",
            "Lm0/q$a;",
            "Landroidx/core/util/Pools$Pool<",
            "Lm0/m<",
            "*>;>;)V"
        }
    .end annotation

    sget-object v0, Lm0/m;->y:Lm0/m$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lm0/m$e;

    invoke-direct {v1}, Lm0/m$e;-><init>()V

    iput-object v1, p0, Lm0/m;->a:Lm0/m$e;

    new-instance v1, Lh1/d$b;

    invoke-direct {v1}, Lh1/d$b;-><init>()V

    iput-object v1, p0, Lm0/m;->b:Lh1/d;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lm0/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lm0/m;->g:Lp0/a;

    iput-object p2, p0, Lm0/m;->h:Lp0/a;

    iput-object p3, p0, Lm0/m;->i:Lp0/a;

    iput-object p4, p0, Lm0/m;->j:Lp0/a;

    iput-object p5, p0, Lm0/m;->f:Lm0/n;

    iput-object p6, p0, Lm0/m;->c:Lm0/q$a;

    iput-object p7, p0, Lm0/m;->d:Landroidx/core/util/Pools$Pool;

    iput-object v0, p0, Lm0/m;->e:Lm0/m$c;

    return-void
.end method


# virtual methods
.method public a()Lh1/d;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lm0/m;->b:Lh1/d;

    return-object p0
.end method

.method public declared-synchronized b(Lc1/f;Ljava/util/concurrent/Executor;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm0/m;->b:Lh1/d;

    invoke-virtual {v0}, Lh1/d;->a()V

    iget-object v0, p0, Lm0/m;->a:Lm0/m$e;

    iget-object v0, v0, Lm0/m$e;->a:Ljava/util/List;

    new-instance v1, Lm0/m$d;

    invoke-direct {v1, p1, p2}, Lm0/m$d;-><init>(Lc1/f;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lm0/m;->s:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    invoke-virtual {p0, v1}, Lm0/m;->e(I)V

    new-instance v0, Lm0/m$b;

    invoke-direct {v0, p0, p1}, Lm0/m$b;-><init>(Lm0/m;Lc1/f;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3e

    :cond_23
    iget-boolean v0, p0, Lm0/m;->u:Z

    if-eqz v0, :cond_33

    invoke-virtual {p0, v1}, Lm0/m;->e(I)V

    new-instance v0, Lm0/m$a;

    invoke-direct {v0, p0, p1}, Lm0/m$a;-><init>(Lm0/m;Lc1/f;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3e

    :cond_33
    iget-boolean p1, p0, Lm0/m;->x:Z

    if-nez p1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, Lg1/e;->a(ZLjava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    :goto_3e
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()V
    .registers 5

    invoke-virtual {p0}, Lm0/m;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/m;->x:Z

    iget-object v1, p0, Lm0/m;->w:Lm0/i;

    iput-boolean v0, v1, Lm0/i;->I:Z

    iget-object v0, v1, Lm0/i;->G:Lm0/g;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lm0/g;->cancel()V

    :cond_15
    iget-object v0, p0, Lm0/m;->f:Lm0/n;

    iget-object v1, p0, Lm0/m;->l:Lj0/c;

    check-cast v0, Lm0/l;

    monitor-enter v0

    :try_start_1c
    iget-object v2, v0, Lm0/l;->a:Lm0/t;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p0, Lm0/m;->p:Z

    invoke-virtual {v2, v3}, Lm0/t;->a(Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_36

    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public d()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm0/m;->b:Lh1/d;

    invoke-virtual {v0}, Lh1/d;->a()V

    invoke-virtual {p0}, Lm0/m;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lg1/e;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lm0/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v1, v2}, Lg1/e;->a(ZLjava/lang/String;)V

    if-nez v0, :cond_27

    iget-object v0, p0, Lm0/m;->v:Lm0/q;

    invoke-virtual {p0}, Lm0/m;->g()V

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lm0/q;->d()V

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public declared-synchronized e(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lm0/m;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lg1/e;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lm0/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lm0/m;->v:Lm0/q;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lm0/q;->a()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lm0/m;->u:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lm0/m;->s:Z

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lm0/m;->x:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final declared-synchronized g()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm0/m;->l:Lj0/c;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lm0/m;->a:Lm0/m$e;

    iget-object v0, v0, Lm0/m$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm0/m;->l:Lj0/c;

    iput-object v0, p0, Lm0/m;->v:Lm0/q;

    iput-object v0, p0, Lm0/m;->q:Lm0/w;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lm0/m;->u:Z

    iput-boolean v1, p0, Lm0/m;->x:Z

    iput-boolean v1, p0, Lm0/m;->s:Z

    iget-object v2, p0, Lm0/m;->w:Lm0/i;

    iget-object v3, v2, Lm0/i;->g:Lm0/i$e;

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_42

    const/4 v4, 0x1

    :try_start_20
    iput-boolean v4, v3, Lm0/i$e;->a:Z

    invoke-virtual {v3, v1}, Lm0/i$e;->a(Z)Z

    move-result v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_39

    :try_start_26
    monitor-exit v3

    if-eqz v1, :cond_2c

    invoke-virtual {v2}, Lm0/i;->l()V

    :cond_2c
    iput-object v0, p0, Lm0/m;->w:Lm0/i;

    iput-object v0, p0, Lm0/m;->t:Lm0/r;

    iput-object v0, p0, Lm0/m;->r:Lcom/bumptech/glide/load/a;

    iget-object v0, p0, Lm0/m;->d:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_42

    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v3

    throw v0

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Lc1/f;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm0/m;->b:Lh1/d;

    invoke-virtual {v0}, Lh1/d;->a()V

    iget-object v0, p0, Lm0/m;->a:Lm0/m$e;

    iget-object v0, v0, Lm0/m$e;->a:Ljava/util/List;

    new-instance v1, Lm0/m$d;

    sget-object v2, Lg1/a;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p1, v2}, Lm0/m$d;-><init>(Lc1/f;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lm0/m;->a:Lm0/m$e;

    invoke-virtual {p1}, Lm0/m$e;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Lm0/m;->c()V

    iget-boolean p1, p0, Lm0/m;->s:Z

    if-nez p1, :cond_2a

    iget-boolean p1, p0, Lm0/m;->u:Z

    if-eqz p1, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p1, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p1, 0x1

    :goto_2b
    if-eqz p1, :cond_38

    iget-object p1, p0, Lm0/m;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lm0/m;->g()V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i(Lm0/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/i<",
            "*>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lm0/m;->n:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lm0/m;->i:Lp0/a;

    goto :goto_10

    :cond_7
    iget-boolean v0, p0, Lm0/m;->o:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lm0/m;->j:Lp0/a;

    goto :goto_10

    :cond_e
    iget-object p0, p0, Lm0/m;->h:Lp0/a;

    :goto_10
    iget-object p0, p0, Lp0/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
