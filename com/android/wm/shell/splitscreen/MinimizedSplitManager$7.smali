.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$exitMinimizedToFullscreen$4(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

.field public final synthetic val$topChild:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic val$topOrLeft:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->val$topChild:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->val$topOrLeft:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeMinimizedChanged(Z)V

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->val$topChild:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->val$topChild:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v1, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "exitMinimizedToFullscreen#onAnimationEnd"

    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->val$topOrLeft:Z

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMainStageActive()Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object v1

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->applyTransactionWithLog(Landroid/window/WindowContainerTransaction;Ljava/lang/String;I)V

    goto :goto_74

    :cond_47
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V

    goto :goto_74

    :cond_57
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v1

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v4

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v1, v4, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object v1

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->applyTransactionWithLog(Landroid/window/WindowContainerTransaction;Ljava/lang/String;I)V

    :goto_74
    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeChanged(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInBackKeyExitAnim:Z

    return-void
.end method
