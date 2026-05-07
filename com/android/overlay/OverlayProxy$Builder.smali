.class public Lcom/android/overlay/OverlayProxy$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/overlay/OverlayProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/IBinder;)Lcom/android/overlay/OverlayProxy;
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRealmeHiAssistant()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/oplus/leftscreen/HiAssistantOverlay;

    invoke-direct {v0, p0}, Lcom/oplus/leftscreen/HiAssistantOverlay;-><init>(Landroid/os/IBinder;)V

    goto :goto_1d

    :cond_c
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/GoogleOverlay;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/GoogleOverlay;-><init>(Landroid/os/IBinder;)V

    goto :goto_1d

    :cond_18
    new-instance v0, Lcom/heytap/assist/a;

    invoke-direct {v0, p0}, Lcom/heytap/assist/a;-><init>(Landroid/os/IBinder;)V

    :goto_1d
    new-instance p0, Lcom/android/overlay/OverlayProxy;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/overlay/OverlayProxy;-><init>(Lcom/android/overlay/IOverlayProxy;Lcom/android/overlay/OverlayProxy$1;)V

    return-object p0
.end method
