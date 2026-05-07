.class Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->onStageHasChildrenChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

.field public final synthetic val$homeSurface:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->val$homeSurface:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->lambda$onAnimationStart$0()V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$0()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setMinimizedStashLeashVisible(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$screenshot:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$000(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/splitscreen/u;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/u;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->val$homeSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->val$homeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2c
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$leftPanelIcon:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$leftPanelIcon:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_3f
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$rightPanelIcon:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$rightPanelIcon:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_52
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
