.class public interface abstract Lcom/android/launcher3/card/feedback/IDragFeedback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/feedback/IDragFeedback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract dragFeedbackEnable()Z
.end method

.method public abstract onDragEnd()V
.end method

.method public abstract onDragOver()V
.end method

.method public abstract onDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract onFolderClosed()V
.end method

.method public abstract onPageEndTransition()V
.end method

.method public abstract onSyncDragEnter()V
.end method

.method public abstract onSyncDragExit()V
.end method
