.class public final Lu3/m$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lu3/m;Lb3/f;ILs3/e;ILjava/lang/Object;)Lt3/d;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    sget-object p1, Lb3/h;->a:Lb3/h;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    const/4 p2, -0x3

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_11

    sget-object p3, Ls3/e;->a:Ls3/e;

    :cond_11
    invoke-interface {p0, p1, p2, p3}, Lu3/m;->b(Lb3/f;ILs3/e;)Lt3/d;

    move-result-object p0

    return-object p0
.end method
