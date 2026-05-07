.class public final Lt3/g;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Ld3/e;
    c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1"
    f = "Merge.kt"
    l = {
        0xd6,
        0xd6
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function3<",
        "Lt3/e<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lb3/d<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/d<",
            "-",
            "Lt3/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lt3/g;->d:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lt3/e;

    check-cast p3, Lb3/d;

    new-instance v0, Lt3/g;

    iget-object p0, p0, Lt3/g;->d:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, p0, p3}, Lt3/g;-><init>(Lkotlin/jvm/functions/Function2;Lb3/d;)V

    iput-object p1, v0, Lt3/g;->b:Ljava/lang/Object;

    iput-object p2, v0, Lt3/g;->c:Ljava/lang/Object;

    sget-object p0, Ly2/p;->a:Ly2/p;

    invoke-virtual {v0, p0}, Lt3/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lt3/g;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    if-eq v1, v3, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_43

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    iget-object v1, p0, Lt3/g;->b:Ljava/lang/Object;

    check-cast v1, Lt3/e;

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_37

    :cond_20
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lt3/g;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lt3/e;

    iget-object p1, p0, Lt3/g;->c:Ljava/lang/Object;

    iget-object v4, p0, Lt3/g;->d:Lkotlin/jvm/functions/Function2;

    iput-object v1, p0, Lt3/g;->b:Ljava/lang/Object;

    iput v3, p0, Lt3/g;->a:I

    invoke-interface {v4, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_37

    return-object v0

    :cond_37
    :goto_37
    const/4 v3, 0x0

    iput-object v3, p0, Lt3/g;->b:Ljava/lang/Object;

    iput v2, p0, Lt3/g;->a:I

    invoke-interface {v1, p1, p0}, Lt3/e;->emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_43

    return-object v0

    :cond_43
    :goto_43
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
