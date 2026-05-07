.class public Lm1/h;
.super Lm1/b;
.source ""


# direct methods
.method public constructor <init>(Lk/m;)V
    .registers 2

    invoke-direct {p0, p1}, Lm1/b;-><init>(Lk/m;)V

    return-void
.end method

.method public static d()Lm1/h;
    .registers 3

    new-instance v0, Lm1/h;

    new-instance v1, Lm1/a;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-direct {v1, v2}, Lm1/a;-><init>(Landroid/view/Choreographer;)V

    invoke-direct {v0, v1}, Lm1/h;-><init>(Lk/m;)V

    return-object v0
.end method
