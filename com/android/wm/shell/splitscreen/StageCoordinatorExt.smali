.class public Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;,
        Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OplusZoomWindowObserver;,
        Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;
    }
.end annotation


# static fields
.field public static final KEY_SIMPLE_MODE_ENABLE:Ljava/lang/String; = "simple_mode_enabled"

.field public static final MIRAGE_ID_BASE:I = 0x2710

.field private static final PRIMARY_APP_NAME_KEY:Ljava/lang/String; = "primaryAppName"

.field public static final RECENTS_APP_NUMS:I = 0x4

.field private static final SECONDARY_APP_NAME_KEY:Ljava/lang/String; = "secondaryAppName"

.field private static final SET_ORIENTATION_RUNNABLE_TIMEOUT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "StageCoordinatorExt"

.field private static final TIMEOUT:I = 0xc8

.field public static final WINDOWING_MODE_COMPACTWINDOW:I = 0x78

.field public static final WINDOWING_MODE_ZOOM:I = 0x64


# instance fields
.field private final mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

.field private final mContext:Landroid/content/Context;

.field private mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

.field private final mDisplayId:I

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field private mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

.field private final mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

.field private mDividerShown:Z

.field private final mEnable:Z

.field private final mEnableControlBarMenu:Z

.field private final mEnableFakeSplitMode:Z

.field private final mEnableMinimizedSplit:Z

.field private final mEnableSplitTips:Z

.field private final mExitSplitForOneSideVisible:Ljava/lang/Runnable;

.field private mFakeSplitMode:Z

.field private mFoldedStateChange:Z

.field private mInGestureAnimation:Z

.field private mIsUnfold:Ljava/lang/Boolean;

.field private mKeyguardShowing:Z

.field private final mMainControlBarGlobalBounds:Landroid/graphics/Rect;

.field private final mMainControlBarListener:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

.field private final mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field private mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

.field private mNeedEnterMinimizedSplit:Z

.field private mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationTimeoutRunnable:Ljava/lang/Runnable;

.field private mPerformingSwapAnimation:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mRecentTasks:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSideControlBarGlobalBounds:Landroid/graphics/Rect;

.field private final mSideControlBarListener:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

.field private final mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

.field private final mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field private final mSplitLayoutSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplitScreenAnimator:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

.field private final mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field private mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private mUiMode:I

.field private final mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/util/function/Supplier;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/common/DisplayImeController;I)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/splitscreen/StageCoordinator;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/splitscreen/MainStage;",
            "Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;",
            "Lcom/android/wm/shell/splitscreen/SideStage;",
            "Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;",
            "Landroid/view/SurfaceSession;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/DisplayLayout;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p7

    move-object/from16 v14, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "persist.sys.minimized_split_feature_enable"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableMinimizedSplit:Z

    new-instance v3, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    invoke-direct {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitScreenAnimator:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    new-instance v15, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v15, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;)V

    iput-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarListener:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    new-instance v11, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    invoke-direct {v11, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;)V

    iput-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarListener:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    new-instance v5, Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-direct {v5}, Lcom/oplus/splitscreen/SplitScreenDefer;-><init>()V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    new-instance v5, Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-direct {v5}, Lcom/oplus/splitscreen/SplitScreenDefer;-><init>()V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarGlobalBounds:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarGlobalBounds:Landroid/graphics/Rect;

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerShown:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFoldedStateChange:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mInGestureAnimation:Z

    new-instance v3, Lcom/android/wm/shell/splitscreen/c1;

    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/splitscreen/c1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;I)V

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExitSplitForOneSideVisible:Ljava/lang/Runnable;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUiMode:I

    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mKeyguardShowing:Z

    new-instance v3, Lcom/android/wm/shell/splitscreen/c1;

    invoke-direct {v3, v0, v2}, Lcom/android/wm/shell/splitscreen/c1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;I)V

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOrientationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasColorSplitFeature()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnable:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableControlBarMenu:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableFakeSplitMode:Z

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableSplitTips:Z

    iput-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    move-object/from16 v10, p2

    iput-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iput-object v14, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    move-object/from16 v9, p3

    iput-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object/from16 v8, p5

    iput-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    const-string v2, "power"

    invoke-virtual {v12, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_ed

    new-instance v5, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    move-object v1, v5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object v12, v5

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p3

    move-object/from16 v10, p11

    move-object v14, v11

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v11}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;Ljava/util/function/Supplier;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    goto :goto_ee

    :cond_ed
    move-object v14, v11

    :goto_ee
    new-instance v10, Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p12

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/function/Supplier;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;)V

    iput-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-virtual {v13, v15}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setControlBarListener(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;)V

    move-object/from16 v1, p9

    move-object v2, v14

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setControlBarListener(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;)V

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mRecentTasks:Ljava/util/Optional;

    move/from16 v1, p16

    iput v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayId:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->createDividerMenu()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->createControlBarMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->registerNavigationModeChangeObserver()V

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->registerSimpleModeChangeObserver()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onRemoteAnimationCancelled$17(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarListener:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarGlobalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarGlobalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/oplus/splitscreen/SplitControlBarMenu;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    return-object p0
.end method

.method public static synthetic access$1802(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    return-object p1
.end method

.method public static synthetic access$1900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onControlBarClicked(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/MainStage;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/SideStage;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/DividerOrientationController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-object p0
.end method

.method public static synthetic access$800()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method private adjustSplitControlBarVisibility(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eqz v1, :cond_44

    if-nez p1, :cond_11

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_44

    :cond_11
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;->DEVICE_FOLD:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->addControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->addControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_41

    :cond_2d
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;->DEVICE_FOLD:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->removeControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->removeControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    :goto_41
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_44
    :goto_44
    return-void
.end method

.method private adjustZoomOrMirageModeWhenPairIntent(Landroid/content/Intent;Landroid/content/Intent;II)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-eqz v1, :cond_172

    if-eqz v2, :cond_172

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v5

    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isEncryptAndNoPassApp(Landroid/content/Intent;I)Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_41

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_40

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v13, 0x44000000  # 512.0f

    const/4 v14, 0x0

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, v0, v8, v7, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_40
    return v9

    :cond_41
    invoke-virtual {v0, v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isEncryptAndNoPassApp(Landroid/content/Intent;I)Z

    move-result v6

    if-eqz v6, :cond_69

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_68

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v13, 0x44000000  # 512.0f

    const/4 v14, 0x0

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, v0, v8, v7, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_68
    return v9

    :cond_69
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTasks()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v11}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->setPendingUpdateRecommendAppPair(Landroid/util/Pair;)V

    if-eqz v6, :cond_134

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-eqz v11, :cond_134

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v11

    sub-int/2addr v11, v9

    :goto_8c
    if-ltz v11, :cond_134

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v9}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    if-eqz v9, :cond_130

    iget-object v12, v9, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_130

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_130

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b0

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_130

    :cond_b0
    sget-object v13, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v14, "adjustZoomOrMirageModeWhenPairIntent mTargetPkg:"

    const-string v15, " pkg1:"

    const-string v8, " pkg2:"

    invoke-static {v14, v12, v15, v7, v8}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " displayId:"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " windowMode:"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/16 v13, 0x2710

    if-lt v8, v13, :cond_108

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e9

    goto :goto_ea

    :cond_e9
    move v3, v4

    :goto_ea
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    move-object v8, v1

    goto :goto_f3

    :cond_f2
    move-object v8, v2

    :goto_f3
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v9, 0x44000000  # 512.0f

    const/4 v10, 0x0

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_106
    const/4 v0, 0x1

    return v0

    :cond_108
    const/4 v8, 0x0

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v12

    const/16 v13, 0x64

    if-ne v12, v13, :cond_130

    const/16 v12, 0xe

    invoke-static {v12}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusZoomWindowManager_hideZoomWindow(I)V

    new-instance v12, Landroid/window/WindowContainerTransaction;

    invoke-direct {v12}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v13, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v12, v13, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v13, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v12, v9, v14}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v9, v12}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_130
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_8c

    :cond_134
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v1, :cond_172

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getPkgInMinimized()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_172

    const-string v2, ":999"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_154

    const/16 v2, 0x3e7

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_155

    :cond_154
    const/4 v2, 0x0

    :goto_155
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_161

    if-ne v2, v3, :cond_161

    invoke-direct {v0, v10, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentFromPkg(Ljava/lang/String;I)V

    goto :goto_106

    :cond_161
    const/4 v5, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16e

    if-ne v2, v4, :cond_16e

    invoke-direct {v0, v7, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentFromPkg(Ljava/lang/String;I)V

    return v5

    :cond_16e
    invoke-direct {v0, v10, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentFromPkg(Ljava/lang/String;I)V

    return v5

    :cond_172
    const/4 v0, 0x0

    return v0
.end method

.method private attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    :cond_d
    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitSplitScreenForOneStageVisible()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startIntentAndTaskWithSlideAnim$3(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V

    return-void
.end method

.method private createDividerMenu()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnable:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/oplus/splitscreen/DividerMenu;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$2;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/splitscreen/DividerMenu;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Lcom/oplus/splitscreen/DividerMenu$SplitMenuPolicy;Lcom/oplus/splitscreen/DividerMenu$SplitMenuHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$exitSplitScreenWithSlideAnim$8(Landroid/view/SurfaceControl;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startPairIntent$1(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private enterMinimizedSplit(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v0, :cond_85

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    if-eqz v1, :cond_85

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterMinimizedSplit(I)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result p1

    if-nez p1, :cond_19

    return-void

    :cond_19
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_4f

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->sendRecommendAppListToLauncher(Ljava/lang/String;Landroid/content/Context;)V

    :cond_4f
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez p1, :cond_85

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz p1, :cond_85

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_85

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->sendRecommendAppListToLauncher(Ljava/lang/String;Landroid/content/Context;)V

    :cond_85
    return-void
.end method

.method private enterNormalSplit()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterNormalSplit(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->showTips()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    return-void
.end method

.method private exitMinimizedSplit(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->exitMinimizedSplit(Z)V

    :cond_7
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    return-void
.end method

.method private exitSplitScreenForOneStageVisible()V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_12

    move v3, v4

    goto :goto_13

    :cond_12
    move v3, v5

    :goto_13
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v6, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v6, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v6, :cond_20

    goto :goto_21

    :cond_20
    move v4, v5

    :goto_21
    if-eqz v3, :cond_34

    if-eqz v4, :cond_34

    if-eqz v1, :cond_28

    goto :goto_29

    :cond_28
    move-object v0, v2

    :goto_29
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    :cond_34
    return-void
.end method

.method private exitSplitScreenWithSlideAnim(ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
    .registers 22

    move-object/from16 v8, p0

    move/from16 v0, p2

    move-object/from16 v7, p3

    move-object/from16 v2, p4

    if-eqz p1, :cond_d

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_f

    :cond_d
    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_f
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v1

    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v9, :cond_2c

    iget-object v4, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_2c
    new-instance v10, Lcom/android/common/util/c;

    invoke-direct {v10, v8, v3, v0, v1}, Lcom/android/common/util/c;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;II)V

    if-eqz p1, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_3c

    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_3c
    move-object v11, v0

    if-eqz p1, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_48

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_48
    move-object v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v13

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v8, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget v1, v11, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, v11, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v7, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget v1, v12, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, v12, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v7, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    new-instance v14, Lcom/android/wm/shell/splitscreen/d1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p1

    move-object v4, v9

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/d1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V

    new-instance v15, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;

    move-object v0, v15

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_b4

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    sget-object v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->CONTROLLED_ACTIVITY_TYPES:[I

    move-object v0, v6

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    :cond_b4
    if-eqz v9, :cond_bb

    iget-object v0, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v6, v0, v11}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_bb
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v15, v1, v6}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private exitSplitScreenWithSlideAnim(I)Z
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->peekTaskLeash(I)Landroid/view/SurfaceControl;

    move-result-object v7

    if-nez v7, :cond_1c

    return v1

    :cond_1c
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_32

    :cond_28
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_32
    :goto_32
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    const/4 v9, 0x1

    if-ne v2, v3, :cond_39

    move v5, v9

    goto :goto_3a

    :cond_39
    move v5, v1

    :goto_3a
    if-eqz v5, :cond_3e

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_3e
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->peekTaskLeash(I)Landroid/view/SurfaceControl;

    move-result-object v8

    if-nez v8, :cond_4b

    return v1

    :cond_4b
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v10, Lcom/android/wm/shell/splitscreen/f1;

    move-object v3, v10

    move-object v4, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/splitscreen/f1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v0, v2, v10}, Lcom/android/wm/shell/ShellTaskOrganizer;->screenshotTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return v9
.end method

.method public static synthetic f(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$new$0()V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$moveToSplitScreen$2(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private getEnableMinimalOverlayStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDisplaySupport()Z

    move-result v2

    if-nez v2, :cond_13

    return-object v1

    :cond_13
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->atFirstSplitTarget()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-nez v2, :cond_28

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_2a

    :cond_28
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_2a
    move-object v1, p0

    goto :goto_3e

    :cond_2c
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->atLastSplitTarget()Z

    move-result v0

    if-eqz v0, :cond_3e

    if-nez v2, :cond_3b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_2a

    :cond_3b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_2a

    :cond_3e
    :goto_3e
    return-object v1
.end method

.method private getSwapDividerPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-nez p0, :cond_16

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_16

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-lez p0, :cond_11

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_21

    :cond_11
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_21

    :cond_16
    if-lez p0, :cond_1d

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_21

    :cond_1d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_21
    return p0
.end method

.method private getSwapSidePosition(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;)I
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-ne p1, v0, :cond_c

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_c

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_18

    :cond_c
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, p0, :cond_1a

    iget p0, p2, Landroid/graphics/Rect;->left:I

    if-nez p0, :cond_18

    iget p0, p2, Landroid/graphics/Rect;->top:I

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x1

    :goto_1b
    return p0
.end method

.method public static synthetic h(ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$removePairIfNeeded$16(ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startIntentAndTaskWithAnim$5(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$exitSplitScreenWithSlideAnim$6(ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startSwapTask$9(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$exitSplitScreenWithSlideAnim$7(Landroid/window/WindowContainerTransaction;II)V

    return-void
.end method

.method private synthetic lambda$continueApplyDividerVisibility$14(Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyDividerVisibilityWrapper(Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method private synthetic lambda$continueApplyDividerVisibility$15(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/r0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/r0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private synthetic lambda$delaySetLayoutOffsetTarget$18(IILcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V

    return-void
.end method

.method private synthetic lambda$exitSplitScreenWithSlideAnim$6(ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitSplitScreenWithSlideAnim(ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V

    return-void
.end method

.method private synthetic lambda$exitSplitScreenWithSlideAnim$7(Landroid/window/WindowContainerTransaction;II)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-static {p2, p3}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_removeSelfSplitTaskIfNeed(II)V

    return-void
.end method

.method private synthetic lambda$exitSplitScreenWithSlideAnim$8(Landroid/view/SurfaceControl;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 8

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-eqz p2, :cond_a

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_c

    :cond_a
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_c
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz p3, :cond_1e

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {v0, p1, v1, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1e
    if-eqz p2, :cond_23

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_25

    :cond_23
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_25
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p4, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz p5, :cond_37

    iget-object p0, p5, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, p4, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_37
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method private synthetic lambda$moveToSplitScreen$2(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setSplitRequestedOrientation(I)V

    return-void
.end method

.method private synthetic lambda$onRemoteAnimationCancelled$17(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setShouldUpdateRecents(Z)V

    return-void
.end method

.method private static synthetic lambda$onRootTaskInfoChanged$10(Landroid/view/SurfaceControl$Transaction;)V
    .registers 1

    invoke-static {}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_notifyFoldUpdatingComplete()V

    return-void
.end method

.method private synthetic lambda$onStageVisibilityChanged$12(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$onStageVisibilityChanged$13(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private static synthetic lambda$removePairIfNeeded$16(ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    return-void
.end method

.method private synthetic lambda$startIntentAndTaskWithAnim$5(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$startIntentAndTaskWithSlideAnim$3(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
    .registers 16

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method private synthetic lambda$startIntentAndTaskWithSlideAnim$4(Landroid/window/WindowContainerTransaction;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueApplyDividerVisibility(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private synthetic lambda$startPairIntent$1(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private synthetic lambda$startSwapTask$9(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibilityWrapper(ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->deferUpdateSurfaceBounds()V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitScreenAnimator:Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v7, p3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v8, p3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$7;

    invoke-direct {v9, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$7;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->startSwapAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private synthetic lambda$updateMinimalTaskOverlay$11(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onClickExchangeMenu(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->toggleFirstLastSplitTarget(Z)V

    :cond_15
    return-void
.end method

.method public static synthetic m(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onStageVisibilityChanged$13(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onStageVisibilityChanged$12(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;IILcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$delaySetLayoutOffsetTarget$18(IILcom/android/wm/shell/common/split/SplitLayout;)V

    return-void
.end method

.method private offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p4, :cond_13

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1e

    :cond_13
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    :goto_1e
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method private offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-object p0
.end method

.method private offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private onClickExchangeMenu(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_18

    move-object v2, v0

    goto :goto_19

    :cond_18
    move-object v2, v1

    :goto_19
    if-eqz p1, :cond_1c

    move-object v0, v1

    :cond_1c
    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result p1

    goto :goto_2b

    :cond_25
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p1

    :goto_2b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenExchangeMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private onControlBarClicked(ZLandroid/view/View;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_a3

    :cond_16
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_30

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_32

    :cond_30
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_32
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    const-wide/32 v2, 0xa4cb800

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_getRecentUsedApp(IJZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_70
    new-instance v1, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/wm/shell/R$drawable;->split_screen_all_apps_icon_1:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "allApps"

    invoke-direct {v1, v3, v2}, Lcom/oplus/splitscreen/SplitControlBarMenu$AppMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v3, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    const/high16 v1, 0x41000000  # 8.0f

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {v2, p1, v3, p0, v0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->showAtLocation(ZIILjava/util/List;)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method private onUnfoldStateChanged(Ljava/lang/Boolean;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->adjustSplitControlBarVisibility(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$startIntentAndTaskWithSlideAnim$4(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic q(Landroid/view/SurfaceControl$Transaction;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$onRootTaskInfoChanged$10(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$updateMinimalTaskOverlay$11(Z)V

    return-void
.end method

.method private registerNavigationModeChangeObserver()V
    .registers 5

    const-string v0, "navigation_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$10;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$10;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/os/Handler;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerSimpleModeChangeObserver()V
    .registers 5

    const-string/jumbo v0, "simple_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/os/Handler;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$continueApplyDividerVisibility$14(Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private setFakeSplitMode(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableFakeSplitMode:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    if-ne v0, p1, :cond_a

    return-void

    :cond_a
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateFakeSplitMode()V

    return-void
.end method

.method private splitWindowManager_setConfiguration(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/content/res/Configuration;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "mSplitWindowManager"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_30

    :catch_18
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "splitWindowManager_setConfiguration failed catch:"

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method private startIntentAndTaskWithAnim(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    :goto_9
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v3, :cond_1c

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startIntentAndTaskWithAnim fail, null SplitLayout"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1c
    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez p5, :cond_2e

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p5

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p5

    :cond_2e
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v5, p6, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p6}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p6

    if-nez p6, :cond_40

    iget-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p6, v4, v0}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_40
    iget-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p6, v3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBoundsWrapper(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    iget-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v0

    invoke-virtual {p6, p5, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateActivityOptions(Landroid/os/Bundle;I)V

    if-eqz v2, :cond_54

    invoke-virtual {v4, p3, p4, p5}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_57

    :cond_54
    invoke-virtual {v4, p2, p5}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    :goto_57
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p2, p1, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v4, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p1, p7, v1, v4}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;ILandroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p2, Lcom/android/wm/shell/splitscreen/z0;

    invoke-direct {p2, p0, v3, v1}, Lcom/android/wm/shell/splitscreen/z0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return v1
.end method

.method private startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 17

    move-object v8, p0

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEvictChildTasks(ILandroid/window/WindowContainerTransaction;)V

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEvictChildTasks(ILandroid/window/WindowContainerTransaction;)V

    move-object v6, p1

    :try_start_13
    iget-object v1, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-ge v1, v3, :cond_26

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    new-instance v2, Lcom/android/wm/shell/splitscreen/f0;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/splitscreen/f0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;)V

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move/from16 v4, p7

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->deferApplyDividerVisibility()V

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentAndTaskWithAnim(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;)Z

    move-result v0

    if-nez v0, :cond_4b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueApplyDividerVisibility(Ljava/lang/Runnable;)V

    :cond_4b
    return-void
.end method

.method private startIntentFromPkg(Ljava/lang/String;I)V
    .registers 20

    move-object/from16 v0, p0

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->getStashPositionInMinimized()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_5d

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x44000000  # 512.0f

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3, v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateActivityOptions(Landroid/os/Bundle;I)V

    :try_start_38
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v2

    invoke-virtual/range {v9 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_5d

    :catch_45
    move-exception v0

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startIntentFromPkg e:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    return-void
.end method

.method public static synthetic t(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->lambda$continueApplyDividerVisibility$15(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDividerPosition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_54

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sideDividerPosition:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_54
    return-void
.end method

.method private updateFakeSplitMode()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableFakeSplitMode:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;->FAKE_SPLIT:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->addControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->addControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->setDividerShow(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->setDividerShow(Z)V

    goto :goto_4a

    :cond_36
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;->FAKE_SPLIT:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->removeControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->removeControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    :goto_4a
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4d} :catch_4d

    :catch_4d
    return-void
.end method

.method private updateSplitStageControlBarRegion(IIZ)V
    .registers 5

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_7
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getSplitControlBarLocalBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->offsetControlBarBoundsToGlobal(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p3, :cond_1a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarGlobalBounds:Landroid/graphics/Rect;

    goto :goto_1c

    :cond_1a
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarGlobalBounds:Landroid/graphics/Rect;

    :goto_1c
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    xor-int/lit8 p0, p3, 0x1

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setSplitControlBarRegion(Landroid/graphics/Rect;Z)V

    :cond_24
    return-void
.end method


# virtual methods
.method public addOnStageHasChildrenChangeListener(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustTaskStateBeforeExitSplitScreen(ILcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    const/4 v0, -0x1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_48

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setSplitToZoomTaskId(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setSplitToZoomTaskId(I)V

    if-eq p1, v0, :cond_52

    iget-object p0, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_52

    sget-object p1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyExitSplitScreen, change:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to zoom"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/16 p2, 0x64

    invoke-virtual {p3, p1, p2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 p1, 0x1

    invoke-virtual {p3, p0, p1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_52

    :cond_48
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setSplitToZoomTaskId(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->setSplitToZoomTaskId(I)V

    :cond_52
    :goto_52
    return-void
.end method

.method public afterApplyExitSplitScreen(ILcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/splitscreen/DividerMenu;->hideMenuIfNeed()V

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->hideMenu()V

    :cond_e
    const/4 v0, 0x4

    if-ne v0, p1, :cond_24

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p2, v0, :cond_1d

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_1d
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_removeSelfSplitTaskIfNeed(II)V

    :cond_24
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitScreenDefer;->reset()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->reset()V

    return-void
.end method

.method public applyMinimalTaskChanges(Landroid/window/WindowContainerTransaction;)V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDeviceSupport()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getEnableMinimalOverlayStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object p0

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_15
    return-void
.end method

.method public attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public canDropAtPosition(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-ne v0, p1, :cond_b

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_d

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_d
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->isMinimalTaskOverlayEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public cancelDividerFadeAnimator()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerFadeAnimator()Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v1, "cancelDividerFadeAnimator"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_18
    return-void
.end method

.method public clearLaunchRootTask(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_9
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1, p1}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    :cond_11
    return-void
.end method

.method public continueApplyDividerVisibility(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    new-instance v1, Lcom/android/wm/shell/splitscreen/f0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/f0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitScreenDefer;->goOn(Ljava/lang/Runnable;)V

    return-void
.end method

.method public continueUpdateSurfaceBounds()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/SplitScreenDefer;->goOn(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createControlBarMenu()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableControlBarMenu:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/oplus/splitscreen/SplitControlBarMenu;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$3;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/splitscreen/SplitControlBarMenu;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/oplus/splitscreen/SplitControlBarMenu$SplitControlBarMenuHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    return-void
.end method

.method public deferApplyDividerVisibility()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->defer()V

    return-void
.end method

.method public deferUpdateSurfaceBounds()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->defer()V

    return-void
.end method

.method public delaySetLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isWhiteSwanDevice()Z

    move-result v1

    invoke-virtual {p3}, Lcom/android/wm/shell/common/split/SplitLayout;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p4, p4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p4, p5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p4, p4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-static {p4}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(I)Z

    move-result p4

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object p5

    invoke-virtual {p5}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result p5

    const/4 v4, 0x1

    if-ne p4, p5, :cond_76

    if-eqz v1, :cond_75

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p5

    if-le p4, p5, :cond_65

    move p4, v4

    goto :goto_66

    :cond_65
    move p4, v0

    :goto_66
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le p5, v1, :cond_72

    move p5, v4

    goto :goto_73

    :cond_72
    move p5, v0

    :goto_73
    if-ne p4, p5, :cond_76

    :cond_75
    return v0

    :cond_76
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result p4

    if-eqz p4, :cond_81

    return v0

    :cond_81
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p4

    if-eqz p4, :cond_8c

    return v0

    :cond_8c
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p4

    if-nez p4, :cond_a1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result p4

    if-nez p4, :cond_a1

    return v0

    :cond_a1
    invoke-static {}, Lcom/android/wm/shell/ShellMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    if-nez p4, :cond_a8

    return v0

    :cond_a8
    sget-object p5, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delaySetLayoutOffsetTarget configBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",rootBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unfold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p5, Lcom/android/common/util/c;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/android/common/util/c;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;IILcom/android/wm/shell/common/split/SplitLayout;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p4, p5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v4
.end method

.method public exitSplitScreenByType(II)V
    .registers 6

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitSplitScreenByType, toTopTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v1

    if-nez v1, :cond_2c

    const-string p0, "exitSplitScreenByType, split screen is not active"

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    const/16 v0, 0xc8

    if-eq p2, v0, :cond_35

    const/16 v0, 0xc9

    if-eq p2, v0, :cond_3c

    goto :goto_6e

    :cond_35
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitSplitScreenWithSlideAnim(I)Z

    move-result p2

    if-eqz p2, :cond_3c

    goto :goto_6e

    :cond_3c
    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_52

    :cond_48
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_5e

    move p1, v1

    goto :goto_5f

    :cond_5e
    move p1, v0

    :goto_5f
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p2, v2, :cond_65

    move p2, v1

    goto :goto_66

    :cond_65
    move p2, v0

    :goto_66
    if-ne p2, p1, :cond_69

    move v0, v1

    :cond_69
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(ZZ)V

    :goto_6e
    return-void
.end method

.method public findTaskInfo(ZI)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->findTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->findTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMainStageBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_21

    :cond_15
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    :goto_21
    return-object p0
.end method

.method public getRootBounds()Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getSideStageBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_21

    :cond_15
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p0

    :goto_21
    return-object p0
.end method

.method public getSplitAppName()Ljava/util/HashMap;
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSplitScreenMode()Z

    move-result v1

    if-nez v1, :cond_17

    if-eqz v0, :cond_53

    :cond_17
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_53

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_3b

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "primaryAppName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_52

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "secondaryAppName"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    return-object v0

    :cond_53
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    return-object p0
.end method

.method public getStagePackageName(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_17
    return-object p0
.end method

.method public getSurfaceForTask(I)Landroid/view/SurfaceControl;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->peekTaskLeash(I)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getTargetPosTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_d
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v1

    if-nez v1, :cond_18

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_1a

    :cond_18
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_1a
    if-eqz p1, :cond_1f

    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_1f
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getZoomTaskSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getZoomTaskSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public hasChildTask(Z)Z
    .registers 2

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->hasChildTask()Z

    move-result p0

    return p0

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->hasChildTask()Z

    move-result p0

    return p0
.end method

.method public hideImeDimLayerWhenRemoveImeSurface()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    goto :goto_d

    :cond_b
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    :goto_d
    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    goto :goto_14

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :goto_14
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p0, :cond_26

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v0, "hideImeDimLayerWhenRemoveImeSurface fail, null SplitLayout"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->hideImeDimLayerWhenRemoveImeSurface(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public hideTips()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableSplitTips:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->hideTipsIfNeed(Z)V

    :cond_12
    return-void
.end method

.method public hideTipsNoRecord()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableSplitTips:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFakeSplitMode:Z

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->hideTipsIfNeed(Z)V

    :cond_16
    return-void
.end method

.method public hideZoomWindowWhenSplitPairStart(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)Z
    .registers 20

    move v2, p1

    move v4, p3

    move-object v1, p0

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTasks()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eqz v5, :cond_6e

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    :goto_18
    if-ltz v5, :cond_6e

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TaskAppearedInfo;

    if-eqz v6, :cond_6b

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_6b

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-nez v6, :cond_35

    return v3

    :cond_35
    sget-object v7, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v8, "hideZoomWindowWhenSplitPairStart mainTaskId:"

    const-string v10, " sideTaskId:"

    const-string v11, " mTaskInfo:"

    invoke-static {v8, p1, v10, p3, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v8, v10, v7}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v6, v2, :cond_4c

    if-ne v6, v4, :cond_6b

    :cond_4c
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusZoomWindowManager_hideZoomWindow(I)V

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v10

    new-instance v11, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    invoke-virtual {v10, v11}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    return v9

    :cond_6b
    add-int/lit8 v5, v5, -0x1

    goto :goto_18

    :cond_6e
    return v3
.end method

.method public inGestureAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mInGestureAnimation:Z

    return p0
.end method

.method public inSwapAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    return p0
.end method

.method public interceptStartTaskOrIntentToSplit(ILandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 16

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSplitScreenMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result v4

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v2, -0x1

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez v0, :cond_2d

    return v1

    :cond_2d
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZLandroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;I)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->addOnStageHasChildrenChangeListener(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isApplyDividerVisibilityDeferred()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->isDeferred()Z

    move-result p0

    return p0
.end method

.method public isCompactWindowWhenStartWithLegacyTransition(I)Z
    .registers 7

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTasks()Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_20
    if-ltz v0, :cond_5e

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskAppearedInfo;

    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v4, p1, :cond_5b

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_5b

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "taskId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is compact window when startWithLegacyTransition"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5b
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_5e
    return v1
.end method

.method public isEncryptAndNoPassApp(Landroid/content/Intent;I)Z
    .registers 9

    invoke-static {p2}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isPrivacySwitchStateEnable(I)Z

    move-result p0

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/oplus/app/OPlusAccessControlManager;->getInstance()Lcom/oplus/app/OPlusAccessControlManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/app/OPlusAccessControlManager;->isEncryptPass(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_1f
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    sget-object v2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEncryptPassApp() isEncryptedPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",packName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",userId="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",isEncryptAndNoPassApp="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",isEnable="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isIncludeTask(ZI)Z
    .registers 3

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->isIncludeTask(I)Z

    move-result p0

    return p0

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->isIncludeTask(I)Z

    move-result p0

    return p0
.end method

.method public isLandscape()Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez p0, :cond_13

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v0, "isLandscape fail, null SplitLayout"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_13
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result p0

    return p0
.end method

.method public isMainStageActive()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isMinimized()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isMinimized()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isSplitDecorManagerIdle(Z)Z
    .registers 2

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isSplitDecorManagerIdle()Z

    move-result p0

    return p0

    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isSplitDecorManagerIdle()Z

    move-result p0

    return p0
.end method

.method public isUpdateSurfaceBoundsDeferred()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUpdateSurfaceBoundsDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDefer;->isDeferred()Z

    move-result p0

    return p0
.end method

.method public maintainSplitToZoomTaskState(IZ)V
    .registers 3

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_maintainSplitToZoomTaskState(IZ)V

    return-void
.end method

.method public moveToSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)Z
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string p1, "moveToSplitScreen fail, null SplitLayout"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_13
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-nez p1, :cond_23

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string p1, "moveToSplitScreen fail, null mainTaskInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3, p5, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p5}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result p5

    if-nez p5, :cond_3d

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p5, v2, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_3d
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p5, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBoundsWrapper(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p5, p5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p5, p5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x1

    invoke-virtual {v2, p5, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p5, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    if-nez p4, :cond_58

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_58
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p5

    invoke-virtual {p1, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateActivityOptions(Landroid/os/Bundle;I)V

    if-nez p3, :cond_68

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_68
    const/high16 p1, 0x40000

    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, p2, p3, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, v2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p2, Lcom/android/wm/shell/splitscreen/z0;

    invoke-direct {p2, p0, v0, v1}, Lcom/android/wm/shell/splitscreen/z0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return v3
.end method

.method public needEnterMinimizedSplit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    return p0
.end method

.method public needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public notifyOnStageHasChildrenChange(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;->onStageHasChildrenChanged(Z)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public onAddSplitPair(II)V
    .registers 6

    const-string v0, "com.tencent.mm"

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableFakeSplitMode:Z

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p2, :cond_33

    if-eqz p1, :cond_33

    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    if-ne v1, v2, :cond_33

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_33

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setFakeSplitMode(Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_37

    :catch_37
    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 3

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->refreshDividerView(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDividerStartDrag()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result v1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->getCurrentLetterbox(II)[Landroid/graphics/Rect;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onResizeStart(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onResizeStart(Landroid/graphics/Rect;)V

    :cond_38
    return-void
.end method

.method public onFoldedStateChanged(Z)V
    .registers 4

    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    if-eqz v0, :cond_24

    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayImeController;->isCurrentImeShowing(I)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v1, "onFoldedStateChanged   hideCurrentInputMethod"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->getInstance()Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->hideCurrentInputMethod()V

    :cond_24
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/oplus/splitscreen/DividerMenu;->hideMenuIfNeed()V

    :cond_2b
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->hideMenu()V

    :cond_32
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFoldedStateChange:Z

    :cond_3d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_44

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->onFoldedStateChanged(Z)V

    :cond_44
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mKeyguardShowing:Z

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v1, "onKeyguardVisibilityChanged KeyguardShowing="

    const-string v2, " isScreenOn:"

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-nez v0, :cond_42

    if-nez p0, :cond_42

    if-eqz p1, :cond_42

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeChanged(Z)V

    :cond_42
    return-void
.end method

.method public onPreRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1d

    :cond_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onUnfoldStateChanged(Ljava/lang/Boolean;)V

    :cond_1d
    return-void
.end method

.method public onRemoteAnimationCancelled(Landroid/window/WindowContainerTransaction;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setDividerRemoteAnimating(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->removeOrientationTimeoutRunnable()V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setSplitRequestedOrientation(I)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v1, " onRemoteAnimationCancelled mMainStage:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSideStage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/splitscreen/y0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/y0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_4e

    :cond_4a
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setShouldUpdateRecents(Z)V

    :goto_4e
    return-void
.end method

.method public onRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v0}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v1}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eq v0, v1, :cond_31

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    sget-object v1, Lcom/android/wm/shell/splitscreen/b1;->a:Lcom/android/wm/shell/splitscreen/b1;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_31

    :cond_1e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz v0, :cond_38

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->onRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_38
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/oplus/splitscreen/DividerMenu;->notifyConfigurationChanged()V

    :cond_3f
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateFakeSplitMode()V

    return-void
.end method

.method public onRotateChanged(II)V
    .registers 6

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRotateChanged  fromRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",toRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, p2, :cond_40

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    if-eqz v1, :cond_40

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayImeController;->isCurrentImeShowing(I)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "onRotateChanged   hideCurrentInputMethod"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->getInstance()Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->hideCurrentInputMethod()V

    :cond_40
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_51

    const/4 v0, 0x1

    if-ne p1, v0, :cond_49

    if-eqz p2, :cond_4e

    :cond_49
    const/4 v0, 0x3

    if-ne p1, v0, :cond_51

    if-nez p2, :cond_51

    :cond_4e
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->swapMiniPositionWhenTabletDevice()Z

    :cond_51
    return-void
.end method

.method public onStageChildTaskStatusChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;IZZ)V
    .registers 5

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-ne p1, p4, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    if-eqz p3, :cond_1d

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->findTaskInfo(ZI)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_13

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_14

    :cond_13
    move-object p0, p2

    :goto_14
    if-eqz p0, :cond_18

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_18
    if-eqz p2, :cond_1d

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->setAppUsageStartTimeAndPkgName(ZLjava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onStageHasChildrenChanged(Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Z)V
    .registers 10

    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_a

    move p1, v2

    goto :goto_b

    :cond_a
    move p1, v3

    :goto_b
    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v4, "onStageHasChildrenChanged() isDropToNormal="

    const-string v5, " hasChildren="

    const-string v6, ",isSideStage="

    invoke-static {v4, p2, v5, v0, v6}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mainStage(mHasChildren="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isActive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "),,mSideStage(mHasChildren="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v4, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v4, :cond_79

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v5, :cond_79

    const-string p2, "onStageHasChildrenChanged() enterNormalSplit"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterNormalSplit()V

    goto :goto_bc

    :cond_79
    if-nez v4, :cond_95

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez v5, :cond_95

    const-string p2, "onStageHasChildrenChanged() exitMinimizedSplit"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->exitMinimizedSplit(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isApplyDividerVisibilityDeferred()Z

    move-result p2

    if-eqz p2, :cond_bc

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mApplyDividerVisibilityDefer:Lcom/oplus/splitscreen/SplitScreenDefer;

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitScreenDefer;->reset()V

    goto :goto_bc

    :cond_95
    if-eqz v4, :cond_a6

    const-string p2, "onStageHasChildrenChanged() enterMinimizedSplit from main"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterMinimizedSplit(I)V

    goto :goto_bc

    :cond_a6
    if-eqz p2, :cond_ae

    const-string p2, "onStageHasChildrenChanged() needEnterNormal so return"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc

    :cond_ae
    const-string p2, "onStageHasChildrenChanged() enterMinimizedSplit from side"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->enterMinimizedSplit(I)V

    :cond_bc
    :goto_bc
    if-eqz v0, :cond_c9

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateMinimalTaskOverlay(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_c9
    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mKeyguardShowing:Z

    if-nez p2, :cond_d5

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p2

    if-nez p2, :cond_117

    :cond_d5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->needEnterMinimizedSplit()Z

    move-result p2

    if-nez p2, :cond_117

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result p2

    if-nez p2, :cond_117

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    const/4 v0, 0x2

    if-nez p2, :cond_ff

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v3, :cond_ff

    const-string p2, "onStageHasChildrenChanged() exitSplitScreen from side"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    goto :goto_117

    :cond_ff
    if-eqz p2, :cond_117

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-nez p2, :cond_117

    const-string p2, "onStageHasChildrenChanged() exitSplitScreen from main"

    invoke-static {v1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    :cond_117
    :goto_117
    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->notifyOnStageHasChildrenChange(Z)V

    return-void
.end method

.method public onStageRootTaskAppeared()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0, v1, p0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_notifySplitRootTaskId(III)V

    :cond_21
    return-void
.end method

.method public onStageTaskInfoChanged(ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->onStageTaskInfoChanged(ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onStageVisibilityChanged()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    sget-object v2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStageVisibilityChanged mainVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",sideVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_60

    if-eqz v1, :cond_47

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz v2, :cond_47

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v5

    if-ne v2, v5, :cond_47

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/splitscreen/a1;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/wm/shell/splitscreen/a1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZI)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_77

    :cond_47
    if-eqz v0, :cond_77

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eqz v1, :cond_77

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v2

    if-ne v1, v2, :cond_77

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/splitscreen/a1;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/wm/shell/splitscreen/a1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZI)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_77

    :cond_60
    if-eqz v0, :cond_6c

    if-eqz v1, :cond_6c

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeChanged(Z)V

    goto :goto_77

    :cond_6c
    if-nez v0, :cond_77

    if-nez v1, :cond_77

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/oplus/splitscreen/SplitToggleHelper;->setPendingEnterSplitTaskId(I)V

    :cond_77
    :goto_77
    return-void
.end method

.method public onStartTaskToSplit()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setNeedEnterMinimizedSplit()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getStartType()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_1e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->onStartTaskToSideStage()V

    :cond_1e
    return-void
.end method

.method public postDelayExitSplitScreen()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExitSplitForOneSideVisible:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public preStartTasksFromRecents(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/os/Bundle;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "set_force_divider_orientation"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_11

    if-eq p2, v0, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result v2

    if-ne p2, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eq v2, v1, :cond_4c

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->toggleDividerOrientation()V

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->forceUpdateLayout()V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_4c
    return-void
.end method

.method public refreshDividerView(Landroid/content/res/Configuration;)V
    .registers 5

    if-eqz p1, :cond_28

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUiMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_28

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUiMode:I

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v1, "oldDarkMode not equal newDarkMode:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mUiMode:I

    invoke-static {v1, v2, v0}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_28

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->splitWindowManager_setConfiguration(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/content/res/Configuration;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    :cond_28
    return-void
.end method

.method public removeExitSplitScreenRunnable()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mExitSplitForOneSideVisible:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeOnStageHasChildrenChangeListener(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$OnStageHasChildrenChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOnStageHasChildrenChangeListeners:Ljava/util/ArrayList;

    :cond_13
    return-void
.end method

.method public removeOrientationTimeoutRunnable()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOrientationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->hasCallback(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOrientationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

.method public removePairIfNeeded(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result p1

    goto :goto_26

    :cond_1c
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result p1

    :goto_26
    if-lez p1, :cond_33

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mRecentTasks:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/splitscreen/h;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/h;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_33
    return-void
.end method

.method public resetDragState()V
    .registers 3

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v1, "resetDragState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setAnimationState(Z)V

    return-void
.end method

.method public runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public setAnimationState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mInGestureAnimation:Z

    return-void
.end method

.method public setDividerRemoteAnimating(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_6
    const-string v1, "mIsDividerRemoteAnimating"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_19

    :catchall_19
    return-void
.end method

.method public setDividerShown(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerShown:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerShown:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    if-nez p0, :cond_16

    return-void

    :cond_16
    if-eqz p1, :cond_1e

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_22

    :cond_1e
    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_22
    return-void
.end method

.method public setDropAnimalStatus(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->setDropAnimalStatus(Z)V

    :cond_7
    return-void
.end method

.method public setMinimizedStashLeashVisible(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->setSplitStashLeashVisible(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_7
    return-void
.end method

.method public setNeedEnterMinimizedSplit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mNeedEnterMinimizedSplit:Z

    return-void
.end method

.method public setOrientationTimeoutRunnable()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->removeOrientationTimeoutRunnable()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mOrientationTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setResizingSplits(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->setResizingSplits(Z)V

    return-void
.end method

.method public setShouldUpdateRecents(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_6
    const-string v1, "mShouldUpdateRecents"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_19

    :catchall_19
    return-void
.end method

.method public setSplitRequestedOrientation(I)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setSplitRequestedOrientation(I)V

    return-void
.end method

.method public setWallpaperVisible(Z)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setWallpaperVisible(Z)V

    return-void
.end method

.method public showDividerMenu()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerOrientationController:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->onDividerClicked()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mDividerMenu:Lcom/oplus/splitscreen/DividerMenu;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerMenu;->showMenuIfNeed()V

    :cond_c
    return-void
.end method

.method public showTips()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mEnableSplitTips:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mIsUnfold:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTipsManager:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->showTipsIfNeed(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    :cond_25
    return-void
.end method

.method public showTipsOnFoldedStateChange()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFoldedStateChange:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->showTips()V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mFoldedStateChange:Z

    return-void
.end method

.method public startDimAnimationForDragSplitToZoom()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageDragPolicy:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startDimAnimationForDragSplitToZoom()V

    :cond_7
    return-void
.end method

.method public startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 22

    move-object v8, p1

    move-object v0, p2

    if-nez v0, :cond_24

    move-object v1, p0

    iget-object v9, v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, v8, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    new-instance v11, Lcom/android/wm/shell/splitscreen/e1;

    move-object v0, v11

    move-object v2, p1

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/e1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/wm/shell/ShellTaskOrganizer;->screenshotTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    goto :goto_46

    :cond_24
    move-object v1, p0

    new-instance v2, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v5, p4

    invoke-direct {v2, p2, v3, v5, v4}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startIntentAndTaskWithSlideAnim(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    :goto_46
    return-void
.end method

.method public startIntentInMinimize(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 13

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMinimized()Z

    move-result p3

    if-eqz p3, :cond_1b

    :try_start_6
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public startPairIntent(Landroid/content/Intent;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 20

    move-object v0, p0

    invoke-direct/range {p0 .. p4}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->adjustZoomOrMirageModeWhenPairIntent(Landroid/content/Intent;Landroid/content/Intent;II)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPairIntent intercept"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v1, :cond_23

    sget-object v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPairIntent fail, null SplitLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    invoke-static/range {p6 .. p6}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictALLChildrenWithoutStartPkg(Landroid/window/WindowContainerTransaction;Ljava/util/List;)V

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictALLChildrenWithoutStartPkg(Landroid/window/WindowContainerTransaction;Ljava/util/List;)V

    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;

    invoke-direct {v8, p0, v1, v4, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;)V

    const/4 v4, 0x0

    if-eqz v2, :cond_74

    new-instance v5, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v11

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    goto :goto_75

    :cond_74
    move-object v5, v4

    :goto_75
    if-eqz v5, :cond_80

    invoke-static {v5}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_88

    :cond_80
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    :goto_88
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move/from16 v6, p5

    invoke-virtual {v5, v6, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_9d

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v5, v3, v6}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_9d
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v5, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBoundsWrapper(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v7}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    const-string/jumbo v5, "startUserId"

    move-object/from16 v8, p6

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v11, v10, [Landroid/content/Intent;

    aput-object p1, v11, v6

    aput-object p2, v11, v7

    const/high16 v6, 0x44000000  # 512.0f

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    move-object p1, v8

    move p2, v9

    move-object/from16 p3, v11

    move/from16 p4, v6

    move-object/from16 p5, v2

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Landroid/app/PendingIntent;->getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v2, v4, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v3, Lcom/android/wm/shell/splitscreen/z0;

    invoke-direct {v3, p0, v1, v10}, Lcom/android/wm/shell/splitscreen/z0;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Lcom/android/wm/shell/common/split/SplitLayout;I)V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public startSwapTask()V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    if-eqz v1, :cond_17

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v0, "already performing swapAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v2, "begin performing swapAnimation and mPerformingSwapAnimation is "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mPerformingSwapAnimation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0}, Lcom/oplus/splitscreen/DividerUtils;->getDisplayBounds(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v5

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v6

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->getDividerSize(Landroid/content/res/Resources;)I

    move-result v6

    const/high16 v7, 0x3f800000  # 1.0f

    if-eqz v5, :cond_65

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    int-to-float v4, v5

    mul-float/2addr v4, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_75

    :cond_65
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    int-to-float v4, v5

    mul-float/2addr v4, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    :goto_75
    int-to-float v3, v3

    div-float/2addr v4, v3

    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-lez v3, :cond_7f

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    :cond_7f
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->reversePosition(I)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v3, Lcom/android/wm/shell/fullscreen/a;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/wm/shell/fullscreen/a;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public swapSplitStages(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSwapSidePosition(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSwapDividerPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    const-string v2, "replaceSplitStages sidePosition:"

    const-string v3, " dividerPosition:"

    const-string v4, " motionStageStartBounds:"

    invoke-static {v2, p1, v3, v0, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " nonMotionStageStartBounds:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(I)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateImeTargetPosition()V

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateDividerPosition(Landroid/view/SurfaceControl$Transaction;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->setDividerShown(ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public switchToZoom(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;F)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result p0

    invoke-static {p0, p2, p3}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_startZoomWindowFromSplit(ILandroid/graphics/Rect;F)V

    return-void
.end method

.method public updateFoldDividerPositionIfNeed(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v0

    if-eqz v0, :cond_3c

    :cond_2c
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-nez v0, :cond_3e

    :cond_3c
    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->updateFoldDividerPositionIfNeed(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    :cond_4e
    return-void
.end method

.method public updateMinimalTaskOverlay(Landroid/view/SurfaceControl$Transaction;)V
    .registers 12

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDeviceSupport()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getEnableMinimalOverlayStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getTopChildTaskId()I

    move-result v2

    if-lez v2, :cond_52

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-ne v1, v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getMainStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_34

    :cond_30
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getSideStageBounds()Landroid/graphics/Rect;

    move-result-object v3

    :goto_34
    move-object v5, v3

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->getSnapAlgorithmInsets()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getExtImpl()Lcom/android/wm/shell/common/split/SplitLayoutExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->atFirstSplitTarget()Z

    move-result v7

    new-instance v9, Lcom/android/launcher3/widget/g;

    invoke-direct {v9, p0, v2}, Lcom/android/launcher3/widget/g;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Z)V

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->enableMinimalTaskOverlay(Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$Listener;)V

    :cond_52
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eq v0, v1, :cond_5d

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->disableMinimalTaskOverlay(Landroid/view/SurfaceControl$Transaction;)V

    :cond_5d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eq p0, v1, :cond_68

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->disableMinimalTaskOverlay(Landroid/view/SurfaceControl$Transaction;)V

    :cond_68
    return-void
.end method

.method public updateMinimizedVisibleSize()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    if-nez v1, :cond_f

    goto :goto_19

    :cond_f
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->updateMinimizedVisibleSize(Z)V

    return-void

    :cond_19
    :goto_19
    sget-object v1, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMinimizedVisibleSize fail,splitLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",mMinimizedSplitManager="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMinimizedSplitManager:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateRecommendAppList(II)V
    .registers 6

    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->shouldupdateRecommendAppList()Z

    move-result v0

    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getPendingUpdateRecommendAppPair()Landroid/util/Pair;

    move-result-object v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_74

    :cond_c
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz v2, :cond_74

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p1, :cond_74

    if-eqz p0, :cond_74

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_53

    const/4 p2, 0x0

    if-eqz v0, :cond_47

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {p2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->setPendingUpdateRecommendAppPair(Landroid/util/Pair;)V

    goto :goto_53

    :cond_47
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->setPendingUpdateRecommendAppPair(Landroid/util/Pair;)V

    :cond_53
    :goto_53
    sget-object p2, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add or update pkg pair to recommend app list, mainpkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sidePkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->updateRecommendAppList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    return-void
.end method

.method public updateSplitControlBarRegion(II)V
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarGlobalBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarGlobalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateSplitStageControlBarRegion(IIZ)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->updateSplitStageControlBarRegion(IIZ)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mMainControlBarGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mSideControlBarGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    :cond_2a
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->mControlBarMenu:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->hideMenu()V

    :cond_2f
    return-void
.end method
