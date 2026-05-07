.class final Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.card.proxy.CardServiceProxy$destroyUIDataChannel$2"
    f = "CardServiceProxy.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/proxy/CardServiceProxy;->destroyUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
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

.field public final synthetic $uiDataCallback:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/oplus/card/manager/domain/model/nano/UIDataProto;",
            "Ly2/p;",
            ">;>;"
        }
    .end annotation
.end field

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/oplus/card/manager/domain/model/nano/UIDataProto;",
            "Ly2/p;",
            ">;>;",
            "Ljava/lang/String;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->$uiDataCallback:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->$callbackId:Ljava/lang/String;

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

    new-instance p1, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;

    iget-object v0, p0, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->$uiDataCallback:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->$callbackId:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->$uiDataCallback:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    if-nez p1, :cond_21

    goto :goto_2e

    :cond_21
    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->$callbackId:Ljava/lang/String;

    sget-object v3, Lcom/oplus/card/proxy/CardServiceProxyImpl;->INSTANCE:Lcom/oplus/card/proxy/CardServiceProxyImpl;

    iput v2, p0, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;->label:I

    invoke-virtual {v3, v1, p1, p0}, Lcom/oplus/card/proxy/CardServiceProxyImpl;->unObserveWithCallbackId(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2e

    return-object v0

    :cond_2e
    :goto_2e
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
