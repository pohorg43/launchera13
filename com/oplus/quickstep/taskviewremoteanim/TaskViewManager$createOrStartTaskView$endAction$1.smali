.class final Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->createOrStartTaskView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/animation/Animator;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;->invoke(Landroid/animation/Animator;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Landroid/animation/Animator;)V
    .registers 10

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "TaskView"

    const-string v0, "TaskViewManager"

    const-string v1, "createOrStartTaskView: start task animation end, so do end callback immediately"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLauncher$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    goto :goto_66

    :cond_29
    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLauncher$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLauncher$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLauncher$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_53
    sget-object v2, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLauncher$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    :goto_66
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$makeLauncherViewsHidden(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    return-void
.end method
