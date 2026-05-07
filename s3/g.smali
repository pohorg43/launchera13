.class public Ls3/g;
.super Lq3/a;
.source ""

# interfaces
.implements Ls3/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a<",
        "Ly2/p;",
        ">;",
        "Ls3/f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Ls3/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls3/f<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb3/f;Ls3/f;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "Ls3/f<",
            "TE;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lq3/a;-><init>(Lb3/f;ZZ)V

    iput-object p2, p0, Ls3/g;->c:Ls3/f;

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lq3/n1;->e0(Lq3/n1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Ls3/g;->c:Ls3/f;

    invoke-interface {v0, p1}, Ls3/s;->b(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Lq3/n1;->C(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .registers 4

    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lq3/u;

    if-nez v1, :cond_17

    instance-of v1, v0, Lq3/n1$b;

    if-eqz v1, :cond_15

    check-cast v0, Lq3/n1$b;

    invoke-virtual {v0}, Lq3/n1$b;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    if-nez p1, :cond_28

    const/4 p1, 0x0

    new-instance v0, Lq3/j1;

    invoke-virtual {p0}, Lq3/n1;->F()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lq3/j1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lq3/i1;)V

    move-object p1, v0

    :cond_28
    invoke-virtual {p0, p1}, Ls3/g;->D(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lb3/d;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Ls3/i<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Ls3/g;->c:Ls3/f;

    invoke-interface {p0, p1}, Ls3/s;->c(Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Ls3/g;->c:Ls3/f;

    invoke-interface {p0, p1, p2}, Ls3/w;->f(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public n(Ljava/lang/Throwable;)Z
    .registers 2

    iget-object p0, p0, Ls3/g;->c:Ls3/f;

    invoke-interface {p0, p1}, Ls3/w;->n(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public v(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Ls3/g;->c:Ls3/f;

    invoke-interface {p0, p1}, Ls3/w;->v(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public x(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Ls3/g;->c:Ls3/f;

    invoke-interface {p0, p1}, Ls3/w;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public y()Z
    .registers 1

    iget-object p0, p0, Ls3/g;->c:Ls3/f;

    invoke-interface {p0}, Ls3/w;->y()Z

    move-result p0

    return p0
.end method
