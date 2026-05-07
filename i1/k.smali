.class public Li1/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Y29tLm9wcG8ubWFpbi5BQ1RJT05fTEFVTkNI"

    invoke-static {v1}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Li1/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "b3Bwby9sYXVuY2g="

    invoke-static {v1}, Li1/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_53

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_53

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p0, 0x1

    return p0

    :cond_53
    return v1
.end method

.method public static final c(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p0, Lq3/u;

    if-eqz p1, :cond_c

    check-cast p0, Lq3/u;

    iget-object p0, p0, Lq3/u;->a:Ljava/lang/Throwable;

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method public static final d(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string/jumbo v0, "singleton(element)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final varargs e([Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-lez v0, :cond_d

    invoke-static {p0}, Lz2/h;->u([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_f

    :cond_d
    sget-object p0, Lz2/w;->a:Lz2/w;

    :goto_f
    return-object p0
.end method

.method public static final f(Lv3/w;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lv3/w<",
            "-TT;>;TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lb3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_14

    :catchall_c
    move-exception p1

    new-instance p2, Lq3/u;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v0}, Lq3/u;-><init>(Ljava/lang/Throwable;ZI)V

    move-object p1, p2

    :goto_14
    sget-object p2, Lc3/a;->a:Lc3/a;

    if-ne p1, p2, :cond_19

    goto :goto_2a

    :cond_19
    invoke-virtual {p0, p1}, Lq3/n1;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lq3/o1;->b:Lv3/y;

    if-ne p0, p1, :cond_22

    goto :goto_2a

    :cond_22
    instance-of p1, p0, Lq3/u;

    if-nez p1, :cond_2b

    invoke-static {p0}, Lq3/o1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_2a
    return-object p2

    :cond_2b
    check-cast p0, Lq3/u;

    iget-object p0, p0, Lq3/u;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public static final g(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_16

    new-instance v0, Lq3/v;

    invoke-direct {v0, p0, p1}, Lq3/v;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    goto :goto_16

    :cond_f
    new-instance p0, Lq3/u;

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lq3/u;-><init>(Ljava/lang/Throwable;ZI)V

    :cond_16
    :goto_16
    return-object p0
.end method

.method public static final h(JLkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lq3/f0;",
            "-",
            "Lb3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_76

    new-instance v0, Lq3/d2;

    invoke-direct {v0, p0, p1, p3}, Lq3/d2;-><init>(JLb3/d;)V

    iget-object p0, v0, Lv3/w;->c:Lb3/d;

    invoke-interface {p0}, Lb3/d;->getContext()Lb3/f;

    move-result-object p0

    invoke-static {p0}, Lp/d;->b(Lb3/f;)Lq3/m0;

    move-result-object p0

    iget-wide v1, v0, Lq3/d2;->d:J

    iget-object p1, v0, Lq3/a;->b:Lb3/f;

    invoke-interface {p0, v1, v2, v0, p1}, Lq3/m0;->f(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;

    move-result-object p0

    new-instance p1, Lq3/t0;

    invoke-direct {p1, p0}, Lq3/t0;-><init>(Lq3/s0;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Lq3/n1;->g(ZZLkotlin/jvm/functions/Function1;)Lq3/s0;

    const/4 p1, 0x2

    :try_start_28
    invoke-static {p2, p1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, v0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_33

    goto :goto_3a

    :catchall_33
    move-exception p2

    new-instance v2, Lq3/u;

    invoke-direct {v2, p2, p0, p1}, Lq3/u;-><init>(Ljava/lang/Throwable;ZI)V

    move-object p1, v2

    :goto_3a
    sget-object p2, Lc3/a;->a:Lc3/a;

    if-ne p1, p2, :cond_3f

    goto :goto_47

    :cond_3f
    invoke-virtual {v0, p1}, Lq3/n1;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lq3/o1;->b:Lv3/y;

    if-ne v2, v3, :cond_49

    :goto_47
    move-object p1, p2

    goto :goto_6e

    :cond_49
    instance-of v3, v2, Lq3/u;

    if-eqz v3, :cond_6a

    check-cast v2, Lq3/u;

    iget-object v2, v2, Lq3/u;->a:Ljava/lang/Throwable;

    instance-of v3, v2, Lq3/c2;

    if-eqz v3, :cond_5c

    move-object v3, v2

    check-cast v3, Lq3/c2;

    iget-object v3, v3, Lq3/c2;->a:Lq3/i1;

    if-eq v3, v0, :cond_5d

    :cond_5c
    move p0, v1

    :cond_5d
    if-nez p0, :cond_69

    instance-of p0, p1, Lq3/u;

    if-nez p0, :cond_64

    goto :goto_6e

    :cond_64
    check-cast p1, Lq3/u;

    iget-object p0, p1, Lq3/u;->a:Ljava/lang/Throwable;

    throw p0

    :cond_69
    throw v2

    :cond_6a
    invoke-static {v2}, Lq3/o1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_6e
    if-ne p1, p2, :cond_75

    const-string p0, "frame"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_75
    return-object p1

    :cond_76
    new-instance p0, Lq3/c2;

    const-string p1, "Timed out immediately"

    invoke-direct {p0, p1}, Lq3/c2;-><init>(Ljava/lang/String;)V

    throw p0
.end method
