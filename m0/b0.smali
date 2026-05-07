.class public Lm0/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm0/g;
.implements Lm0/g$a;


# instance fields
.field public final a:Lm0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/h<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lm0/g$a;

.field public c:I

.field public d:Lm0/d;

.field public e:Ljava/lang/Object;

.field public volatile f:Lq0/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Lm0/e;


# direct methods
.method public constructor <init>(Lm0/h;Lm0/g$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/h<",
            "*>;",
            "Lm0/g$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/b0;->a:Lm0/h;

    iput-object p2, p0, Lm0/b0;->b:Lm0/g$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 12

    iget-object v0, p0, Lm0/b0;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_91

    iput-object v1, p0, Lm0/b0;->e:Ljava/lang/Object;

    const-string v2, "SourceGenerator"

    sget v3, Lg1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    :try_start_f
    iget-object v5, p0, Lm0/b0;->a:Lm0/h;

    invoke-virtual {v5, v0}, Lm0/h;->e(Ljava/lang/Object;)Lj0/a;

    move-result-object v5

    new-instance v6, Lm0/f;

    iget-object v7, p0, Lm0/b0;->a:Lm0/h;

    iget-object v7, v7, Lm0/h;->i:Lj0/e;

    invoke-direct {v6, v5, v0, v7}, Lm0/f;-><init>(Lj0/a;Ljava/lang/Object;Lj0/e;)V

    new-instance v7, Lm0/e;

    iget-object v8, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object v8, v8, Lq0/n$a;->a:Lj0/c;

    iget-object v9, p0, Lm0/b0;->a:Lm0/h;

    iget-object v10, v9, Lm0/h;->n:Lj0/c;

    invoke-direct {v7, v8, v10}, Lm0/e;-><init>(Lj0/c;Lj0/c;)V

    iput-object v7, p0, Lm0/b0;->g:Lm0/e;

    invoke-virtual {v9}, Lm0/h;->b()Lo0/a;

    move-result-object v7

    iget-object v8, p0, Lm0/b0;->g:Lm0/e;

    invoke-interface {v7, v8, v6}, Lo0/a;->b(Lj0/c;Lo0/a$b;)V

    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finished encoding source to cache, key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lm0/b0;->g:Lm0/e;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encoder: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lg1/b;->a(J)D

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_f .. :try_end_6f} :catchall_88

    :cond_6f
    iget-object v0, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object v0, v0, Lq0/n$a;->c:Lk0/d;

    invoke-interface {v0}, Lk0/d;->b()V

    new-instance v0, Lm0/d;

    iget-object v2, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object v2, v2, Lq0/n$a;->a:Lj0/c;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lm0/b0;->a:Lm0/h;

    invoke-direct {v0, v2, v3, p0}, Lm0/d;-><init>(Ljava/util/List;Lm0/h;Lm0/g$a;)V

    iput-object v0, p0, Lm0/b0;->d:Lm0/d;

    goto :goto_91

    :catchall_88
    move-exception v0

    iget-object p0, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object p0, p0, Lq0/n$a;->c:Lk0/d;

    invoke-interface {p0}, Lk0/d;->b()V

    throw v0

    :cond_91
    :goto_91
    iget-object v0, p0, Lm0/b0;->d:Lm0/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Lm0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_9d

    return v2

    :cond_9d
    iput-object v1, p0, Lm0/b0;->d:Lm0/d;

    iput-object v1, p0, Lm0/b0;->f:Lq0/n$a;

    const/4 v0, 0x0

    move v1, v0

    :cond_a3
    :goto_a3
    if-nez v1, :cond_106

    iget v3, p0, Lm0/b0;->c:I

    iget-object v4, p0, Lm0/b0;->a:Lm0/h;

    invoke-virtual {v4}, Lm0/h;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b5

    move v3, v2

    goto :goto_b6

    :cond_b5
    move v3, v0

    :goto_b6
    if-eqz v3, :cond_106

    iget-object v3, p0, Lm0/b0;->a:Lm0/h;

    invoke-virtual {v3}, Lm0/h;->c()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lm0/b0;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lm0/b0;->c:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq0/n$a;

    iput-object v3, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object v3, p0, Lm0/b0;->f:Lq0/n$a;

    if-eqz v3, :cond_a3

    iget-object v3, p0, Lm0/b0;->a:Lm0/h;

    iget-object v3, v3, Lm0/h;->p:Lm0/k;

    iget-object v4, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object v4, v4, Lq0/n$a;->c:Lk0/d;

    invoke-interface {v4}, Lk0/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lm0/k;->c(Lcom/bumptech/glide/load/a;)Z

    move-result v3

    if-nez v3, :cond_f2

    iget-object v3, p0, Lm0/b0;->a:Lm0/h;

    iget-object v4, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object v4, v4, Lq0/n$a;->c:Lk0/d;

    invoke-interface {v4}, Lk0/d;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lm0/h;->g(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a3

    :cond_f2
    iget-object v1, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object v3, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object v3, v3, Lq0/n$a;->c:Lk0/d;

    iget-object v4, p0, Lm0/b0;->a:Lm0/h;

    iget-object v4, v4, Lm0/h;->o:Lcom/bumptech/glide/e;

    new-instance v5, Lm0/a0;

    invoke-direct {v5, p0, v1}, Lm0/a0;-><init>(Lm0/b0;Lq0/n$a;)V

    invoke-interface {v3, v4, v5}, Lk0/d;->e(Lcom/bumptech/glide/e;Lk0/d$a;)V

    move v1, v2

    goto :goto_a3

    :cond_106
    return v1
.end method

.method public b(Lj0/c;Ljava/lang/Exception;Lk0/d;Lcom/bumptech/glide/load/a;)V
    .registers 5
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

    iget-object p4, p0, Lm0/b0;->b:Lm0/g$a;

    iget-object p0, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object p0, p0, Lq0/n$a;->c:Lk0/d;

    invoke-interface {p0}, Lk0/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object p0

    invoke-interface {p4, p1, p2, p3, p0}, Lm0/g$a;->b(Lj0/c;Ljava/lang/Exception;Lk0/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public c()V
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public cancel()V
    .registers 1

    iget-object p0, p0, Lm0/b0;->f:Lq0/n$a;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lq0/n$a;->c:Lk0/d;

    invoke-interface {p0}, Lk0/d;->cancel()V

    :cond_9
    return-void
.end method

.method public d(Lj0/c;Ljava/lang/Object;Lk0/d;Lcom/bumptech/glide/load/a;Lj0/c;)V
    .registers 12
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

    iget-object v0, p0, Lm0/b0;->b:Lm0/g$a;

    iget-object p0, p0, Lm0/b0;->f:Lq0/n$a;

    iget-object p0, p0, Lq0/n$a;->c:Lk0/d;

    invoke-interface {p0}, Lk0/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lm0/g$a;->d(Lj0/c;Ljava/lang/Object;Lk0/d;Lcom/bumptech/glide/load/a;Lj0/c;)V

    return-void
.end method
