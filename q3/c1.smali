.class public final Lq3/c1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lb3/f;)Lq3/f0;
    .registers 4

    new-instance v0, Lv3/e;

    sget v1, Lq3/i1;->C:I

    sget-object v1, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {p0, v1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v1

    if-eqz v1, :cond_d

    goto :goto_17

    :cond_d
    const/4 v1, 0x0

    new-instance v2, Lq3/l1;

    invoke-direct {v2, v1}, Lq3/l1;-><init>(Lq3/i1;)V

    invoke-interface {p0, v2}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    :goto_17
    invoke-direct {v0, p0}, Lv3/e;-><init>(Lb3/f;)V

    return-object v0
.end method

.method public static final b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lq3/f0;",
            "-",
            "Lb3/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lv3/w;

    invoke-interface {p1}, Lb3/d;->getContext()Lb3/f;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lv3/w;-><init>(Lb3/f;Lb3/d;)V

    invoke-static {v0, v0, p0}, Li1/k;->f(Lv3/w;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lc3/a;->a:Lc3/a;

    if-ne p0, v0, :cond_16

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_16
    return-object p0
.end method
