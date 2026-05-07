.class public final Ls3/p;
.super Ls3/g;
.source ""

# interfaces
.implements Ls3/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls3/g<",
        "TE;>;",
        "Ls3/q<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb3/f;Ls3/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "Ls3/f<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Ls3/g;-><init>(Lb3/f;Ls3/f;ZZ)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    invoke-super {p0}, Lq3/a;->a()Z

    move-result p0

    return p0
.end method

.method public i0(Ljava/lang/Throwable;Z)V
    .registers 4

    iget-object v0, p0, Ls3/g;->c:Ls3/f;

    invoke-interface {v0, p1}, Ls3/w;->n(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f

    if-nez p2, :cond_f

    iget-object p0, p0, Lq3/a;->b:Lb3/f;

    invoke-static {p0, p1}, Li1/i;->g(Lb3/f;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method

.method public j0(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ly2/p;

    iget-object p0, p0, Ls3/g;->c:Ls3/f;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Ls3/w$a;->a(Ls3/w;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method
