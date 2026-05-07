.class public final Lu3/g;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2"
    f = "ChannelFlow.kt"
    l = {
        0x98
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lt3/e<",
        "Ljava/lang/Object;",
        ">;",
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

.field public final synthetic c:Lu3/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/h<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu3/h;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/h<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lb3/d<",
            "-",
            "Lu3/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lu3/g;->c:Lu3/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance v0, Lu3/g;

    iget-object p0, p0, Lu3/g;->c:Lu3/h;

    invoke-direct {v0, p0, p2}, Lu3/g;-><init>(Lu3/h;Lb3/d;)V

    iput-object p1, v0, Lu3/g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lt3/e;

    check-cast p2, Lb3/d;

    new-instance v0, Lu3/g;

    iget-object p0, p0, Lu3/g;->c:Lu3/h;

    invoke-direct {v0, p0, p2}, Lu3/g;-><init>(Lu3/h;Lb3/d;)V

    iput-object p1, v0, Lu3/g;->b:Ljava/lang/Object;

    sget-object p0, Ly2/p;->a:Ly2/p;

    invoke-virtual {v0, p0}, Lu3/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lu3/g;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_27

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lu3/g;->b:Ljava/lang/Object;

    check-cast p1, Lt3/e;

    iget-object v1, p0, Lu3/g;->c:Lu3/h;

    iput v2, p0, Lu3/g;->a:I

    invoke-virtual {v1, p1, p0}, Lu3/h;->e(Lt3/e;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
