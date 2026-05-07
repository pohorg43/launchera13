.class public Lcom/android/wm/shell/splitscreen/DividerOrientationController;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "DividerOrientationController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDividerRotationTips:Lcom/oplus/splitscreen/DividerRotationTips;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

.field private final mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

.field private final mSplitLayoutSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/function/Supplier;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/splitscreen/StageCoordinator;",
            "Lcom/android/wm/shell/splitscreen/MainStage;",
            "Lcom/android/wm/shell/splitscreen/SideStage;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->lambda$toggleDividerOrientation$2()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/oplus/splitscreen/DividerRotationTips;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mDividerRotationTips:Lcom/oplus/splitscreen/DividerRotationTips;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/android/wm/shell/common/TransactionPool;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->lambda$onStageTopActivityChanged$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/DividerOrientationController;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->lambda$toggleDividerOrientation$3(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/DividerOrientationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->lambda$onStageTopActivityChanged$1(Z)V

    return-void
.end method

.method private getTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_9

    return-object p0

    :cond_9
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.permissioncontroller"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    return-object p0

    :cond_18
    return-object v0
.end method

.method private synthetic lambda$onStageTopActivityChanged$0()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->toggleDividerOrientation()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wm/shell/R$string;->oplus_split_screen_vertical_orientation_unsupport:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$onStageTopActivityChanged$1(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isHorizontalDivision(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/splitscreen/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/b;-><init>(Lcom/android/wm/shell/splitscreen/DividerOrientationController;I)V

    const-wide/16 v1, 0xfa

    invoke-interface {p1, v0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_21

    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->setDividerRotationTipsVisible(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method private synthetic lambda$toggleDividerOrientation$2()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->toggleDividerOrientation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$toggleDividerOrientation$3(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueUpdateSurfaceBounds()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p2, p6}, Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p3, p6}, Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->deferUpdateSurfaceBounds()V

    new-instance p2, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;

    invoke-direct {p2, p0, p1, p5}, Lcom/android/wm/shell/splitscreen/DividerOrientationController$2;-><init>(Lcom/android/wm/shell/splitscreen/DividerOrientationController;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V

    invoke-virtual {p4, p2}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->start()V

    return-void
.end method

.method private onStageTopActivityChanged(ZLandroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 8

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_7
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->getTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->supportLandscapeOrientation(Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->supportLandscapeOrientation(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    if-eqz v0, :cond_28

    invoke-direct {p0, p3}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->supportLandscapeOrientation(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    if-eqz p1, :cond_32

    if-nez p2, :cond_32

    if-eqz p3, :cond_32

    if-nez v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    if-ne v3, v0, :cond_38

    if-nez v1, :cond_38

    return-void

    :cond_38
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/splitscreen/w;

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/splitscreen/w;-><init>(Lcom/android/wm/shell/splitscreen/DividerOrientationController;Z)V

    const-wide/16 v0, 0x1

    invoke-interface {p1, p2, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private setDividerRotationTipsVisible(Z)V
    .registers 3

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mDividerRotationTips:Lcom/oplus/splitscreen/DividerRotationTips;

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerRotationTips;->hide()V

    goto :goto_38

    :cond_a
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mDividerRotationTips:Lcom/oplus/splitscreen/DividerRotationTips;

    if-nez p1, :cond_21

    new-instance p1, Lcom/oplus/splitscreen/DividerRotationTips;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oplus/splitscreen/DividerRotationTips;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mDividerRotationTips:Lcom/oplus/splitscreen/DividerRotationTips;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    new-instance v0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController$1;-><init>(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    :cond_21
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz p1, :cond_38

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mDividerRotationTips:Lcom/oplus/splitscreen/DividerRotationTips;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/splitscreen/DividerRotationTips;->showAlongWithDivider(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    :cond_38
    :goto_38
    return-void
.end method

.method private supportLandscapeOrientation(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->getTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->supportLandscapeOrientation(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method private supportLandscapeOrientation(Landroid/content/ComponentName;)Z
    .registers 2

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->getInstance()Lcom/oplus/splitscreen/SplitScreenAppConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->inVerticalSplitEnableList(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public canToggleDividerOrientation()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->supportLandscapeOrientation(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->supportLandscapeOrientation(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public onDividerClicked()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mDividerRotationTips:Lcom/oplus/splitscreen/DividerRotationTips;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerRotationTips;->onDividerClicked()V

    :cond_7
    return-void
.end method

.method public onEnterForceVerticalSplit(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1, v1, p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onEnterForceVerticalSplit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStageTaskInfoChanged(ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->supportToggleDividerOrientation()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->getTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->getTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStageTaskInfoChanged, oldValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",newValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerOrientationController"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_3b

    if-nez p3, :cond_3b

    return-void

    :cond_3b
    if-eqz p2, :cond_44

    invoke-virtual {p2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    return-void

    :cond_44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->onStageTopActivityChanged(ZLandroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setResizingSplits(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->supportToggleDividerOrientation()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_d

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->setDividerRotationTipsVisible(Z)V

    :cond_d
    return-void
.end method

.method public supportToggleDividerOrientation()Z
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-boolean p0, Lcom/android/wm/shell/splitscreen/DividerOrientation;->sEnableForceHorizontalDivision:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public toggleDividerOrientation()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->hideTipsNoRecord()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/b;-><init>(Lcom/android/wm/shell/splitscreen/DividerOrientationController;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->addIdleHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toggleDividerOrientation(Ljava/lang/Runnable;)V
    .registers 21
    .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_119

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_119

    :cond_16
    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->toggleDividerOrientation()V

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v7, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    iget-object v8, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v8, v8, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-direct {v7, v8}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v7, v5}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v7}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v7

    invoke-static {v7}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v11

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v7, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    iget-object v9, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v9, v9, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-direct {v7, v9}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v7, v5}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v5, v8}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v5, v8}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-virtual {v5}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v5

    invoke-static {v5}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v14

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->deferUpdateSurfaceBounds()V

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->forceUpdateLayout()V

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    iget-object v5, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7, v6, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibilityWrapper(ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v10, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    iget-object v12, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {}, Lcom/android/wm/shell/ShellAnimThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    new-instance v15, Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;

    iget-object v12, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v13, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-direct {v15, v12, v6, v13}, Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZLcom/android/wm/shell/splitscreen/StageCoordinator;)V

    new-instance v13, Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;

    iget-object v12, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-direct {v13, v12, v8, v6}, Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZLcom/android/wm/shell/splitscreen/StageCoordinator;)V

    new-instance v12, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    invoke-direct {v12, v15}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;-><init>(Lcom/android/wm/shell/splitscreen/animation/Animatable;)V

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v6

    new-instance v8, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    move-object/from16 v16, v13

    const/4 v13, 0x0

    invoke-direct {v8, v4, v9, v6, v13}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    new-instance v13, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    move-object/from16 v17, v15

    const/4 v15, 0x1

    invoke-direct {v13, v4, v9, v6, v15}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    move-object v9, v13

    move-object/from16 v4, v16

    move-object v13, v5

    move-object/from16 v18, v17

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V

    new-instance v9, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    invoke-direct {v9, v4}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;-><init>(Lcom/android/wm/shell/splitscreen/animation/Animatable;)V

    new-instance v12, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    const/4 v8, 0x0

    invoke-direct {v12, v3, v7, v6, v8}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    new-instance v13, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;

    const/4 v8, 0x1

    invoke-direct {v13, v3, v7, v6, v8}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    move-object v6, v10

    move-object v10, v5

    move-object v14, v6

    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v3, v5}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v8, Lcom/android/wm/shell/splitscreen/a;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v3, v18

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/a;-><init>(Lcom/android/wm/shell/splitscreen/DividerOrientationController;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;Lcom/android/wm/shell/splitscreen/StageTaskAnimatable;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v8}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_119
    :goto_119
    return-void
.end method
