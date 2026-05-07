.class public Lcom/android/overlay/OverlayProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/overlay/OverlayProxy$Builder;
    }
.end annotation


# static fields
.field private static final ASSIST_ACTION_GOOGLE:Ljava/lang/String; = "com.android.launcher3.WINDOW_OVERLAY"

.field private static final ASSIST_ACTION_HEYTAP:Ljava/lang/String; = "heytap.intent.action.assistantscreen.window.server"

.field private static final ASSIST_ACTION_HIASSISTANT:Ljava/lang/String; = "com.oplus.leftscreen.coreservice"

.field public static final ASSIST_PACKAGE:Ljava/lang/String;

.field public static final ASSIST_PACKAGE_GOOGLE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final ASSIST_PARAM_GOOGLE_CV:I = 0x9

.field private static final ASSIST_PARAM_GOOGLE_V:I = 0x7

.field public static final HEYTAP_BLUR_META_DATA:Ljava/lang/String; = "com.oplus.assistantscreen.support.overscroll_blur"

.field public static final HEYTAP_OVERLAY_PACKAGE:Ljava/lang/String; = "com.coloros.assistantscreen"

.field public static final HEYTAP_SHELF_SUPPORT_META_DATA:Ljava/lang/String; = "com.oplus.assistantscreen.support.export_shelf"

.field public static final REALME_IS_SUPPORT_PULL_DOWN:Ljava/lang/String; = "com.oplus.leftscreen.is_support_pull_down"

.field public static final REALME_OVERLAY_PACKAGE:Ljava/lang/String; = "com.oplus.leftscreen"

.field private static final TAG:Ljava/lang/String; = "LauncherClient-OverlayProxy"


# instance fields
.field private final mOverlay:Lcom/android/overlay/IOverlayProxy;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/common/config/Constants$Packages;->ASSIST_PACKAGE:Ljava/lang/String;

    sput-object v0, Lcom/android/overlay/OverlayProxy;->ASSIST_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/overlay/IOverlayProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/overlay/IOverlayProxy;Lcom/android/overlay/OverlayProxy$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/overlay/OverlayProxy;-><init>(Lcom/android/overlay/IOverlayProxy;)V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/overlay/OverlayProxy;->getOverlayPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/overlay/OverlayProxy;->getOverlayAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRealmeHiAssistant()Z

    move-result v1

    if-nez v1, :cond_5d

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "app://"

    const-string v2, ":"

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "v"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cv"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_5d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntent "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LauncherClient-OverlayProxy"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getOverlayAction()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRealmeHiAssistant()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.leftscreen.coreservice"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "com.android.launcher3.WINDOW_OVERLAY"

    return-object v0

    :cond_12
    const-string v0, "heytap.intent.action.assistantscreen.window.server"

    return-object v0
.end method

.method public static getOverlayPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRealmeHiAssistant()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.leftscreen"

    return-object v0

    :cond_9
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "com.google.android.googlequicksearchbox"

    return-object v0

    :cond_12
    sget-object v0, Lcom/android/overlay/OverlayProxy;->ASSIST_PACKAGE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkoutAssistantAllowDrag(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lcom/android/overlay/IOverlayProxy;->checkoutAssistantAllowDrag(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_9
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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/overlay/IOverlayProxy;->closeOverlay(I)V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->endScroll()V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->hasOverlayContent()Z

    move-result p0

    return p0

    :cond_9
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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->isVoiceDetectionRunning()Z

    move-result p0

    return p0

    :cond_9
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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->onDestory()V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->onPause()V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Lcom/android/overlay/IOverlayProxy;->onProfileChanged(ZZ)V

    :cond_7
    return-void
.end method

.method public onRecentsAnimationFinished(Landroid/os/Bundle;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lcom/android/overlay/IOverlayProxy;->onRecentsAnimationFinished(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onRecentsAnimationStart()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->onRecentsAnimationStart()V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/overlay/IOverlayProxy;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->onResume()V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/overlay/IOverlayProxy;->onScroll(F)V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->onStart()V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->onStop()V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/overlay/IOverlayProxy;->onViewAlphaChanged(F)V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/overlay/IOverlayProxy;->openOverlay(I)V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/overlay/IOverlayProxy;->requestVoiceDetection(Z)V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/overlay/IOverlayProxy;->setActivityState(I)V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->startScroll()V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1, p2}, Lcom/android/overlay/IOverlayProxy;->startSearch([BLandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_9
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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/overlay/IOverlayProxy;->unusedMethod()V

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

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2, p3}, Lcom/android/overlay/IOverlayProxy;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/android/overlay/OverlayCallbackProxy;I)V

    :cond_7
    return-void
.end method

.method public windowAttached2(Landroid/os/Bundle;Lcom/android/overlay/OverlayCallbackProxy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Lcom/android/overlay/IOverlayProxy;->windowAttached2(Landroid/os/Bundle;Lcom/android/overlay/OverlayCallbackProxy;)V

    :cond_7
    return-void
.end method

.method public windowDetached(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/overlay/OverlayProxy;->mOverlay:Lcom/android/overlay/IOverlayProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/overlay/IOverlayProxy;->windowDetached(Z)V

    :cond_7
    return-void
.end method
