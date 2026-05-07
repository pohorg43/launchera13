.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startPairIntent(Landroid/content/Intent;Landroid/content/Intent;IIILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mPairTaskAnimationLayer:Landroid/view/SurfaceControl;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic val$adapter:Landroid/view/RemoteAnimationAdapter;

.field public final synthetic val$evictWct:Landroid/window/WindowContainerTransaction;

.field public final synthetic val$splitLayout:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->val$splitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->val$evictWct:Landroid/window/WindowContainerTransaction;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->mPairTaskAnimationLayer:Landroid/view/SurfaceControl;

    return-void
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->cleanUpPairTaskAnimation()V

    return-void
.end method

.method private cleanUpPairTaskAnimation()V
    .registers 4

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->cleanUpPairTaskAnimationLayer(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private cleanUpPairTaskAnimationLayer(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->mPairTaskAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->mPairTaskAnimationLayer:Landroid/view/SurfaceControl;

    :cond_a
    return-void
.end method


# virtual methods
.method public onAnimationCancelled(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$600(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->val$evictWct:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->cleanUpPairTaskAnimation()V

    :try_start_e
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled(Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p0

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$800()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error starting remote animation"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-direct {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->cleanUpPairTaskAnimationLayer(Landroid/view/SurfaceControl$Transaction;)V

    new-instance v3, Landroid/view/SurfaceControl$Builder;

    new-instance v4, Landroid/view/SurfaceSession;

    invoke-direct {v4}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {v3, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v4, "PairTaskAnimationContainer"

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v5, "StageCoordinatorExt#startPairIntent"

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->mPairTaskAnimationLayer:Landroid/view/SurfaceControl;

    const/16 v5, 0x7530

    invoke-virtual {v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->mPairTaskAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v5, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->mPairTaskAnimationLayer:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_5e

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitContainerLayer()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->mPairTaskAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_5e
    array-length v3, v1

    move v5, v4

    :goto_60
    if-ge v5, v3, :cond_73

    aget-object v6, v1, v5

    iget v7, v6, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v7, :cond_69

    goto :goto_70

    :cond_69
    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-virtual {v2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    :cond_73
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    move v5, v4

    :goto_80
    if-ge v5, v3, :cond_8e

    aget-object v6, v1, v5

    iget v7, v6, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v7, :cond_8b

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    :cond_8e
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->val$splitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v1}, Lcom/oplus/splitscreen/DividerUtils;->getDisplayBounds(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v15

    move-object v14, v15

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v1

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v20, v1

    new-instance v3, Landroid/view/RemoteAnimationTarget;

    move-object v5, v3

    iget v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->mPairTaskAnimationLayer:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7fffffff

    new-instance v13, Landroid/graphics/Point;

    move-object/from16 p2, v13

    move-object/from16 v7, p2

    invoke-direct {v7, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    move-object/from16 v16, v1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v21}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v4, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/view/RemoteAnimationTarget;

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4$1;

    move-object/from16 v1, p5

    invoke-direct {v7, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;Landroid/view/IRemoteAnimationFinishedCallback;)V

    :try_start_db
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getCallingApplication()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    :try_end_e8
    .catch Ljava/lang/SecurityException; {:try_start_db .. :try_end_e8} :catch_eb
    .catch Landroid/os/RemoteException; {:try_start_db .. :try_end_e8} :catch_e9

    goto :goto_f4

    :catch_e9
    move-exception v0

    goto :goto_104

    :catch_eb
    :try_start_eb
    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to boost animation thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f4
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->val$adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_103} :catch_e9

    goto :goto_10d

    :goto_104
    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error starting remote animation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10d
    return-void
.end method
