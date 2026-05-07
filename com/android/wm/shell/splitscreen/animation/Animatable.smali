.class public interface abstract Lcom/android/wm/shell/splitscreen/animation/Animatable;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract attachAnimLeashToParentSurface(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract attachToOriginalParentSurface(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract getSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    return-void
.end method
