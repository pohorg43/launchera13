.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic val$finishCB:Ljava/lang/Runnable;

.field public final synthetic val$sidePosition:I

.field public final synthetic val$sideTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic val$sideTaskScreenshotBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
    .registers 6

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->val$finishCB:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->val$sideTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->val$sidePosition:I

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->val$sideTaskScreenshotBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    invoke-static {}, Lcom/android/wm/shell/ShellAnimThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->lambda$onTransitionFailed$0()V

    return-void
.end method

.method private synthetic lambda$onTransitionFailed$0()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueApplyDividerVisibility(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .registers 13

    if-eqz p2, :cond_a0

    array-length p1, p2

    if-nez p1, :cond_7

    goto/16 :goto_a0

    :cond_7
    array-length p1, p2

    const/4 p3, 0x0

    move p4, p3

    :goto_a
    if-ge p4, p1, :cond_2a

    aget-object v0, p2, p4

    iget v1, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v1, :cond_13

    goto :goto_27

    :cond_13
    iget-object v1, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p6, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p6, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_27
    add-int/lit8 p4, p4, 0x1

    goto :goto_a

    :cond_2a
    new-instance v0, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    new-instance p1, Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object p2

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZLcom/android/wm/shell/splitscreen/StageCoordinator;)V

    invoke-direct {v0, p1}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;-><init>(Lcom/android/wm/shell/splitscreen/animation/Animatable;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->val$sideTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->val$sidePosition:I

    if-nez p2, :cond_5f

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1000(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Ljava/util/function/Supplier;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p2

    goto :goto_6f

    :cond_5f
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1000(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Ljava/util/function/Supplier;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p2

    :goto_6f
    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getRootBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->val$sideTaskScreenshotBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    new-instance v3, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    invoke-direct {v3, p1, p2, p4, p3}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    new-instance v4, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    const/4 p3, 0x1

    invoke-direct {v4, p1, p2, p4, p3}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    move-object v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V

    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->deferUpdateSurfaceBounds()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5$1;

    invoke-direct {p2, p0, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->start()V

    return-void

    :cond_a0
    :goto_a0
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->isStarted()Z

    move-result p1

    if-nez p1, :cond_b6

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->val$finishCB:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_b6
    return-void
.end method

.method public onTransitionFailed()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/u;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/u;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
