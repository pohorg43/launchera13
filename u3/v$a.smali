.class public final Lu3/v$a;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1"
    f = "ChannelFlow.kt"
    l = {
        0xd4
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/v;-><init>(Lt3/e;Lb3/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "TT;",
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

.field public final synthetic c:Lt3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt3/e;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e<",
            "-TT;>;",
            "Lb3/d<",
            "-",
            "Lu3/v$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lu3/v$a;->c:Lt3/e;

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

    new-instance v0, Lu3/v$a;

    iget-object p0, p0, Lu3/v$a;->c:Lt3/e;

    invoke-direct {v0, p0, p2}, Lu3/v$a;-><init>(Lt3/e;Lb3/d;)V

    iput-object p1, v0, Lu3/v$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Lb3/d;

    new-instance v0, Lu3/v$a;

    iget-object p0, p0, Lu3/v$a;->c:Lt3/e;

    invoke-direct {v0, p0, p2}, Lu3/v$a;-><init>(Lt3/e;Lb3/d;)V

    iput-object p1, v0, Lu3/v$a;->b:Ljava/lang/Object;

    sget-object p0, Ly2/p;->a:Ly2/p;

    invoke-virtual {v0, p0}, Lu3/v$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lu3/v$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_25

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lu3/v$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lu3/v$a;->c:Lt3/e;

    iput v2, p0, Lu3/v$a;->a:I

    invoke-interface {v1, p1, p0}, Lt3/e;->emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_25

    return-object v0

    :cond_25
    :goto_25
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
