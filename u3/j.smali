.class public final Lu3/j;
.super Lu3/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lu3/h<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final e:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lt3/e<",
            "-TR;>;TT;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lt3/d;Lb3/f;ILs3/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lt3/e<",
            "-TR;>;-TT;-",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lt3/d<",
            "+TT;>;",
            "Lb3/f;",
            "I",
            "Ls3/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, Lu3/h;-><init>(Lt3/d;Lb3/f;ILs3/e;)V

    iput-object p1, p0, Lu3/j;->e:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lt3/d;Lb3/f;ILs3/e;I)V
    .registers 8

    and-int/lit8 p3, p6, 0x4

    const/4 p5, 0x0

    if-eqz p3, :cond_8

    sget-object p3, Lb3/h;->a:Lb3/h;

    goto :goto_9

    :cond_8
    move-object p3, p5

    :goto_9
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_e

    const/4 p4, -0x2

    :cond_e
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_14

    sget-object p5, Ls3/e;->a:Ls3/e;

    :cond_14
    invoke-direct {p0, p2, p3, p4, p5}, Lu3/h;-><init>(Lt3/d;Lb3/f;ILs3/e;)V

    iput-object p1, p0, Lu3/j;->e:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public d(Lb3/f;ILs3/e;)Lu3/f;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/f;",
            "I",
            "Ls3/e;",
            ")",
            "Lu3/f<",
            "TR;>;"
        }
    .end annotation

    new-instance v6, Lu3/j;

    iget-object v1, p0, Lu3/j;->e:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lu3/h;->d:Lt3/d;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lu3/j;-><init>(Lkotlin/jvm/functions/Function3;Lt3/d;Lb3/f;ILs3/e;)V

    return-object v6
.end method

.method public e(Lt3/e;Lb3/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e<",
            "-TR;>;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lu3/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lu3/j$a;-><init>(Lu3/j;Lt3/e;Lb3/d;)V

    invoke-static {v0, p2}, Lq3/c1;->b(Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_f

    return-object p0

    :cond_f
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
