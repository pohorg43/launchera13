.class final Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$uiDataCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/proxy/CardServiceProxy;->replaceUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/oplus/card/manager/domain/model/nano/UIDataProto;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cardName:Ljava/lang/String;

.field public final synthetic $cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/oplus/card/manager/domain/model/UIData;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/UIData;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$uiDataCallback$1;->$cardName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$uiDataCallback$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/card/manager/domain/model/nano/UIDataProto;

    invoke-virtual {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$uiDataCallback$1;->invoke(Lcom/oplus/card/manager/domain/model/nano/UIDataProto;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/card/manager/domain/model/nano/UIDataProto;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$uiDataCallback$1;->$cardName:Ljava/lang/String;

    const-string v2, "replaceUIDataChannel: received data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$uiDataCallback$1;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lcom/oplus/card/proxy/util/ProtoDataConversionUtilKt;->toUiData(Lcom/oplus/card/manager/domain/model/nano/UIDataProto;)Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
