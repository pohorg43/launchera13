.class public Lm0/m$a;
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
    name = "a"
.end annotation


# instance fields
.field public final a:Lc1/f;

.field public final synthetic b:Lm0/m;


# direct methods
.method public constructor <init>(Lm0/m;Lc1/f;)V
    .registers 3

    iput-object p1, p0, Lm0/m$a;->b:Lm0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm0/m$a;->a:Lc1/f;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lm0/m$a;->a:Lc1/f;

    check-cast v0, Lc1/g;

    iget-object v1, v0, Lc1/g;->b:Lh1/d;

    invoke-virtual {v1}, Lh1/d;->a()V

    iget-object v0, v0, Lc1/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lm0/m$a;->b:Lm0/m;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_46

    :try_start_f
    iget-object v2, p0, Lm0/m$a;->b:Lm0/m;

    iget-object v2, v2, Lm0/m;->a:Lm0/m$e;

    iget-object v3, p0, Lm0/m$a;->a:Lc1/f;

    iget-object v2, v2, Lm0/m$e;->a:Ljava/util/List;

    new-instance v4, Lm0/m$d;

    sget-object v5, Lg1/a;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v4, v3, v5}, Lm0/m$d;-><init>(Lc1/f;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lm0/m$a;->b:Lm0/m;

    iget-object v3, p0, Lm0/m$a;->a:Lc1/f;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_43

    :try_start_2b
    iget-object v2, v2, Lm0/m;->t:Lm0/r;

    check-cast v3, Lc1/g;

    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, Lc1/g;->l(Lm0/r;I)V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_34

    goto :goto_3b

    :catchall_34
    move-exception p0

    :try_start_35
    new-instance v2, Lm0/c;

    invoke-direct {v2, p0}, Lm0/c;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_3b
    :goto_3b
    iget-object p0, p0, Lm0/m$a;->b:Lm0/m;

    invoke-virtual {p0}, Lm0/m;->d()V

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_43

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_46

    return-void

    :catchall_43
    move-exception p0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw p0

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_46

    throw p0
.end method
