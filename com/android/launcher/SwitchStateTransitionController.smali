.class public Lcom/android/launcher/SwitchStateTransitionController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIM_DELAY_0:I = 0x0

.field private static final ANIM_DELAY_250:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "SwitchStateTransitionController"


# instance fields
.field private final mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method private applyStateChange(ZIZ)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1, p2, p3, p0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public setState(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    instance-of v0, p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    check-cast p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v0, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->supportIconSelected(Lcom/android/launcher3/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_17

    move p1, v1

    goto :goto_18

    :cond_17
    move p1, v2

    :goto_18
    invoke-direct {p0, p1, v2, v1}, Lcom/android/launcher/SwitchStateTransitionController;->applyStateChange(ZIZ)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/SwitchStateTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 7

    sget-object p2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_34

    iget-object v1, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v1, v2, :cond_2e

    iget-object v1, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    if-eq v1, p2, :cond_2e

    iget-object v1, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_34

    :cond_2e
    iget-object p0, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p3, v0, v0, p0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    return-void

    :cond_34
    iget-object v1, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/statemanager/StateManager;->isDragLayerInternalAnimateAllowed(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_41

    return-void

    :cond_41
    instance-of v1, p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    if-eqz v1, :cond_80

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v2, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/states/OplusBaseLauncherState;->supportIconSelected(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_80

    if-ne p1, p2, :cond_78

    iget-object p2, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p2

    if-eqz p2, :cond_78

    iget-object p2, p0, Lcom/android/launcher/SwitchStateTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object p2

    if-eqz p2, :cond_78

    iget-object p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of p2, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz p2, :cond_78

    const-string p0, "SwitchStateTransitionController"

    const-string p1, "drag a pending widget to PAGE_PREVIEW, hide dot."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_78
    sget-object p2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, p2, :cond_83

    invoke-direct {p0, p3, v0, v0}, Lcom/android/launcher/SwitchStateTransitionController;->applyStateChange(ZIZ)V

    goto :goto_83

    :cond_80
    invoke-direct {p0, v0, v0, v0}, Lcom/android/launcher/SwitchStateTransitionController;->applyStateChange(ZIZ)V

    :cond_83
    :goto_83
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/SwitchStateTransitionController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
