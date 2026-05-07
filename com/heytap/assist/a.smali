.class public Lcom/heytap/assist/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/overlay/IOverlayProxy;


# instance fields
.field public a:Lcom/heytap/assist/ILauncherOverlay;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/heytap/assist/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherOverlay;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    return-void
.end method


# virtual methods
.method public checkoutAssistantAllowDrag(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_27

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->checkoutAssistantAllowDrag(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkoutAssistantAllowDrag: params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeytapOverlay"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public closeOverlay(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->closeOverlay(I)V

    :cond_7
    return-void
.end method

.method public endScroll()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->endScroll()V

    :cond_7
    return-void
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasOverlayContent()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isVoiceDetectionRunning()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onDestory()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onDestory()V

    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onPause()V

    :cond_7
    return-void
.end method

.method public onProfileChanged(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Lcom/heytap/assist/ILauncherOverlay;->onProfileChanged(ZZ)V

    :cond_7
    return-void
.end method

.method public onRecentsAnimationFinished(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onRecentsAnimationFinished(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public onRecentsAnimationStart()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onRecentsAnimationStart()V

    :cond_7
    return-void
.end method

.method public onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onResume()V

    :cond_7
    return-void
.end method

.method public onScroll(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onScroll(F)V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onStart()V

    :cond_7
    return-void
.end method

.method public onStop()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->onStop()V

    :cond_7
    return-void
.end method

.method public onViewAlphaChanged(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->onViewAlphaChanged(F)V

    :cond_7
    return-void
.end method

.method public openOverlay(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->openOverlay(I)V

    :cond_7
    return-void
.end method

.method public requestVoiceDetection(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->requestVoiceDetection(Z)V

    :cond_7
    return-void
.end method

.method public setActivityState(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->setActivityState(I)V

    :cond_7
    return-void
.end method

.method public startScroll()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->startScroll()V

    :cond_7
    return-void
.end method

.method public startSearch([BLandroid/os/Bundle;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public unusedMethod()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/heytap/assist/ILauncherOverlay;->unusedMethod()V

    :cond_7
    return-void
.end method

.method public windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/android/overlay/OverlayCallbackProxy;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Lcom/android/overlay/OverlayCallbackProxy;->getHeytapOverlayCallBack()Lcom/heytap/assist/ILauncherOverlayCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lcom/heytap/assist/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/heytap/assist/ILauncherOverlayCallback;I)V

    :cond_b
    return-void
.end method

.method public windowAttached2(Landroid/os/Bundle;Lcom/android/overlay/OverlayCallbackProxy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Lcom/android/overlay/OverlayCallbackProxy;->getHeytapOverlayCallBack()Lcom/heytap/assist/ILauncherOverlayCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/heytap/assist/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lcom/heytap/assist/ILauncherOverlayCallback;)V

    :cond_b
    return-void
.end method

.method public windowDetached(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/assist/a;->a:Lcom/heytap/assist/ILauncherOverlay;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherOverlay;->windowDetached(Z)V

    :cond_7
    return-void
.end method
