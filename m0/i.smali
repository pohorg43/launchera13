.class public Lm0/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm0/g$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lh1/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/i$g;,
        Lm0/i$f;,
        Lm0/i$d;,
        Lm0/i$a;,
        Lm0/i$c;,
        Lm0/i$e;,
        Lm0/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm0/g$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lm0/i<",
        "*>;>;",
        "Lh1/a$d;"
    }
.end annotation


# instance fields
.field public E:Lcom/bumptech/glide/load/a;

.field public F:Lk0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/d<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile G:Lm0/g;

.field public volatile H:Z

.field public volatile I:Z

.field public final a:Lm0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lh1/d;

.field public final d:Lm0/i$d;

.field public final e:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lm0/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Lm0/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/i$c<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Lm0/i$e;

.field public h:Lcom/bumptech/glide/d;

.field public i:Lj0/c;

.field public j:Lcom/bumptech/glide/e;

.field public k:Lm0/o;

.field public l:I

.field public m:I

.field public n:Lm0/k;

.field public o:Lj0/e;

.field public p:Lm0/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/i$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public q:I

.field public r:Lm0/i$g;

.field public s:Lm0/i$f;

.field public t:J

.field public u:Z

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Thread;

.field public x:Lj0/c;

.field public y:Lj0/c;

.field public z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lm0/i$d;Landroidx/core/util/Pools$Pool;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/i$d;",
            "Landroidx/core/util/Pools$Pool<",
            "Lm0/i<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm0/h;

    invoke-direct {v0}, Lm0/h;-><init>()V

    iput-object v0, p0, Lm0/i;->a:Lm0/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/i;->b:Ljava/util/List;

    new-instance v0, Lh1/d$b;

    invoke-direct {v0}, Lh1/d$b;-><init>()V

    iput-object v0, p0, Lm0/i;->c:Lh1/d;

    new-instance v0, Lm0/i$c;

    invoke-direct {v0}, Lm0/i$c;-><init>()V

    iput-object v0, p0, Lm0/i;->f:Lm0/i$c;

    new-instance v0, Lm0/i$e;

    invoke-direct {v0}, Lm0/i$e;-><init>()V

    iput-object v0, p0, Lm0/i;->g:Lm0/i$e;

    iput-object p1, p0, Lm0/i;->d:Lm0/i$d;

    iput-object p2, p0, Lm0/i;->e:Landroidx/core/util/Pools$Pool;

    return-void
.end method


# virtual methods
.method public a()Lh1/d;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lm0/i;->c:Lh1/d;

    return-object p0
.end method

.method public b(Lj0/c;Ljava/lang/Exception;Lk0/d;Lcom/bumptech/glide/load/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/c;",
            "Ljava/lang/Exception;",
            "Lk0/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lk0/d;->b()V

    new-instance v0, Lm0/r;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lm0/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Lk0/d;->a()Ljava/lang/Class;

    move-result-object p2

    iput-object p1, v0, Lm0/r;->b:Lj0/c;

    iput-object p4, v0, Lm0/r;->c:Lcom/bumptech/glide/load/a;

    iput-object p2, v0, Lm0/r;->d:Ljava/lang/Class;

    iget-object p1, p0, Lm0/i;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lm0/i;->w:Ljava/lang/Thread;

    if-eq p1, p2, :cond_2d

    sget-object p1, Lm0/i$f;->b:Lm0/i$f;

    iput-object p1, p0, Lm0/i;->s:Lm0/i$f;

    iget-object p1, p0, Lm0/i;->p:Lm0/i$a;

    check-cast p1, Lm0/m;

    invoke-virtual {p1, p0}, Lm0/m;->i(Lm0/i;)V

    goto :goto_30

    :cond_2d
    invoke-virtual {p0}, Lm0/i;->m()V

    :goto_30
    return-void
.end method

.method public c()V
    .registers 2

    sget-object v0, Lm0/i$f;->b:Lm0/i$f;

    iput-object v0, p0, Lm0/i;->s:Lm0/i$f;

    iget-object v0, p0, Lm0/i;->p:Lm0/i$a;

    check-cast v0, Lm0/m;

    invoke-virtual {v0, p0}, Lm0/m;->i(Lm0/i;)V

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lm0/i;

    iget-object v0, p0, Lm0/i;->j:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lm0/i;->j:Lcom/bumptech/glide/e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_17

    iget p0, p0, Lm0/i;->q:I

    iget p1, p1, Lm0/i;->q:I

    sub-int v0, p0, p1

    :cond_17
    return v0
.end method

.method public d(Lj0/c;Ljava/lang/Object;Lk0/d;Lcom/bumptech/glide/load/a;Lj0/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/c;",
            "Ljava/lang/Object;",
            "Lk0/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lj0/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lm0/i;->x:Lj0/c;

    iput-object p2, p0, Lm0/i;->z:Ljava/lang/Object;

    iput-object p3, p0, Lm0/i;->F:Lk0/d;

    iput-object p4, p0, Lm0/i;->E:Lcom/bumptech/glide/load/a;

    iput-object p5, p0, Lm0/i;->y:Lj0/c;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lm0/i;->w:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1e

    sget-object p1, Lm0/i$f;->c:Lm0/i$f;

    iput-object p1, p0, Lm0/i;->s:Lm0/i$f;

    iget-object p1, p0, Lm0/i;->p:Lm0/i$a;

    check-cast p1, Lm0/m;

    invoke-virtual {p1, p0}, Lm0/m;->i(Lm0/i;)V

    goto :goto_21

    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lm0/i;->g()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    :goto_21
    return-void

    :catchall_22
    move-exception p0

    throw p0
.end method

.method public final e(Lk0/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lm0/w;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lk0/d<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lm0/w<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm0/r;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_7

    invoke-interface {p1}, Lk0/d;->b()V

    return-object v0

    :cond_7
    :try_start_7
    sget v1, Lg1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {p0, p2, p3}, Lm0/i;->f(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lm0/w;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_2e

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded result "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v1, v2, v0}, Lm0/i;->j(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_32

    :cond_2e
    invoke-interface {p1}, Lk0/d;->b()V

    return-object p2

    :catchall_32
    move-exception p0

    invoke-interface {p1}, Lk0/d;->b()V

    throw p0
.end method

.method public final f(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lm0/w;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lm0/w<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm0/r;
        }
    .end annotation

    iget-object v0, p0, Lm0/i;->a:Lm0/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm0/h;->d(Ljava/lang/Class;)Lm0/u;

    move-result-object v2

    iget-object v0, p0, Lm0/i;->o:Lj0/e;

    sget-object v1, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    if-eq p2, v1, :cond_19

    iget-object v1, p0, Lm0/i;->a:Lm0/h;

    iget-boolean v1, v1, Lm0/h;->r:Z

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    sget-object v3, Lt0/j;->i:Lj0/d;

    invoke-virtual {v0, v3}, Lj0/e;->c(Lj0/d;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_40

    if-eqz v1, :cond_2d

    goto :goto_40

    :cond_2d
    new-instance v0, Lj0/e;

    invoke-direct {v0}, Lj0/e;-><init>()V

    iget-object v4, p0, Lm0/i;->o:Lj0/e;

    invoke-virtual {v0, v4}, Lj0/e;->d(Lj0/e;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v4, v0, Lj0/e;->b:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    :goto_40
    move-object v4, v0

    iget-object v0, p0, Lm0/i;->h:Lcom/bumptech/glide/d;

    iget-object v0, v0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->e:Lk0/f;

    monitor-enter v0

    :try_start_48
    iget-object v1, v0, Lk0/f;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/e$a;

    if-nez v1, :cond_7b

    iget-object v3, v0, Lk0/f;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk0/e$a;

    invoke-interface {v5}, Lk0/e$a;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_60

    move-object v1, v5

    :cond_7b
    if-nez v1, :cond_7f

    sget-object v1, Lk0/f;->b:Lk0/e$a;

    :cond_7f
    invoke-interface {v1, p1}, Lk0/e$a;->b(Ljava/lang/Object;)Lk0/e;

    move-result-object p1
    :try_end_83
    .catchall {:try_start_48 .. :try_end_83} :catchall_9b

    monitor-exit v0

    :try_start_84
    iget v5, p0, Lm0/i;->l:I

    iget v6, p0, Lm0/i;->m:I

    new-instance v7, Lm0/i$b;

    invoke-direct {v7, p0, p2}, Lm0/i$b;-><init>(Lm0/i;Lcom/bumptech/glide/load/a;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lm0/u;->a(Lk0/e;Lj0/e;IILm0/j$a;)Lm0/w;

    move-result-object p0
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_96

    invoke-interface {p1}, Lk0/e;->b()V

    return-object p0

    :catchall_96
    move-exception p0

    invoke-interface {p1}, Lk0/e;->b()V

    throw p0

    :catchall_9b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final g()V
    .registers 13

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "Retrieved data"

    iget-wide v1, p0, Lm0/i;->t:J

    const-string v3, "data: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lm0/i;->z:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lm0/i;->x:Lj0/c;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lm0/i;->F:Lk0/d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lm0/i;->j(Ljava/lang/String;JLjava/lang/String;)V

    :cond_33
    const/4 v0, 0x0

    :try_start_34
    iget-object v1, p0, Lm0/i;->F:Lk0/d;

    iget-object v2, p0, Lm0/i;->z:Ljava/lang/Object;

    iget-object v3, p0, Lm0/i;->E:Lcom/bumptech/glide/load/a;

    invoke-virtual {p0, v1, v2, v3}, Lm0/i;->e(Lk0/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lm0/w;

    move-result-object v1
    :try_end_3e
    .catch Lm0/r; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_50

    :catch_3f
    move-exception v1

    iget-object v2, p0, Lm0/i;->y:Lj0/c;

    iget-object v3, p0, Lm0/i;->E:Lcom/bumptech/glide/load/a;

    iput-object v2, v1, Lm0/r;->b:Lj0/c;

    iput-object v3, v1, Lm0/r;->c:Lcom/bumptech/glide/load/a;

    iput-object v0, v1, Lm0/r;->d:Ljava/lang/Class;

    iget-object v2, p0, Lm0/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_50
    if-eqz v1, :cond_15e

    iget-object v2, p0, Lm0/i;->E:Lcom/bumptech/glide/load/a;

    instance-of v3, v1, Lm0/s;

    if-eqz v3, :cond_5e

    move-object v3, v1

    check-cast v3, Lm0/s;

    invoke-interface {v3}, Lm0/s;->initialize()V

    :cond_5e
    iget-object v3, p0, Lm0/i;->f:Lm0/i$c;

    iget-object v3, v3, Lm0/i$c;->c:Lm0/v;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_68

    move v3, v5

    goto :goto_69

    :cond_68
    move v3, v4

    :goto_69
    if-eqz v3, :cond_70

    invoke-static {v1}, Lm0/v;->d(Lm0/w;)Lm0/v;

    move-result-object v0

    move-object v1, v0

    :cond_70
    invoke-virtual {p0}, Lm0/i;->o()V

    iget-object v3, p0, Lm0/i;->p:Lm0/i$a;

    check-cast v3, Lm0/m;

    monitor-enter v3

    :try_start_78
    iput-object v1, v3, Lm0/m;->q:Lm0/w;

    iput-object v2, v3, Lm0/m;->r:Lcom/bumptech/glide/load/a;

    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_15b

    monitor-enter v3

    :try_start_7e
    iget-object v1, v3, Lm0/m;->b:Lh1/d;

    invoke-virtual {v1}, Lh1/d;->a()V

    iget-boolean v1, v3, Lm0/m;->x:Z

    if-eqz v1, :cond_91

    iget-object v1, v3, Lm0/m;->q:Lm0/w;

    invoke-interface {v1}, Lm0/w;->recycle()V

    invoke-virtual {v3}, Lm0/m;->g()V

    monitor-exit v3

    goto :goto_f5

    :cond_91
    iget-object v1, v3, Lm0/m;->a:Lm0/m$e;

    invoke-virtual {v1}, Lm0/m$e;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_150

    iget-boolean v1, v3, Lm0/m;->s:Z

    if-nez v1, :cond_148

    iget-object v1, v3, Lm0/m;->e:Lm0/m$c;

    iget-object v7, v3, Lm0/m;->q:Lm0/w;

    iget-boolean v8, v3, Lm0/m;->m:Z

    iget-object v10, v3, Lm0/m;->l:Lj0/c;

    iget-object v11, v3, Lm0/m;->c:Lm0/q$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lm0/q;

    const/4 v9, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lm0/q;-><init>(Lm0/w;ZZLj0/c;Lm0/q$a;)V

    iput-object v1, v3, Lm0/m;->v:Lm0/q;

    iput-boolean v5, v3, Lm0/m;->s:Z

    iget-object v1, v3, Lm0/m;->a:Lm0/m$e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lm0/m$e;->a:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v3, v1}, Lm0/m;->e(I)V

    iget-object v1, v3, Lm0/m;->l:Lj0/c;

    iget-object v6, v3, Lm0/m;->v:Lm0/q;

    monitor-exit v3
    :try_end_ce
    .catchall {:try_start_7e .. :try_end_ce} :catchall_158

    iget-object v7, v3, Lm0/m;->f:Lm0/n;

    check-cast v7, Lm0/l;

    invoke-virtual {v7, v3, v1, v6}, Lm0/l;->e(Lm0/m;Lj0/c;Lm0/q;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/m$d;

    iget-object v6, v2, Lm0/m$d;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Lm0/m$b;

    iget-object v2, v2, Lm0/m$d;->a:Lc1/f;

    invoke-direct {v7, v3, v2}, Lm0/m$b;-><init>(Lm0/m;Lc1/f;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_d9

    :cond_f2
    invoke-virtual {v3}, Lm0/m;->d()V

    :goto_f5
    sget-object v1, Lm0/i$g;->e:Lm0/i$g;

    iput-object v1, p0, Lm0/i;->r:Lm0/i$g;

    :try_start_f9
    iget-object v1, p0, Lm0/i;->f:Lm0/i$c;

    iget-object v2, v1, Lm0/i$c;->c:Lm0/v;

    if-eqz v2, :cond_101

    move v2, v5

    goto :goto_102

    :cond_101
    move v2, v4

    :goto_102
    if-eqz v2, :cond_129

    iget-object v2, p0, Lm0/i;->d:Lm0/i$d;

    iget-object v3, p0, Lm0/i;->o:Lj0/e;
    :try_end_108
    .catchall {:try_start_f9 .. :try_end_108} :catchall_141

    :try_start_108
    check-cast v2, Lm0/l$c;

    invoke-virtual {v2}, Lm0/l$c;->a()Lo0/a;

    move-result-object v2

    iget-object v6, v1, Lm0/i$c;->a:Lj0/c;

    new-instance v7, Lm0/f;

    iget-object v8, v1, Lm0/i$c;->b:Lj0/f;

    iget-object v9, v1, Lm0/i$c;->c:Lm0/v;

    invoke-direct {v7, v8, v9, v3}, Lm0/f;-><init>(Lj0/a;Ljava/lang/Object;Lj0/e;)V

    invoke-interface {v2, v6, v7}, Lo0/a;->b(Lj0/c;Lo0/a$b;)V
    :try_end_11c
    .catchall {:try_start_108 .. :try_end_11c} :catchall_122

    :try_start_11c
    iget-object v1, v1, Lm0/i$c;->c:Lm0/v;

    invoke-virtual {v1}, Lm0/v;->e()V

    goto :goto_129

    :catchall_122
    move-exception p0

    iget-object v1, v1, Lm0/i$c;->c:Lm0/v;

    invoke-virtual {v1}, Lm0/v;->e()V

    throw p0
    :try_end_129
    .catchall {:try_start_11c .. :try_end_129} :catchall_141

    :cond_129
    :goto_129
    if-eqz v0, :cond_12e

    invoke-virtual {v0}, Lm0/v;->e()V

    :cond_12e
    iget-object v0, p0, Lm0/i;->g:Lm0/i$e;

    monitor-enter v0

    :try_start_131
    iput-boolean v5, v0, Lm0/i$e;->b:Z

    invoke-virtual {v0, v4}, Lm0/i$e;->a(Z)Z

    move-result v1
    :try_end_137
    .catchall {:try_start_131 .. :try_end_137} :catchall_13e

    monitor-exit v0

    if-eqz v1, :cond_161

    invoke-virtual {p0}, Lm0/i;->l()V

    goto :goto_161

    :catchall_13e
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_141
    move-exception p0

    if-eqz v0, :cond_147

    invoke-virtual {v0}, Lm0/v;->e()V

    :cond_147
    throw p0

    :cond_148
    :try_start_148
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already have resource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_150
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received a resource without any callbacks to notify"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_158
    move-exception p0

    monitor-exit v3
    :try_end_15a
    .catchall {:try_start_148 .. :try_end_15a} :catchall_158

    throw p0

    :catchall_15b
    move-exception p0

    :try_start_15c
    monitor-exit v3
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15b

    throw p0

    :cond_15e
    invoke-virtual {p0}, Lm0/i;->m()V

    :cond_161
    :goto_161
    return-void
.end method

.method public final h()Lm0/g;
    .registers 3

    iget-object v0, p0, Lm0/i;->r:Lm0/i$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized stage: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lm0/i;->r:Lm0/i$g;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Lm0/b0;

    iget-object v1, p0, Lm0/i;->a:Lm0/h;

    invoke-direct {v0, v1, p0}, Lm0/b0;-><init>(Lm0/h;Lm0/g$a;)V

    return-object v0

    :cond_31
    new-instance v0, Lm0/d;

    iget-object v1, p0, Lm0/i;->a:Lm0/h;

    invoke-direct {v0, v1, p0}, Lm0/d;-><init>(Lm0/h;Lm0/g$a;)V

    return-object v0

    :cond_39
    new-instance v0, Lm0/x;

    iget-object v1, p0, Lm0/i;->a:Lm0/h;

    invoke-direct {v0, v1, p0}, Lm0/x;-><init>(Lm0/h;Lm0/g$a;)V

    return-object v0
.end method

.method public final i(Lm0/i$g;)Lm0/i$g;
    .registers 6

    sget-object v0, Lm0/i$g;->b:Lm0/i$g;

    sget-object v1, Lm0/i$g;->c:Lm0/i$g;

    sget-object v2, Lm0/i$g;->f:Lm0/i$g;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_47

    const/4 v0, 0x1

    if-eq v3, v0, :cond_39

    const/4 v0, 0x2

    if-eq v3, v0, :cond_31

    const/4 p0, 0x3

    if-eq v3, p0, :cond_30

    const/4 p0, 0x5

    if-ne v3, p0, :cond_19

    goto :goto_30

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    :goto_30
    return-object v2

    :cond_31
    iget-boolean p0, p0, Lm0/i;->u:Z

    if-eqz p0, :cond_36

    goto :goto_38

    :cond_36
    sget-object v2, Lm0/i$g;->d:Lm0/i$g;

    :goto_38
    return-object v2

    :cond_39
    iget-object p1, p0, Lm0/i;->n:Lm0/k;

    invoke-virtual {p1}, Lm0/k;->a()Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_46

    :cond_42
    invoke-virtual {p0, v1}, Lm0/i;->i(Lm0/i$g;)Lm0/i$g;

    move-result-object v1

    :goto_46
    return-object v1

    :cond_47
    iget-object p1, p0, Lm0/i;->n:Lm0/k;

    invoke-virtual {p1}, Lm0/k;->b()Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_54

    :cond_50
    invoke-virtual {p0, v0}, Lm0/i;->i(Lm0/i$g;)Lm0/i$g;

    move-result-object v0

    :goto_54
    return-object v0
.end method

.method public final j(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    const-string v0, " in "

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2, p3}, Lg1/b;->a(J)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", load key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm0/i;->k:Lm0/o;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_20

    const-string p0, ", "

    invoke-static {p0, p4}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    :cond_20
    const-string p0, ""

    :goto_22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", thread: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DecodeJob"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k()V
    .registers 7

    invoke-virtual {p0}, Lm0/i;->o()V

    new-instance v0, Lm0/r;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lm0/i;->b:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lm0/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lm0/i;->p:Lm0/i$a;

    check-cast v1, Lm0/m;

    monitor-enter v1

    :try_start_16
    iput-object v0, v1, Lm0/m;->t:Lm0/r;

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_9d

    monitor-enter v1

    :try_start_1a
    iget-object v0, v1, Lm0/m;->b:Lh1/d;

    invoke-virtual {v0}, Lh1/d;->a()V

    iget-boolean v0, v1, Lm0/m;->x:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {v1}, Lm0/m;->g()V

    monitor-exit v1

    goto :goto_76

    :cond_29
    iget-object v0, v1, Lm0/m;->a:Lm0/m$e;

    invoke-virtual {v0}, Lm0/m$e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    iget-boolean v0, v1, Lm0/m;->u:Z

    if-nez v0, :cond_8a

    iput-boolean v2, v1, Lm0/m;->u:Z

    iget-object v0, v1, Lm0/m;->l:Lj0/c;

    iget-object v3, v1, Lm0/m;->a:Lm0/m$e;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Lm0/m$e;->a:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lm0/m;->e(I)V

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_1a .. :try_end_4e} :catchall_9a

    iget-object v3, v1, Lm0/m;->f:Lm0/n;

    const/4 v5, 0x0

    check-cast v3, Lm0/l;

    invoke-virtual {v3, v1, v0, v5}, Lm0/l;->e(Lm0/m;Lj0/c;Lm0/q;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/m$d;

    iget-object v4, v3, Lm0/m$d;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Lm0/m$a;

    iget-object v3, v3, Lm0/m$d;->a:Lc1/f;

    invoke-direct {v5, v1, v3}, Lm0/m$a;-><init>(Lm0/m;Lc1/f;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5a

    :cond_73
    invoke-virtual {v1}, Lm0/m;->d()V

    :goto_76
    iget-object v0, p0, Lm0/i;->g:Lm0/i$e;

    monitor-enter v0

    :try_start_79
    iput-boolean v2, v0, Lm0/i$e;->c:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm0/i$e;->a(Z)Z

    move-result v1
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_87

    monitor-exit v0

    if-eqz v1, :cond_86

    invoke-virtual {p0}, Lm0/i;->l()V

    :cond_86
    return-void

    :catchall_87
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_8a
    :try_start_8a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already failed once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received an exception without any callbacks to notify"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_9a
    move-exception p0

    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_8a .. :try_end_9c} :catchall_9a

    throw p0

    :catchall_9d
    move-exception p0

    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p0
.end method

.method public final l()V
    .registers 6

    iget-object v0, p0, Lm0/i;->g:Lm0/i$e;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, v0, Lm0/i$e;->b:Z

    iput-boolean v1, v0, Lm0/i$e;->a:Z

    iput-boolean v1, v0, Lm0/i$e;->c:Z
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_65

    monitor-exit v0

    iget-object v0, p0, Lm0/i;->f:Lm0/i$c;

    const/4 v2, 0x0

    iput-object v2, v0, Lm0/i$c;->a:Lj0/c;

    iput-object v2, v0, Lm0/i$c;->b:Lj0/f;

    iput-object v2, v0, Lm0/i$c;->c:Lm0/v;

    iget-object v0, p0, Lm0/i;->a:Lm0/h;

    iput-object v2, v0, Lm0/h;->c:Lcom/bumptech/glide/d;

    iput-object v2, v0, Lm0/h;->d:Ljava/lang/Object;

    iput-object v2, v0, Lm0/h;->n:Lj0/c;

    iput-object v2, v0, Lm0/h;->g:Ljava/lang/Class;

    iput-object v2, v0, Lm0/h;->k:Ljava/lang/Class;

    iput-object v2, v0, Lm0/h;->i:Lj0/e;

    iput-object v2, v0, Lm0/h;->o:Lcom/bumptech/glide/e;

    iput-object v2, v0, Lm0/h;->j:Ljava/util/Map;

    iput-object v2, v0, Lm0/h;->p:Lm0/k;

    iget-object v3, v0, Lm0/h;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-boolean v1, v0, Lm0/h;->l:Z

    iget-object v3, v0, Lm0/h;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-boolean v1, v0, Lm0/h;->m:Z

    iput-boolean v1, p0, Lm0/i;->H:Z

    iput-object v2, p0, Lm0/i;->h:Lcom/bumptech/glide/d;

    iput-object v2, p0, Lm0/i;->i:Lj0/c;

    iput-object v2, p0, Lm0/i;->o:Lj0/e;

    iput-object v2, p0, Lm0/i;->j:Lcom/bumptech/glide/e;

    iput-object v2, p0, Lm0/i;->k:Lm0/o;

    iput-object v2, p0, Lm0/i;->p:Lm0/i$a;

    iput-object v2, p0, Lm0/i;->r:Lm0/i$g;

    iput-object v2, p0, Lm0/i;->G:Lm0/g;

    iput-object v2, p0, Lm0/i;->w:Ljava/lang/Thread;

    iput-object v2, p0, Lm0/i;->x:Lj0/c;

    iput-object v2, p0, Lm0/i;->z:Ljava/lang/Object;

    iput-object v2, p0, Lm0/i;->E:Lcom/bumptech/glide/load/a;

    iput-object v2, p0, Lm0/i;->F:Lk0/d;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lm0/i;->t:J

    iput-boolean v1, p0, Lm0/i;->I:Z

    iput-object v2, p0, Lm0/i;->v:Ljava/lang/Object;

    iget-object v0, p0, Lm0/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lm0/i;->e:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final m()V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lm0/i;->w:Ljava/lang/Thread;

    sget v0, Lg1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lm0/i;->t:J

    const/4 v0, 0x0

    :cond_f
    iget-boolean v1, p0, Lm0/i;->I:Z

    if-nez v1, :cond_3f

    iget-object v1, p0, Lm0/i;->G:Lm0/g;

    if-eqz v1, :cond_3f

    iget-object v0, p0, Lm0/i;->G:Lm0/g;

    invoke-interface {v0}, Lm0/g;->a()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v1, p0, Lm0/i;->r:Lm0/i$g;

    invoke-virtual {p0, v1}, Lm0/i;->i(Lm0/i$g;)Lm0/i$g;

    move-result-object v1

    iput-object v1, p0, Lm0/i;->r:Lm0/i$g;

    invoke-virtual {p0}, Lm0/i;->h()Lm0/g;

    move-result-object v1

    iput-object v1, p0, Lm0/i;->G:Lm0/g;

    iget-object v1, p0, Lm0/i;->r:Lm0/i$g;

    sget-object v2, Lm0/i$g;->d:Lm0/i$g;

    if-ne v1, v2, :cond_f

    sget-object v0, Lm0/i$f;->b:Lm0/i$f;

    iput-object v0, p0, Lm0/i;->s:Lm0/i$f;

    iget-object v0, p0, Lm0/i;->p:Lm0/i$a;

    check-cast v0, Lm0/m;

    invoke-virtual {v0, p0}, Lm0/m;->i(Lm0/i;)V

    return-void

    :cond_3f
    iget-object v1, p0, Lm0/i;->r:Lm0/i$g;

    sget-object v2, Lm0/i$g;->f:Lm0/i$g;

    if-eq v1, v2, :cond_49

    iget-boolean v1, p0, Lm0/i;->I:Z

    if-eqz v1, :cond_4e

    :cond_49
    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lm0/i;->k()V

    :cond_4e
    return-void
.end method

.method public final n()V
    .registers 3

    iget-object v0, p0, Lm0/i;->s:Lm0/i$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Lm0/i;->g()V

    goto :goto_3c

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized run reason: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lm0/i;->s:Lm0/i$f;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-virtual {p0}, Lm0/i;->m()V

    goto :goto_3c

    :cond_2b
    sget-object v0, Lm0/i$g;->a:Lm0/i$g;

    invoke-virtual {p0, v0}, Lm0/i;->i(Lm0/i$g;)Lm0/i$g;

    move-result-object v0

    iput-object v0, p0, Lm0/i;->r:Lm0/i$g;

    invoke-virtual {p0}, Lm0/i;->h()Lm0/g;

    move-result-object v0

    iput-object v0, p0, Lm0/i;->G:Lm0/g;

    invoke-virtual {p0}, Lm0/i;->m()V

    :goto_3c
    return-void
.end method

.method public final o()V
    .registers 3

    iget-object v0, p0, Lm0/i;->c:Lh1/d;

    invoke-virtual {v0}, Lh1/d;->a()V

    iget-boolean v0, p0, Lm0/i;->H:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lm0/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    goto :goto_21

    :cond_14
    iget-object p0, p0, Lm0/i;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    :goto_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_29
    iput-boolean v1, p0, Lm0/i;->H:Z

    return-void
.end method

.method public run()V
    .registers 6

    const-string v0, "DecodeJob"

    iget-object v1, p0, Lm0/i;->F:Lk0/d;

    :try_start_4
    iget-boolean v2, p0, Lm0/i;->I:Z

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lm0/i;->k()V
    :try_end_b
    .catch Lm0/c; {:try_start_4 .. :try_end_b} :catch_56
    .catchall {:try_start_4 .. :try_end_b} :catchall_1a

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lk0/d;->b()V

    :cond_10
    return-void

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lm0/i;->n()V
    :try_end_14
    .catch Lm0/c; {:try_start_11 .. :try_end_14} :catch_56
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    if-eqz v1, :cond_19

    invoke-interface {v1}, Lk0/d;->b()V

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    const/4 v3, 0x3

    :try_start_1c
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lm0/i;->I:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lm0/i;->r:Lm0/i$g;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_42
    iget-object v0, p0, Lm0/i;->r:Lm0/i$g;

    sget-object v3, Lm0/i$g;->e:Lm0/i$g;

    if-eq v0, v3, :cond_50

    iget-object v0, p0, Lm0/i;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lm0/i;->k()V

    :cond_50
    iget-boolean p0, p0, Lm0/i;->I:Z

    if-nez p0, :cond_55

    throw v2

    :cond_55
    throw v2

    :catch_56
    move-exception p0

    throw p0
    :try_end_58
    .catchall {:try_start_1c .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p0

    if-eqz v1, :cond_5e

    invoke-interface {v1}, Lk0/d;->b()V

    :cond_5e
    throw p0
.end method
