.class Lcom/android/launcher/Launcher$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher$1;->onStateChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher/Launcher$1;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/Launcher$1$1;->this$1:Lcom/android/launcher/Launcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/Launcher$1$1;->this$1:Lcom/android/launcher/Launcher$1;

    iget-object v0, v0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/launcher/Launcher$1$1;->this$1:Lcom/android/launcher/Launcher$1;

    iget-object v1, v1, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_31

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_31

    const-string v1, "Common"

    const-string v2, "OLauncher"

    const-string/jumbo v3, "reload shortcut icon because of the split screen mode changed"

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->reloadShortcutIcon()V

    :cond_31
    iget-object v0, p0, Lcom/android/launcher/Launcher$1$1;->this$1:Lcom/android/launcher/Launcher$1;

    iget-object v0, v0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$100(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/launcher/Launcher$1$1;->this$1:Lcom/android/launcher/Launcher$1;

    iget-object v0, v0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_5b

    iget-object v0, p0, Lcom/android/launcher/Launcher$1$1;->this$1:Lcom/android/launcher/Launcher$1;

    iget-object v0, v0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_69

    :cond_5b
    iget-object v0, p0, Lcom/android/launcher/Launcher$1$1;->this$1:Lcom/android/launcher/Launcher$1;

    iget-object v0, v0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$200(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_69
    iget-object p0, p0, Lcom/android/launcher/Launcher$1$1;->this$1:Lcom/android/launcher/Launcher$1;

    iget-object p0, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->access$300(Lcom/android/launcher/Launcher;)V

    return-void
.end method
