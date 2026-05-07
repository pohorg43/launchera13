.class public interface abstract Lcom/android/wm/shell/pip/Pip;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation


# virtual methods
.method public addPipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public createExternalInterface()Lcom/android/wm/shell/pip/IPip;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public expandPip()V
    .registers 1

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    return-void
.end method

.method public onKeyguardDismissAnimationFinished()V
    .registers 1

    return-void
.end method

.method public onKeyguardVisibilityChanged(ZZ)V
    .registers 3

    return-void
.end method

.method public onOverlayChanged()V
    .registers 1

    return-void
.end method

.method public onSystemUiStateChanged(ZI)V
    .registers 3

    return-void
.end method

.method public registerSessionListenerForCurrentUser()V
    .registers 1

    return-void
.end method

.method public removePipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPinnedStackAnimationListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPinnedStackAnimationType(I)V
    .registers 2

    return-void
.end method

.method public setShelfHeight(ZI)V
    .registers 3

    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 1

    return-void
.end method
