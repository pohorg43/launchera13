.class Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;
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


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;->lambda$onAnimationStart$0()V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$0()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setMinimizedStashLeashVisible(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$000(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/splitscreen/u;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/u;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$2;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
