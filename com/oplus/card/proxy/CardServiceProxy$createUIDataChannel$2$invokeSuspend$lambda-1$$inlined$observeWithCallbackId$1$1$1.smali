.class public final Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.card.proxy.CardServiceProxyImpl$observeWithCallbackId$3$callback$1$1"
    f = "CardServiceProxyImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1;->invoke([B)V
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
.field public final synthetic $cb:Lkotlin/jvm/functions/Function1;

.field public final synthetic $data:Lcom/google/protobuf/nano/MessageNano;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/google/protobuf/nano/MessageNano;Lb3/d;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;->$data:Lcom/google/protobuf/nano/MessageNano;

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

    new-instance p1, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;

    iget-object v0, p0, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;->$data:Lcom/google/protobuf/nano/MessageNano;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/protobuf/nano/MessageNano;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;->label:I

    if-nez v0, :cond_11

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2$invokeSuspend$lambda-1$$inlined$observeWithCallbackId$1$1$1;->$data:Lcom/google/protobuf/nano/MessageNano;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
