.class public Lcom/android/launcher/LauncherCallbacksImp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherCallbacks;
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager;


# static fields
.field public static final LAUNCHER_CLIENT_FLAG:I = 0xf

.field private static final TAG:Ljava/lang/String; = "LauncherClient-LauncherCallbacksImp"


# instance fields
.field public mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field private mFeedRunning:Z

.field public final mLauncher:Lcom/android/launcher/Launcher;

.field private mOverlay:Lcom/android/overlay/OplusLauncherOverlay;

.field private mRunning:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mStarted:Z

    iput-object p1, p0, Lcom/android/launcher/LauncherCallbacksImp;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method private logLifecycle(Ljava/lang/String;)V
    .registers 5

    const-string v0, "LauncherCallbacksImp."

    const-string v1, ", mOverlay:"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mOverlay:Lcom/android/overlay/OplusLauncherOverlay;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mClient:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", assistShowing:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_31

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    const-string p0, "LauncherClient-LauncherCallbacksImp"

    invoke-static {p1, v1, p0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkoutAssistantAllowDrag(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    iget-boolean p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mRunning:Z

    if-nez p0, :cond_c

    const/4 p0, -0x2

    return p0

    :cond_c
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->checkoutAssistantAllowDrag(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public connectAssist(Ljava/lang/String;)V
    .registers 4

    const-string v0, "connectAssist: mClient: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient-LauncherCallbacksImp"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->connectIfNecessary(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public hideOverlay(I)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/LauncherCallbacksImp;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p0, "LauncherClient-LauncherCallbacksImp"

    const-string p1, "Can\'t hide overlay because in toggle bar state, exit the state first"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher/LauncherCallbacksImp;->shouldHideAssistScreen()V

    return-void
.end method

.method public hideOverlayWhenScrolling()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_9

    iget-boolean p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mFeedRunning:Z

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlayWhenScrolling(Z)V

    :cond_9
    return-void
.end method

.method public isAssistScreenConnected()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isAssistScreenEnable(Landroid/content/Context;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isAssistScreenShown()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    return p0
.end method

.method public isScrolling()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->getIsScrolling()Z

    move-result p0

    return p0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    const-string/jumbo p1, "onCreate"

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string p2, "LauncherCallbacksImp-onCreate"

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lcom/android/overlay/OplusLauncherOverlay;

    iget-object v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p2, v0}, Lcom/android/overlay/OplusLauncherOverlay;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p2, p0, Lcom/android/launcher/LauncherCallbacksImp;->mOverlay:Lcom/android/overlay/OplusLauncherOverlay;

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/android/launcher/LauncherCallbacksImp;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v2, Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;-><init>(I)V

    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;)V

    iput-object v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object p2, p0, Lcom/android/launcher/LauncherCallbacksImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setDragCallback(Lcom/android/launcher3/dragndrop/IDragCallback;)V

    iget-object p2, p0, Lcom/android/launcher/LauncherCallbacksImp;->mOverlay:Lcom/android/overlay/OplusLauncherOverlay;

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p2, p0}, Lcom/android/overlay/OplusLauncherOverlay;->setClient(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    const-string/jumbo p1, "onDestroy"

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v0, "LauncherCallbacksImp-onDestroy"

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDestroyed()V

    :cond_15
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    const-string/jumbo p1, "onPause"

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v0, "LauncherCallbacksImp-onPause"

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mRunning:Z

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onPause()V

    :cond_18
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    const-string/jumbo p1, "onResume"

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v0, "LauncherCallbacksImp-onResume"

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mRunning:Z

    iget-boolean v1, p0, Lcom/android/launcher/LauncherCallbacksImp;->mStarted:Z

    if-eqz v1, :cond_17

    iput-boolean v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mFeedRunning:Z

    :cond_17
    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onResume()V

    :cond_1e
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const-string/jumbo p1, "onStart:mStarted, "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mStarted:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v0, "LauncherCallbacksImp-onStart"

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mStarted:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStart()V

    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mStarted:Z

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    const-string/jumbo p1, "onStop"

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v0, "LauncherCallbacksImp-onStop"

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mStarted:Z

    iget-object v1, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStop()V

    :cond_18
    iget-boolean v1, p0, Lcom/android/launcher/LauncherCallbacksImp;->mRunning:Z

    if-nez v1, :cond_1e

    iput-boolean v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mFeedRunning:Z

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mOverlay:Lcom/android/overlay/OplusLauncherOverlay;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/android/overlay/OplusLauncherOverlay;->ismFlagsChanged()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mOverlay:Lcom/android/overlay/OplusLauncherOverlay;

    invoke-virtual {v0}, Lcom/android/overlay/OplusLauncherOverlay;->getmLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_40

    const-string v0, "LauncherClient-LauncherCallbacksImp"

    const-string v1, "Overlay recreate"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mOverlay:Lcom/android/overlay/OplusLauncherOverlay;

    invoke-virtual {p0}, Lcom/android/overlay/OplusLauncherOverlay;->getmLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_40
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    const-string/jumbo v0, "onAttachedToWindow"

    invoke-direct {p0, v0}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "LauncherCallbacksImp-onAttachedToWindow"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    :cond_15
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    const-string/jumbo v0, "onDetachedFromWindow"

    invoke-direct {p0, v0}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "LauncherCallbacksImp-onDetachedFromWindow"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDetachedFromWindow()V

    :cond_15
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onHomeIntent(Z)V
    .registers 2

    const-string/jumbo p1, "onHomeIntent"

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    return-void
.end method

.method public onRecentsAnimationFinished(Landroid/os/Bundle;)Z
    .registers 3

    const-string/jumbo v0, "onRecentsAnimationFinished"

    invoke-direct {p0, v0}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onRecentsAnimationFinished(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public onRecentsAnimationStart()V
    .registers 2

    const-string/jumbo v0, "onRecentsAnimationStart"

    invoke-direct {p0, v0}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onRecentsAnimationStart()V

    :cond_d
    return-void
.end method

.method public onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo v0, "onRecentsAnimationSurfaceSave"

    invoke-direct {p0, v0}, Lcom/android/launcher/LauncherCallbacksImp;->logLifecycle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V

    :cond_d
    return-void
.end method

.method public onViewAlphaChanged(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onViewAlphaChanged(F)V

    :cond_7
    return-void
.end method

.method public shouldHideAssistScreen()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_9

    iget-boolean p0, p0, Lcom/android/launcher/LauncherCallbacksImp;->mFeedRunning:Z

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    :cond_9
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method
