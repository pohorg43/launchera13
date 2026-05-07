.class public Ls3/m;
.super Ls3/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls3/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ls3/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Ls3/m;->d:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p1, Ls3/b;->a:Lv3/y;

    iput-object p1, p0, Ls3/m;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .registers 2

    const-string v0, "(value="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ls3/m;->e:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Ls3/m;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Ls3/c;->g()Ls3/j;

    move-result-object v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Ls3/m;->e:Ljava/lang/Object;

    sget-object v2, Ls3/b;->a:Lv3/y;

    if-ne v1, v2, :cond_32

    :cond_11
    invoke-virtual {p0}, Ls3/a;->l()Ls3/t;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_32

    :cond_18
    instance-of v2, v1, Ls3/j;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_43

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_20
    const/4 v2, 0x0

    :try_start_21
    invoke-interface {v1, p1, v2}, Ls3/t;->b(Ljava/lang/Object;Lv3/l$b;)Lv3/y;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_43

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v1, p1}, Ls3/t;->f(Ljava/lang/Object;)V

    invoke-interface {v1}, Ls3/t;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_32
    :goto_32
    :try_start_32
    invoke-virtual {p0, p1}, Ls3/m;->w(Ljava/lang/Object;)Lv3/e0;

    move-result-object p0

    if-nez p0, :cond_3e

    sget-object p0, Ls3/b;->b:Lv3/y;
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_43

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :cond_3e
    :try_start_3e
    throw p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_43

    :cond_3f
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_43
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public o(Ls3/r;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/r<",
            "-TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ls3/m;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-super {p0, p1}, Ls3/a;->o(Ls3/r;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0

    :catchall_d
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final p()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final q()Z
    .registers 2

    iget-object p0, p0, Ls3/m;->e:Ljava/lang/Object;

    sget-object v0, Ls3/b;->a:Lv3/y;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public s(Z)V
    .registers 4

    iget-object v0, p0, Ls3/m;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    sget-object v1, Ls3/b;->a:Lv3/y;

    invoke-virtual {p0, v1}, Ls3/m;->w(Ljava/lang/Object;)Lv3/e0;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_15

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0, p1}, Ls3/a;->s(Z)V

    if-nez v1, :cond_14

    return-void

    :cond_14
    throw v1

    :catchall_15
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public u()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ls3/m;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v1, p0, Ls3/m;->e:Ljava/lang/Object;

    sget-object v2, Ls3/b;->a:Lv3/y;

    if-ne v1, v2, :cond_17

    invoke-virtual {p0}, Ls3/c;->g()Ls3/j;

    move-result-object p0

    if-nez p0, :cond_13

    sget-object p0, Ls3/b;->d:Lv3/y;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1d

    :cond_13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :cond_17
    :try_start_17
    iput-object v2, p0, Ls3/m;->e:Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_1d
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final w(Ljava/lang/Object;)Lv3/e0;
    .registers 5

    iget-object v0, p0, Ls3/m;->e:Ljava/lang/Object;

    sget-object v1, Ls3/b;->a:Lv3/y;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    goto :goto_11

    :cond_8
    iget-object v1, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_d

    goto :goto_11

    :cond_d
    invoke-static {v1, v0, v2}, Lv3/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lv3/e0;)Lv3/e0;

    move-result-object v2

    :goto_11
    iput-object p1, p0, Ls3/m;->e:Ljava/lang/Object;

    return-object v2
.end method
