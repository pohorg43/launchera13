.class public Lq3/y1;
.super Lq3/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq3/a<",
        "Ly2/p;",
        ">;"
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
.method public Q(Ljava/lang/Throwable;)Z
    .registers 2

    iget-object p0, p0, Lq3/a;->b:Lb3/f;

    invoke-static {p0, p1}, Li1/i;->g(Lb3/f;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method
