.class public interface abstract Lcom/android/launcher3/dragndrop/IDragCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract addCardToLauncher(I)V
.end method

.method public abstract checkoutAssistantAllowDrag(Lcom/android/launcher3/dragndrop/DragCardInfo;)I
.end method

.method public abstract getSingleCardNum(I)I
.end method

.method public abstract notifyStartWidgetDrag(Lcom/android/launcher3/dragndrop/DragCardInfo;)V
.end method

.method public abstract notifyWidgetDragEnd(Lcom/android/launcher3/dragndrop/DragResultInfo;)V
.end method

.method public abstract onEditStateChanged(Z)V
.end method

.method public abstract onStartWidgetDrag(Lcom/android/launcher3/dragndrop/DragCardInfo;)V
.end method

.method public abstract onSyncEvent(I)V
.end method

.method public abstract onWidgetDragEnd(Lcom/android/launcher3/dragndrop/DragResultInfo;)V
.end method

.method public abstract receiveCardInfoList(Lcom/android/launcher3/dragndrop/CardInfoList;)V
.end method

.method public abstract requestBindAppWidgetPermission(Ljava/lang/String;)Z
.end method

.method public abstract sendCardInfoList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ">;)V"
        }
    .end annotation
.end method
