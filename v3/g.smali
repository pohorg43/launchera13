.class public final Lv3/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lv3/y;

.field public static final b:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lv3/y;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/g;->a:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/g;->b:Lv3/y;

    return-void
.end method

.method public static final a(Lb3/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb3/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lv3/f;

    if-eqz v0, :cond_b6

    check-cast p0, Lv3/f;

    invoke-static {p1, p2}, Li1/k;->g(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lv3/f;->d:Lq3/b0;

    invoke-virtual {p0}, Lv3/f;->getContext()Lb3/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq3/b0;->isDispatchNeeded(Lb3/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iput-object p2, p0, Lv3/f;->f:Ljava/lang/Object;

    iput v1, p0, Lq3/p0;->c:I

    iget-object p1, p0, Lv3/f;->d:Lq3/b0;

    invoke-virtual {p0}, Lv3/f;->getContext()Lb3/f;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lq3/b0;->dispatch(Lb3/f;Ljava/lang/Runnable;)V

    goto/16 :goto_b9

    :cond_26
    sget-object v0, Lq3/b2;->a:Lq3/b2;

    invoke-static {}, Lq3/b2;->a()Lq3/v0;

    move-result-object v0

    invoke-virtual {v0}, Lq3/v0;->v()Z

    move-result v2

    if-eqz v2, :cond_3b

    iput-object p2, p0, Lv3/f;->f:Ljava/lang/Object;

    iput v1, p0, Lq3/p0;->c:I

    invoke-virtual {v0, p0}, Lq3/v0;->n(Lq3/p0;)V

    goto/16 :goto_b9

    :cond_3b
    invoke-virtual {v0, v1}, Lq3/v0;->r(Z)V

    const/4 v2, 0x0

    :try_start_3f
    invoke-virtual {p0}, Lv3/f;->getContext()Lb3/f;

    move-result-object v3

    sget-object v4, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {v3, v4}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v3

    check-cast v3, Lq3/i1;

    if-eqz v3, :cond_6b

    invoke-interface {v3}, Lq3/i1;->a()Z

    move-result v4

    if-nez v4, :cond_6b

    invoke-interface {v3}, Lq3/i1;->i()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    instance-of v4, p2, Lq3/v;

    if-eqz v4, :cond_62

    check-cast p2, Lq3/v;

    iget-object p2, p2, Lq3/v;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    invoke-static {v3}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    move p2, v1

    goto :goto_6c

    :cond_6b
    const/4 p2, 0x0

    :goto_6c
    if-nez p2, :cond_a2

    iget-object p2, p0, Lv3/f;->e:Lb3/d;

    iget-object v3, p0, Lv3/f;->g:Ljava/lang/Object;

    invoke-interface {p2}, Lb3/d;->getContext()Lb3/f;

    move-result-object v4

    invoke-static {v4, v3}, Lv3/a0;->c(Lb3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lv3/a0;->a:Lv3/y;

    if-eq v3, v5, :cond_83

    invoke-static {p2, v4, v3}, Lq3/z;->d(Lb3/d;Lb3/f;Ljava/lang/Object;)Lq3/f2;

    move-result-object p2
    :try_end_82
    .catchall {:try_start_3f .. :try_end_82} :catchall_a9

    goto :goto_84

    :cond_83
    move-object p2, v2

    :goto_84
    :try_start_84
    iget-object v5, p0, Lv3/f;->e:Lb3/d;

    invoke-interface {v5, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_95

    if-eqz p2, :cond_91

    :try_start_8b
    invoke-virtual {p2}, Lq3/f2;->l0()Z

    move-result p1

    if-eqz p1, :cond_a2

    :cond_91
    invoke-static {v4, v3}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    goto :goto_a2

    :catchall_95
    move-exception p1

    if-eqz p2, :cond_9e

    invoke-virtual {p2}, Lq3/f2;->l0()Z

    move-result p2

    if-eqz p2, :cond_a1

    :cond_9e
    invoke-static {v4, v3}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    :cond_a1
    throw p1

    :cond_a2
    :goto_a2
    invoke-virtual {v0}, Lq3/v0;->y()Z

    move-result p1
    :try_end_a6
    .catchall {:try_start_8b .. :try_end_a6} :catchall_a9

    if-nez p1, :cond_a2

    goto :goto_ad

    :catchall_a9
    move-exception p1

    :try_start_aa
    invoke-virtual {p0, p1, v2}, Lq3/p0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b1

    :goto_ad
    invoke-virtual {v0, v1}, Lq3/v0;->l(Z)V

    goto :goto_b9

    :catchall_b1
    move-exception p0

    invoke-virtual {v0, v1}, Lq3/v0;->l(Z)V

    throw p0

    :cond_b6
    invoke-interface {p0, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_b9
    return-void
.end method

.method public static synthetic b(Lb3/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V
    .registers 4

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lv3/g;->a(Lb3/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
