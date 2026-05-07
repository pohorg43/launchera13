.class public abstract Lcom/android/launcher/togglebar/state/ToggleBarBaseState;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAIN_STATE:Ljava/lang/String; = "main"

.field private static final TAG:Ljava/lang/String; = "ToggleBarBaseState"


# instance fields
.field public mLauncher:Lcom/android/launcher/Launcher;

.field private mStateName:Ljava/lang/String;

.field public mUIController:Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

.field public mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mStateName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->createUIController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mUIController:Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    return-void
.end method


# virtual methods
.method public canSnapWorkspacePage()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    return-void
.end method

.method public create(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create, this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarBaseState"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mUIController:Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->createView(I)V

    :cond_1d
    return-void
.end method

.method public abstract createUIController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;
.end method

.method public destroy(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy, animate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarBaseState"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mUIController:Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    if-eqz p0, :cond_25

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->destroy(Z)V

    :cond_25
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mStateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mStateName:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    iget-object p1, p1, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mStateName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public getStateName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mStateName:Ljava/lang/String;

    return-object p0
.end method

.method public getToggleBarContentHeight()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mUIController:Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->getContentViewHeight()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public isInMainState()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mStateName:Ljava/lang/String;

    const-string/jumbo v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public notifyDataChange()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mUIController:Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->notifyDataChange()V

    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->finish(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onToggleBarItemParamsChanged(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mUIController:Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->onToggleBarItemParamsChanged(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_7
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mUIController:Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->onWallpaperBrightnessChanged()V

    :cond_7
    return-void
.end method

.method public pause(IZ)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pause, clickItemIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarBaseState"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mUIController:Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    if-eqz p0, :cond_26

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->pause(IZ)V

    :cond_26
    return-void
.end method

.method public resume(ZZ)V
    .registers 5

    const-string/jumbo v0, "resume, backResume = "

    const-string v1, ", launcher state = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ToggleBarBaseState"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mUIController:Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    if-eqz p0, :cond_2e

    invoke-virtual {p0, p2}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->resume(Z)V

    :cond_2e
    return-void
.end method

.method public supportIconSelected()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
