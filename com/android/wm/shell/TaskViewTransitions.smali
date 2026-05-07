.class public Lcom/android/wm/shell/TaskViewTransitions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskViewTransitions"


# instance fields
.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegistered:[Z

.field private final mTaskViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mTaskViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iput-object v0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mRegistered:[Z

    iput-object p1, p0, Lcom/android/wm/shell/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-void
.end method

.method private findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    iget-object v1, v1, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    if-eq v1, p1, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    iget-object p0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private findPending(Lcom/android/wm/shell/TaskView;ZZ)Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const/4 v1, 0x0

    if-ltz v0, :cond_37

    iget-object v2, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    iget-object v2, v2, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-eq v2, p1, :cond_18

    goto :goto_34

    :cond_18
    iget-object v2, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    iget v2, v2, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;->mType:I

    invoke-static {v2}, Lcom/android/wm/shell/transition/Transitions;->isClosingType(I)Z

    move-result v2

    if-ne v2, p2, :cond_31

    iget-object p0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    return-object p0

    :cond_31
    if-eqz p3, :cond_34

    return-object v1

    :cond_34
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_37
    return-object v1
.end method

.method private findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/TaskView;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/TaskViewTransitions;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    iget-object v1, p0, Lcom/android/wm/shell/TaskViewTransitions;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/TaskView;

    invoke-virtual {v1}, Lcom/android/wm/shell/TaskView;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_37

    :cond_18
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/TaskViewTransitions;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/TaskView;

    invoke-virtual {v2}, Lcom/android/wm/shell/TaskView;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object p0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/TaskView;

    return-object p0

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method private startNextTransition()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    iget-object v1, v0, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    if-eqz v1, :cond_17

    return-void

    :cond_17
    iget-object v1, p0, Lcom/android/wm/shell/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget v2, v0, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;->mType:I

    iget-object v3, v0, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;->mWct:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v0, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addTaskView(Lcom/android/wm/shell/TaskView;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mRegistered:[Z

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/TaskViewTransitions;->mRegistered:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-nez v3, :cond_12

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lcom/android/wm/shell/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    iget-object p0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 7

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-direct {p0, v0}, Lcom/android/wm/shell/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/TaskView;

    move-result-object v0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/transition/Transitions;->isClosingType(I)Z

    move-result v2

    if-nez v2, :cond_1a

    return-object v1

    :cond_1a
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/wm/shell/TaskViewTransitions;->findPending(Lcom/android/wm/shell/TaskView;ZZ)Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    move-result-object p0

    if-nez p0, :cond_2b

    new-instance p0, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p2

    invoke-direct {p0, p2, v1, v0}, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/TaskView;)V

    :cond_2b
    iget-object p2, p0, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    if-nez p2, :cond_37

    iput-object p1, p0, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task is closing in 2 collecting transitions? This state doesn\'t make sense"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasPending()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public removeTaskView(Lcom/android/wm/shell/TaskView;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTaskViewVisible(Lcom/android/wm/shell/TaskView;Z)V
    .registers 6

    xor-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/TaskViewTransitions;->findPending(Lcom/android/wm/shell/TaskView;ZZ)Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    move-result-object v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/android/wm/shell/TaskView;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p1}, Lcom/android/wm/shell/TaskView;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    new-instance v1, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    if-eqz p2, :cond_27

    const/4 p2, 0x3

    goto :goto_28

    :cond_27
    const/4 p2, 0x4

    :goto_28
    invoke-direct {v1, p2, v0, p1}, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/TaskView;)V

    iget-object p1, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/TaskViewTransitions;->startNextTransition()V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/wm/shell/TaskViewTransitions;->findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v3, v0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/TaskView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_38

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-nez v6, :cond_32

    goto :goto_35

    :cond_32
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_38
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_46

    const-string v0, "TaskViewTransitions"

    const-string v1, "Got a TaskView transition with no task."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_46
    const/4 v4, 0x0

    move v5, v2

    move-object v6, v4

    :goto_49
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v5, v7, :cond_e7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    invoke-static {v9}, Lcom/android/wm/shell/transition/Transitions;->isClosingType(I)Z

    move-result v9

    if-eqz v9, :cond_89

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_68

    goto :goto_69

    :cond_68
    move v8, v2

    :goto_69
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/wm/shell/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/TaskView;

    move-result-object v7

    if-eqz v7, :cond_81

    if-eqz v8, :cond_7b

    move-object/from16 v15, p4

    invoke-virtual {v7, v15}, Lcom/android/wm/shell/TaskView;->prepareHideAnimation(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_cc

    :cond_7b
    move-object/from16 v15, p4

    invoke-virtual {v7}, Lcom/android/wm/shell/TaskView;->prepareCloseAnimation()V

    goto :goto_cc

    :cond_81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TaskView transition is closing a non-taskview task "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    move-object/from16 v15, p4

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    invoke-static {v9}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v9

    if-eqz v9, :cond_d0

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    if-ne v9, v8, :cond_9d

    move v10, v8

    goto :goto_9e

    :cond_9d
    move v10, v2

    :goto_9e
    if-nez v6, :cond_a5

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_a5
    if-nez v10, :cond_bb

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/wm/shell/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/TaskView;

    move-result-object v8

    if-eqz v8, :cond_b3

    move-object v9, v8

    goto :goto_bc

    :cond_b3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TaskView transition is showing a non-taskview task "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bb
    move-object v9, v1

    :goto_bc
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v15, v6

    invoke-virtual/range {v9 .. v15}, Lcom/android/wm/shell/TaskView;->prepareOpenAnimation(ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/window/WindowContainerTransaction;)V

    :goto_cc
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_49

    :cond_d0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Claimed transition isn\'t an opening or closing type: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e7
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move-object/from16 v1, p5

    invoke-interface {v1, v6, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/TaskViewTransitions;->startNextTransition()V

    return v8
.end method

.method public startTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/TaskView;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p2}, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/TaskView;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/wm/shell/TaskViewTransitions;->startNextTransition()V

    return-void
.end method
