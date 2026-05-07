.class public final Lq3/m0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;
    .registers 5

    sget-object v0, Lq3/j0;->b:Lq3/m0;

    invoke-interface {v0, p0, p1, p2, p3}, Lq3/m0;->f(JLjava/lang/Runnable;Lb3/f;)Lq3/s0;

    move-result-object p0

    return-object p0
.end method
