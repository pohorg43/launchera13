.class final Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.card.proxy.CardServiceProxy$requestInitConfig$1"
    f = "CardServiceProxy.kt"
    l = {
        0x5d
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/proxy/CardServiceProxy;->requestInitConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public label:I


# direct methods
.method public constructor <init>(Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 3
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

    new-instance p0, Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;

    invoke-direct {p0, p2}, Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;-><init>(Lb3/d;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_46

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "CardServiceProxy,requestInitConfig"

    invoke-virtual {p1, v1}, Lcom/oplus/card/util/LogD;->fileLog(Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/card/proxy/CardServiceProxyImpl;->INSTANCE:Lcom/oplus/card/proxy/CardServiceProxyImpl;

    new-instance v4, Lcom/oplus/card/manager/domain/model/CardAction;

    const/4 p1, 0x5

    new-array v1, v2, [Ly2/i;

    const/4 v5, 0x0

    new-instance v6, Ly2/i;

    const-string v7, "configuration_list_key"

    const-string v8, "publish_configuration_list"

    invoke-direct {v6, v7, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v5

    invoke-static {v1}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v4, p1, v1}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    iput v2, p0, Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;->label:I

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/card/proxy/CardServiceProxyImpl;->sendMessageToCardServer(Lcom/oplus/card/manager/domain/model/CardAction;IIILb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_46

    return-object v0

    :cond_46
    :goto_46
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
