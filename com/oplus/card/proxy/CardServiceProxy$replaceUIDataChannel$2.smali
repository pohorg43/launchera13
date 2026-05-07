.class final Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.card.proxy.CardServiceProxy$replaceUIDataChannel$2"
    f = "CardServiceProxy.kt"
    l = {
        0xf8,
        0xfb
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/proxy/CardServiceProxy;->replaceUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
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

.field public final synthetic $cardId:I

.field public final synthetic $hostId:I

.field public final synthetic $type:I

.field public final synthetic $uiDataCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/oplus/card/manager/domain/model/nano/UIDataProto;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lcom/oplus/card/proxy/CardServiceProxy;


# direct methods
.method public constructor <init>(Lcom/oplus/card/proxy/CardServiceProxy;IIILjava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/proxy/CardServiceProxy;",
            "III",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/nano/UIDataProto;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->this$0:Lcom/oplus/card/proxy/CardServiceProxy;

    iput p2, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$type:I

    iput p3, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$cardId:I

    iput p4, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$hostId:I

    iput-object p5, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$callbackId:Ljava/lang/String;

    iput-object p6, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 11
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

    new-instance p1, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;

    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->this$0:Lcom/oplus/card/proxy/CardServiceProxy;

    iget v2, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$type:I

    iget v3, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$cardId:I

    iget v4, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$hostId:I

    iget-object v5, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$callbackId:Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;-><init>(Lcom/oplus/card/proxy/CardServiceProxy;IIILjava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1d

    if-eq v1, v3, :cond_19

    if-ne v1, v2, :cond_11

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_7f

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_61

    :cond_1d
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->this$0:Lcom/oplus/card/proxy/CardServiceProxy;

    invoke-virtual {p1}, Lcom/oplus/card/proxy/CardServiceProxy;->getConfigGetterCallback()Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;

    move-result-object p1

    if-nez p1, :cond_29

    goto :goto_35

    :cond_29
    iget v1, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$type:I

    iget v5, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$cardId:I

    iget v6, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$hostId:I

    invoke-interface {p1, v1, v5, v6}, Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;->getSeedConfig(III)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_37

    :goto_35
    move-object p1, v4

    goto :goto_63

    :cond_37
    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$callbackId:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    sget-object v6, Lcom/oplus/card/proxy/CardServiceProxyImpl;->INSTANCE:Lcom/oplus/card/proxy/CardServiceProxyImpl;

    const-string v6, "<this>"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lp3/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v6, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {v6}, Lcom/oplus/card/util/DispatchersUtil;->cardServer()Lq3/b0;

    move-result-object v6

    new-instance v7, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2$invokeSuspend$lambda-0$$inlined$replaceObserveWithCallbackId$1;

    invoke-direct {v7, v1, v5, p1, v4}, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2$invokeSuspend$lambda-0$$inlined$replaceObserveWithCallbackId$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;[BLb3/d;)V

    iput v3, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->label:I

    invoke-static {v6, v7, p0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_61

    return-object v0

    :cond_61
    :goto_61
    sget-object p1, Ly2/p;->a:Ly2/p;

    :goto_63
    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$callbackId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    sget-object v3, Lcom/oplus/card/proxy/CardServiceProxyImpl;->INSTANCE:Lcom/oplus/card/proxy/CardServiceProxyImpl;

    sget-object v3, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {v3}, Lcom/oplus/card/util/DispatchersUtil;->cardServer()Lq3/b0;

    move-result-object v3

    new-instance v5, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2$invokeSuspend$lambda-1$$inlined$replaceObserveWithCallbackId$1;

    invoke-direct {v5, p1, v1, v4, v4}, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2$invokeSuspend$lambda-1$$inlined$replaceObserveWithCallbackId$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;[BLb3/d;)V

    iput v2, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;->label:I

    invoke-static {v3, v5, p0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7f

    return-object v0

    :cond_7f
    :goto_7f
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
