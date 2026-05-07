.class public final Lc1/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc1/b;
.implements Ld1/c;
.implements Lc1/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc1/b;",
        "Ld1/c;",
        "Lc1/f;"
    }
.end annotation


# static fields
.field public static final D:Z


# instance fields
.field public A:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public B:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public C:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lh1/d;

.field public final c:Ljava/lang/Object;

.field public final d:Lc1/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/d<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final e:Lc1/c;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/bumptech/glide/d;

.field public final h:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final j:Lc1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:I

.field public final l:I

.field public final m:Lcom/bumptech/glide/e;

.field public final n:Ld1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/d<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc1/d<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final p:Le1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le1/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/Executor;

.field public r:Lm0/w;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/w<",
            "TR;>;"
        }
    .end annotation
.end field

.field public s:Lm0/l$d;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public t:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public volatile u:Lm0/l;

.field public v:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public w:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public x:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public y:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public z:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lc1/g;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lc1/a;IILcom/bumptech/glide/e;Ld1/d;Lc1/d;Ljava/util/List;Lc1/c;Lm0/l;Le1/c;Ljava/util/concurrent/Executor;)V
    .registers 20
    .param p3  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11  # Lc1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12  # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc1/a<",
            "*>;II",
            "Lcom/bumptech/glide/e;",
            "Ld1/d<",
            "TR;>;",
            "Lc1/d<",
            "TR;>;",
            "Ljava/util/List<",
            "Lc1/d<",
            "TR;>;>;",
            "Lc1/c;",
            "Lm0/l;",
            "Le1/c<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v2, Lc1/g;->D:Z

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    iput-object v2, v0, Lc1/g;->a:Ljava/lang/String;

    new-instance v2, Lh1/d$b;

    invoke-direct {v2}, Lh1/d$b;-><init>()V

    iput-object v2, v0, Lc1/g;->b:Lh1/d;

    move-object v2, p3

    iput-object v2, v0, Lc1/g;->c:Ljava/lang/Object;

    move-object v2, p1

    iput-object v2, v0, Lc1/g;->f:Landroid/content/Context;

    iput-object v1, v0, Lc1/g;->g:Lcom/bumptech/glide/d;

    move-object v2, p4

    iput-object v2, v0, Lc1/g;->h:Ljava/lang/Object;

    move-object v2, p5

    iput-object v2, v0, Lc1/g;->i:Ljava/lang/Class;

    move-object v2, p6

    iput-object v2, v0, Lc1/g;->j:Lc1/a;

    move v2, p7

    iput v2, v0, Lc1/g;->k:I

    move v2, p8

    iput v2, v0, Lc1/g;->l:I

    move-object v2, p9

    iput-object v2, v0, Lc1/g;->m:Lcom/bumptech/glide/e;

    move-object v2, p10

    iput-object v2, v0, Lc1/g;->n:Ld1/d;

    move-object v2, p11

    iput-object v2, v0, Lc1/g;->d:Lc1/d;

    move-object v2, p12

    iput-object v2, v0, Lc1/g;->o:Ljava/util/List;

    move-object/from16 v2, p13

    iput-object v2, v0, Lc1/g;->e:Lc1/c;

    move-object/from16 v2, p14

    iput-object v2, v0, Lc1/g;->u:Lm0/l;

    move-object/from16 v2, p15

    iput-object v2, v0, Lc1/g;->p:Le1/c;

    move-object/from16 v2, p16

    iput-object v2, v0, Lc1/g;->q:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    iput v2, v0, Lc1/g;->v:I

    iget-object v2, v0, Lc1/g;->C:Ljava/lang/RuntimeException;

    if-nez v2, :cond_63

    iget-boolean v1, v1, Lcom/bumptech/glide/d;->g:Z

    if-eqz v1, :cond_63

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lc1/g;->C:Ljava/lang/RuntimeException;

    :cond_63
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    iget-object v0, p0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget p0, p0, Lc1/g;->v:I

    const/4 v1, 0x6

    if-ne p0, v1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public b()V
    .registers 6

    iget-object v0, p0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lc1/g;->d()V

    iget-object v1, p0, Lc1/g;->b:Lh1/d;

    invoke-virtual {v1}, Lh1/d;->a()V

    sget v1, Lg1/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, p0, Lc1/g;->t:J

    iget-object v1, p0, Lc1/g;->h:Ljava/lang/Object;

    const/4 v2, 0x3

    if-nez v1, :cond_3d

    iget v1, p0, Lc1/g;->k:I

    iget v3, p0, Lc1/g;->l:I

    invoke-static {v1, v3}, Lg1/f;->h(II)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget v1, p0, Lc1/g;->k:I

    iput v1, p0, Lc1/g;->z:I

    iget v1, p0, Lc1/g;->l:I

    iput v1, p0, Lc1/g;->A:I

    :cond_2a
    invoke-virtual {p0}, Lc1/g;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_31

    const/4 v2, 0x5

    :cond_31
    new-instance v1, Lm0/r;

    const-string v3, "Received null model"

    invoke-direct {v1, v3}, Lm0/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lc1/g;->l(Lm0/r;I)V

    monitor-exit v0

    return-void

    :cond_3d
    iget v1, p0, Lc1/g;->v:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_a6

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4e

    iget-object v1, p0, Lc1/g;->r:Lm0/w;

    sget-object v2, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    invoke-virtual {p0, v1, v2}, Lc1/g;->m(Lm0/w;Lcom/bumptech/glide/load/a;)V

    monitor-exit v0

    return-void

    :cond_4e
    iput v2, p0, Lc1/g;->v:I

    iget v1, p0, Lc1/g;->k:I

    iget v4, p0, Lc1/g;->l:I

    invoke-static {v1, v4}, Lg1/f;->h(II)Z

    move-result v1

    if-eqz v1, :cond_62

    iget v1, p0, Lc1/g;->k:I

    iget v4, p0, Lc1/g;->l:I

    invoke-virtual {p0, v1, v4}, Lc1/g;->o(II)V

    goto :goto_67

    :cond_62
    iget-object v1, p0, Lc1/g;->n:Ld1/d;

    invoke-interface {v1, p0}, Ld1/d;->a(Ld1/c;)V

    :goto_67
    iget v1, p0, Lc1/g;->v:I

    if-eq v1, v3, :cond_6d

    if-ne v1, v2, :cond_86

    :cond_6d
    iget-object v1, p0, Lc1/g;->e:Lc1/c;

    if-eqz v1, :cond_7a

    invoke-interface {v1, p0}, Lc1/c;->f(Lc1/b;)Z

    move-result v1

    if-eqz v1, :cond_78

    goto :goto_7a

    :cond_78
    const/4 v1, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v1, 0x1

    :goto_7b
    if-eqz v1, :cond_86

    iget-object v1, p0, Lc1/g;->n:Ld1/d;

    invoke-virtual {p0}, Lc1/g;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Ld1/d;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_86
    sget-boolean v1, Lc1/g;->D:Z

    if-eqz v1, :cond_a4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lc1/g;->t:J

    invoke-static {v2, v3}, Lg1/b;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc1/g;->k(Ljava/lang/String;)V

    :cond_a4
    monitor-exit v0

    return-void

    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_ae
    move-exception p0

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_3 .. :try_end_b0} :catchall_ae

    throw p0
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget p0, p0, Lc1/g;->v:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public clear()V
    .registers 6

    iget-object v0, p0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lc1/g;->d()V

    iget-object v1, p0, Lc1/g;->b:Lh1/d;

    invoke-virtual {v1}, Lh1/d;->a()V

    iget v1, p0, Lc1/g;->v:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_12

    monitor-exit v0

    return-void

    :cond_12
    invoke-virtual {p0}, Lc1/g;->e()V

    iget-object v1, p0, Lc1/g;->r:Lm0/w;

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    iput-object v3, p0, Lc1/g;->r:Lm0/w;

    goto :goto_1e

    :cond_1d
    move-object v1, v3

    :goto_1e
    iget-object v3, p0, Lc1/g;->e:Lc1/c;

    if-eqz v3, :cond_2b

    invoke-interface {v3, p0}, Lc1/c;->e(Lc1/b;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v3, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v3, 0x1

    :goto_2c
    if-eqz v3, :cond_37

    iget-object v3, p0, Lc1/g;->n:Ld1/d;

    invoke-virtual {p0}, Lc1/g;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ld1/d;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_37
    iput v2, p0, Lc1/g;->v:I

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_42

    if-eqz v1, :cond_41

    iget-object p0, p0, Lc1/g;->u:Lm0/l;

    invoke-virtual {p0, v1}, Lm0/l;->f(Lm0/w;)V

    :cond_41
    return-void

    :catchall_42
    move-exception p0

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final d()V
    .registers 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-boolean p0, p0, Lc1/g;->B:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()V
    .registers 4
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    invoke-virtual {p0}, Lc1/g;->d()V

    iget-object v0, p0, Lc1/g;->b:Lh1/d;

    invoke-virtual {v0}, Lh1/d;->a()V

    iget-object v0, p0, Lc1/g;->n:Ld1/d;

    invoke-interface {v0, p0}, Ld1/d;->h(Ld1/c;)V

    iget-object v0, p0, Lc1/g;->s:Lm0/l$d;

    if-eqz v0, :cond_23

    iget-object v1, v0, Lm0/l$d;->c:Lm0/l;

    monitor-enter v1

    :try_start_14
    iget-object v2, v0, Lm0/l$d;->a:Lm0/m;

    iget-object v0, v0, Lm0/l$d;->b:Lc1/f;

    invoke-virtual {v2, v0}, Lm0/m;->h(Lc1/f;)V

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_20

    const/4 v0, 0x0

    iput-object v0, p0, Lc1/g;->s:Lm0/l$d;

    goto :goto_23

    :catchall_20
    move-exception p0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0

    :cond_23
    :goto_23
    return-void
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, Lc1/g;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget-object v0, p0, Lc1/g;->j:Lc1/a;

    iget-object v1, v0, Lc1/a;->o:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lc1/g;->y:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_16

    iget v0, v0, Lc1/a;->p:I

    if-lez v0, :cond_16

    invoke-virtual {p0, v0}, Lc1/g;->j(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc1/g;->y:Landroid/graphics/drawable/Drawable;

    :cond_16
    iget-object p0, p0, Lc1/g;->y:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final g()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, Lc1/g;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget-object v0, p0, Lc1/g;->j:Lc1/a;

    iget-object v1, v0, Lc1/a;->g:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lc1/g;->x:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_16

    iget v0, v0, Lc1/a;->h:I

    if-lez v0, :cond_16

    invoke-virtual {p0, v0}, Lc1/g;->j(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc1/g;->x:Landroid/graphics/drawable/Drawable;

    :cond_16
    iget-object p0, p0, Lc1/g;->x:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public h(Lc1/b;)Z
    .registers 16

    instance-of v0, p1, Lc1/g;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget v2, p0, Lc1/g;->k:I

    iget v3, p0, Lc1/g;->l:I

    iget-object v4, p0, Lc1/g;->h:Ljava/lang/Object;

    iget-object v5, p0, Lc1/g;->i:Ljava/lang/Class;

    iget-object v6, p0, Lc1/g;->j:Lc1/a;

    iget-object v7, p0, Lc1/g;->m:Lcom/bumptech/glide/e;

    iget-object p0, p0, Lc1/g;->o:Ljava/util/List;

    if-eqz p0, :cond_1e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_1f

    :cond_1e
    move p0, v1

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_71

    check-cast p1, Lc1/g;

    iget-object v8, p1, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v8

    :try_start_25
    iget v0, p1, Lc1/g;->k:I

    iget v9, p1, Lc1/g;->l:I

    iget-object v10, p1, Lc1/g;->h:Ljava/lang/Object;

    iget-object v11, p1, Lc1/g;->i:Ljava/lang/Class;

    iget-object v12, p1, Lc1/g;->j:Lc1/a;

    iget-object v13, p1, Lc1/g;->m:Lcom/bumptech/glide/e;

    iget-object p1, p1, Lc1/g;->o:Ljava/util/List;

    if-eqz p1, :cond_3a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_3b

    :cond_3a
    move p1, v1

    :goto_3b
    monitor-exit v8
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_6e

    const/4 v8, 0x1

    if-ne v2, v0, :cond_6d

    if-ne v3, v9, :cond_6d

    sget-object v0, Lg1/f;->a:[C

    if-nez v4, :cond_4b

    if-nez v10, :cond_49

    move v0, v8

    goto :goto_5a

    :cond_49
    move v0, v1

    goto :goto_5a

    :cond_4b
    instance-of v0, v4, Lq0/l;

    if-eqz v0, :cond_56

    check-cast v4, Lq0/l;

    invoke-interface {v4, v10}, Lq0/l;->a(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5a

    :cond_56
    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_5a
    if-eqz v0, :cond_6d

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {v6, v12}, Lc1/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    if-ne v7, v13, :cond_6d

    if-ne p0, p1, :cond_6d

    move v1, v8

    :cond_6d
    return v1

    :catchall_6e
    move-exception p0

    :try_start_6f
    monitor-exit v8
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0

    :catchall_71
    move-exception p0

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public final i()Z
    .registers 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object p0, p0, Lc1/g;->e:Lc1/c;

    if-eqz p0, :cond_11

    invoke-interface {p0}, Lc1/c;->b()Lc1/c;

    move-result-object p0

    invoke-interface {p0}, Lc1/c;->a()Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public isRunning()Z
    .registers 3

    iget-object v0, p0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget p0, p0, Lc1/g;->v:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_e

    const/4 v1, 0x3

    if-ne p0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final j(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, Lc1/g;->j:Lc1/a;

    iget-object v0, v0, Lc1/a;->u:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_7

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lc1/g;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_d
    iget-object p0, p0, Lc1/g;->g:Lcom/bumptech/glide/d;

    invoke-static {p0, p0, p1, v0}, Lv0/a;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final k(Ljava/lang/String;)V
    .registers 3

    const-string v0, " this: "

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lc1/g;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Request"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final l(Lm0/r;I)V
    .registers 11

    iget-object v0, p0, Lc1/g;->b:Lh1/d;

    invoke-virtual {v0}, Lh1/d;->a()V

    iget-object v0, p0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc1/g;->g:Lcom/bumptech/glide/d;

    iget v1, v1, Lcom/bumptech/glide/d;->h:I

    if-gt v1, p2, :cond_4b

    const-string p2, "Glide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc1/g;->h:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lc1/g;->z:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lc1/g;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v1, p2, :cond_4b

    const-string p2, "Glide"

    invoke-virtual {p1, p2}, Lm0/r;->e(Ljava/lang/String;)V

    :cond_4b
    const/4 p2, 0x0

    iput-object p2, p0, Lc1/g;->s:Lm0/l$d;

    const/4 p2, 0x5

    iput p2, p0, Lc1/g;->v:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lc1/g;->B:Z
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_a3

    const/4 v1, 0x0

    :try_start_55
    iget-object v2, p0, Lc1/g;->o:Ljava/util/List;

    if-eqz v2, :cond_78

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc1/d;

    iget-object v5, p0, Lc1/g;->h:Ljava/lang/Object;

    iget-object v6, p0, Lc1/g;->n:Ld1/d;

    invoke-virtual {p0}, Lc1/g;->i()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, Lc1/d;->a(Lm0/r;Ljava/lang/Object;Ld1/d;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_5e

    :cond_78
    move v3, v1

    :cond_79
    iget-object v2, p0, Lc1/g;->d:Lc1/d;

    if-eqz v2, :cond_8c

    iget-object v4, p0, Lc1/g;->h:Ljava/lang/Object;

    iget-object v5, p0, Lc1/g;->n:Ld1/d;

    invoke-virtual {p0}, Lc1/g;->i()Z

    move-result v6

    invoke-interface {v2, p1, v4, v5, v6}, Lc1/d;->a(Lm0/r;Ljava/lang/Object;Ld1/d;Z)Z

    move-result p1

    if-eqz p1, :cond_8c

    goto :goto_8d

    :cond_8c
    move p2, v1

    :goto_8d
    or-int p1, v3, p2

    if-nez p1, :cond_94

    invoke-virtual {p0}, Lc1/g;->p()V
    :try_end_94
    .catchall {:try_start_55 .. :try_end_94} :catchall_9f

    :cond_94
    :try_start_94
    iput-boolean v1, p0, Lc1/g;->B:Z

    iget-object p1, p0, Lc1/g;->e:Lc1/c;

    if-eqz p1, :cond_9d

    invoke-interface {p1, p0}, Lc1/c;->g(Lc1/b;)V

    :cond_9d
    monitor-exit v0

    return-void

    :catchall_9f
    move-exception p1

    iput-boolean v1, p0, Lc1/g;->B:Z

    throw p1

    :catchall_a3
    move-exception p0

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_94 .. :try_end_a5} :catchall_a3

    throw p0
.end method

.method public m(Lm0/w;Lcom/bumptech/glide/load/a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/w<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lc1/g;->b:Lh1/d;

    invoke-virtual {v0}, Lh1/d;->a()V

    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_bd

    :try_start_9
    iput-object v0, p0, Lc1/g;->s:Lm0/l$d;

    const/4 v2, 0x5

    if-nez p1, :cond_30

    new-instance p1, Lm0/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc1/g;->i:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " inside, but instead got null."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lm0/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lc1/g;->l(Lm0/r;I)V

    monitor-exit v1

    return-void

    :cond_30
    invoke-interface {p1}, Lm0/w;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_64

    iget-object v4, p0, Lc1/g;->i:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_64

    :cond_43
    iget-object v2, p0, Lc1/g;->e:Lc1/c;

    if-eqz v2, :cond_50

    invoke-interface {v2, p0}, Lc1/c;->d(Lc1/b;)Z

    move-result v2
    :try_end_4b
    .catchall {:try_start_9 .. :try_end_4b} :catchall_b9

    if-eqz v2, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 v2, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 v2, 0x1

    :goto_51
    if-nez v2, :cond_5f

    :try_start_53
    iput-object v0, p0, Lc1/g;->r:Lm0/w;

    const/4 p2, 0x4

    iput p2, p0, Lc1/g;->v:I

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_b6

    :goto_59
    iget-object p0, p0, Lc1/g;->u:Lm0/l;

    invoke-virtual {p0, p1}, Lm0/l;->f(Lm0/w;)V

    return-void

    :cond_5f
    :try_start_5f
    invoke-virtual {p0, p1, v3, p2}, Lc1/g;->n(Lm0/w;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_b9

    return-void

    :cond_64
    :goto_64
    :try_start_64
    iput-object v0, p0, Lc1/g;->r:Lm0/w;

    new-instance p2, Lm0/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected to receive an object of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc1/g;->i:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but instead got "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_83

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_85

    :cond_83
    const-string v4, ""

    :goto_85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "} inside Resource{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_a5

    const-string v3, ""

    goto :goto_a7

    :cond_a5
    const-string v3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_a7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lm0/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v2}, Lc1/g;->l(Lm0/r;I)V

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_64 .. :try_end_b5} :catchall_b6

    goto :goto_59

    :catchall_b6
    move-exception p2

    move-object v0, p1

    goto :goto_bb

    :catchall_b9
    move-exception p1

    move-object p2, p1

    :goto_bb
    :try_start_bb
    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_b9

    :try_start_bc
    throw p2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bd

    :catchall_bd
    move-exception p1

    if-eqz v0, :cond_c5

    iget-object p0, p0, Lc1/g;->u:Lm0/l;

    invoke-virtual {p0, v0}, Lm0/l;->f(Lm0/w;)V

    :cond_c5
    throw p1
.end method

.method public final n(Lm0/w;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V
    .registers 14
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/w<",
            "TR;>;TR;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lc1/g;->i()Z

    move-result v6

    const/4 v0, 0x4

    iput v0, p0, Lc1/g;->v:I

    iput-object p1, p0, Lc1/g;->r:Lm0/w;

    iget-object p1, p0, Lc1/g;->g:Lcom/bumptech/glide/d;

    iget p1, p1, Lcom/bumptech/glide/d;->h:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_64

    const-string p1, "Finished loading "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc1/g;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lc1/g;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lc1/g;->A:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lc1/g;->t:J

    invoke-static {v0, v1}, Lg1/b;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Glide"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    const/4 p1, 0x1

    iput-boolean p1, p0, Lc1/g;->B:Z

    const/4 v7, 0x0

    :try_start_68
    iget-object v0, p0, Lc1/g;->o:Ljava/util/List;

    if-eqz v0, :cond_8a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v7

    :goto_71
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/d;

    iget-object v2, p0, Lc1/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lc1/g;->n:Ld1/d;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lc1/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ld1/d;Lcom/bumptech/glide/load/a;Z)Z

    move-result v0

    or-int/2addr v9, v0

    goto :goto_71

    :cond_8a
    move v9, v7

    :cond_8b
    iget-object v0, p0, Lc1/g;->d:Lc1/d;

    if-eqz v0, :cond_9d

    iget-object v2, p0, Lc1/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lc1/g;->n:Ld1/d;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lc1/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ld1/d;Lcom/bumptech/glide/load/a;Z)Z

    move-result p3

    if-eqz p3, :cond_9d

    goto :goto_9e

    :cond_9d
    move p1, v7

    :goto_9e
    or-int/2addr p1, v9

    if-nez p1, :cond_ad

    iget-object p1, p0, Lc1/g;->p:Le1/c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Le1/a;->a:Le1/a;

    iget-object p3, p0, Lc1/g;->n:Ld1/d;

    invoke-interface {p3, p2, p1}, Ld1/d;->b(Ljava/lang/Object;Le1/b;)V
    :try_end_ad
    .catchall {:try_start_68 .. :try_end_ad} :catchall_b7

    :cond_ad
    iput-boolean v7, p0, Lc1/g;->B:Z

    iget-object p1, p0, Lc1/g;->e:Lc1/c;

    if-eqz p1, :cond_b6

    invoke-interface {p1, p0}, Lc1/c;->c(Lc1/b;)V

    :cond_b6
    return-void

    :catchall_b7
    move-exception p1

    iput-boolean v7, p0, Lc1/g;->B:Z

    throw p1
.end method

.method public o(II)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lc1/g;->b:Lh1/d;

    invoke-virtual {v3}, Lh1/d;->a()V

    iget-object v15, v0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v15

    :try_start_e
    sget-boolean v21, Lc1/g;->D:Z

    if-eqz v21, :cond_2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got onSizeReady in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lc1/g;->t:J

    invoke-static {v4, v5}, Lg1/b;->a(J)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc1/g;->k(Ljava/lang/String;)V

    :cond_2c
    iget v3, v0, Lc1/g;->v:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_33

    monitor-exit v15

    return-void

    :cond_33
    const/4 v14, 0x2

    iput v14, v0, Lc1/g;->v:I

    iget-object v3, v0, Lc1/g;->j:Lc1/a;

    iget v3, v3, Lc1/a;->b:F

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_3f

    goto :goto_45

    :cond_3f
    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_45
    iput v1, v0, Lc1/g;->z:I

    if-ne v2, v4, :cond_4b

    move v1, v2

    goto :goto_51

    :cond_4b
    int-to-float v1, v2

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_51
    iput v1, v0, Lc1/g;->A:I

    if-eqz v21, :cond_6f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished setup for calling load in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lc1/g;->t:J

    invoke-static {v2, v3}, Lg1/b;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc1/g;->k(Ljava/lang/String;)V

    :cond_6f
    iget-object v1, v0, Lc1/g;->u:Lm0/l;

    iget-object v2, v0, Lc1/g;->g:Lcom/bumptech/glide/d;

    iget-object v3, v0, Lc1/g;->h:Ljava/lang/Object;

    iget-object v4, v0, Lc1/g;->j:Lc1/a;

    iget-object v5, v4, Lc1/a;->l:Lj0/c;

    iget v6, v0, Lc1/g;->z:I

    iget v7, v0, Lc1/g;->A:I

    iget-object v8, v4, Lc1/a;->s:Ljava/lang/Class;

    iget-object v9, v0, Lc1/g;->i:Ljava/lang/Class;

    iget-object v10, v0, Lc1/g;->m:Lcom/bumptech/glide/e;

    iget-object v11, v4, Lc1/a;->c:Lm0/k;

    iget-object v12, v4, Lc1/a;->r:Ljava/util/Map;

    iget-boolean v13, v4, Lc1/a;->m:Z

    iget-boolean v14, v4, Lc1/a;->y:Z

    move/from16 v17, v14

    iget-object v14, v4, Lc1/a;->q:Lj0/e;

    move-object/from16 v18, v14

    iget-boolean v14, v4, Lc1/a;->i:Z
    :try_end_93
    .catchall {:try_start_e .. :try_end_93} :catchall_f6

    move-object/from16 v19, v15

    :try_start_95
    iget-boolean v15, v4, Lc1/a;->w:Z

    move/from16 v20, v15

    iget-boolean v15, v4, Lc1/a;->z:Z

    iget-boolean v4, v4, Lc1/a;->x:Z

    move/from16 p1, v15

    iget-object v15, v0, Lc1/g;->q:Ljava/util/concurrent/Executor;
    :try_end_a1
    .catchall {:try_start_95 .. :try_end_a1} :catchall_f2

    move/from16 v22, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move/from16 v13, v17

    move/from16 v16, v14

    move-object/from16 v14, v18

    move/from16 v18, p1

    move-object/from16 v23, v19

    move/from16 v17, v20

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v22

    move-object/from16 v19, p0

    :try_start_c4
    invoke-virtual/range {v1 .. v20}, Lm0/l;->b(Lcom/bumptech/glide/d;Ljava/lang/Object;Lj0/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Lm0/k;Ljava/util/Map;ZZLj0/e;ZZZZLc1/f;Ljava/util/concurrent/Executor;)Lm0/l$d;

    move-result-object v1

    iput-object v1, v0, Lc1/g;->s:Lm0/l$d;

    iget v1, v0, Lc1/g;->v:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d2

    const/4 v1, 0x0

    iput-object v1, v0, Lc1/g;->s:Lm0/l$d;

    :cond_d2
    if-eqz v21, :cond_ee

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished onSizeReady in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lc1/g;->t:J

    invoke-static {v2, v3}, Lg1/b;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc1/g;->k(Ljava/lang/String;)V

    :cond_ee
    monitor-exit v23
    :try_end_ef
    .catchall {:try_start_c4 .. :try_end_ef} :catchall_f0

    return-void

    :catchall_f0
    move-exception v0

    goto :goto_f9

    :catchall_f2
    move-exception v0

    move-object/from16 v23, v19

    goto :goto_f9

    :catchall_f6
    move-exception v0

    move-object/from16 v23, v15

    :goto_f9
    move-object/from16 v15, v23

    :goto_fb
    :try_start_fb
    monitor-exit v15
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fd

    throw v0

    :catchall_fd
    move-exception v0

    goto :goto_fb
.end method

.method public final p()V
    .registers 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, Lc1/g;->e:Lc1/c;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lc1/c;->f(Lc1/b;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    if-nez v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x0

    iget-object v1, p0, Lc1/g;->h:Ljava/lang/Object;

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lc1/g;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1a
    if-nez v0, :cond_34

    iget-object v0, p0, Lc1/g;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_32

    iget-object v0, p0, Lc1/g;->j:Lc1/a;

    iget-object v1, v0, Lc1/a;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lc1/g;->w:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_32

    iget v0, v0, Lc1/a;->f:I

    if-lez v0, :cond_32

    invoke-virtual {p0, v0}, Lc1/g;->j(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc1/g;->w:Landroid/graphics/drawable/Drawable;

    :cond_32
    iget-object v0, p0, Lc1/g;->w:Landroid/graphics/drawable/Drawable;

    :cond_34
    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lc1/g;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3a
    iget-object p0, p0, Lc1/g;->n:Ld1/d;

    invoke-interface {p0, v0}, Ld1/d;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lc1/g;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lc1/g;->clear()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method
