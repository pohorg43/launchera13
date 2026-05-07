.class Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;
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

.field public final synthetic val$wallpaperSurface:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->val$homeSurface:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->val$wallpaperSurface:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->val$homeSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->val$homeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->val$homeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->val$homeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_28
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->val$wallpaperSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->val$wallpaperSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->val$wallpaperSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_3c
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->access$400(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$3;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2;->val$cleanUp:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/WMShellBooster;->setUx(ZI)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Lcom/android/wm/shell/WMShellBooster;->setUx(ZI)V

    return-void
.end method
