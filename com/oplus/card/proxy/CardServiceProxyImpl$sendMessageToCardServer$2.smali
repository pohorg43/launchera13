.class final Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.card.proxy.CardServiceProxyImpl$sendMessageToCardServer$2"
    f = "CardServiceProxyImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/proxy/CardServiceProxyImpl;->sendMessageToCardServer(Lcom/oplus/card/manager/domain/model/CardAction;IIILb3/d;)Ljava/lang/Object;
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
.field public final synthetic $action:Lcom/oplus/card/manager/domain/model/CardAction;

.field public final synthetic $cardId:I

.field public final synthetic $hostId:I

.field public final synthetic $type:I

.field public label:I


# direct methods
.method public constructor <init>(Lcom/oplus/card/manager/domain/model/CardAction;IIILb3/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/manager/domain/model/CardAction;",
            "III",
            "Lb3/d<",
            "-",
            "Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$action:Lcom/oplus/card/manager/domain/model/CardAction;

    iput p2, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$type:I

    iput p3, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$cardId:I

    iput p4, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$hostId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 9
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

    new-instance p1, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;

    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$action:Lcom/oplus/card/manager/domain/model/CardAction;

    iget v2, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$type:I

    iget v3, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$cardId:I

    iget v4, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$hostId:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;-><init>(Lcom/oplus/card/manager/domain/model/CardAction;IIILb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget v0, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->label:I

    if-nez v0, :cond_ae

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$type:I

    iget v1, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$cardId:I

    iget v2, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$hostId:I

    iget-object v3, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$action:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[cardType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cardId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply {\n…             }.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "requestCardAction: businessTag ="

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/server/CardServiceProxyManager;->INSTANCE:Lcom/oplus/card/server/CardServiceProxyManager;

    invoke-virtual {v0}, Lcom/oplus/card/server/CardServiceProxyManager;->getCardServiceProxy()Lcom/oplus/channel/server/ClientProxy;

    move-result-object v0

    if-nez v0, :cond_92

    const/4 p0, 0x0

    goto :goto_ad

    :cond_92
    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$action:Lcom/oplus/card/manager/domain/model/CardAction;

    iget v2, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$type:I

    iget v3, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$cardId:I

    iget p0, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;->$hostId:I

    invoke-static {v1, v2, v3, p0}, Lcom/oplus/card/proxy/util/ProtoDataConversionUtilKt;->toCardActionProto(Lcom/oplus/card/manager/domain/model/CardAction;III)Lcom/oplus/card/manager/domain/model/nano/CardActionProto;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p0

    const-string v1, "toByteArray(\n           …                        )"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, p1}, Lcom/oplus/channel/server/ClientProxy;->request([BZLjava/lang/Object;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_ad
    return-object p0

    :cond_ae
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
