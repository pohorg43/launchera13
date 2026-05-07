.class public final Lq3/z;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lb3/f;Lb3/f;Z)Lb3/f;
    .registers 6

    invoke-static {p0}, Lq3/z;->b(Lb3/f;)Z

    move-result v0

    invoke-static {p1}, Lq3/z;->b(Lb3/f;)Z

    move-result v1

    if-nez v0, :cond_11

    if-nez v1, :cond_11

    invoke-interface {p0, p1}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p1, Lb3/h;->a:Lb3/h;

    new-instance v2, Lq3/z$b;

    invoke-direct {v2, v0, p2}, Lq3/z$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    invoke-interface {p0, p1, v2}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/f;

    if-eqz v1, :cond_33

    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lb3/f;

    sget-object v1, Lq3/z$a;->a:Lq3/z$a;

    invoke-interface {p2, p1, v1}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_33
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lb3/f;

    invoke-interface {p0, p1}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lb3/f;)Z
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lq3/z$c;->a:Lq3/z$c;

    invoke-interface {p0, v0, v1}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final c(Lq3/f0;Lb3/f;)Lb3/f;
    .registers 3

    invoke-interface {p0}, Lq3/f0;->getCoroutineContext()Lb3/f;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lq3/z;->a(Lb3/f;Lb3/f;Z)Lb3/f;

    move-result-object p0

    sget-object p1, Lq3/q0;->a:Lq3/b0;

    if-eq p0, p1, :cond_1b

    sget v0, Lb3/e;->A:I

    sget-object v0, Lb3/e$a;->a:Lb3/e$a;

    invoke-interface {p0, v0}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-interface {p0, p1}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    :cond_1b
    return-object p0
.end method

.method public static final d(Lb3/d;Lb3/f;Ljava/lang/Object;)Lq3/f2;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "*>;",
            "Lb3/f;",
            "Ljava/lang/Object;",
            ")",
            "Lq3/f2<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Ld3/d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Lq3/g2;->a:Lq3/g2;

    invoke-interface {p1, v0}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_14

    return-object v1

    :cond_14
    check-cast p0, Ld3/d;

    :cond_16
    instance-of v0, p0, Lq3/o0;

    if-eqz v0, :cond_1b

    goto :goto_29

    :cond_1b
    invoke-interface {p0}, Ld3/d;->getCallerFrame()Ld3/d;

    move-result-object p0

    if-nez p0, :cond_22

    goto :goto_29

    :cond_22
    instance-of v0, p0, Lq3/f2;

    if-eqz v0, :cond_16

    move-object v1, p0

    check-cast v1, Lq3/f2;

    :goto_29
    if-nez v1, :cond_2c

    goto :goto_36

    :cond_2c
    iget-object p0, v1, Lq3/f2;->d:Ljava/lang/ThreadLocal;

    new-instance v0, Ly2/i;

    invoke-direct {v0, p1, p2}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_36
    return-object v1
.end method
