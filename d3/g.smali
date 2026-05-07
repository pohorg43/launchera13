.class public abstract Ld3/g;
.super Ld3/a;
.source ""


# direct methods
.method public constructor <init>(Lb3/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ld3/a;-><init>(Lb3/d;)V

    if-eqz p1, :cond_1f

    invoke-interface {p1}, Lb3/d;->getContext()Lb3/f;

    move-result-object p0

    sget-object p1, Lb3/h;->a:Lb3/h;

    if-ne p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_13

    goto :goto_1f

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public getContext()Lb3/f;
    .registers 1

    sget-object p0, Lb3/h;->a:Lb3/h;

    return-object p0
.end method
