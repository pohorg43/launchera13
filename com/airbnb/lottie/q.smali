.class public Lcom/airbnb/lottie/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/r;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/r;)V
    .registers 2

    iput-object p1, p0, Lcom/airbnb/lottie/q;->a:Lcom/airbnb/lottie/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/airbnb/lottie/q;->a:Lcom/airbnb/lottie/r;

    iget-object v0, v0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/q;->a:Lcom/airbnb/lottie/r;

    iget-object v0, v0, Lcom/airbnb/lottie/r;->d:Lcom/airbnb/lottie/p;

    iget-object v1, v0, Lcom/airbnb/lottie/p;->a:Ljava/lang/Object;

    if-eqz v1, :cond_32

    iget-object p0, p0, Lcom/airbnb/lottie/q;->a:Lcom/airbnb/lottie/r;

    monitor-enter p0

    :try_start_12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/r;->a:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/l;

    invoke-interface {v2, v1}, Lcom/airbnb/lottie/l;->onResult(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2f

    goto :goto_1d

    :cond_2d
    monitor-exit p0

    goto :goto_60

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_32
    iget-object p0, p0, Lcom/airbnb/lottie/q;->a:Lcom/airbnb/lottie/r;

    iget-object v0, v0, Lcom/airbnb/lottie/p;->b:Ljava/lang/Throwable;

    monitor-enter p0

    :try_start_37
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/r;->b:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v1, "Lottie encountered an error but no failure listener was added:"

    invoke-static {v1, v0}, Lq/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_61

    monitor-exit p0

    goto :goto_60

    :cond_4b
    :try_start_4b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/l;

    invoke-interface {v2, v0}, Lcom/airbnb/lottie/l;->onResult(Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_61

    goto :goto_4f

    :cond_5f
    monitor-exit p0

    :goto_60
    return-void

    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method
