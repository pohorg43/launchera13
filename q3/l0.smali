.class public Lq3/l0;
.super Lq3/a;
.source ""

# interfaces
.implements Lq3/k0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a<",
        "TT;>;",
        "Lq3/k0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb3/f;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lq3/a;-><init>(Lb3/f;ZZ)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lq3/n1;->P()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lq3/f1;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    instance-of v0, p0, Lq3/u;

    if-nez v0, :cond_13

    invoke-static {p0}, Lq3/o1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_13
    check-cast p0, Lq3/u;

    iget-object p0, p0, Lq3/u;->a:Ljava/lang/Throwable;

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This job has not completed yet"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
