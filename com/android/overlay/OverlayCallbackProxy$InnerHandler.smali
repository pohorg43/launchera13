.class public Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/overlay/OverlayCallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerHandler"
.end annotation


# static fields
.field private static final DRAGLAYER_MOVED_FINISHED_PROGRESS:F = 1.0f

.field private static final DRAGLAYER_MOVED_START_PROGRESS:F = 0.0f

.field private static final MSG_OVERLAY_PRELOAD_CHANGED:I = 0x5

.field private static final MSG_OVERLAY_SCROLL_CHANGED:I = 0x2

.field private static final MSG_OVERLAY_STATUS_CHANGED:I = 0x4

.field private static final MSG_OVERLAY_WINDOW_ATTR_CHANGED:I = 0x3

.field private static final OVERLAY_PRELOAD_TIMEOUT:I = 0x3e8


# instance fields
.field public mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field private final mUIHandler:Landroid/os/Handler;

.field public mWindow:Landroid/view/Window;

.field private mWindowHidden:Z

.field public mWindowManager:Landroid/view/WindowManager;

.field public mWindowShift:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindowHidden:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2f

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1a

    const/4 p0, 0x5

    if-eq v2, p0, :cond_16

    return v4

    :cond_16
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setPreloaded(Z)V

    return v1

    :cond_1a
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setServiceState(I)V

    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    instance-of v0, p0, Lcom/google/android/libraries/gsa/launcherclient/ISerializableScrollCallback;

    if-eqz v0, :cond_2e

    check-cast p0, Lcom/google/android/libraries/gsa/launcherclient/ISerializableScrollCallback;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/ISerializableScrollCallback;->setPersistentFlags(I)V

    :cond_2e
    return v1

    :cond_2f
    iget-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget p1, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindowShift:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_52

    :cond_4a
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_52
    iget-object p1, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_5e
    iget v0, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mServiceState:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_be

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v0, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onOverlayScrollChanged(F)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_7c

    move v2, v1

    goto :goto_7d

    :cond_7c
    move v2, v4

    :goto_7d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportRealmeHiAssistant()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_8f

    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    cmpl-float v3, p1, v5

    if-lez v3, :cond_8b

    move v4, v1

    :cond_8b
    invoke-virtual {p0, v4}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setAssistScreenShowing(Z)V

    goto :goto_94

    :cond_8f
    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setAssistScreenShowing(Z)V

    :goto_94
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_a0

    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_be

    :cond_a0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onverlayScrollChanged, value:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mAssistScreenShowing:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherClient-OverlayCallbackProxy"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    return v1
.end method

.method public final overlayPreloadChanged(I)V
    .registers 4

    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final overlayScrollChanged(F)V
    .registers 5

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2d

    :cond_d
    iget-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2c

    iget-boolean p1, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindowHidden:Z

    if-eqz p1, :cond_2c

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mWindowHidden:Z

    :cond_2c
    return-void

    :cond_2d
    :goto_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "overlayScrollChanged, progress:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is NaN or Infinite"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherClient-OverlayCallbackProxy"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final overlayStatusChanged(I)V
    .registers 4

    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setOverlayPreloadTimeout()V
    .registers 4

    iget-object p0, p0, Lcom/android/overlay/OverlayCallbackProxy$InnerHandler;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
