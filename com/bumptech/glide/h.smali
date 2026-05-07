.class public Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lz0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lz0/i;"
    }
.end annotation


# static fields
.field public static final l:Lc1/e;


# instance fields
.field public final a:Lcom/bumptech/glide/b;

.field public final b:Landroid/content/Context;

.field public final c:Lz0/h;

.field public final d:Lz0/m;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final e:Lz0/l;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final f:Lz0/n;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final g:Ljava/lang/Runnable;

.field public final h:Landroid/os/Handler;

.field public final i:Lz0/c;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lc1/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Lc1/e;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/graphics/Bitmap;

    new-instance v1, Lc1/e;

    invoke-direct {v1}, Lc1/e;-><init>()V

    invoke-virtual {v1, v0}, Lc1/a;->c(Ljava/lang/Class;)Lc1/a;

    move-result-object v0

    check-cast v0, Lc1/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc1/a;->t:Z

    sput-object v0, Lcom/bumptech/glide/h;->l:Lc1/e;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v2, Lc1/e;

    invoke-direct {v2}, Lc1/e;-><init>()V

    invoke-virtual {v2, v0}, Lc1/a;->c(Ljava/lang/Class;)Lc1/a;

    move-result-object v0

    check-cast v0, Lc1/e;

    iput-boolean v1, v0, Lc1/a;->t:Z

    sget-object v0, Lm0/k;->b:Lm0/k;

    new-instance v2, Lc1/e;

    invoke-direct {v2}, Lc1/e;-><init>()V

    invoke-virtual {v2, v0}, Lc1/a;->d(Lm0/k;)Lc1/a;

    move-result-object v0

    check-cast v0, Lc1/e;

    sget-object v2, Lcom/bumptech/glide/e;->d:Lcom/bumptech/glide/e;

    invoke-virtual {v0, v2}, Lc1/a;->g(Lcom/bumptech/glide/e;)Lc1/a;

    move-result-object v0

    check-cast v0, Lc1/e;

    invoke-virtual {v0, v1}, Lc1/a;->j(Z)Lc1/a;

    move-result-object v0

    check-cast v0, Lc1/e;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lz0/h;Lz0/l;Landroid/content/Context;)V
    .registers 11
    .param p1  # Lcom/bumptech/glide/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lz0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lz0/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lz0/m;

    invoke-direct {v0}, Lz0/m;-><init>()V

    iget-object v1, p1, Lcom/bumptech/glide/b;->g:Lz0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lz0/n;

    invoke-direct {v2}, Lz0/n;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/h;->f:Lz0/n;

    new-instance v2, Lcom/bumptech/glide/h$a;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/h$a;-><init>(Lcom/bumptech/glide/h;)V

    iput-object v2, p0, Lcom/bumptech/glide/h;->g:Ljava/lang/Runnable;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/bumptech/glide/h;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    iput-object p2, p0, Lcom/bumptech/glide/h;->c:Lz0/h;

    iput-object p3, p0, Lcom/bumptech/glide/h;->e:Lz0/l;

    iput-object v0, p0, Lcom/bumptech/glide/h;->d:Lz0/m;

    iput-object p4, p0, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lcom/bumptech/glide/h$b;

    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/h$b;-><init>(Lcom/bumptech/glide/h;Lz0/m;)V

    check-cast v1, Lz0/f;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_46

    move v0, v1

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    const/4 v4, 0x3

    const-string v5, "ConnectivityMonitor"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5a

    if-eqz v0, :cond_55

    const-string v4, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_57

    :cond_55
    const-string v4, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    :goto_57
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    if-eqz v0, :cond_62

    new-instance v0, Lz0/e;

    invoke-direct {v0, p3, p4}, Lz0/e;-><init>(Landroid/content/Context;Lz0/c$a;)V

    goto :goto_67

    :cond_62
    new-instance v0, Lz0/j;

    invoke-direct {v0}, Lz0/j;-><init>()V

    :goto_67
    iput-object v0, p0, Lcom/bumptech/glide/h;->i:Lz0/c;

    invoke-static {}, Lg1/f;->f()Z

    move-result p3

    if-eqz p3, :cond_73

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_76

    :cond_73
    invoke-interface {p2, p0}, Lz0/h;->a(Lz0/i;)V

    :goto_76
    invoke-interface {p2, v0}, Lz0/h;->a(Lz0/i;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    iget-object p3, p3, Lcom/bumptech/glide/d;->d:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    monitor-enter p2

    :try_start_87
    iget-object p3, p2, Lcom/bumptech/glide/d;->i:Lc1/e;

    if-nez p3, :cond_9b

    iget-object p3, p2, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/b$a;

    check-cast p3, Lcom/bumptech/glide/c$a;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lc1/e;

    invoke-direct {p3}, Lc1/e;-><init>()V

    iput-boolean v1, p3, Lc1/a;->t:Z

    iput-object p3, p2, Lcom/bumptech/glide/d;->i:Lc1/e;

    :cond_9b
    iget-object p3, p2, Lcom/bumptech/glide/d;->i:Lc1/e;
    :try_end_9d
    .catchall {:try_start_87 .. :try_end_9d} :catchall_dd

    monitor-exit p2

    monitor-enter p0

    :try_start_9f
    invoke-virtual {p3}, Lc1/a;->b()Lc1/a;

    move-result-object p2

    check-cast p2, Lc1/e;

    iget-boolean p3, p2, Lc1/a;->t:Z

    if-eqz p3, :cond_b6

    iget-boolean p3, p2, Lc1/a;->v:Z

    if-eqz p3, :cond_ae

    goto :goto_b6

    :cond_ae
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b6
    :goto_b6
    iput-boolean v1, p2, Lc1/a;->v:Z

    iput-boolean v1, p2, Lc1/a;->t:Z

    iput-object p2, p0, Lcom/bumptech/glide/h;->k:Lc1/e;
    :try_end_bc
    .catchall {:try_start_9f .. :try_end_bc} :catchall_da

    monitor-exit p0

    iget-object p2, p1, Lcom/bumptech/glide/b;->h:Ljava/util/List;

    monitor-enter p2

    :try_start_c0
    iget-object p3, p1, Lcom/bumptech/glide/b;->h:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_cf

    iget-object p1, p1, Lcom/bumptech/glide/b;->h:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :cond_cf
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot register already registered manager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_d7
    move-exception p0

    monitor-exit p2
    :try_end_d9
    .catchall {:try_start_c0 .. :try_end_d9} :catchall_d7

    throw p0

    :catchall_da
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_dd
    move-exception p0

    monitor-exit p2

    throw p0
.end method


# virtual methods
.method public i(Ld1/d;)V
    .registers 5
    .param p1  # Ld1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/d<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->l(Ld1/d;)Z

    move-result v0

    invoke-interface {p1}, Ld1/d;->e()Lc1/b;

    move-result-object v1

    if-nez v0, :cond_3e

    iget-object p0, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    iget-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/List;

    monitor-enter v0

    :try_start_12
    iget-object p0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/h;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/h;->l(Ld1/d;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 p0, 0x1

    monitor-exit v0

    goto :goto_2f

    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_3b

    const/4 p0, 0x0

    :goto_2f
    if-nez p0, :cond_3e

    if-eqz v1, :cond_3e

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ld1/d;->g(Lc1/b;)V

    invoke-interface {v1}, Lc1/b;->clear()V

    goto :goto_3e

    :catchall_3b
    move-exception p0

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    :goto_3e
    return-void
.end method

.method public declared-synchronized j()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lz0/m;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lz0/m;->c:Z

    iget-object v1, v0, Lz0/m;->a:Ljava/util/Set;

    invoke-static {v1}, Lg1/f;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/b;

    invoke-interface {v2}, Lc1/b;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Lc1/b;->pause()V

    iget-object v3, v0, Lz0/m;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2f

    goto :goto_12

    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lz0/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz0/m;->c:Z

    iget-object v1, v0, Lz0/m;->a:Ljava/util/Set;

    invoke-static {v1}, Lg1/f;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/b;

    invoke-interface {v2}, Lc1/b;->c()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v2}, Lc1/b;->isRunning()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v2}, Lc1/b;->b()V

    goto :goto_12

    :cond_2e
    iget-object v0, v0, Lz0/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l(Ld1/d;)Z
    .registers 5
    .param p1  # Ld1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/d<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ld1/d;->e()Lc1/b;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_22

    const/4 v1, 0x1

    if-nez v0, :cond_a

    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/bumptech/glide/h;->d:Lz0/m;

    invoke-virtual {v2, v0}, Lz0/m;->a(Lc1/b;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lz0/n;

    iget-object v0, v0, Lz0/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ld1/d;->g(Lc1/b;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_22

    monitor-exit p0

    return v1

    :cond_1f
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lz0/n;

    invoke-virtual {v0}, Lz0/n;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lz0/n;

    iget-object v0, v0, Lz0/n;->a:Ljava/util/Set;

    invoke-static {v0}, Lg1/f;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/d;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/h;->i(Ld1/d;)V

    goto :goto_12

    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lz0/n;

    iget-object v0, v0, Lz0/n;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lz0/m;

    iget-object v1, v0, Lz0/m;->a:Ljava/util/Set;

    invoke-static {v1}, Lg1/f;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/b;

    invoke-virtual {v0, v2}, Lz0/m;->a(Lc1/b;)Z

    goto :goto_37

    :cond_47
    iget-object v0, v0, Lz0/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Lz0/h;

    invoke-interface {v0, p0}, Lz0/h;->b(Lz0/i;)V

    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Lz0/h;

    iget-object v1, p0, Lcom/bumptech/glide/h;->i:Lz0/c;

    invoke-interface {v0, v1}, Lz0/h;->b(Lz0/i;)V

    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/h;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    iget-object v1, v0, Lcom/bumptech/glide/b;->h:Ljava/util/List;

    monitor-enter v1
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_7f

    :try_start_64
    iget-object v2, v0, Lcom/bumptech/glide/b;->h:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    iget-object v0, v0, Lcom/bumptech/glide/b;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_64 .. :try_end_72} :catchall_7c

    monitor-exit p0

    return-void

    :cond_74
    :try_start_74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_7c
    move-exception v0

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public declared-synchronized onStart()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->k()V

    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lz0/n;

    invoke-virtual {v0}, Lz0/n;->onStart()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->j()V

    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lz0/n;

    invoke-virtual {v0}, Lz0/n;->onStop()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .registers 2

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/h;->d:Lz0/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/h;->e:Lz0/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object v0

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
