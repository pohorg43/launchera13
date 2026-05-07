.class public final Lu3/i;
.super Lu3/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu3/h<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lt3/d;Lb3/f;ILs3/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/d<",
            "+TT;>;",
            "Lb3/f;",
            "I",
            "Ls3/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lu3/h;-><init>(Lt3/d;Lb3/f;ILs3/e;)V

    return-void
.end method


# virtual methods
.method public d(Lb3/f;ILs3/e;)Lu3/f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "I",
            "Ls3/e;",
            ")",
            "Lu3/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lu3/i;

    iget-object p0, p0, Lu3/h;->d:Lt3/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lu3/i;-><init>(Lt3/d;Lb3/f;ILs3/e;)V

    return-object v0
.end method

.method public e(Lt3/e;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e<",
            "-TT;>;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lu3/h;->d:Lt3/d;

    invoke-interface {p0, p1, p2}, Lt3/d;->a(Lt3/e;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_b

    return-object p0

    :cond_b
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
