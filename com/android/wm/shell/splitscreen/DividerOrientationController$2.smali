.class Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/DividerOrientationController;->lambda$toggleDividerOrientation$3(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

.field public final synthetic val$afterApply:Ljava/lang/Runnable;

.field public final synthetic val$stageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/DividerOrientationController;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->val$stageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->val$afterApply:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->val$stageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueUpdateSurfaceBounds()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->access$100(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->access$200(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->access$200(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibilityWrapper(ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->access$100(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->val$afterApply:Ljava/lang/Runnable;

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->access$300(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->val$afterApply:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3f
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;->val$stageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->showTips()V

    return-void
.end method
