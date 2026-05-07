.class public Lcom/android/quickstep/util/SplitSelectStateController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;,
        Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

.field private mDividerOrientation:I

.field private final mHandler:Landroid/os/Handler;

.field private mInitialTaskId:I

.field private mInitialTaskIntent:Landroid/content/Intent;

.field private mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mRecentsAnimationRunning:Z

.field private mSecondTaskId:I

.field private mSecondTaskPackageName:Ljava/lang/String;

.field private mStagePosition:I

.field private final mStateManager:Lcom/android/launcher3/statemanager/StateManager;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDividerOrientation:I

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mHandler:Landroid/os/Handler;

    sget-object p2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/SystemUiProxy;

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    iput-object p3, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    iput-object p4, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/util/SplitSelectStateController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/quickstep/util/SplitSelectStateController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/quickstep/views/GroupedTaskView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/launcher3/statemanager/StateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/launcher3/statehandlers/DepthController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    return-object p0
.end method

.method private isInitialTaskIntentSet()Z
    .registers 3

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    if-eqz p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method


# virtual methods
.method public getActiveSplitStagePosition()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStagePosition:I

    return p0
.end method

.method public isBothSplitAppsConfirmed()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->isInitialTaskIntentSet()Z

    move-result v0

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isSplitSelectActive()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/util/SplitSelectStateController;->isInitialTaskIntentSet()Z

    move-result v0

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public launchSplitTasks(Ljava/util/function/Consumer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_21
    move-object v6, v0

    goto :goto_24

    :cond_23
    move-object v6, v1

    :goto_24
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    if-nez v0, :cond_29

    goto :goto_32

    :cond_29
    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_32
    move-object v5, v1

    iget v4, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    iget v7, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    iget v8, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStagePosition:I

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000  # 0.5f

    move-object v3, p0

    move-object v9, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(ILandroid/app/PendingIntent;Landroid/content/Intent;IILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public launchTasks(IIILjava/util/function/Consumer;ZF)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZF)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(ILandroid/app/PendingIntent;Landroid/content/Intent;IILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public launchTasks(IIILjava/util/function/Consumer;ZFI)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZFI)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p7

    iput v1, v0, Lcom/android/quickstep/util/SplitSelectStateController;->mDividerOrientation:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(ILandroid/app/PendingIntent;Landroid/content/Intent;IILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public launchTasks(ILandroid/app/PendingIntent;Landroid/content/Intent;IILjava/util/function/Consumer;ZF)V
    .registers 28
    .param p2  # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZF)V"
        }
    .end annotation

    move-object/from16 v6, p0

    const/4 v0, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p5, :cond_e

    new-array v0, v0, [I

    aput p1, v0, v7

    aput p4, v0, v8

    goto :goto_14

    :cond_e
    new-array v0, v0, [I

    aput p4, v0, v7

    aput p1, v0, v8

    :goto_14
    move-object v9, v0

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_56

    new-instance v10, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;-><init>(Lcom/android/quickstep/util/SplitSelectStateController;ILandroid/app/PendingIntent;ILjava/util/function/Consumer;)V

    iget-object v0, v6, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    aget v1, v9, v7

    const/4 v2, 0x0

    aget v3, v9, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    sget-object v7, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v8

    invoke-direct {v6, v10, v7, v8}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Lcom/android/systemui/shared/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/app/IApplicationThread;)V

    move-object/from16 p0, v0

    move/from16 p1, v1

    move-object/from16 p2, v2

    move/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, p8

    move-object/from16 p7, v6

    invoke-virtual/range {p0 .. p7}, Lcom/android/quickstep/SystemUiProxy;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    goto/16 :goto_d6

    :cond_56
    new-instance v10, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;-><init>(Lcom/android/quickstep/util/SplitSelectStateController;ILandroid/app/PendingIntent;ILjava/util/function/Consumer;)V

    new-instance v18, Landroid/view/RemoteAnimationAdapter;

    invoke-static {v10}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;->wrapRemoteAnimationRunner(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;

    move-result-object v12

    const-wide/16 v13, 0x12c

    const-wide/16 v15, 0x96

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v17

    move-object/from16 v11, v18

    invoke-direct/range {v11 .. v17}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz p7, :cond_86

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setFreezeRecentTasksReordering()V

    :cond_86
    if-nez p2, :cond_ba

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget v1, v6, Lcom/android/quickstep/util/SplitSelectStateController;->mDividerOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_99

    const-string/jumbo v3, "set_force_divider_orientation"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput v2, v6, Lcom/android/quickstep/util/SplitSelectStateController;->mDividerOrientation:I

    :cond_99
    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v1, v8}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRemoteRecentsAnimationRunning(Z)V

    iget-object v1, v6, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    aget v2, v9, v8

    aget v3, v9, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, v1

    move/from16 p1, v2

    move-object/from16 p2, v0

    move/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, p8

    move-object/from16 p7, v18

    invoke-virtual/range {p0 .. p7}, Lcom/android/quickstep/SystemUiProxy;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    goto :goto_d6

    :cond_ba
    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v1, v8}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRemoteRecentsAnimationRunning(Z)V

    iget-object v1, v6, Lcom/android/quickstep/util/SplitSelectStateController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v6, p5

    move/from16 v7, p8

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lcom/android/quickstep/SystemUiProxy;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    :goto_d6
    return-void
.end method

.method public launchTasks(Lcom/android/quickstep/views/GroupedTaskView;Ljava/util/function/Consumer;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/GroupedTaskView;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    instance-of v0, p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getDividerOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mDividerOrientation:I

    :cond_f
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getStagePosition()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/quickstep/views/GroupedTaskView;->getSplitRatio()F

    move-result v9

    move-object v3, p0

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(IIILjava/util/function/Consumer;ZF)V

    return-void
.end method

.method public resetState()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStagePosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    iput-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mLaunchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    return-void
.end method

.method public setInitialTaskSelect(II)V
    .registers 3

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    iput p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStagePosition:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    return-void
.end method

.method public setInitialTaskSelect(Landroid/content/Intent;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    iput p2, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mStagePosition:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskId:I

    return-void
.end method

.method public setRecentsAnimationRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mRecentsAnimationRunning:Z

    return-void
.end method

.method public setSecondTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iput v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskId:I

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mInitialTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController;->mSecondTaskPackageName:Ljava/lang/String;

    :cond_14
    return-void
.end method
