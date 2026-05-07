.class public interface abstract Lcom/oplus/card/config/domain/ICardConfigInfoManager;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getAllConfigListForShop(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCardConfig(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
.end method

.method public abstract getCardConfigMapSize()I
.end method

.method public abstract getOperatingRecommendForShop(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/OperatingRecommendInfo;",
            ">;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSeedCardConfig(Ljava/lang/String;I)Lcom/oplus/card/config/domain/model/CardConfigInfo;
.end method

.method public abstract initPullConfig()V
.end method

.method public abstract isCardConfigListInit()Z
.end method

.method public abstract registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerServiceProxyCardCallback()V
.end method

.method public abstract unRegisterServiceProxyCardCallback()V
.end method

.method public abstract unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation
.end method
