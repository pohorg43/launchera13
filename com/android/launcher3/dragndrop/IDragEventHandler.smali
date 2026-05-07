.class public interface abstract Lcom/android/launcher3/dragndrop/IDragEventHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;
    }
.end annotation


# virtual methods
.method public abstract animateSurfaceToHide(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
.end method

.method public abstract animateSurfaceToPosition(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
.end method

.method public abstract cancelSurfaceAnimation()V
.end method

.method public abstract getDragCardInfo()Lcom/android/launcher3/dragndrop/DragCardInfo;
.end method

.method public abstract getOriginalView()Landroid/view/View;
.end method

.method public abstract handleDragEvent(Landroid/view/DragEvent;)Z
.end method

.method public abstract isDraggingInLauncher()Z
.end method

.method public abstract setOriginalView(Landroid/view/View;)V
.end method

.method public abstract setupDefaultManager()V
.end method
