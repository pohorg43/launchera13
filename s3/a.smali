.class public abstract Ls3/a;
.super Ls3/c;
.source ""

# interfaces
.implements Ls3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/a$e;,
        Ls3/a$a;,
        Ls3/a$b;,
        Ls3/a$c;,
        Ls3/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls3/c<",
        "TE;>;",
        "Ls3/f<",
        "TE;>;"
    }
.end annotation


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

    invoke-direct {p0, p1}, Ls3/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/concurrent/CancellationException;)V
    .registers 4

    invoke-virtual {p0}, Ls3/a;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_1c

    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p0, p1}, Ls3/c;->n(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ls3/a;->s(Z)V

    return-void
.end method

.method public final c(Lb3/d;)Ljava/lang/Object;
    .registers 8
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

    sget-object v0, Lc3/a;->a:Lc3/a;

    instance-of v1, p1, Ls3/a$g;

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Ls3/a$g;

    iget v2, v1, Ls3/a$g;->c:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Ls3/a$g;->c:I

    goto :goto_1a

    :cond_15
    new-instance v1, Ls3/a$g;

    invoke-direct {v1, p0, p1}, Ls3/a$g;-><init>(Ls3/a;Lb3/d;)V

    :goto_1a
    iget-object p1, v1, Ls3/a$g;->a:Ljava/lang/Object;

    iget v2, v1, Ls3/a$g;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_30

    if-ne v2, v3, :cond_28

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_a5

    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ls3/a;->u()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Ls3/b;->d:Lv3/y;

    if-eq p1, v2, :cond_49

    instance-of p0, p1, Ls3/j;

    if-eqz p0, :cond_48

    check-cast p1, Ls3/j;

    iget-object p0, p1, Ls3/j;->d:Ljava/lang/Throwable;

    new-instance p1, Ls3/i$a;

    invoke-direct {p1, p0}, Ls3/i$a;-><init>(Ljava/lang/Throwable;)V

    :cond_48
    return-object p1

    :cond_49
    iput v3, v1, Ls3/a$g;->c:I

    invoke-static {v1}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object p1

    invoke-static {p1}, Lq/d;->k(Lb3/d;)Lq3/l;

    move-result-object p1

    iget-object v2, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez v2, :cond_5d

    new-instance v2, Ls3/a$b;

    invoke-direct {v2, p1, v3}, Ls3/a$b;-><init>(Lq3/k;I)V

    goto :goto_64

    :cond_5d
    new-instance v2, Ls3/a$c;

    iget-object v4, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, p1, v3, v4}, Ls3/a$c;-><init>(Lq3/k;ILkotlin/jvm/functions/Function1;)V

    :cond_64
    :goto_64
    invoke-virtual {p0, v2}, Ls3/a;->o(Ls3/r;)Z

    move-result v4

    if-eqz v4, :cond_73

    new-instance v3, Ls3/a$e;

    invoke-direct {v3, p0, v2}, Ls3/a$e;-><init>(Ls3/a;Ls3/r;)V

    invoke-virtual {p1, v3}, Lq3/l;->j(Lkotlin/jvm/functions/Function1;)V

    goto :goto_97

    :cond_73
    invoke-virtual {p0}, Ls3/a;->u()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ls3/j;

    if-eqz v5, :cond_81

    check-cast v4, Ls3/j;

    invoke-virtual {v2, v4}, Ls3/a$b;->t(Ls3/j;)V

    goto :goto_97

    :cond_81
    sget-object v5, Ls3/b;->d:Lv3/y;

    if-eq v4, v5, :cond_64

    iget p0, v2, Ls3/a$b;->e:I

    if-ne p0, v3, :cond_8f

    new-instance p0, Ls3/i;

    invoke-direct {p0, v4}, Ls3/i;-><init>(Ljava/lang/Object;)V

    goto :goto_90

    :cond_8f
    move-object p0, v4

    :goto_90
    invoke-virtual {v2, v4}, Ls3/r;->s(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lq3/l;->C(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :goto_97
    invoke-virtual {p1}, Lq3/l;->t()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a2

    const-string p0, "frame"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a2
    if-ne p1, v0, :cond_a5

    return-object v0

    :cond_a5
    :goto_a5
    check-cast p1, Ls3/i;

    iget-object p0, p1, Ls3/i;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public l()Ls3/t;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls3/t<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Ls3/c;->l()Ls3/t;

    move-result-object p0

    if-eqz p0, :cond_8

    instance-of v0, p0, Ls3/j;

    :cond_8
    return-object p0
.end method

.method public o(Ls3/r;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/r<",
            "-TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ls3/a;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ls3/c;->b:Lv3/j;

    :cond_9
    invoke-virtual {v0}, Lv3/l;->l()Lv3/l;

    move-result-object p0

    instance-of v2, p0, Ls3/v;

    xor-int/2addr v2, v1

    if-nez v2, :cond_13

    goto :goto_35

    :cond_13
    invoke-virtual {p0, p1, v0}, Lv3/l;->g(Lv3/l;Lv3/l;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_36

    :cond_1a
    iget-object v0, p0, Ls3/c;->b:Lv3/j;

    new-instance v2, Ls3/a$f;

    invoke-direct {v2, p1, p0}, Ls3/a$f;-><init>(Lv3/l;Ls3/a;)V

    :goto_21
    invoke-virtual {v0}, Lv3/l;->l()Lv3/l;

    move-result-object p0

    instance-of v3, p0, Ls3/v;

    xor-int/2addr v3, v1

    if-nez v3, :cond_2b

    goto :goto_35

    :cond_2b
    invoke-virtual {p0, p1, v0, v2}, Lv3/l;->r(Lv3/l;Lv3/l;Lv3/l$a;)I

    move-result p0

    if-eq p0, v1, :cond_36

    const/4 v3, 0x2

    if-eq p0, v3, :cond_35

    goto :goto_21

    :cond_35
    :goto_35
    const/4 v1, 0x0

    :cond_36
    :goto_36
    return v1
.end method

.method public abstract p()Z
.end method

.method public abstract q()Z
.end method

.method public r()Z
    .registers 4

    iget-object v0, p0, Ls3/c;->b:Lv3/j;

    invoke-virtual {v0}, Lv3/l;->k()Lv3/l;

    move-result-object v0

    instance-of v1, v0, Ls3/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Ls3/j;

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-nez v0, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p0, v0}, Ls3/c;->h(Ls3/j;)V

    move-object v2, v0

    :goto_16
    if-eqz v2, :cond_20

    invoke-virtual {p0}, Ls3/a;->q()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public s(Z)V
    .registers 5

    invoke-virtual {p0}, Ls3/c;->g()Ls3/j;

    move-result-object p1

    if-eqz p1, :cond_24

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1}, Lv3/l;->l()Lv3/l;

    move-result-object v1

    instance-of v2, v1, Lv3/j;

    if-eqz v2, :cond_13

    invoke-virtual {p0, v0, p1}, Ls3/a;->t(Ljava/lang/Object;Ls3/j;)V

    return-void

    :cond_13
    invoke-virtual {v1}, Lv3/l;->p()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v1}, Lv3/l;->m()V

    goto :goto_7

    :cond_1d
    check-cast v1, Ls3/v;

    invoke-static {v0, v1}, Lv3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot happen"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public t(Ljava/lang/Object;Ls3/j;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls3/j<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_27

    :cond_3
    instance-of p0, p1, Ljava/util/ArrayList;

    if-nez p0, :cond_d

    check-cast p1, Ls3/v;

    invoke-virtual {p1, p2}, Ls3/v;->u(Ls3/j;)V

    goto :goto_27

    :cond_d
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_27

    :goto_17
    add-int/lit8 v0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls3/v;

    invoke-virtual {p0, p2}, Ls3/v;->u(Ls3/j;)V

    if-gez v0, :cond_25

    goto :goto_27

    :cond_25
    move p0, v0

    goto :goto_17

    :cond_27
    :goto_27
    return-void
.end method

.method public u()Ljava/lang/Object;
    .registers 3

    :goto_0
    invoke-virtual {p0}, Ls3/c;->m()Ls3/v;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object p0, Ls3/b;->d:Lv3/y;

    return-object p0

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls3/v;->v(Lv3/l$b;)Lv3/y;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ls3/v;->s()V

    invoke-virtual {v0}, Ls3/v;->t()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-virtual {v0}, Ls3/v;->w()V

    goto :goto_0
.end method
