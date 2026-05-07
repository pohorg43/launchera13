.class public interface abstract Lcom/oplus/card/manager/domain/ICardManager;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract allocateCardId(I)I
.end method

.method public abstract callReplaceUIDataChannel(IIILcom/oplus/card/manager/domain/model/CardModel;)V
.end method

.method public abstract createCard(IIILcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/card/manager/domain/model/CardModel;
.end method

.method public abstract deleteCardId(III)V
.end method

.method public abstract destroyCard(III)V
.end method

.method public abstract getShowingTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract monitorFinishInitEvent(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerChangeCardEventCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveCardInfos(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterChangeCardEventCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
