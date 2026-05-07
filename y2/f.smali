.class public Ly2/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function0;)Ly2/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Ly2/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly2/l;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Ly2/l;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static final b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly2/g;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Ly2/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "mode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_28

    const/4 v1, 0x1

    if-eq p0, v1, :cond_22

    if-ne p0, v0, :cond_1c

    new-instance p0, Ly2/q;

    invoke-direct {p0, p1}, Ly2/q;-><init>(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2e

    :cond_1c
    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :cond_22
    new-instance p0, Ly2/k;

    invoke-direct {p0, p1}, Ly2/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2e

    :cond_28
    new-instance p0, Ly2/l;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ly2/l;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;I)V

    :goto_2e
    return-object p0
.end method
