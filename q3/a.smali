.class public abstract Lq3/a;
.super Lq3/n1;
.source ""

# interfaces
.implements Lb3/d;
.implements Lq3/f0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/n1;",
        "Lq3/i1;",
        "Lb3/d<",
        "TT;>;",
        "Lq3/f0;"
    }
.end annotation


# instance fields
.field public final b:Lb3/f;


# direct methods
.method public constructor <init>(Lb3/f;ZZ)V
    .registers 4

    invoke-direct {p0, p3}, Lq3/n1;-><init>(Z)V

    if-eqz p2, :cond_10

    sget-object p2, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {p1, p2}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object p2

    check-cast p2, Lq3/i1;

    invoke-virtual {p0, p2}, Lq3/n1;->S(Lq3/i1;)V

    :cond_10
    invoke-interface {p1, p0}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p1

    iput-object p1, p0, Lq3/a;->b:Lb3/f;

    return-void
.end method


# virtual methods
.method public F()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " was cancelled"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final R(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p0, p0, Lq3/a;->b:Lb3/f;

    invoke-static {p0, p1}, Li1/i;->g(Lb3/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public V()Ljava/lang/String;
    .registers 1

    invoke-super {p0}, Lq3/n1;->V()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Y(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lq3/u;

    if-eqz v0, :cond_10

    check-cast p1, Lq3/u;

    iget-object v0, p1, Lq3/u;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lq3/u;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lq3/a;->i0(Ljava/lang/Throwable;Z)V

    goto :goto_13

    :cond_10
    invoke-virtual {p0, p1}, Lq3/a;->j0(Ljava/lang/Object;)V

    :goto_13
    return-void
.end method

.method public a()Z
    .registers 1

    invoke-super {p0}, Lq3/n1;->a()Z

    move-result p0

    return p0
.end method

.method public final getContext()Lb3/f;
    .registers 1

    iget-object p0, p0, Lq3/a;->b:Lb3/f;

    return-object p0
.end method

.method public getCoroutineContext()Lb3/f;
    .registers 1

    iget-object p0, p0, Lq3/a;->b:Lb3/f;

    return-object p0
.end method

.method public h0(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lq3/n1;->B(Ljava/lang/Object;)V

    return-void
.end method

.method public i0(Ljava/lang/Throwable;Z)V
    .registers 3

    return-void
.end method

.method public j0(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final k0(ILjava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lb3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lj/b;->f(I)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5f

    const-string v1, "completion"

    const/4 v2, 0x2

    if-eq p1, v2, :cond_45

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3f

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_15
    iget-object p1, p0, Lq3/a;->b:Lb3/f;

    invoke-static {p1, v0}, Lv3/a0;->c(Lb3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_30

    :try_start_1b
    invoke-static {p3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_32

    :try_start_25
    invoke-static {p1, v0}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_30

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-eq p2, p1, :cond_5f

    invoke-virtual {p0, p2}, Lq3/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_5f

    :catchall_30
    move-exception p1

    goto :goto_37

    :catchall_32
    move-exception p2

    :try_start_33
    invoke-static {p1, v0}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    throw p2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_30

    :goto_37
    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq3/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_3f
    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :cond_45
    const-string p1, "<this>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2, p0}, Lq/d;->g(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    invoke-static {p0}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object p0

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-interface {p0, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_5b
    const/4 p1, 0x4

    invoke-static {p3, p2, p0, v0, p1}, Li1/j;->q(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lb3/d;Lkotlin/jvm/functions/Function1;I)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Li1/k;->g(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq3/n1;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lq3/o1;->b:Lv3/y;

    if-ne p1, v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0, p1}, Lq3/a;->h0(Ljava/lang/Object;)V

    return-void
.end method
