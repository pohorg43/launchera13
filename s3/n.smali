.class public Ls3/n;
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

    return-void
.end method


# virtual methods
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-super {p0, p1}, Ls3/c;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ls3/b;->b:Lv3/y;

    if-ne v0, v1, :cond_9

    return-object v1

    :cond_9
    sget-object v1, Ls3/b;->c:Lv3/y;

    if-ne v0, v1, :cond_30

    iget-object v1, p0, Ls3/c;->b:Lv3/j;

    new-instance v2, Ls3/c$a;

    invoke-direct {v2, p1}, Ls3/c$a;-><init>(Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {v1}, Lv3/l;->l()Lv3/l;

    move-result-object v0

    instance-of v3, v0, Ls3/t;

    if-eqz v3, :cond_1f

    check-cast v0, Ls3/t;

    goto :goto_26

    :cond_1f
    invoke-virtual {v0, v2, v1}, Lv3/l;->g(Lv3/l;Lv3/l;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_26
    if-nez v0, :cond_2b

    sget-object p0, Ls3/b;->b:Lv3/y;

    return-object p0

    :cond_2b
    instance-of v1, v0, Ls3/j;

    if-eqz v1, :cond_0

    return-object v0

    :cond_30
    instance-of p0, v0, Ls3/j;

    if-eqz p0, :cond_35

    return-object v0

    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid offerInternal result "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final q()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public t(Ljava/lang/Object;Ls3/j;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls3/j<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_4f

    :cond_4
    instance-of v1, p1, Ljava/util/ArrayList;

    if-nez v1, :cond_20

    check-cast p1, Ls3/v;

    instance-of v1, p1, Ls3/c$a;

    if-eqz v1, :cond_1c

    iget-object p0, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_13

    goto :goto_4f

    :cond_13
    check-cast p1, Ls3/c$a;

    iget-object p1, p1, Ls3/c$a;->d:Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lv3/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lv3/e0;)Lv3/e0;

    move-result-object v0

    goto :goto_4f

    :cond_1c
    invoke-virtual {p1, p2}, Ls3/v;->u(Ls3/j;)V

    goto :goto_4f

    :cond_20
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4f

    move-object v2, v0

    :goto_2b
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/v;

    instance-of v4, v1, Ls3/c$a;

    if-eqz v4, :cond_46

    iget-object v4, p0, Ls3/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez v4, :cond_3d

    move-object v2, v0

    goto :goto_49

    :cond_3d
    check-cast v1, Ls3/c$a;

    iget-object v1, v1, Ls3/c$a;->d:Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lv3/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lv3/e0;)Lv3/e0;

    move-result-object v2

    goto :goto_49

    :cond_46
    invoke-virtual {v1, p2}, Ls3/v;->u(Ls3/j;)V

    :goto_49
    if-gez v3, :cond_4d

    move-object v0, v2

    goto :goto_4f

    :cond_4d
    move v1, v3

    goto :goto_2b

    :cond_4f
    :goto_4f
    if-nez v0, :cond_52

    return-void

    :cond_52
    throw v0
.end method
