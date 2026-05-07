.class public interface abstract Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;,
        Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;
    }
.end annotation


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    return-void
.end method

.method public hideOverlay(I)V
    .registers 2

    return-void
.end method

.method public hideOverlay(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const/16 p1, 0xc8

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    return-void
.end method

.method public onDeviceProvideChanged()V
    .registers 1

    return-void
.end method

.method public openOverlay()V
    .registers 1

    return-void
.end method

.method public startSearch([BLandroid/os/Bundle;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method
