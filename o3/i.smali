.class public Lo3/i;
.super Lq/d;
.source ""


# direct methods
.method public static final q(Ljava/util/Iterator;)Lo3/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lo3/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo3/i$a;

    invoke-direct {v1, p0}, Lo3/i$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, v1, Lo3/a;

    if-eqz p0, :cond_12

    goto :goto_18

    :cond_12
    new-instance p0, Lo3/a;

    invoke-direct {p0, v1}, Lo3/a;-><init>(Lo3/e;)V

    move-object v1, p0

    :goto_18
    return-object v1
.end method
