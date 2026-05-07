.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;

.field public final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6$1;->this$1:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz p1, :cond_7

    :try_start_4
    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6$1;->this$1:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$finishCB:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
