.class final Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.card.proxy.CardServiceProxyImpl$stopObserveWithCallbackId$2"
    f = "CardServiceProxyImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/proxy/CardServiceProxyImpl;->stopObserveWithCallbackId(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)Ljava/lang/Object;
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
.field public final synthetic $callbackId:Ljava/lang/String;

.field public final synthetic $cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field public label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld3/i;-><init>(ILb3/d;)V

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

    new-instance p1, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;

    iget-object v0, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget v0, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->label:I

    if-nez v0, :cond_49

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/oplus/card/proxy/CardServiceProxyImplKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/oplus/card/proxy/CardServiceProxyImpl;->INSTANCE:Lcom/oplus/card/proxy/CardServiceProxyImpl;

    invoke-virtual {v0}, Lcom/oplus/card/proxy/CardServiceProxyImpl;->getObserveMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0}, Lcom/oplus/card/proxy/CardServiceProxyImpl;->getObserveMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_29

    goto :goto_46

    :cond_29
    iget-object p0, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    sget-object p1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v0, "stopObserveWithCallbackId: callbackId = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/server/CardServiceProxyManager;->INSTANCE:Lcom/oplus/card/server/CardServiceProxyManager;

    invoke-virtual {p0}, Lcom/oplus/card/server/CardServiceProxyManager;->getCardServiceProxy()Lcom/oplus/channel/server/ClientProxy;

    move-result-object v0

    if-nez v0, :cond_3f

    goto :goto_46

    :cond_3f
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oplus/channel/server/ClientProxy$DefaultImpls;->stopObserve$default(Lcom/oplus/channel/server/ClientProxy;Lkotlin/jvm/functions/Function1;ZLjava/lang/Object;ILjava/lang/Object;)V

    :cond_46
    :goto_46
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_49
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
