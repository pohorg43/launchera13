.class final Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$configCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/proxy/CardServiceProxy;->registerCardConfigCallback(Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cb:Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;


# direct methods
.method public constructor <init>(Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$configCallback$1;->$cb:Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;

    invoke-virtual {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$configCallback$1;->invoke(Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$configCallback$1;->$cb:Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;

    invoke-static {p1}, Lcom/oplus/card/proxy/util/ProtoDataConversionUtilKt;->toListCardConfigInfo(Lcom/oplus/cardservice/valueobject/model/nano/CardConfigInfoListProto;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;->onCardConfigChange(Ljava/util/List;)V

    return-void
.end method
