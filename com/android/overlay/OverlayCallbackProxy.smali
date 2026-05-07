.class public Lcom/android/overlay/OverlayCallbackProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherClient-OverlayCallbackProxy"


# instance fields
.field public mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRealmeHiAssistant()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;

    invoke-direct {v0}, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;-><init>()V

    iput-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    goto :goto_26

    :cond_11
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/GoogleOverlayCallback;

    invoke-direct {v0}, Lcom/google/android/libraries/gsa/launcherclient/GoogleOverlayCallback;-><init>()V

    iput-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    goto :goto_26

    :cond_1f
    new-instance v0, Lcom/heytap/assist/b;

    invoke-direct {v0}, Lcom/heytap/assist/b;-><init>()V

    iput-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    :goto_26
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 1

    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/overlay/IOverlayCallbackProxy;->destroy()V

    :cond_7
    return-void
.end method

.method public getGoogleOverlayCallback()Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    check-cast p0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    return-object p0
.end method

.method public getHeytapOverlayCallBack()Lcom/heytap/assist/ILauncherOverlayCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    check-cast p0, Lcom/heytap/assist/ILauncherOverlayCallback;

    return-object p0
.end method

.method public getHiAssistantCallback()Lcom/oplus/leftscreen/ILauncherOverlayCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    check-cast p0, Lcom/oplus/leftscreen/ILauncherOverlayCallback;

    return-object p0
.end method

.method public setup(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/view/WindowManager;Landroid/view/Window;)V
    .registers 5

    iget-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    if-nez v0, :cond_27

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRealmeHiAssistant()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;

    invoke-direct {v0}, Lcom/oplus/leftscreen/HiAssistantOverlayCallback;-><init>()V

    iput-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    goto :goto_27

    :cond_12
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/GoogleOverlayCallback;

    invoke-direct {v0}, Lcom/google/android/libraries/gsa/launcherclient/GoogleOverlayCallback;-><init>()V

    iput-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    goto :goto_27

    :cond_20
    new-instance v0, Lcom/heytap/assist/b;

    invoke-direct {v0}, Lcom/heytap/assist/b;-><init>()V

    iput-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy;->mOverlayCallbackProxy:Lcom/android/overlay/IOverlayCallbackProxy;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/overlay/IOverlayCallbackProxy;->create(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/view/WindowManager;Landroid/view/Window;)V

    return-void
.end method
