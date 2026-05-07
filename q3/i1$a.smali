.class public final Lq3/i1$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lq3/i1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .registers 4

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lq3/i1;->b(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic b(Lq3/i1;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lq3/s0;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_a

    const/4 p2, 0x1

    :cond_a
    invoke-interface {p0, p1, p2, p3}, Lq3/i1;->g(ZZLkotlin/jvm/functions/Function1;)Lq3/s0;

    move-result-object p0

    return-object p0
.end method
