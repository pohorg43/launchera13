.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;-><init>(Lcom/android/launcher/Launcher;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressedOnTaskRoot(I)V
    .registers 2

    return-void
.end method

.method public onInitialized()V
    .registers 4

    const-string v0, "onInitialized("

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLauncher$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTaskViewReady$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const-string v0, "oplus.intent.action.BRACKET_SPACE_MAIN_NEW_FEATURE"

    invoke-static {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$startActivityInTaskView(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Ljava/lang/String;)V

    return-void
.end method

.method public onReleased()V
    .registers 4

    const-string v0, "onReleased("

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLauncher$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") -- pendingRemoveTaskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getPendingRemoveTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTaskViewReady$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Z)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getPendingRemoveTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->rmTask(I)V

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 7

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "onTaskCreated: taskId="

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p2, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTaskViewTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V

    iget-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p2, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTmpTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTaskViewStarted$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLauncher$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->getTaskView()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    move-result-object p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$isTaskViewReleased$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result p1

    if-nez p1, :cond_95

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTaskViewReady$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result p1

    if-eqz p1, :cond_95

    sget-object p1, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->INSTANCE:Lcom/oplus/quickstep/bracketspace/BracketModeHelper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->canEnterBracketSpace()Z

    move-result p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    sget-object p1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$startAction$1;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$startAction$1;

    new-instance p2, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$endAction$1;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-direct {p2, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$endAction$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$cancelTaskViewTransitionAnimator(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLauncher$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Lcom/android/launcher/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->getTaskView()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {v3}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->getSwipeToRecentAnimationHelper()Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->createTaskViewOpenAnimation(Lcom/android/launcher3/Launcher;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTaskViewTransitionAnimator$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Landroid/animation/AnimatorSet;)V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTaskViewTransitionAnimator$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_87

    goto :goto_9c

    :cond_87
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    new-instance p2, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$lambda-1$$inlined$doOnEnd$1;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1$onTaskCreated$lambda-1$$inlined$doOnEnd$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_9c

    :cond_95
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView$default(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;ZILjava/lang/Object;)V

    :goto_9c
    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .registers 5

    const-string v0, "onTaskRemovalStarted: taskId="

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTaskViewTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTmpTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I

    move-result v0

    if-ne v0, p1, :cond_1c

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p1, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTmpTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V

    :cond_1c
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->releaseTaskView()V

    return-void
.end method

.method public onTaskVisibilityChanged(IZ)V
    .registers 5

    const-string v0, "onTaskVisibilityChanged: taskId = "

    const-string v1, ", mTaskViewTaskId = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTaskViewTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mLauncherTaskId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLauncherTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", visible = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskView"

    const-string p2, "TaskViewManager"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
