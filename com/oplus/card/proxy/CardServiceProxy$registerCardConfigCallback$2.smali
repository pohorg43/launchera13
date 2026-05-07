.class final Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.card.proxy.CardServiceProxy$registerCardConfigCallback$2"
    f = "CardServiceProxy.kt"
    l = {
        0xf9
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/proxy/CardServiceProxy;->registerCardConfigCallback(Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;)V
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
.field public final synthetic $configCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;->$configCallback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld3/i;-><init>(ILb3/d;)V

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

    new-instance p1, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;

    iget-object p0, p0, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;->$configCallback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, p0, p2}, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;-><init>(Lkotlin/jvm/functions/Function1;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    sget-object p1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "CardServiceProxy,registerCardConfigCallback"

    invoke-virtual {p1, v1}, Lcom/oplus/card/util/LogD;->fileLog(Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/card/proxy/CardServiceProxy;->Companion:Lcom/oplus/card/proxy/CardServiceProxy$Companion;

    invoke-virtual {p1, v2}, Lcom/oplus/card/proxy/CardServiceProxy$Companion;->setMIsRegisterCardConfigCallback(Z)V

    sget-object p1, Lcom/oplus/card/proxy/CardServiceProxyImpl;->INSTANCE:Lcom/oplus/card/proxy/CardServiceProxyImpl;

    iget-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;->$configCallback:Lkotlin/jvm/functions/Function1;

    sget-object v1, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {v1}, Lcom/oplus/card/util/DispatchersUtil;->cardServer()Lq3/b0;

    move-result-object v1

    new-instance v3, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2$invokeSuspend$$inlined$observeWithCallbackId$1;

    const-string v4, "card_config_change_to_launcher"

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5, v5}, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2$invokeSuspend$$inlined$observeWithCallbackId$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;[BLb3/d;)V

    iput v2, p0, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;->label:I

    invoke-static {v1, v3, p0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3f

    return-object v0

    :cond_3f
    :goto_3f
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
