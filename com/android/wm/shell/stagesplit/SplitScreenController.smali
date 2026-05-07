.class public Lcom/android/wm/shell/stagesplit/SplitScreenController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;
.implements Lcom/android/wm/shell/common/RemoteCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl;,
        Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/stagesplit/SplitScreenController;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitScreenController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private final mImpl:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;

.field private final mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mUnfoldControllerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lx2/a;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/stagesplit/SplitScreenController;Lcom/android/wm/shell/stagesplit/SplitScreenController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mImpl:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p3, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iput-object p5, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p6, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iput-object p7, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object p8, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p9, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p10, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mUnfoldControllerProvider:Lx2/a;

    new-instance p1, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    invoke-direct {p1}, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    return-void
.end method

.method public static synthetic a(Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/stagesplit/SplitScreenController;->lambda$onGoingToRecentsLegacy$0(Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/stagesplit/SplitScreenController;)Lcom/android/wm/shell/stagesplit/StageCoordinator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/stagesplit/SplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method private static synthetic lambda$onGoingToRecentsLegacy$0(Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)I
    .registers 2

    iget p0, p0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iget p1, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private startIntentLegacy(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 9
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
    .param p4  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/android/wm/shell/stagesplit/SplitScreenController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenController$1;-><init>(Lcom/android/wm/shell/stagesplit/SplitScreenController;)V

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, p3, p4, v1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method


# virtual methods
.method public asSplitScreen()Lcom/android/wm/shell/stagesplit/SplitScreen;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mImpl:Lcom/android/wm/shell/stagesplit/SplitScreenController$SplitScreenImpl;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/stagesplit/SplitScreenController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    if-eqz p0, :cond_17

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public enterSplitScreen(IZ)V
    .registers 3

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/SplitScreenController;->moveToSideStage(II)Z

    return-void
.end method

.method public exitSplitScreen(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->exitSplitScreen(II)V

    return-void
.end method

.method public exitSplitScreenOnHide(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->exitSplitScreenOnHide(Z)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public isSplitScreenVisible()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->isSplitScreenVisible()Z

    move-result p0

    return p0
.end method

.method public logOnDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->logOnDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public moveToSideStage(II)Z
    .registers 4
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/stagesplit/SplitScreenController;->moveToSideStage(Landroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result p0

    return p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown taskId"

    invoke-static {p2, p1}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public moveToSideStage(Landroid/app/ActivityManager$RunningTaskInfo;I)Z
    .registers 3
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->moveToSideStage(Landroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result p0

    return p0
.end method

.method public onGoingToRecentsLegacy(Z[Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .registers 13

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/SplitScreenController;->isSplitScreenVisible()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "RecentsAnimationSplitTasks"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v1, "SplitScreenController#onGoingtoRecentsLegacy"

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    sget-object v2, Lu/b;->e:Lu/b;

    invoke-static {p2, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, p2

    const/4 v3, 0x1

    move v4, v0

    move v5, v3

    :goto_3e
    if-ge v4, v2, :cond_5f

    aget-object v6, p2, v4

    iget-object v7, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v7, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v8, v6, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v1, v7, v9, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_3e

    :cond_5f
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/view/RemoteAnimationTarget;

    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p2

    aput-object p2, p1, v0

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getOutlineLegacyTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    aput-object p0, p1, v3

    return-object p1
.end method

.method public onKeyguardOccludedChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onKeyguardOccludedChanged(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method public onOrganizerRegistered()V
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    if-nez v0, :cond_21

    new-instance v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v5, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v6, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v7, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v8, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v9, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v10, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v11, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    iget-object v12, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mUnfoldControllerProvider:Lx2/a;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/wm/shell/stagesplit/StageCoordinator;-><init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;Lx2/a;)V

    iput-object v0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    :cond_21
    return-void
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->registerSplitScreenListener(Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method public removeFromSideStage(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->removeFromSideStage(I)Z

    move-result p0

    return p0
.end method

.method public setSideStageOutline(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStageOutline(Z)V

    return-void
.end method

.method public setSideStagePosition(I)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public setSideStageVisibility(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStageVisibility(Z)V

    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 13
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
    .param p4  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/stagesplit/SplitScreenController;->startIntentLegacy(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    const/4 v4, -0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;IILandroid/os/Bundle;Landroid/window/RemoteTransition;)V

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 15
    .param p3  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
    .param p4  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, p4, v2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object v7

    :try_start_8
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mContext:Landroid/content/Context;

    const-class p3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/content/pm/LauncherApps;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/stagesplit/SplitScreenController;->TAG:Ljava/lang/String;

    const-string p2, "Failed to launch shortcut"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return-void
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .registers 6
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p0

    :try_start_8
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/stagesplit/SplitScreenController;->TAG:Ljava/lang/String;

    const-string p2, "Failed to launch task"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/stagesplit/StageCoordinator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->unregisterSplitScreenListener(Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;)V

    return-void
.end method
