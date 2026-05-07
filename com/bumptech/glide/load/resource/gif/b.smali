.class public Lcom/bumptech/glide/load/resource/gif/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/b$a;,
        Lcom/bumptech/glide/load/resource/gif/b$c;,
        Lcom/bumptech/glide/load/resource/gif/b$b;
    }
.end annotation


# instance fields
.field public final a:Li0/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/resource/gif/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/bumptech/glide/h;

.field public final e:Ln0/c;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/bumptech/glide/load/resource/gif/b$a;

.field public j:Z

.field public k:Lcom/bumptech/glide/load/resource/gif/b$a;

.field public l:Landroid/graphics/Bitmap;

.field public m:Lj0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/bumptech/glide/load/resource/gif/b$a;

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b;Li0/a;IILj0/g;Landroid/graphics/Bitmap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "Li0/a;",
            "II",
            "Lj0/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/bumptech/glide/b;->a:Ln0/c;

    iget-object v1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v3

    iget-object v3, v3, Lcom/bumptech/glide/b;->f:Lz0/k;

    invoke-virtual {v3, v1}, Lz0/k;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v1

    iget-object p1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v2

    iget-object v2, v2, Lcom/bumptech/glide/b;->f:Lz0/k;

    invoke-virtual {v2, p1}, Lz0/k;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v3, Lcom/bumptech/glide/g;

    iget-object v4, p1, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    iget-object v5, p1, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    invoke-direct {v3, v4, p1, v2, v5}, Lcom/bumptech/glide/g;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V

    sget-object p1, Lcom/bumptech/glide/h;->l:Lc1/e;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/g;->n(Lc1/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    sget-object v2, Lm0/k;->a:Lm0/k;

    new-instance v3, Lc1/e;

    invoke-direct {v3}, Lc1/e;-><init>()V

    invoke-virtual {v3, v2}, Lc1/a;->d(Lm0/k;)Lc1/a;

    move-result-object v2

    check-cast v2, Lc1/e;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc1/a;->m(Z)Lc1/a;

    move-result-object v2

    check-cast v2, Lc1/e;

    invoke-virtual {v2, v3}, Lc1/a;->j(Z)Lc1/a;

    move-result-object v2

    check-cast v2, Lc1/e;

    invoke-virtual {v2, p3, p4}, Lc1/a;->f(II)Lc1/a;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/g;->n(Lc1/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Ljava/util/List;

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/h;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/b$c;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/resource/gif/b$c;-><init>(Lcom/bumptech/glide/load/resource/gif/b;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Ln0/c;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->h:Lcom/bumptech/glide/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Li0/a;

    invoke-virtual {p0, p5, p6}, Lcom/bumptech/glide/load/resource/gif/b;->c(Lj0/g;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 16

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->f:Z

    if-eqz v0, :cond_ea

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->g:Z

    if-eqz v0, :cond_a

    goto/16 :goto_ea

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->n:Lcom/bumptech/glide/load/resource/gif/b$a;

    if-eqz v2, :cond_17

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->n:Lcom/bumptech/glide/load/resource/gif/b$a;

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/resource/gif/b;->b(Lcom/bumptech/glide/load/resource/gif/b$a;)V

    return-void

    :cond_17
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->g:Z

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Li0/a;

    invoke-interface {v2}, Li0/a;->d()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Li0/a;

    invoke-interface {v2}, Li0/a;->b()V

    new-instance v2, Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/os/Handler;

    iget-object v6, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Li0/a;

    invoke-interface {v6}, Li0/a;->f()I

    move-result v6

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/bumptech/glide/load/resource/gif/b$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->h:Lcom/bumptech/glide/g;

    new-instance v3, Lf1/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lf1/b;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lc1/e;

    invoke-direct {v4}, Lc1/e;-><init>()V

    invoke-virtual {v4, v3}, Lc1/a;->i(Lj0/c;)Lc1/a;

    move-result-object v3

    check-cast v3, Lc1/e;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/g;->n(Lc1/a;)Lcom/bumptech/glide/g;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Li0/a;

    iput-object v3, v2, Lcom/bumptech/glide/g;->J:Ljava/lang/Object;

    iput-boolean v1, v2, Lcom/bumptech/glide/g;->L:Z

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:Lcom/bumptech/glide/load/resource/gif/b$a;

    sget-object v14, Lg1/a;->a:Ljava/util/concurrent/Executor;

    const-string v3, "Argument must not be null"

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v3, v2, Lcom/bumptech/glide/g;->L:Z

    if-eqz v3, :cond_e2

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v9, v2, Lcom/bumptech/glide/g;->I:Lcom/bumptech/glide/i;

    iget-object v10, v2, Lc1/a;->d:Lcom/bumptech/glide/e;

    iget v11, v2, Lc1/a;->k:I

    iget v12, v2, Lc1/a;->j:I

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    move-object v6, p0

    move-object v13, v2

    invoke-virtual/range {v4 .. v14}, Lcom/bumptech/glide/g;->o(Ljava/lang/Object;Ld1/d;Lc1/d;Lc1/c;Lcom/bumptech/glide/i;Lcom/bumptech/glide/e;IILc1/a;Ljava/util/concurrent/Executor;)Lc1/b;

    move-result-object v3

    iget-object v4, p0, Ld1/a;->c:Lc1/b;

    move-object v5, v3

    check-cast v5, Lc1/g;

    invoke-virtual {v5, v4}, Lc1/g;->h(Lc1/b;)Z

    move-result v6

    if-eqz v6, :cond_a7

    iget-boolean v6, v2, Lc1/a;->i:Z

    if-nez v6, :cond_96

    invoke-interface {v4}, Lc1/b;->c()Z

    move-result v6

    if-eqz v6, :cond_96

    move v0, v1

    :cond_96
    if-nez v0, :cond_a7

    const-string p0, "Argument must not be null"

    invoke-static {v4, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v4}, Lc1/b;->isRunning()Z

    move-result p0

    if-nez p0, :cond_de

    invoke-interface {v4}, Lc1/b;->b()V

    goto :goto_de

    :cond_a7
    iget-object v0, v2, Lcom/bumptech/glide/g;->F:Lcom/bumptech/glide/h;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/h;->i(Ld1/d;)V

    iput-object v3, p0, Ld1/a;->c:Lc1/b;

    iget-object v0, v2, Lcom/bumptech/glide/g;->F:Lcom/bumptech/glide/h;

    monitor-enter v0

    :try_start_b1
    iget-object v1, v0, Lcom/bumptech/glide/h;->f:Lz0/n;

    iget-object v1, v1, Lz0/n;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/bumptech/glide/h;->d:Lz0/m;

    iget-object v1, p0, Lz0/m;->a:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lz0/m;->c:Z

    if-nez v1, :cond_c7

    invoke-virtual {v5}, Lc1/g;->b()V

    goto :goto_dd

    :cond_c7
    invoke-virtual {v5}, Lc1/g;->clear()V

    const/4 v1, 0x2

    const-string v2, "RequestTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d8

    const-string v1, "Paused, delaying request"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    iget-object p0, p0, Lz0/m;->b:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_dd
    .catchall {:try_start_b1 .. :try_end_dd} :catchall_df

    :goto_dd
    monitor-exit v0

    :cond_de
    :goto_de
    return-void

    :catchall_df
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_e2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must call #load() before calling #into()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ea
    :goto_ea
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/resource/gif/b$a;)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->g:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->j:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_12
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->f:Z

    if-nez v0, :cond_19

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->n:Lcom/bumptech/glide/load/resource/gif/b$a;

    return-void

    :cond_19
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Ln0/c;

    invoke-interface {v2, v0}, Ln0/c;->d(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Landroid/graphics/Bitmap;

    :cond_29
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->i:Lcom/bumptech/glide/load/resource/gif/b$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->i:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_33
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_43

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/resource/gif/b$b;

    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/gif/b$b;->a()V

    goto :goto_33

    :cond_43
    if-eqz v0, :cond_4e

    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4e
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->a()V

    return-void
.end method

.method public c(Lj0/g;Landroid/graphics/Bitmap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->m:Lj0/g;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->h:Lcom/bumptech/glide/g;

    new-instance v1, Lc1/e;

    invoke-direct {v1}, Lc1/e;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lc1/a;->k(Lj0/g;Z)Lc1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->n(Lc1/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->h:Lcom/bumptech/glide/g;

    invoke-static {p2}, Lg1/f;->c(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->o:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->p:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->q:I

    return-void
.end method
