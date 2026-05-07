.class public Li1/j;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lq3/i1;I)Lq3/s;
    .registers 2

    const/4 p0, 0x0

    new-instance p1, Lq3/z1;

    invoke-direct {p1, p0}, Lq3/z1;-><init>(Lq3/i1;)V

    return-object p1
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    const-string v0, "Y29tLm9uZXBsdXMubWFya2V0"

    invoke-static {v0}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs c([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_e

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1a

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lz2/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lz2/f;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_1a
    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    const-string v0, "Y29tLm9wcG8ubWFya2V0"

    invoke-static {v0}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final f(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, La3/a;

    iget-object v0, p0, La3/a;->e:La3/a;

    if-nez v0, :cond_12

    invoke-virtual {p0}, La3/a;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La3/a;->d:Z

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    const-string v0, "b3Bwbw=="

    invoke-static {v0}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    const-string v0, "Y29tLmhleXRhcC5tYXJrZXQ="

    invoke-static {v0}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    const-string v0, "Y29tLm5lYXJtZS5nYW1lY2VudGVy"

    invoke-static {v0}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final j(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final k(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string/jumbo v0, "singletonList(element)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final varargs l([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-lez v0, :cond_d

    invoke-static {p0}, Lz2/h;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_f

    :cond_d
    sget-object p0, Lz2/u;->a:Lz2/u;

    :goto_f
    return-object p0
.end method

.method public static final varargs m([Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_e

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1a

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lz2/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lz2/f;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_1a
    return-object p0
.end method

.method public static final n(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    goto :goto_1b

    :cond_f
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Li1/j;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1b

    :cond_19
    sget-object p0, Lz2/u;->a:Lz2/u;

    :goto_1b
    return-object p0
.end method

.method public static final o(F)I
    .registers 2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final p(Lb3/d;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object p0

    sget-object v0, Ly2/p;->a:Ly2/p;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lv3/g;->a(Lb3/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-void

    :catchall_b
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lq3/a;

    invoke-virtual {p1, v0}, Lq3/a;->resumeWith(Ljava/lang/Object;)V

    throw p0
.end method

.method public static q(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lb3/d;Lkotlin/jvm/functions/Function1;I)V
    .registers 5

    const/4 p3, 0x0

    :try_start_1
    invoke-static {p0, p1, p2}, Lq/d;->g(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    invoke-static {p0}, Lq/d;->l(Lb3/d;)Lb3/d;

    move-result-object p0

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-static {p0, p1, p3}, Lv3/g;->a(Lb3/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final r()V
    .registers 2

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final s(Lb3/f;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lb3/f;",
            "TV;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-TV;-",
            "Lb3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p2}, Lv3/a0;->c(Lb3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_4
    new-instance v0, Lu3/u;

    invoke-direct {v0, p4, p0}, Lu3/u;-><init>(Lb3/d;Lb3/f;)V

    const/4 v1, 0x2

    invoke-static {p3, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_21

    invoke-static {p0, p2}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    sget-object p0, Lc3/a;->a:Lc3/a;

    if-ne p1, p0, :cond_20

    const-string p0, "frame"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_20
    return-object p1

    :catchall_21
    move-exception p1

    invoke-static {p0, p2}, Lv3/a0;->a(Lb3/f;Ljava/lang/Object;)V

    throw p1
.end method
