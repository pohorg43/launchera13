.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getNormalRemoteAnimations()Landroid/view/RemoteAnimationDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled(Z)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 15

    new-instance p1, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$400(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p3

    invoke-static {}, Lcom/android/wm/shell/ShellAnimThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p4

    invoke-direct {p1, p3, p4}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    array-length p4, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    if-ge v1, p4, :cond_7a

    aget-object v2, p2, v1

    iget v3, v2, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_26

    goto :goto_77

    :cond_26
    iget-object v3, v2, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v5}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    invoke-direct {v6, v3, v4, v5, v0}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    new-instance v7, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v4, v5, v8}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    new-instance v3, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;

    iget-object v4, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4, v6}, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;-><init>(Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;)V

    invoke-virtual {p1, v3}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addAnimation(Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;)V

    new-instance v3, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;

    iget-object v4, v2, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4, v7}, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;-><init>(Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;)V

    invoke-virtual {p1, v3}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addAnimation(Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;)V

    iget-object v3, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_68

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v6, p3, v3, v4, v5}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    :cond_68
    iget-object v3, v2, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_77

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_77

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v7, p3, v2, v4, v5}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    :cond_77
    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_7a
    array-length p4, p2

    :goto_7b
    if-ge v0, p4, :cond_98

    aget-object v1, p2, v0

    iget v2, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v2, :cond_84

    goto :goto_95

    :cond_84
    iget-object v2, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_95

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    :cond_98
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    new-instance p2, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4$1;

    invoke-direct {p2, p0, p5}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4$1;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->start()V

    return-void
.end method
