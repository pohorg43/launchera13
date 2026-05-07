.class public Lm0/m$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lc1/f;

.field public final synthetic b:Lm0/m;


# direct methods
.method public constructor <init>(Lm0/m;Lc1/f;)V
    .registers 3

    iput-object p1, p0, Lm0/m$b;->b:Lm0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm0/m$b;->a:Lc1/f;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lm0/m$b;->a:Lc1/f;

    check-cast v0, Lc1/g;

    iget-object v1, v0, Lc1/g;->b:Lh1/d;

    invoke-virtual {v1}, Lh1/d;->a()V

    iget-object v0, v0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lm0/m$b;->b:Lm0/m;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_55

    :try_start_f
    iget-object v2, p0, Lm0/m$b;->b:Lm0/m;

    iget-object v2, v2, Lm0/m;->a:Lm0/m$e;

    iget-object v3, p0, Lm0/m$b;->a:Lc1/f;

    iget-object v2, v2, Lm0/m$e;->a:Ljava/util/List;

    new-instance v4, Lm0/m$d;

    sget-object v5, Lg1/a;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v4, v3, v5}, Lm0/m$d;-><init>(Lc1/f;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lm0/m$b;->b:Lm0/m;

    iget-object v2, v2, Lm0/m;->v:Lm0/q;

    invoke-virtual {v2}, Lm0/q;->a()V

    iget-object v2, p0, Lm0/m$b;->b:Lm0/m;

    iget-object v3, p0, Lm0/m$b;->a:Lc1/f;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_52

    :try_start_32
    iget-object v4, v2, Lm0/m;->v:Lm0/q;

    iget-object v2, v2, Lm0/m;->r:Lcom/bumptech/glide/load/a;

    check-cast v3, Lc1/g;

    invoke-virtual {v3, v4, v2}, Lc1/g;->m(Lm0/w;Lcom/bumptech/glide/load/a;)V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_43

    :try_start_3b
    iget-object v2, p0, Lm0/m$b;->b:Lm0/m;

    iget-object v3, p0, Lm0/m$b;->a:Lc1/f;

    invoke-virtual {v2, v3}, Lm0/m;->h(Lc1/f;)V

    goto :goto_4a

    :catchall_43
    move-exception p0

    new-instance v2, Lm0/c;

    invoke-direct {v2, p0}, Lm0/c;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_4a
    :goto_4a
    iget-object p0, p0, Lm0/m$b;->b:Lm0/m;

    invoke-virtual {p0}, Lm0/m;->d()V

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_52

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_55

    return-void

    :catchall_52
    move-exception p0

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p0

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw p0
.end method
