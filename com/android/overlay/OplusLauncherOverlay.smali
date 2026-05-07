.class public Lcom/android/overlay/OplusLauncherOverlay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;
.implements Lcom/google/android/libraries/gsa/launcherclient/ISerializableScrollCallback;


# static fields
.field private static final BIT_SET:I = 0x18

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FLAGS:I = -0x1

.field private static final PREF_PERSIST_FLAGS:Ljava/lang/String; = "pref_persistent_flags"

.field private static final TAG:Ljava/lang/String; = "LauncherClient-OplusLauncherOverlay"


# instance fields
.field private mAttached:Z

.field private mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field private mFlags:I

.field public mFlagsChanged:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mOverlayCallbacks:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mFlagsChanged:Z

    iput-boolean v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mAttached:Z

    iput-object p1, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_persistent_flags"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/overlay/OplusLauncherOverlay;->mFlags:I

    return-void
.end method

.method private static allowScroll(Lcom/android/launcher/Launcher;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_30

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p0

    if-eqz p0, :cond_30

    :cond_2f
    const/4 v1, 0x1

    :cond_30
    return v1
.end method


# virtual methods
.method public exitOverlayScroll()V
    .registers 3

    iget-object v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setScroll(F)V

    iget-object p0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->endScroll()V

    return-void
.end method

.method public forceScrollToAssistantScreenWithoutAnim(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startScroll()V

    iget-object v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setScroll(F)V

    iget-object p0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->endScroll()V

    return-void
.end method

.method public getmLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public ismFlagsChanged()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mFlagsChanged:Z

    return p0
.end method

.method public onOverlayScrollChanged(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mOverlayCallbacks:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;->onScrollChanged(F)V

    :cond_7
    return-void
.end method

.method public onScrollChange(FZ)V
    .registers 4

    iget-object p2, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p2

    if-eqz p2, :cond_1e

    :cond_16
    iget-object p2, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lcom/android/overlay/OplusLauncherOverlay;->allowScroll(Lcom/android/launcher/Launcher;)Z

    move-result p2

    if-eqz p2, :cond_23

    :cond_1e
    iget-object p0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setScroll(F)V

    :cond_23
    return-void
.end method

.method public onScrollInteractionBegin()V
    .registers 3

    iget-object v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/overlay/OplusLauncherOverlay;->allowScroll(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    :cond_13
    const-string p0, "LauncherClient-OplusLauncherOverlay"

    const-string v0, "onScrollInteractionBegin disabled"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startScroll()V

    iget-object v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object p0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->cancelSurfaceAnimation()V

    :cond_31
    :goto_31
    return-void
.end method

.method public onScrollInteractionEnd()V
    .registers 3

    iget-object v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/overlay/OplusLauncherOverlay;->allowScroll(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    :cond_13
    const-string p0, "LauncherClient-OplusLauncherOverlay"

    const-string v0, "onScrollInteractionEnd disabled"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_1b
    :goto_1b
    iget-object p0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->endScroll()V

    :goto_20
    return-void
.end method

.method public onServiceStateChanged(Z)V
    .registers 4

    const-string v0, "onServiceStateChanged, attached:"

    const-string v1, "LauncherClient-OplusLauncherOverlay"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mAttached:Z

    if-eq p1, v0, :cond_16

    iput-boolean p1, p0, Lcom/android/overlay/OplusLauncherOverlay;->mAttached:Z

    iget-object v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    invoke-virtual {v0, p0}, Lcom/android/launcher/Launcher;->setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    :cond_16
    return-void
.end method

.method public setClient(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/overlay/OplusLauncherOverlay;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    return-void
.end method

.method public setOverlayCallbacks(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;)V
    .registers 2

    iput-object p1, p0, Lcom/android/overlay/OplusLauncherOverlay;->mOverlayCallbacks:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

    return-void
.end method

.method public setPersistentFlags(I)V
    .registers 4

    const-string v0, "setPerisstentFlags, flags:"

    const-string v1, "LauncherClient-OplusLauncherOverlay"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    and-int/lit8 p1, p1, 0x18

    iget v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mFlags:I

    if-eq p1, v0, :cond_2a

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mFlagsChanged:Z

    iput p1, p0, Lcom/android/overlay/OplusLauncherOverlay;->mFlags:I

    iget-object p0, p0, Lcom/android/overlay/OplusLauncherOverlay;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_persistent_flags"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2a
    return-void
.end method
