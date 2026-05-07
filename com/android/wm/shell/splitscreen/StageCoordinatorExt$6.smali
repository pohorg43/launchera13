.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitSplitScreenWithSlideAnim(ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic val$failedCB:Ljava/lang/Runnable;

.field public final synthetic val$finishCB:Ljava/lang/Runnable;

.field public final synthetic val$rootBounds:Landroid/graphics/Rect;

.field public final synthetic val$snapshotBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

.field public final synthetic val$toTopChildSurface:Landroid/view/SurfaceControl;

.field public final synthetic val$toTopTaskFreezeBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 8

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$finishCB:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$toTopChildSurface:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$snapshotBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$toTopTaskFreezeBounds:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$rootBounds:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$failedCB:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    invoke-static {}, Lcom/android/wm/shell/ShellAnimThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    return-void
.end method


# virtual methods
.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .registers 14

    if-eqz p2, :cond_4c

    array-length p1, p2

    if-nez p1, :cond_6

    goto :goto_4c

    :cond_6
    new-instance v0, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    new-instance p1, Lcom/android/wm/shell/splitscreen/SurfaceAnimatable;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$toTopChildSurface:Landroid/view/SurfaceControl;

    invoke-direct {p1, p2}, Lcom/android/wm/shell/splitscreen/SurfaceAnimatable;-><init>(Landroid/view/SurfaceControl;)V

    invoke-direct {v0, p1}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;-><init>(Lcom/android/wm/shell/splitscreen/animation/Animatable;)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$snapshotBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    new-instance v3, Landroid/graphics/Point;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$toTopTaskFreezeBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$toTopTaskFreezeBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$rootBounds:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-direct {v4, p1, p2, p2, p3}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    new-instance v5, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$toTopTaskFreezeBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$rootBounds:Landroid/graphics/Rect;

    const/4 p3, 0x1

    invoke-direct {v5, p1, p2, p2, p3}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    move-object v1, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/graphics/Point;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V

    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6$1;

    invoke-direct {p2, p0, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->start()V

    return-void

    :cond_4c
    :goto_4c
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mAnimRunner:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->isStarted()Z

    move-result p1

    if-nez p1, :cond_62

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$finishCB:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_62
    return-void
.end method

.method public onTransitionFailed()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$failedCB:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
