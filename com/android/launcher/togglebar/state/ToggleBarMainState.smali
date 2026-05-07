.class public Lcom/android/launcher/togglebar/state/ToggleBarMainState;
.super Lcom/android/launcher/togglebar/state/ToggleBarBaseState;
.source ""


# static fields
.field private static final MAIN_STATE:Ljava/lang/String; = "main"

.field private static final TAG:Ljava/lang/String; = "ToggleBarMainState"


# instance fields
.field private mUiController:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string/jumbo v0, "main"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clickItem()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;->mUiController:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->getMAdapter()Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    move-result-object p0

    const v0, 0x7f0a0550

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->itemClick(II)V

    return-void
.end method

.method public createUIController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;
    .registers 3

    new-instance v0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    iget-object v1, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;->mUiController:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    return-object v0
.end method

.method public destroy(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->destroy(Z)V

    invoke-static {}, Lcom/android/launcher/togglebar/ImageDownloader;->clearSoftCache()V

    return-void
.end method

.method public getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;->mUiController:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    return-object p0
.end method

.method public onBackPressed(Z)Z
    .registers 4

    const-string p1, "ToggleBarMainState"

    const-string v0, "Execute onBackPressed..."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v1, Lcom/android/launcher/togglebar/state/ToggleBarMainState$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/togglebar/state/ToggleBarMainState$1;-><init>(Lcom/android/launcher/togglebar/state/ToggleBarMainState;)V

    const/4 p0, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    return p0
.end method

.method public supportIconSelected()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
