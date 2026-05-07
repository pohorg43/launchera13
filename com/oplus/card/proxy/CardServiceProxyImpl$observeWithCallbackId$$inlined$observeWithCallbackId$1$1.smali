.class public final Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$$inlined$observeWithCallbackId$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$$inlined$observeWithCallbackId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[B",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cb:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$$inlined$observeWithCallbackId$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$$inlined$observeWithCallbackId$1$1;->invoke([B)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke([B)V
    .registers 11

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/proxy/CardServiceProxyImpl;->INSTANCE:Lcom/oplus/card/proxy/CardServiceProxyImpl;

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v0, v1}, Lcom/oplus/card/proxy/CardServiceProxyImpl;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    sget-object v3, Lcom/oplus/card/util/CardScope;->INSTANCE:Lcom/oplus/card/util/CardScope;

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {v0}, Lcom/oplus/card/util/DispatchersUtil;->main()Lq3/b0;

    move-result-object v4

    new-instance v6, Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$$inlined$observeWithCallbackId$1$1$1;

    iget-object p0, p0, Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$$inlined$observeWithCallbackId$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$$inlined$observeWithCallbackId$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/protobuf/nano/MessageNano;Lb3/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method
