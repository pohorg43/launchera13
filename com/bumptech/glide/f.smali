.class public Lcom/bumptech/glide/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/f$b;,
        Lcom/bumptech/glide/f$a;,
        Lcom/bumptech/glide/f$e;,
        Lcom/bumptech/glide/f$d;,
        Lcom/bumptech/glide/f$c;
    }
.end annotation


# instance fields
.field public final a:Lq0/p;

.field public final b:Lb1/a;

.field public final c:Lb1/e;

.field public final d:Lb1/f;

.field public final e:Lk0/f;

.field public final f:Ly0/f;

.field public final g:Lb1/b;

.field public final h:Lb1/d;

.field public final i:Lb1/c;

.field public final j:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb1/d;

    invoke-direct {v0}, Lb1/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->h:Lb1/d;

    new-instance v0, Lb1/c;

    invoke-direct {v0}, Lb1/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->i:Lb1/c;

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance v1, Lh1/b;

    invoke-direct {v1}, Lh1/b;-><init>()V

    new-instance v2, Lh1/c;

    invoke-direct {v2}, Lh1/c;-><init>()V

    new-instance v3, Lh1/a$c;

    invoke-direct {v3, v0, v1, v2}, Lh1/a$c;-><init>(Landroidx/core/util/Pools$Pool;Lh1/a$b;Lh1/a$e;)V

    iput-object v3, p0, Lcom/bumptech/glide/f;->j:Landroidx/core/util/Pools$Pool;

    new-instance v0, Lq0/p;

    invoke-direct {v0, v3}, Lq0/p;-><init>(Landroidx/core/util/Pools$Pool;)V

    iput-object v0, p0, Lcom/bumptech/glide/f;->a:Lq0/p;

    new-instance v0, Lb1/a;

    invoke-direct {v0}, Lb1/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->b:Lb1/a;

    new-instance v0, Lb1/e;

    invoke-direct {v0}, Lb1/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->c:Lb1/e;

    new-instance v1, Lb1/f;

    invoke-direct {v1}, Lb1/f;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/f;->d:Lb1/f;

    new-instance v1, Lk0/f;

    invoke-direct {v1}, Lk0/f;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/f;->e:Lk0/f;

    new-instance v1, Ly0/f;

    invoke-direct {v1}, Ly0/f;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/f;->f:Ly0/f;

    new-instance v1, Lb1/b;

    invoke-direct {v1}, Lb1/b;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/f;->g:Lb1/b;

    const-string p0, "Gif"

    const-string v1, "Bitmap"

    const-string v2, "BitmapDrawable"

    filled-new-array {p0, v1, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p0, "legacy_prepend_all"

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string p0, "legacy_append"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-enter v0

    :try_start_80
    new-instance p0, Ljava/util/ArrayList;

    iget-object v2, v0, Lb1/e;->a:Ljava/util/List;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, Lb1/e;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_90
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lb1/e;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    :cond_a2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a6
    :goto_a6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    iget-object v3, v0, Lb1/e;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bd
    .catchall {:try_start_80 .. :try_end_bd} :catchall_c0

    goto :goto_a6

    :cond_be
    monitor-exit v0

    return-void

    :catchall_c0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lj0/a;)Lcom/bumptech/glide/f;
    .registers 6
    .param p1  # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lj0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lj0/a<",
            "TData;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lb1/a;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Lb1/a;->a:Ljava/util/List;

    new-instance v2, Lb1/a$a;

    invoke-direct {v2, p1, p2}, Lb1/a$a;-><init>(Ljava/lang/Class;Lj0/a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public b(Ljava/lang/Class;Lj0/f;)Lcom/bumptech/glide/f;
    .registers 6
    .param p1  # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lj0/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lj0/f<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lb1/f;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Lb1/f;->a:Ljava/util/List;

    new-instance v2, Lb1/f$a;

    invoke-direct {v2, p1, p2}, Lb1/f$a;-><init>(Ljava/lang/Class;Lj0/f;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)Lcom/bumptech/glide/f;
    .registers 7
    .param p1  # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lq0/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lq0/o<",
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lq0/p;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Lq0/p;->a:Lq0/r;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_21

    :try_start_6
    new-instance v2, Lq0/r$b;

    invoke-direct {v2, p1, p2, p3}, Lq0/r$b;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lq0/o;)V

    iget-object p1, v1, Lq0/r;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1e

    :try_start_14
    monitor-exit v1

    iget-object p1, v0, Lq0/p;->b:Lq0/p$a;

    iget-object p1, p1, Lq0/p$a;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_21

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v1

    throw p0
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lcom/bumptech/glide/load/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/f<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->c:Lb1/e;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p1}, Lb1/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lb1/e$a;

    invoke-direct {v1, p2, p3, p4}, Lb1/e$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/f;->g:Lb1/b;

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lb1/b;->a:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    monitor-exit p0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d

    return-object v0

    :cond_d
    new-instance p0, Lcom/bumptech/glide/f$b;

    invoke-direct {p0}, Lcom/bumptech/glide/f$b;-><init>()V

    throw p0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Ljava/lang/Object;)Ljava/util/List;
    .registers 9
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lq0/n<",
            "TModel;*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/f;->a:Lq0/p;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter p0

    :try_start_a
    iget-object v1, p0, Lq0/p;->b:Lq0/p$a;

    iget-object v1, v1, Lq0/p$a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/p$a$a;

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_1a

    :cond_18
    iget-object v1, v1, Lq0/p$a$a;->a:Ljava/util/List;

    :goto_1a
    if-nez v1, :cond_4f

    iget-object v1, p0, Lq0/p;->a:Lq0/r;

    invoke-virtual {v1, v0}, Lq0/r;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lq0/p;->b:Lq0/p$a;

    iget-object v2, v2, Lq0/p$a;->a:Ljava/util/Map;

    new-instance v3, Lq0/p$a$a;

    invoke-direct {v3, v1}, Lq0/p$a$a;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq0/p$a$a;

    if-nez v2, :cond_38

    goto :goto_4f

    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already cached loaders for model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_92

    :cond_4f
    :goto_4f
    monitor-exit p0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_61
    if-ge v4, p0, :cond_7f

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq0/n;

    invoke-interface {v5, p1}, Lq0/n;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    if-eqz v3, :cond_79

    new-instance v0, Ljava/util/ArrayList;

    sub-int v3, p0, v4

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    :cond_79
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :cond_7f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_86

    return-object v0

    :cond_86
    new-instance p0, Lcom/bumptech/glide/f$c;

    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/f$c;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    throw p0

    :cond_8c
    new-instance p0, Lcom/bumptech/glide/f$c;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/f$c;-><init>(Ljava/lang/Object;)V

    throw p0

    :catchall_92
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Ljava/lang/Class;Ljava/lang/Class;Ly0/e;)Lcom/bumptech/glide/f;
    .registers 7
    .param p1  # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ly0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ly0/e<",
            "TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->f:Ly0/f;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Ly0/f;->a:Ljava/util/List;

    new-instance v2, Ly0/f$a;

    invoke-direct {v2, p1, p2, p3}, Ly0/f$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ly0/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public h(Lk0/e$a;)Lcom/bumptech/glide/f;
    .registers 5
    .param p1  # Lk0/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/e$a<",
            "*>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->e:Lk0/f;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Lk0/f;->a:Ljava/util/Map;

    invoke-interface {p1}, Lk0/e$a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method
