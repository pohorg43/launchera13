.class public interface abstract Lcom/oplus/card/manager/domain/ICardManagerProxy;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract createUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/UIData;",
            "Ly2/p;",
            ">;III)V"
        }
    .end annotation
.end method

.method public abstract destroyUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/UIData;",
            "Ly2/p;",
            ">;III)V"
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
            "Ly2/p;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract replaceUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/UIData;",
            "Ly2/p;",
            ">;III)V"
        }
    .end annotation
.end method

.method public abstract requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;III)V
.end method

.method public abstract setupConfigGetterCallback(Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;)V
.end method

.method public abstract stopObserveUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/UIData;",
            "Ly2/p;",
            ">;III)V"
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
            "Ly2/p;",
            ">;)V"
        }
    .end annotation
.end method
