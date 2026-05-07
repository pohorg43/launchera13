.class public final Lm0/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq0/n$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj0/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/bumptech/glide/d;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public h:Lm0/i$d;

.field public i:Lj0/e;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lj0/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:Lj0/c;

.field public o:Lcom/bumptech/glide/e;

.field public p:Lm0/k;

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/h;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/h;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj0/c;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lm0/h;->m:Z

    if-nez v0, :cond_57

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/h;->m:Z

    iget-object v0, p0, Lm0/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lm0/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_57

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq0/n$a;

    iget-object v5, p0, Lm0/h;->b:Ljava/util/List;

    iget-object v6, v4, Lq0/n$a;->a:Lj0/c;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    iget-object v5, p0, Lm0/h;->b:Ljava/util/List;

    iget-object v6, v4, Lq0/n$a;->a:Lj0/c;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    move v5, v2

    :goto_30
    iget-object v6, v4, Lq0/n$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_54

    iget-object v6, p0, Lm0/h;->b:Ljava/util/List;

    iget-object v7, v4, Lq0/n$a;->b:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    iget-object v6, p0, Lm0/h;->b:Ljava/util/List;

    iget-object v7, v4, Lq0/n$a;->b:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_57
    iget-object p0, p0, Lm0/h;->b:Ljava/util/List;

    return-object p0
.end method

.method public b()Lo0/a;
    .registers 1

    iget-object p0, p0, Lm0/h;->h:Lm0/i$d;

    check-cast p0, Lm0/l$c;

    invoke-virtual {p0}, Lm0/l$c;->a()Lo0/a;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq0/n$a<",
            "*>;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lm0/h;->l:Z

    if-nez v0, :cond_39

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/h;->l:Z

    iget-object v0, p0, Lm0/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lm0/h;->c:Lcom/bumptech/glide/d;

    iget-object v0, v0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iget-object v1, p0, Lm0/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1b
    if-ge v1, v2, :cond_39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq0/n;

    iget-object v4, p0, Lm0/h;->d:Ljava/lang/Object;

    iget v5, p0, Lm0/h;->e:I

    iget v6, p0, Lm0/h;->f:I

    iget-object v7, p0, Lm0/h;->i:Lj0/e;

    invoke-interface {v3, v4, v5, v6, v7}, Lq0/n;->b(Ljava/lang/Object;IILj0/e;)Lq0/n$a;

    move-result-object v3

    if-eqz v3, :cond_36

    iget-object v4, p0, Lm0/h;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_39
    iget-object p0, p0, Lm0/h;->a:Ljava/util/List;

    return-object p0
.end method

.method public d(Ljava/lang/Class;)Lm0/u;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lm0/u<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lm0/h;->c:Lcom/bumptech/glide/d;

    iget-object v8, v1, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iget-object v9, v0, Lm0/h;->g:Ljava/lang/Class;

    iget-object v10, v0, Lm0/h;->k:Ljava/lang/Class;

    iget-object v0, v8, Lcom/bumptech/glide/f;->i:Lb1/c;

    iget-object v1, v0, Lb1/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/d;

    if-nez v1, :cond_1e

    new-instance v1, Lg1/d;

    invoke-direct {v1}, Lg1/d;-><init>()V

    :cond_1e
    iput-object v7, v1, Lg1/d;->a:Ljava/lang/Class;

    iput-object v9, v1, Lg1/d;->b:Ljava/lang/Class;

    iput-object v10, v1, Lg1/d;->c:Ljava/lang/Class;

    iget-object v2, v0, Lb1/c;->a:Landroidx/collection/ArrayMap;

    monitor-enter v2

    :try_start_27
    iget-object v3, v0, Lb1/c;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/u;

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_155

    iget-object v0, v0, Lb1/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v8, Lcom/bumptech/glide/f;->i:Lb1/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb1/c;->c:Lm0/u;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_154

    :cond_44
    if-nez v3, :cond_153

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v8, Lcom/bumptech/glide/f;->c:Lb1/e;

    invoke-virtual {v0, v7, v9}, Lb1/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_57
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_124

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/Class;

    iget-object v0, v8, Lcom/bumptech/glide/f;->f:Ly0/f;

    invoke-virtual {v0, v14, v10}, Ly0/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_70
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Class;

    iget-object v1, v8, Lcom/bumptech/glide/f;->c:Lb1/e;

    monitor-enter v1

    :try_start_80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lb1/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8b
    :goto_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, v1, Lb1/e;->b:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_a2

    goto :goto_8b

    :cond_a2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a6
    :goto_a6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb1/e$a;

    invoke-virtual {v5, v7, v14}, Lb1/e$a;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_a6

    iget-object v5, v5, Lb1/e$a;->c:Lcom/bumptech/glide/load/f;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bd
    .catchall {:try_start_80 .. :try_end_bd} :catchall_121

    goto :goto_a6

    :cond_be
    monitor-exit v1

    iget-object v1, v8, Lcom/bumptech/glide/f;->f:Ly0/f;

    monitor-enter v1

    :try_start_c2
    invoke-virtual {v3, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_cd

    sget-object v0, Ly0/g;->a:Ly0/g;
    :try_end_ca
    .catchall {:try_start_c2 .. :try_end_ca} :catchall_11e

    monitor-exit v1

    :goto_cb
    move-object v5, v0

    goto :goto_e9

    :cond_cd
    :try_start_cd
    iget-object v0, v1, Ly0/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/f$a;

    invoke-virtual {v2, v14, v3}, Ly0/f$a;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_d3

    iget-object v0, v2, Ly0/f$a;->c:Ly0/e;
    :try_end_e7
    .catchall {:try_start_cd .. :try_end_e7} :catchall_11e

    monitor-exit v1

    goto :goto_cb

    :goto_e9
    new-instance v6, Lm0/j;

    iget-object v2, v8, Lcom/bumptech/glide/f;->j:Landroidx/core/util/Pools$Pool;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v16, v2

    move-object v2, v14

    move-object v11, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lm0/j;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Ly0/e;Landroidx/core/util/Pools$Pool;)V

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    goto/16 :goto_70

    :cond_ff
    :try_start_ff
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No transcoder registered to transcode from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11e
    .catchall {:try_start_ff .. :try_end_11e} :catchall_11e

    :catchall_11e
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_121
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_124
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12c

    const/4 v11, 0x0

    goto :goto_139

    :cond_12c
    new-instance v11, Lm0/u;

    iget-object v5, v8, Lcom/bumptech/glide/f;->j:Landroidx/core/util/Pools$Pool;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v10

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lm0/u;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    :goto_139
    iget-object v0, v8, Lcom/bumptech/glide/f;->i:Lb1/c;

    iget-object v1, v0, Lb1/c;->a:Landroidx/collection/ArrayMap;

    monitor-enter v1

    :try_start_13e
    iget-object v0, v0, Lb1/c;->a:Landroidx/collection/ArrayMap;

    new-instance v2, Lg1/d;

    invoke-direct {v2, v7, v9, v10}, Lg1/d;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    if-eqz v11, :cond_149

    move-object v3, v11

    goto :goto_14b

    :cond_149
    sget-object v3, Lb1/c;->c:Lm0/u;

    :goto_14b
    invoke-virtual {v0, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_154

    :catchall_150
    move-exception v0

    monitor-exit v1
    :try_end_152
    .catchall {:try_start_13e .. :try_end_152} :catchall_150

    throw v0

    :cond_153
    move-object v11, v3

    :goto_154
    return-object v11

    :catchall_155
    move-exception v0

    :try_start_156
    monitor-exit v2
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    throw v0
.end method

.method public e(Ljava/lang/Object;)Lj0/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lj0/a<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/f$e;
        }
    .end annotation

    iget-object p0, p0, Lm0/h;->c:Lcom/bumptech/glide/d;

    iget-object p0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iget-object p0, p0, Lcom/bumptech/glide/f;->b:Lb1/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter p0

    :try_start_b
    iget-object v1, p0, Lb1/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb1/a$a;

    iget-object v3, v2, Lb1/a$a;->a:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v0, v2, Lb1/a$a;->b:Lj0/a;
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_38

    monitor-exit p0

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    monitor-exit p0

    :goto_2b
    if-eqz v0, :cond_2e

    return-object v0

    :cond_2e
    new-instance p0, Lcom/bumptech/glide/f$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/f$e;-><init>(Ljava/lang/Class;)V

    throw p0

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Ljava/lang/Class;)Lj0/g;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lj0/g<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lm0/h;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj0/g;

    if-nez v0, :cond_32

    iget-object v1, p0, Lm0/h;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj0/g;

    :cond_32
    if-nez v0, :cond_62

    iget-object v0, p0, Lm0/h;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-boolean p0, p0, Lm0/h;->q:Z

    if-nez p0, :cond_41

    goto :goto_5d

    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing transformation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    :goto_5d
    sget-object p0, Ls0/b;->b:Lj0/g;

    check-cast p0, Ls0/b;

    return-object p0

    :cond_62
    return-object v0
.end method

.method public g(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lm0/h;->d(Ljava/lang/Class;)Lm0/u;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
