.class public abstract Lq3/p0;
.super Lw3/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lw3/h;"
    }
.end annotation


# instance fields
.field public c:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lw3/h;-><init>()V

    iput p1, p0, Lq3/p0;->c:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public abstract c()Lb3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb3/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 3

    instance-of p0, p1, Lq3/u;

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    check-cast p1, Lq3/u;

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    if-nez p1, :cond_c

    goto :goto_e

    :cond_c
    iget-object v0, p1, Lq3/u;->a:Ljava/lang/Throwable;

    :goto_e
    return-object v0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-static {p1, p2}, Ll0/b;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_c
    if-nez p1, :cond_f

    move-object p1, p2

    :cond_f
    new-instance p2, Lq3/g0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Lq3/g0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lq3/p0;->c()Lb3/d;

    move-result-object p0

    invoke-interface {p0}, Lb3/d;->getContext()Lb3/f;

    move-result-object p0

    invoke-static {p0, p2}, Li1/i;->g(Lb3/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .registers 11

    iget-object v0, p0, Lw3/h;->b:Lw3/i;

    :try_start_2
    invoke-virtual {p0}, Lq3/p0;->c()Lb3/d;

    move-result-object v1

    check-cast v1, Lv3/f;

    iget-object v2, v1, Lv3/f;->e:Lb3/d;

    iget-object v1, v1, Lv3/f;->g:Ljava/lang/Object;

    invoke-interface {v2}, Lb3/d;->getContext()Lb3/f;

    move-result-object v3

    invoke-static {v3, v1}, Lv3/a0;->c(Lb3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lv3/a0;->a:Lv3/y;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1e

    invoke-static {v2, v3, v1}, Lq3/z;->d(Lb3/d;Lb3/f;Ljava/lang/Object;)Lq3/f2;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_95

    goto :goto_1f

    :cond_1e
    move-object v4, v5

    :goto_1f
    :try_start_1f
    invoke-interface {v2}, Lb3/d;->getContext()Lb3/f;

    move-result-object v6

    invoke-virtual {p0}, Lq3/p0;->h()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lq3/p0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_42

    iget v9, p0, Lq3/p0;->c:I

    invoke-static {v9}, Lq/d;->m(I)Z

    move-result v9

    if-eqz v9, :cond_42

    sget v9, Lq3/i1;->C:I

    sget-object v9, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {v6, v9}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v6

    check-cast v6, Lq3/i1;

    goto :goto_43

    :catchall_40
    move-exception v2

    goto :goto_89

    :cond_42
    move-object v6, v5

    :goto_43
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Lq3/i1;->a()Z

    move-result v9

    if-nez v9, :cond_5a

    invoke-interface {v6}, Lq3/i1;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lq3/p0;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v6}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_6b

    :cond_5a
    if-eqz v8, :cond_64

    invoke-static {v8}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_6b

    :cond_64
    invoke-virtual {p0, v7}, Lq3/p0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_6b
    sget-object v2, Ly2/p;->a:Ly2/p;
    :try_end_6d
    .catchall {:try_start_1f .. :try_end_6d} :catchall_40

    if-eqz v4, :cond_75

    :try_start_6f
    invoke-virtual {v4}, Lq3/f2;->l0()Z

    move-result v4

    if-eqz v4, :cond_78

    :cond_75
    invoke-static {v3, v1}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_95

    :cond_78
    :try_start_78
    invoke-interface {v0}, Lw3/i;->a()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_81

    :catchall_7c
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_81
    invoke-static {v2}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lq3/p0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_a8

    :goto_89
    if-eqz v4, :cond_91

    :try_start_8b
    invoke-virtual {v4}, Lq3/f2;->l0()Z

    move-result v4

    if-eqz v4, :cond_94

    :cond_91
    invoke-static {v3, v1}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    :cond_94
    throw v2
    :try_end_95
    .catchall {:try_start_8b .. :try_end_95} :catchall_95

    :catchall_95
    move-exception v1

    :try_start_96
    invoke-interface {v0}, Lw3/i;->a()V

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_9b
    .catchall {:try_start_96 .. :try_end_9b} :catchall_9c

    goto :goto_a1

    :catchall_9c
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_a1
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lq3/p0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_a8
    return-void
.end method
