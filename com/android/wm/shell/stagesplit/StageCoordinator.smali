.class Lcom/android/wm/shell/stagesplit/StageCoordinator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;
.implements Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;
    }
.end annotation


# static fields
.field private static final NO_DISMISS:I = -0x2

.field private static final TAG:Ljava/lang/String; = "StageCoordinator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDismissTop:I
    .annotation build Lcom/android/wm/shell/stagesplit/SplitScreen$StageType;
    .end annotation
.end field

.field private mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

.field private final mDisplayId:I

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private mDividerVisible:Z

.field private mExitSplitScreenOnHide:Z

.field private mKeyguardOccluded:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

.field private final mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

.field private final mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

.field private final mMainUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

.field private final mOnTransitionAnimationComplete:Ljava/lang/Runnable;

.field private final mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

.field private final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

.field private final mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

.field private mSideStagePosition:I
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation
.end field

.field private final mSideUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

.field private mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field private final mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private mTopStageAfterFoldDismiss:I
    .annotation build Lcom/android/wm/shell/stagesplit/SplitScreen$StageType;
    .end annotation
.end field

.field private mUseLegacySplit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;Lx2/a;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;",
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Landroid/view/SurfaceSession;

    invoke-direct {v8}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v8, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v4, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    invoke-direct {v4, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V

    iput-object v4, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    new-instance v14, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    invoke-direct {v14, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V

    iput-object v14, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    const/4 v2, -0x2

    iput v2, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDismissTop:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTopStageAfterFoldDismiss:I

    new-instance v15, Lcom/android/wm/shell/stagesplit/y;

    invoke-direct {v15, v0, v1}, Lcom/android/wm/shell/stagesplit/y;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;I)V

    iput-object v15, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mOnTransitionAnimationComplete:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V

    iput-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    iput-object v9, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mContext:Landroid/content/Context;

    iput v10, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayId:I

    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object v11, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    invoke-interface/range {p11 .. p11}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    iput-object v5, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    invoke-interface/range {p11 .. p11}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    iput-object v3, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    new-instance v2, Lcom/android/wm/shell/stagesplit/MainStage;

    move-object v1, v2

    move-object v13, v2

    move-object/from16 v2, p5

    move-object/from16 v16, v3

    move/from16 v3, p2

    move-object/from16 v17, v5

    move-object/from16 v5, p3

    move-object v6, v8

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/stagesplit/MainStage;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/stagesplit/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;)V

    iput-object v13, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    new-instance v13, Lcom/android/wm/shell/stagesplit/SideStage;

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move/from16 v4, p2

    move-object v5, v14

    move-object/from16 v6, p3

    move-object v7, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/stagesplit/SideStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/stagesplit/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;)V

    iput-object v13, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iput-object v12, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-virtual {v12, v10, v13}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    invoke-virtual {v11, v10, v0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->registerListener(ILcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;)V

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v9, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual/range {p5 .. p5}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v4, Lcom/android/wm/shell/stagesplit/c;

    invoke-direct {v4, v0}, Lcom/android/wm/shell/stagesplit/c;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V

    invoke-direct {v3, v9, v4}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    new-instance v1, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-direct {v1, v3, v2, v15}, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/stagesplit/MainStage;Lcom/android/wm/shell/stagesplit/SideStage;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;Lx2/a;)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/stagesplit/MainStage;",
            "Lcom/android/wm/shell/stagesplit/SideStage;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;",
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move-object v2, p4

    move-object/from16 v3, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/view/SurfaceSession;

    invoke-direct {v4}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v4, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V

    iput-object v4, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    new-instance v4, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V

    iput-object v4, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    const/4 v4, 0x1

    iput v4, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    const/4 v4, -0x2

    iput v4, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDismissTop:I

    const/4 v4, -0x1

    iput v4, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTopStageAfterFoldDismiss:I

    new-instance v4, Lcom/android/wm/shell/stagesplit/y;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/stagesplit/y;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;I)V

    iput-object v4, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mOnTransitionAnimationComplete:Ljava/lang/Runnable;

    new-instance v5, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator$1;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V

    iput-object v5, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    move-object v5, p1

    iput-object v5, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mContext:Landroid/content/Context;

    iput v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayId:I

    move-object v5, p3

    iput-object v5, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object v2, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object v5, p5

    iput-object v5, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v5, p6

    iput-object v5, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    move-object v5, p7

    iput-object v5, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    move-object v5, p8

    iput-object v5, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v5, p9

    iput-object v5, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-virtual {p4, p2, p0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->registerListener(ILcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;)V

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    new-instance v1, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    move-object/from16 v2, p12

    invoke-direct {v1, v2, v3, v4}, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    invoke-interface/range {p14 .. p14}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    iput-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    invoke-interface/range {p14 .. p14}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    iput-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    invoke-virtual {v3, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->lambda$onLayoutSizeChanged$6(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/stagesplit/StageCoordinator;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayId:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/stagesplit/StageCoordinator;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/stagesplit/StageCoordinator;)Lcom/android/wm/shell/stagesplit/MainStage;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/stagesplit/StageTaskListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/stagesplit/StageCoordinator;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/stagesplit/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onStageRootTaskAppeared(Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onStageHasChildrenChanged(Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onStageVisibilityChanged(Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;IZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onStageChildTaskStatusChanged(Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;IZZ)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onStageRootTaskVanished(Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V

    return-void
.end method

.method private addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/stagesplit/StageTaskListener;)V
    .registers 3

    iget-object p0, p2, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string p2, "android.activity.launchRootTaskToken"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method private addDividerBarToTransition(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v1, Landroid/window/TransitionInfo$Change;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p0}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_1c

    const/4 v2, 0x3

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x4

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    if-eqz p3, :cond_41

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const p1, 0x7fffffff

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p2, v0, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_41
    return-void
.end method

.method private applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-boolean v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDividerVisible:Z

    if-eqz v1, :cond_2e

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_31

    :cond_2e
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_31
    return-void
.end method

.method private applyExitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    :goto_9
    invoke-virtual {v0, p2, v3}, Lcom/android/wm/shell/stagesplit/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    if-ne p1, v0, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, p2, v3}, Lcom/android/wm/shell/stagesplit/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/stagesplit/w;

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/stagesplit/w;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;I)V

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    invoke-direct {p0, v2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setDividerVisibility(Z)V

    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTopStageAfterFoldDismiss:I

    if-eqz p1, :cond_3c

    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    if-ne p1, p2, :cond_37

    goto :goto_38

    :cond_37
    move v1, v2

    :goto_38
    invoke-direct {p0, p3, v1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->logExitToStage(IZ)V

    goto :goto_3f

    :cond_3c
    invoke-direct {p0, p3}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->logExit(I)V

    :goto_3f
    return-void
.end method

.method private applyOutlineVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/stagesplit/SideStage;->getOutlineLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-boolean p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDividerVisible:Z

    if-eqz p0, :cond_18

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const p1, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1b

    :cond_18
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1b
    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/stagesplit/StageCoordinator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->lambda$new$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/stagesplit/StageCoordinator;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onFoldedStateChanged(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/stagesplit/StageCoordinator;ZZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->lambda$onStageVisibilityChanged$3(ZZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->lambda$onLayoutPositionChanging$4(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private exitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;I)V
    .registers 4

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/stagesplit/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->lambda$moveToSideStage$1(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->lambda$onLayoutSizeChanging$5(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private getMainStageBounds()Landroid/graphics/Rect;
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_11

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method private getSideStageBounds()Landroid/graphics/Rect;
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_11

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method private getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/stagesplit/StageTaskListener;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    iget-object v1, v0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_d

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v1, :cond_d

    return-object v0

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1a

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v0, :cond_1a

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private getStageType(Lcom/android/wm/shell/stagesplit/StageTaskListener;)I
    .registers 2
    .annotation build Lcom/android/wm/shell/stagesplit/SplitScreen$StageType;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x0

    goto :goto_7

    :cond_6
    const/4 p0, 0x1

    :goto_7
    return p0
.end method

.method public static synthetic h(Lcom/android/wm/shell/stagesplit/StageCoordinator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->lambda$applyExitSplitScreen$2(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$applyExitSplitScreen$2(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$moveToSideStage$1(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setDividerVisibility(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    :cond_f
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDismissTop:I

    return-void
.end method

.method private synthetic lambda$onLayoutPositionChanging$4(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$onLayoutSizeChanged$6(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$onLayoutSizeChanging$5(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$onStageVisibilityChanged$3(ZZLandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object p1, p1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p3}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    invoke-direct {p0, p3}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->applyOutlineVisibility(Landroid/view/SurfaceControl$Transaction;)V

    :cond_17
    return-void
.end method

.method private logExit(I)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;->logExit(IIIIIZ)V

    return-void
.end method

.method private logExitToStage(IZ)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    const/4 v1, -0x1

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStagePosition()I

    move-result v2

    goto :goto_b

    :cond_a
    move v2, v1

    :goto_b
    const/4 v3, 0x0

    if-eqz p2, :cond_15

    iget-object v4, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v4}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getTopChildTaskUid()I

    move-result v4

    goto :goto_16

    :cond_15
    move v4, v3

    :goto_16
    if-nez p2, :cond_1c

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStagePosition()I

    move-result v1

    :cond_1c
    move v5, v1

    if-nez p2, :cond_26

    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {p2}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getTopChildTaskUid()I

    move-result p2

    goto :goto_27

    :cond_26
    move p2, v3

    :goto_27
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v6

    move v1, p1

    move v3, v4

    move v4, v5

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;->logExit(IIIIIZ)V

    return-void
.end method

.method private onFoldedStateChanged(Z)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTopStageAfterFoldDismiss:I

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTopStageAfterFoldDismiss:I

    goto :goto_1d

    :cond_12
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTopStageAfterFoldDismiss:I

    :cond_1d
    :goto_1d
    return-void
.end method

.method private onStageChildTaskStatusChanged(Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;IZZ)V
    .registers 9

    const/4 v0, 0x1

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    if-ne p1, p3, :cond_9

    move p1, v0

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    const/4 p1, -0x1

    :goto_c
    if-nez p1, :cond_24

    iget-object p3, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStagePosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getTopChildTaskUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v3

    invoke-virtual {p3, v1, v2, v3}, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;->logMainStageAppChange(IIZ)V

    goto :goto_39

    :cond_24
    iget-object p3, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStagePosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getTopChildTaskUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v3

    invoke-virtual {p3, v1, v2, v3}, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;->logSideStageAppChange(IIZ)V

    :goto_39
    iget-object p3, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_40
    if-ltz p3, :cond_50

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;

    invoke-interface {v0, p2, p1, p4}, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;->onTaskStageChanged(IIZ)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_40

    :cond_50
    return-void
.end method

.method private onStageHasChildrenChanged(Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V
    .registers 9

    iget-boolean v0, p1, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    if-ne p1, v1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    if-nez v0, :cond_26

    const/4 v0, 0x7

    if-eqz p1, :cond_1a

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean v2, v2, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v2, :cond_1a

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;I)V

    goto :goto_44

    :cond_1a
    if-nez p1, :cond_44

    iget-boolean p1, v1, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;I)V

    goto :goto_44

    :cond_26
    if-eqz p1, :cond_44

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/stagesplit/MainStage;->activate(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->setBounds(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    invoke-virtual {p1}, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;->hasStartedSession()Z

    move-result p1

    if-nez p1, :cond_7d

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz p1, :cond_7d

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz p1, :cond_7d

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerPositionAsFraction()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStagePosition()I

    move-result v2

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getTopChildTaskUid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStagePosition()I

    move-result v4

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getTopChildTaskUid()I

    move-result v5

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;->logEnter(FIIIIZ)V

    :cond_7d
    return-void
.end method

.method private onStageRootTaskAppeared(Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V
    .registers 5

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/internal/R$bool;->config_useLegacySplit:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mUseLegacySplit:Z

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-boolean v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mUseLegacySplit:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_3c
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_41
    return-void
.end method

.method private onStageRootTaskVanished(Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    if-ne p1, v0, :cond_24

    :cond_8
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/stagesplit/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mUseLegacySplit:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_1f
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_24
    return-void
.end method

.method private onStageVisibilityChanged(Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;)V
    .registers 7

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mVisible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    if-eqz v0, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    if-nez p1, :cond_17

    if-nez v0, :cond_17

    move v4, v1

    goto :goto_18

    :cond_17
    move v4, v2

    :goto_18
    if-ne p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    if-eqz v1, :cond_21

    invoke-direct {p0, v3}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setDividerVisibility(Z)V

    :cond_21
    const/4 v2, 0x0

    if-eqz v4, :cond_3d

    iget-boolean p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mExitSplitScreenOnHide:Z

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    iget-object p1, p1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isSleeping:Z

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object p1, p1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isSleeping:Z

    if-nez p1, :cond_4e

    :cond_38
    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;I)V

    goto :goto_4e

    :cond_3d
    iget-boolean v4, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mKeyguardOccluded:Z

    if-eqz v4, :cond_4e

    if-eqz v0, :cond_46

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    goto :goto_4a

    :cond_46
    if-eqz p1, :cond_4a

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    :cond_4a
    :goto_4a
    const/4 p1, 0x4

    invoke-direct {p0, v2, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;I)V

    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/stagesplit/x;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/wm/shell/stagesplit/x;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;ZZ)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private sendOnStagePositionChanged()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_24

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStagePosition()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStagePosition()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method private sendSplitVisibilityChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;

    iget-boolean v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDividerVisible:Z

    invoke-interface {v1, v2}, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDividerVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;->onSplitVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    iget-boolean p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDividerVisible:Z

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;->onSplitVisibilityChanged(Z)V

    :cond_2e
    return-void
.end method

.method private setDividerVisibility(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDividerVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDividerVisible:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateUnfoldBounds()V

    goto :goto_17

    :cond_12
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->release()V

    :goto_17
    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->sendSplitVisibilityChanged()V

    return-void
.end method

.method private setSideStagePosition(IZLandroid/window/WindowContainerTransaction;)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->sendOnStagePositionChanged()V

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    if-nez p3, :cond_1a

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    goto :goto_22

    :cond_1a
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateUnfoldBounds()V

    :cond_22
    :goto_22
    return-void
.end method

.method private setSplitsVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iput-boolean p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iput-boolean p1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    return-void
.end method

.method private startPendingDismissAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 13

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getChildCount()I

    move-result p1

    const-string v0, ", "

    const-string v1, ""

    const-string v2, "] before startAnimation()."

    const-string v3, " to have been called with ["

    const-string v4, "Expected onTaskVanished on "

    const/4 v5, 0x0

    if-eqz p1, :cond_56

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v5

    :goto_19
    iget-object v7, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v7}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_37

    if-eqz v6, :cond_25

    move-object v7, v0

    goto :goto_26

    :cond_25
    move-object v7, v1

    :goto_26
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    iget-object v7, v7, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_37
    sget-object v6, Lcom/android/wm/shell/stagesplit/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_a1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v5

    :goto_64
    iget-object v7, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v7}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_82

    if-eqz v6, :cond_70

    move-object v7, v0

    goto :goto_71

    :cond_70
    move-object v7, v1

    :goto_71
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object v7, v7, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    :cond_82
    sget-object v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    invoke-direct {p0, v5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSplitsVisible(Z)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    const/16 v0, 0x12

    const/4 v1, 0x0

    if-ne p1, v0, :cond_bb

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    iget-object p1, p1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object p1, p1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_bb
    iget p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDismissTop:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d1

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setDividerVisibility(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    iput-object v1, p0, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    return v5

    :cond_d1
    invoke-direct {p0, p2, p3, v5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private startPendingEnterAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 12

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_be

    const/4 p1, 0x0

    const/4 v0, 0x0

    move v1, p1

    move-object v2, v0

    move-object v3, v2

    :goto_d
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_41

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-eqz v6, :cond_3e

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_3e

    :cond_2f
    invoke-direct {p0, v6}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/stagesplit/StageTaskListener;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getStageType(Lcom/android/wm/shell/stagesplit/StageTaskListener;)I

    move-result v6

    if-nez v6, :cond_3b

    move-object v2, v4

    goto :goto_3e

    :cond_3b
    if-ne v6, v5, :cond_3e

    move-object v3, v4

    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_41
    if-eqz v2, :cond_b6

    if-eqz v3, :cond_b6

    invoke-direct {p0, v5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setDividerVisibility(Z)V

    invoke-direct {p0, v5, p1, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;)V

    invoke-direct {p0, v5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSplitsVisible(Z)V

    invoke-direct {p0, p2, p3, v5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->containsTask(I)Z

    move-result p1

    const-string p2, " before startAnimation()."

    const-string p3, " to have been called with "

    const-string v0, "Expected onTaskAppeared on "

    if-nez p1, :cond_86

    sget-object p1, Lcom/android/wm/shell/stagesplit/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->containsTask(I)Z

    move-result p1

    if-nez p1, :cond_b5

    sget-object p1, Lcom/android/wm/shell/stagesplit/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    return v5

    :cond_b6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Launched 2 tasks in split, but didn\'t receive 2 tasks in transition. Possibly one of them failed to launch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_be
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported split-entry"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateUnfoldBounds()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;->onLayoutChanged(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;->onLayoutChanged(Landroid/graphics/Rect;)V

    :cond_18
    return-void
.end method

.method private updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    goto :goto_9

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    :goto_9
    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    goto :goto_10

    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    :goto_10
    iget-object v0, v1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v2, Lcom/android/wm/shell/stagesplit/StageCoordinator;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mDisplayId="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayId:I

    const-string v3, "mDividerVisible="

    invoke-static {p2, v2, p1, v1, v3}, Lcom/android/common/config/d;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDividerVisible:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MainStage"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isActive="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/stagesplit/MainStage;->isActive()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p2, "SideStage"

    invoke-static {v1, p2, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p2, "mSplitLayout="

    invoke-static {v1, p2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public exitSplitScreen(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    goto :goto_17

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->reorderChild(IZLandroid/window/WindowContainerTransaction;)V

    :cond_22
    invoke-direct {p0, v0, v1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    return-void
.end method

.method public exitSplitScreenOnHide(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mExitSplitScreenOnHide:Z

    return-void
.end method

.method public getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v12

    move-object v11, v12

    new-instance v1, Landroid/view/RemoteAnimationTarget;

    move-object v2, v1

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    new-instance v0, Landroid/graphics/Point;

    move-object v10, v0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/app/WindowConfiguration;

    move-object v13, v0

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7f2

    invoke-direct/range {v2 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v1
.end method

.method public getMainStagePosition()I
    .registers 1
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation

    iget p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public getOutlineLegacyTarget()Landroid/view/RemoteAnimationTarget;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    move-object v11, v12

    new-instance v1, Landroid/view/RemoteAnimationTarget;

    move-object v2, v1

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/stagesplit/SideStage;->getOutlineLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    new-instance v0, Landroid/graphics/Point;

    move-object v10, v0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/app/WindowConfiguration;

    move-object v13, v0

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7f2

    invoke-direct/range {v2 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v1
.end method

.method public getSideStagePosition()I
    .registers 1
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation

    iget p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    return p0
.end method

.method public getSplitItemPosition(Landroid/window/WindowContainerToken;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    iget-object v1, v1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStagePosition()I

    move-result p0

    return p0

    :cond_17
    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStagePosition()I

    move-result p0

    return p0

    :cond_2a
    return v0
.end method

.method public getSplitTransitions()Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    return-object p0
.end method

.method public getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_14
    return-object v2

    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->isSplitScreenVisible()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_c0

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v4, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_63

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v8, v2

    invoke-static {v3}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v10, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v10}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getChildCount()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v12}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getChildCount()I

    move-result v12

    int-to-long v12, v12

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v15, v7

    aput-object v2, v15, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v15, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v15, v5

    const-string v2, "  split is active so using splitTransition to handle request. triggerTask=%d type=%s mainChildren=%d sideChildren=%d"

    const v5, 0x618729f2

    const/16 v8, 0x51

    invoke-static {v14, v5, v8, v2, v15}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_63
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/stagesplit/StageTaskListener;

    move-result-object v5

    if-eqz v5, :cond_86

    invoke-static {v3}, Lcom/android/wm/shell/transition/Transitions;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {v5}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getChildCount()I

    move-result v1

    if-ne v1, v6, :cond_95

    invoke-direct {v0, v5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getStageType(Lcom/android/wm/shell/stagesplit/StageTaskListener;)I

    move-result v1

    if-nez v1, :cond_82

    move v1, v6

    goto :goto_83

    :cond_82
    move v1, v7

    :goto_83
    iput v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDismissTop:I

    goto :goto_95

    :cond_86
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    if-ne v1, v4, :cond_95

    invoke-static {v3}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_95

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDismissTop:I

    :cond_95
    :goto_95
    iget v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDismissTop:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_ca

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_b4

    invoke-static {v1}, Lcom/android/wm/shell/stagesplit/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x7350e1f4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    const-string v1, "  splitTransition  deduced Dismiss from request. toTop=%s"

    invoke-static {v3, v4, v7, v1, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b4
    iget v1, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDismissTop:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    goto :goto_ca

    :cond_c0
    if-eq v3, v6, :cond_c4

    if-ne v3, v5, :cond_ca

    :cond_c4
    invoke-direct {v0, v1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/stagesplit/StageTaskListener;

    move-result-object v0

    if-nez v0, :cond_cb

    :cond_ca
    :goto_ca
    return-object v2

    :cond_cb
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entering split implicitly with only one task isn\'t supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSplitScreenVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public logOnDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;->enterRequestedByDrag(ILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public moveToSideStage(Landroid/app/ActivityManager$RunningTaskInfo;I)Z
    .registers 5
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/android/wm/shell/stagesplit/MainStage;->activate(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/wm/shell/stagesplit/SideStage;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p2, Lcom/android/wm/shell/stagesplit/w;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/stagesplit/w;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;I)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;)V
    .registers 11

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p1, :cond_40

    new-instance p1, Lcom/android/wm/shell/common/split/SplitLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/wm/shell/stagesplit/StageCoordinator;->TAG:Ljava/lang/String;

    const-string v2, "SplitDivider"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

    iget-object v3, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    iget-object v6, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v7, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v8, 0x1

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/common/split/SplitLayout;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;I)V

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    if-eqz p1, :cond_40

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;->init()V

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideUnfoldController:Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageTaskUnfoldController;->init()V

    :cond_40
    return-void
.end method

.method public onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mDisplayAreaInfo:Landroid/window/DisplayAreaInfo;

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_1b

    iget-object p1, p1, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/stagesplit/MainStage;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    :cond_1b
    return-void
.end method

.method public onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Well that was unexpected..."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDoubleTappedDivider()V
    .registers 9

    iget v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStagePosition()I

    move-result v3

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getTopChildTaskUid()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStagePosition()I

    move-result v5

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getTopChildTaskUid()I

    move-result v6

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;->logSwap(IIIIZ)V

    return-void
.end method

.method public onKeyguardOccludedChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mKeyguardOccluded:Z

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 3

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/stagesplit/MainStage;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTopStageAfterFoldDismiss:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1a

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    goto :goto_16

    :cond_14
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    :goto_16
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;I)V

    :cond_1a
    return-void
.end method

.method public onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/stagesplit/v;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/stagesplit/v;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 5

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateUnfoldBounds()V

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/stagesplit/v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/stagesplit/v;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/stagesplit/SideStage;->setOutlineVisibility(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mLogger:Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerPositionAsFraction()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/stagesplit/SplitscreenEventLogger;->logResize(F)V

    return-void
.end method

.method public onLayoutSizeChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/stagesplit/v;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/stagesplit/v;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/SideStage;->setOutlineVisibility(Z)V

    return-void
.end method

.method public onSnappedToDismiss(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-ne p1, v1, :cond_e

    goto :goto_d

    :cond_9
    iget p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-nez p1, :cond_e

    :goto_d
    move v0, v1

    :cond_e
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_16

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->onSnappedToDismissTransition(Z)Landroid/os/IBinder;

    return-void

    :cond_16
    if-eqz v0, :cond_1b

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    goto :goto_1d

    :cond_1b
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    :goto_1d
    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/stagesplit/StageTaskListener;I)V

    return-void
.end method

.method public onSnappedToDismissTransition(Z)Landroid/os/IBinder;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;->startSnapToDismiss(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V
    .registers 7
    .param p1  # I
        .annotation build Lcom/android/wm/shell/stagesplit/SplitScreen$StageType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    invoke-virtual {v0, p2, v3}, Lcom/android/wm/shell/stagesplit/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    if-nez p1, :cond_11

    move v1, v2

    :cond_11
    invoke-virtual {p0, p2, v1}, Lcom/android/wm/shell/stagesplit/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->sendStatusToListener(Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method public removeFromSideStage(I)Z
    .registers 5

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/stagesplit/MainStage;->isActive()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    iget-object v2, v2, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v1, p1, v2, v0}, Lcom/android/wm/shell/stagesplit/SideStage;->removeTask(ILandroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return p1
.end method

.method public resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;
    .registers 8
    .param p1  # I
        .annotation build Lcom/android/wm/shell/stagesplit/SplitScreen$StageType;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroid/window/WindowContainerTransaction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_43

    if-eqz p1, :cond_2b

    if-ne p1, v1, :cond_1f

    if-eq p2, v2, :cond_f

    invoke-virtual {p0, p2, p4}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStagePosition()I

    move-result p2

    :goto_13
    if-nez p3, :cond_1b

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    move-object p3, p1

    :cond_1b
    invoke-virtual {p0, p3, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateActivityOptions(Landroid/os/Bundle;I)V

    goto :goto_58

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown stage="

    invoke-static {p2, p1}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    if-eq p2, v2, :cond_34

    if-nez p2, :cond_30

    move v0, v1

    :cond_30
    invoke-virtual {p0, v0, p4}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    goto :goto_38

    :cond_34
    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStagePosition()I

    move-result p2

    :goto_38
    if-nez p3, :cond_3f

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_3f
    invoke-virtual {p0, p3, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->updateActivityOptions(Landroid/os/Bundle;I)V

    goto :goto_58

    :cond_43
    if-eq p2, v2, :cond_55

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStagePosition()I

    move-result p1

    if-ne p2, p1, :cond_50

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_58

    :cond_50
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_58

    :cond_55
    invoke-virtual {p0, v2, p4}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    :goto_58
    return-object p3
.end method

.method public sendStatusToListener(Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStagePosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStagePosition()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0}, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;I)V

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;I)V

    return-void
.end method

.method public setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 13

    iget v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    goto :goto_9

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    :goto_9
    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    :goto_10
    new-instance v8, Landroid/window/WindowContainerTransaction;

    invoke-direct {v8}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v6, v1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object v2, p3

    move-object v3, v8

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/common/split/SplitLayout;->applyLayoutOffsetTarget(Landroid/window/WindowContainerTransaction;IILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v8}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public setSideStageOutline(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/stagesplit/SideStage;->enableOutline(Z)V

    return-void
.end method

.method public setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V
    .registers 4
    .param p1  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStagePosition(IZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public setSideStageVisibility(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/stagesplit/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->setVisibility(ZLandroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 16

    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    iget-object v3, v2, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    const/4 v4, 0x0

    if-eq p1, v3, :cond_c3

    iget-object v5, v2, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-eq p1, v5, :cond_c3

    invoke-virtual {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    if-nez v1, :cond_12

    return v4

    :cond_12
    move v1, v4

    :goto_13
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_aa

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_a6

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v5

    if-nez v5, :cond_34

    goto :goto_a6

    :cond_34
    invoke-direct {p0, v3}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/stagesplit/StageTaskListener;

    move-result-object v5

    if-nez v5, :cond_3b

    goto :goto_a6

    :cond_3b
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v6

    const-string v7, " before startAnimation()."

    const-string v8, " to have been called with "

    if-eqz v6, :cond_73

    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v2}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->containsTask(I)Z

    move-result v2

    if-nez v2, :cond_a6

    sget-object v2, Lcom/android/wm/shell/stagesplit/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected onTaskAppeared on "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    :cond_73
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/transition/Transitions;->isClosingType(I)Z

    move-result v2

    if-eqz v2, :cond_a6

    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v2}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->containsTask(I)Z

    move-result v2

    if-eqz v2, :cond_a6

    sget-object v2, Lcom/android/wm/shell/stagesplit/StageCoordinator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected onTaskVanished on "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    :cond_aa
    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_bb

    return v4

    :cond_bb
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Somehow removed the last task in a stage outside of a proper transition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c3
    iget-object v2, v2, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    const/4 v8, 0x1

    if-ne v2, p1, :cond_cd

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->startPendingEnterAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v2

    goto :goto_d5

    :cond_cd
    if-ne v3, p1, :cond_d4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->startPendingDismissAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v2

    goto :goto_d5

    :cond_d4
    move v2, v8

    :goto_d5
    if-nez v2, :cond_d8

    return v4

    :cond_d8
    iget-object v2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    iget-object v3, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    iget-object v3, v3, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object v0, v2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;->playAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V

    return v8
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;IILandroid/os/Bundle;Landroid/window/RemoteTransition;)V
    .registers 8
    .param p3  # I
        .annotation build Lcom/android/wm/shell/stagesplit/SplitScreen$StageType;
        .end annotation
    .end param
    .param p4  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param
    .param p5  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p3, p4, p5, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v0, p6, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    return-void
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/window/RemoteTransition;)V
    .registers 9
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz p2, :cond_8

    goto :goto_d

    :cond_8
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_d
    if-eqz p4, :cond_10

    goto :goto_15

    :cond_10
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_15
    invoke-virtual {p0, p5, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object p5, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p5, v1, v0}, Lcom/android/wm/shell/stagesplit/MainStage;->activate(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    iget-object p5, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p5, v1, v0}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->setBounds(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    iget-object p5, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-direct {p0, p2, p5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/stagesplit/StageTaskListener;)V

    iget-object p5, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-direct {p0, p4, p5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/stagesplit/StageTaskListener;)V

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, p3, p4}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;

    const/16 p2, 0x10

    invoke-virtual {p1, p2, v0, p6, p0}, Lcom/android/wm/shell/stagesplit/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    return-void
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/view/RemoteAnimationAdapter;)V
    .registers 15
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v2, Lcom/android/wm/shell/stagesplit/StageCoordinator$2;

    invoke-direct {v2, p0, p6}, Lcom/android/wm/shell/stagesplit/StageCoordinator$2;-><init>(Lcom/android/wm/shell/stagesplit/StageCoordinator;Landroid/view/RemoteAnimationAdapter;)V

    new-instance v7, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p6}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v3

    invoke-virtual {p6}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    if-nez p2, :cond_23

    invoke-static {v7}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    goto :goto_2e

    :cond_23
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p6

    invoke-static {v7}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {p6, v1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    :goto_2e
    if-eqz p4, :cond_31

    goto :goto_36

    :cond_31
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_36
    invoke-virtual {p0, p5, v0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object p5, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object p6

    invoke-virtual {p5, p6, v0}, Lcom/android/wm/shell/stagesplit/MainStage;->activate(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    iget-object p5, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-direct {p0}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p6

    invoke-virtual {p5, p6, v0}, Lcom/android/wm/shell/stagesplit/StageTaskListener;->setBounds(Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    iget-object p5, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    invoke-direct {p0, p2, p5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/stagesplit/StageTaskListener;)V

    iget-object p5, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    invoke-direct {p0, p4, p5}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/stagesplit/StageTaskListener;)V

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, p3, p4}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/stagesplit/SplitScreen$SplitScreenListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateActivityOptions(Landroid/os/Bundle;I)V
    .registers 4
    .param p2  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    goto :goto_9

    :cond_7
    iget-object p2, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    :goto_9
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/stagesplit/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/stagesplit/StageTaskListener;)V

    return-void
.end method

.method public updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 13

    iget v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStagePosition:I

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    goto :goto_9

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    :goto_9
    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mMainStage:Lcom/android/wm/shell/stagesplit/MainStage;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSideStage:Lcom/android/wm/shell/stagesplit/SideStage;

    :goto_10
    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    iget-object p1, p0, Lcom/android/wm/shell/stagesplit/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    :goto_15
    move-object v2, p1

    iget-object v4, v1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v5, v0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v6, v1, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    iget-object v7, v0, Lcom/android/wm/shell/stagesplit/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/common/split/SplitLayout;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Z)V

    return-void
.end method
