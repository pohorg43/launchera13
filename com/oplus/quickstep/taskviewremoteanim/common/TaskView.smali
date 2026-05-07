.class public Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;
.super Landroid/view/SurfaceView;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskView"


# instance fields
.field private final mGuard:Landroid/util/CloseGuard;

.field private mIsInitialized:Z

.field private mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

.field private mListenerExecutor:Ljava/util/concurrent/Executor;

.field private mNotifiedForInitialized:Z

.field private mObscuredTouchRegion:Landroid/graphics/Region;

.field private mReleased:Z

.field private mSurfaceCreated:Z

.field private final mSyncQueue:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mTaskLeash:Landroid/view/SurfaceControl;

.field private mTaskToken:Landroid/window/WindowContainerToken;

.field private final mTmpLocation:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRootRect:Landroid/graphics/Rect;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    new-instance p1, Landroid/util/CloseGuard;

    invoke-direct {p1}, Landroid/util/CloseGuard;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mGuard:Landroid/util/CloseGuard;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mReleased:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpLocation:[I

    iput-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSyncQueue:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->setUseAlpha()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const-string p0, "release"

    invoke-virtual {p1, p0}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->lambda$onTaskVanished$5(I)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->lambda$notifyInitialized$7()V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;ZILandroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->lambda$prepareOpenAnimation$9(ZILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->lambda$notifyReleased$1()V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->lambda$updateTaskVisibility$2(I)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->lambda$onTaskAppeared$3(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private findTaskSurface(I)Landroid/view/SurfaceControl;
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_d

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_d

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no surface for taskId="

    invoke-static {v0, p1}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->lambda$prepareCloseAnimation$8(I)V

    return-void
.end method

.method public static synthetic h(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->lambda$onBackPressedOnTaskRoot$6(I)V

    return-void
.end method

.method public static synthetic i(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;ILandroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->lambda$onTaskAppeared$4(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic j(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;Landroid/window/WindowContainerTransaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->lambda$onLocationChanged$0(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private synthetic lambda$notifyInitialized$7()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    invoke-interface {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;->onInitialized()V

    return-void
.end method

.method private synthetic lambda$notifyReleased$1()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    invoke-interface {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;->onReleased()V

    return-void
.end method

.method private synthetic lambda$onBackPressedOnTaskRoot$6(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;->onBackPressedOnTaskRoot(I)V

    return-void
.end method

.method private synthetic lambda$onLocationChanged$0(Landroid/window/WindowContainerTransaction;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSyncQueue:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private synthetic lambda$onTaskAppeared$3(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-virtual {p0, p2, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method

.method private synthetic lambda$onTaskAppeared$4(ILandroid/content/ComponentName;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic lambda$onTaskVanished$5(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;->onTaskRemovalStarted(I)V

    return-void
.end method

.method private synthetic lambda$prepareCloseAnimation$8(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;->onTaskRemovalStarted(I)V

    return-void
.end method

.method private synthetic lambda$prepareOpenAnimation$9(ZILandroid/content/ComponentName;)V
    .registers 5

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    invoke-interface {v0, p2, p3}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;->onTaskCreated(ILandroid/content/ComponentName;)V

    :cond_7
    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSurfaceCreated:Z

    if-nez p1, :cond_14

    :cond_d
    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    iget-boolean p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSurfaceCreated:Z

    invoke-interface {p1, p2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;->onTaskVisibilityChanged(IZ)V

    :cond_14
    return-void
.end method

.method private synthetic lambda$updateTaskVisibility$2(I)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    iget-boolean p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSurfaceCreated:Z

    invoke-interface {v0, p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;->onTaskVisibilityChanged(IZ)V

    return-void
.end method

.method private onLocationChanged(Landroid/window/WindowContainerTransaction;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1e
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method private performRelease()V
    .registers 3

    const-string v0, "performRelease: caller = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->removeListenerAllOfList(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->resetTaskInfo()V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mIsInitialized:Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->notifyReleased()V

    return-void
.end method

.method private prepareActivityOptions(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 3

    new-instance p0, Landroid/os/Binder;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setRemoveWithTaskOrganizer(Z)V

    return-void
.end method

.method private updateTaskVisibility()V
    .registers 5

    const-string v0, "updateTaskVisibility: mSurfaceCreated = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSurfaceCreated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    if-nez v0, :cond_26

    return-void

    :cond_26
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/quickstep/taskviewremoteanim/common/d;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, v3}, Lcom/oplus/quickstep/taskviewremoteanim/common/d;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->performRelease()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_e

    :cond_a
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public isInitialized()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mIsInitialized:Z

    return p0
.end method

.method public isReleased()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mReleased:Z

    return p0
.end method

.method public notifyInitialized()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mNotifiedForInitialized:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mNotifiedForInitialized:Z

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/quickstep/taskviewremoteanim/common/c;

    invoke-direct {v2, p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/c;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method

.method public notifyReleased()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mNotifiedForInitialized:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/common/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/taskviewremoteanim/common/c;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mNotifiedForInitialized:Z

    :cond_15
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_1e

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1e

    :cond_d
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    if-eqz v0, :cond_1e

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/common/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/oplus/quickstep/taskviewremoteanim/common/d;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 11

    const-wide/16 v0, 0x8

    const-string v2, "TaskView#onComputeInternalInsets"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpLocation:[I

    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpLocation:[I

    aget v7, v6, v4

    aget v6, v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v5, v7, v6, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_38
    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpLocation:[I

    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpLocation:[I

    aget v6, v5, v4

    aget v7, v5, v3

    aget v4, v5, v4

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpLocation:[I

    aget v3, v4, v3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTmpRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mObscuredTouchRegion:Landroid/graphics/Region;

    if-eqz p0, :cond_6c

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_6c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onLocationChanged()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->onLocationChanged(Landroid/window/WindowContainerTransaction;)V

    sget-object v1, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v2, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;Landroid/window/WindowContainerTransaction;)V

    invoke-static {v1, v2}, Lcom/oplus/util/OplusExecutors;->executeWithUx(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSurfaceCreated:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_23

    :cond_20
    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->updateTaskVisibility()V

    :goto_23
    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->onLocationChanged()V

    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p2

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSyncQueue:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/common/b;

    invoke-direct {v1, p0, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/b;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->runInSync(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_38
    iget-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    if-eqz p2, :cond_4a

    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/common/a;

    invoke-direct {v1, p0, p2, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/a;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4a
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(I)V

    :cond_b
    return-void
.end method

.method public onTaskListenerReleased()V
    .registers 1

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_2d

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2d

    :cond_d
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    if-eqz v0, :cond_1e

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/common/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/oplus/quickstep/taskviewremoteanim/common/d;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->resetTaskInfo()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public prepareCloseAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/quickstep/taskviewremoteanim/common/d;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lcom/oplus/quickstep/taskviewremoteanim/common/d;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_17
    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->resetTaskInfo()V

    return-void
.end method

.method public prepareHideAnimation(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-boolean p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSurfaceCreated:Z

    invoke-interface {p1, v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;->onTaskVisibilityChanged(IZ)V

    :cond_1c
    return-void
.end method

.method public prepareOpenAnimation(ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/window/WindowContainerTransaction;)V
    .registers 8

    iput-object p4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object p5, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSurfaceCreated:Z

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p4

    invoke-virtual {p2, p5, p4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    iget-object p5, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p4, p5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    iget-object p4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5, p5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-direct {p0, p6}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->onLocationChanged(Landroid/window/WindowContainerTransaction;)V

    goto :goto_39

    :cond_35
    const/4 p3, 0x1

    invoke-virtual {p6, p4, p3}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :goto_39
    iget-object p3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p3, :cond_46

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    :cond_46
    iget-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    if-eqz p2, :cond_5a

    iget-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object p4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance p5, Lcom/android/quickstep/e;

    invoke-direct {p5, p0, p1, p3, p2}, Lcom/android/quickstep/e;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;ZILandroid/content/ComponentName;)V

    invoke-interface {p4, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5a
    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mReleased:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->performRelease()V

    return-void
.end method

.method public resetTaskInfo()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public setListener(Ljava/util/concurrent/Executor;Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    if-nez v0, :cond_9

    iput-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to set a listener when one has already been set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setObscuredTouchRect(Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mObscuredTouchRegion:Landroid/graphics/Region;

    return-void
.end method

.method public setObscuredTouchRegion(Landroid/graphics/Region;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mObscuredTouchRegion:Landroid/graphics/Region;

    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 13

    invoke-direct {p0, p3, p4}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->prepareActivityOptions(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->prepareActivityOptions(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    iget-object p0, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const-class p3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    const/4 p3, 0x0

    :try_start_e
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Landroid/content/pm/LauncherApps;->startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->onLocationChanged()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSurfaceCreated:Z

    iput-boolean p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mIsInitialized:Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->notifyInitialized()V

    const-string p1, "TaskView"

    const-string v0, "surfaceCreated: mTaskToken = mTaskToken"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez p1, :cond_14

    return-void

    :cond_14
    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->updateTaskVisibility()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mSurfaceCreated:Z

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->updateTaskVisibility()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "TaskView:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_11

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_13

    :cond_11
    const-string p0, "null"

    :goto_13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
