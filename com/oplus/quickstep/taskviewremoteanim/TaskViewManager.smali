.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;
    }
.end annotation


# static fields
.field private static final ACTION_BRACKET_SPACE_SERVICE:Ljava/lang/String; = "com.oplus.bracketspace.action.REMOTE_ANIMATION_SERVICE"

.field public static final Companion:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;

.field private static final PACKAGE_BRACKET_SPACE:Ljava/lang/String; = "com.oplus.bracketspace"

.field private static final SERVICE_IMPORTANT_PRIORITY:I = 0x41

.field private static final TAG:Ljava/lang/String; = "TaskViewManager"

.field private static final TASK_VIEW_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activityManager:Landroid/app/ActivityManager;

.field private final baseDisplayDensity:I

.field private final handlerExecutor:Lcom/android/wm/shell/common/HandlerExecutor;

.field private volatile isTaskServiceBounded:Z

.field private isTaskViewReleased:Z

.field private isTaskViewStarted:Z

.field private isTaskViewVisible:Z

.field private isWorkspaceVisible:Z

.field private launchCookie:Landroid/os/Binder;

.field private final launcher:Lcom/android/launcher/Launcher;

.field private final launcherRemoteListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$launcherRemoteListener$1;

.field private final launcherTaskId:I

.field private volatile pendingRemoveTaskId:I

.field private final serviceConnection:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$serviceConnection$1;

.field private final stateChangeListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;

.field private swipeToRecentAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

.field private final syncQueue:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

.field private final taskListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;

.field private final taskStackChangeListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;

.field private taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

.field private final taskViewListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

.field private volatile taskViewReady:Z

.field private volatile taskViewTaskId:I

.field private taskViewTransitionAnimator:Landroid/animation/AnimatorSet;

.field private volatile tmpTaskId:I

.field private final transactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private virtualDisplayId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->Companion:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion$TASK_VIEW_ALPHA$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion$TASK_VIEW_ALPHA$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->TASK_VIEW_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;I)V
    .registers 8

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    iput p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcherTaskId:I

    const-class p2, Landroid/app/ActivityManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->activityManager:Landroid/app/ActivityManager;

    new-instance p2, Lcom/android/wm/shell/common/TransactionPool;

    invoke-direct {p2}, Lcom/android/wm/shell/common/TransactionPool;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->transactionPool:Lcom/android/wm/shell/common/TransactionPool;

    new-instance v0, Lcom/android/wm/shell/common/HandlerExecutor;

    sget-object v1, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->handlerExecutor:Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->baseDisplayDensity:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->virtualDisplayId:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isWorkspaceVisible:Z

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launchCookie:Landroid/os/Binder;

    iput v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTaskId:I

    iput v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->pendingRemoveTaskId:I

    iput v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->tmpTaskId:I

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskViewListener$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    iput-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    iput-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;

    new-instance v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;

    invoke-direct {v2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    iput-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskStackChangeListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;

    new-instance v3, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$serviceConnection$1;

    invoke-direct {v3}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$serviceConnection$1;-><init>()V

    iput-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->serviceConnection:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$serviceConnection$1;

    new-instance v3, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;

    invoke-direct {v3, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    iput-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stateChangeListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;

    new-instance v3, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$launcherRemoteListener$1;

    invoke-direct {v3, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$launcherRemoteListener$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    iput-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcherRemoteListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$launcherRemoteListener$1;

    new-instance v4, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-direct {v4, p2, v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->syncQueue:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->initVirtualDisplay()V

    sget-object p2, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->init(Lcom/android/launcher3/Launcher;)V

    sget-object p2, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->INSTANCE:Lcom/oplus/quickstep/bracketspace/BracketModeHelper;

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->init(Lcom/android/launcher/Launcher;)V

    invoke-static {v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->addGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_a5

    new-instance p1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->setBracketStartCallback(Lkotlin/jvm/functions/Function0;)V

    new-instance p1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$2;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->setBracketStopCallback(Lkotlin/jvm/functions/Function0;)V

    :cond_a5
    invoke-static {v3}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->addLauncherRemoteListener(Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;)V

    const-string p0, "TaskView"

    const-string p1, "TaskViewManager"

    const-string p2, "init"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final synthetic _init_$stopOrReleaseTaskView(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView$default(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/LauncherState;Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Ljava/lang/Boolean;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setStateWithAnimation$lambda-23$lambda-22(Lcom/android/launcher3/LauncherState;Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$_init_$stopOrReleaseTaskView(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->_init_$stopOrReleaseTaskView(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    return-void
.end method

.method public static final synthetic access$cancelTaskViewTransitionAnimator(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->cancelTaskViewTransitionAnimator()V

    return-void
.end method

.method public static final synthetic access$createOrStartTaskView(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->createOrStartTaskView()V

    return-void
.end method

.method public static final synthetic access$getLaunchCookie$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Landroid/os/Binder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launchCookie:Landroid/os/Binder;

    return-object p0
.end method

.method public static final synthetic access$getLauncher$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getLauncherTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcherTaskId:I

    return p0
.end method

.method public static final synthetic access$getPendingRemoveTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->pendingRemoveTaskId:I

    return p0
.end method

.method public static final synthetic access$getTASK_VIEW_ALPHA$cp()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->TASK_VIEW_ALPHA:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic access$getTaskViewReady$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewReady:Z

    return p0
.end method

.method public static final synthetic access$getTaskViewTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTaskId:I

    return p0
.end method

.method public static final synthetic access$getTaskViewTransitionAnimator$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTransitionAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getTmpTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->tmpTaskId:I

    return p0
.end method

.method public static final synthetic access$getVirtualDisplayId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->virtualDisplayId:I

    return p0
.end method

.method public static final synthetic access$isTaskViewReleased$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewReleased:Z

    return p0
.end method

.method public static final synthetic access$isTaskViewStarted$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewStarted:Z

    return p0
.end method

.method public static final synthetic access$makeLauncherViewsHidden(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeLauncherViewsHidden()V

    return-void
.end method

.method public static final synthetic access$makeLauncherViewsShown(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeLauncherViewsShown()V

    return-void
.end method

.method public static final synthetic access$setTaskViewReady$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewReady:Z

    return-void
.end method

.method public static final synthetic access$setTaskViewStarted$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewStarted:Z

    return-void
.end method

.method public static final synthetic access$setTaskViewTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTaskId:I

    return-void
.end method

.method public static final synthetic access$setTaskViewTransitionAnimator$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTransitionAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$setTmpTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->tmpTaskId:I

    return-void
.end method

.method public static final synthetic access$startActivityInTaskView(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->startActivityInTaskView(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$startPreviousTask(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Z)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->startPreviousTask(Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$stopPreviousTask(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopPreviousTask()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->bindTaskViewApp$lambda-14(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    return-void
.end method

.method private final bindTaskViewApp()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "bindTaskViewApp()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/taskviewremoteanim/b;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V

    invoke-static {v0, v1}, Lcom/oplus/util/OplusExecutors;->executeWithUx(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final bindTaskViewApp$lambda-14(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 7

    const-string v0, "TaskViewManager"

    const-string v1, "TaskView"

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oplus.bracketspace.action.REMOTE_ANIMATION_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.oplus.bracketspace"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_15
    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    iget-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->serviceConnection:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$serviceConnection$1;

    const/16 v5, 0x41

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskServiceBounded:Z

    const-string v2, "bindTaskViewApp: bind service "

    iget-boolean v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskServiceBounded:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Ly2/p;->a:Ly2/p;
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_33

    goto :goto_38

    :catchall_33
    move-exception v2

    invoke-static {v2}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_38
    invoke-static {v2}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_3f

    goto :goto_4b

    :cond_3f
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskServiceBounded:Z

    const-string p0, "bindTaskViewApp: bind service failure, because of "

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->unbindTaskViewApp$lambda-17(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    return-void
.end method

.method private final cancelTaskViewTransitionAnimator()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "cancelTaskViewTransitionAnimator()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTransitionAnimator:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_e

    goto :goto_17

    :cond_e
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_17
    :goto_17
    return-void
.end method

.method private final cleanUpExistingTaskViewTasks(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/window/TaskAppearedInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TaskAppearedInfo;

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    const-string v0, "taskAppearedInfo.taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget v0, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Found the dangling task, removing: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->rmTask(I)V

    goto :goto_4

    :cond_3d
    return-void
.end method

.method private final createOrStartTaskView()V
    .registers 9

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    const-string v1, "launcher.taskViewContainer"

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewReady:Z

    if-nez v0, :cond_b

    goto :goto_63

    :cond_b
    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->shouldStartPreviousTask()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->createTaskView(Landroid/view/ViewGroup;)V

    goto :goto_6f

    :cond_1e
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stateChangeListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    sget-object v2, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->bindTaskViewApp()V

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$startAction$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$startAction$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$endAction$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->cancelTaskViewTransitionAnimator()V

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    iget-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->swipeToRecentAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->createTaskViewOpenAnimation(Lcom/android/launcher3/Launcher;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTransitionAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_57

    goto :goto_62

    :cond_57
    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$lambda-9$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$createOrStartTaskView$lambda-9$$inlined$doOnEnd$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_62
    return-void

    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->createTaskView(Landroid/view/ViewGroup;)V

    :goto_6f
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stateChangeListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    sget-object v2, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->bindTaskViewApp()V

    return-void
.end method

.method private final createTaskView(Landroid/view/ViewGroup;)V
    .registers 6

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "createTaskView()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;

    invoke-virtual {v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->isTaskListenerRegistered()Z

    move-result v2

    if-nez v2, :cond_17

    const-string p0, "createTaskView: task listener not registered, so we don\'t start bracket-space"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->initVirtualDisplay()V

    :cond_1e
    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->syncQueue:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;-><init>(Landroid/content/Context;Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;Landroid/hardware/display/VirtualDisplay;)V

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewListener:Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/oplus/quickstep/taskviewremoteanim/common/TaskView$Listener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeTaskViewsShown()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeOrientationLandscape(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewReleased:Z

    return-void
.end method

.method public static final getTASK_VIEW_ALPHA()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->Companion:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$Companion;->getTASK_VIEW_ALPHA()Landroid/util/FloatProperty;

    move-result-object v0

    return-object v0
.end method

.method private final initVirtualDisplay()V
    .registers 9

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "LAUNCHER_TASK_VIEW@"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->baseDisplayDensity:I

    const/4 v6, 0x0

    const/16 v7, 0x108

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, -0x1

    if-nez v0, :cond_3c

    goto :goto_47

    :cond_3c
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_43

    goto :goto_47

    :cond_43
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    :goto_47
    iput v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->virtualDisplayId:I

    const-string p0, "initVirtualDisplay: virtualDisplayId = "

    const-string v0, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {v1, p0, v0, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final makeLauncherViewsHidden()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "makeLauncherViewsHidden()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setBracketSpaceRunning(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusDragLayer;->setBracketSpaceRunning(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/GuidePageManager;->setBracketSpaceRunning(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/OplusLauncherRootView;

    if-eqz v2, :cond_37

    check-cast v0, Lcom/android/launcher3/OplusLauncherRootView;

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    if-nez v0, :cond_3b

    goto :goto_45

    :cond_3b
    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherRootView;->setBracketSpaceRunning(Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherRootView;->isBackGestureDisallow()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/OplusLauncherRootView;->setDisallowBackGesture(Z)V

    :goto_45
    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->updateTaskViewRunningState(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusDragLayer;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isWorkspaceVisible:Z

    return-void
.end method

.method private final makeLauncherViewsShown()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "makeLauncherViewsShown()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setBracketSpaceRunning(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusDragLayer;->setBracketSpaceRunning(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/GuidePageManager;->setBracketSpaceRunning(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    :cond_3c
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/OplusLauncherRootView;

    if-eqz v2, :cond_49

    check-cast v0, Lcom/android/launcher3/OplusLauncherRootView;

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    if-nez v0, :cond_4d

    goto :goto_53

    :cond_4d
    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherRootView;->setBracketSpaceRunning(Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherRootView;->resetDisallowBackGestureState()V

    :goto_53
    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->updateTaskViewRunningState(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusDragLayer;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isWorkspaceVisible:Z

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    return-void
.end method

.method private final makeOrientationLandscape(Z)V
    .registers 5

    const-string v0, "makeOrientationLandscape: landscape = "

    const-string v1, ", isFoldScreenExpanded = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_4d

    if-eqz p1, :cond_3e

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->isScreenPhysicsHeightLessThanWidth(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_32

    const/4 p1, 0x6

    goto :goto_33

    :cond_32
    const/4 p1, 0x7

    :goto_33
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/UiThreadHelper;->setOrientationAsync(Landroid/app/Activity;I)V

    sget-object p0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->registerSensorListener()V

    goto :goto_5b

    :cond_3e
    sget-object p1, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->unregisterSensorListener()V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/states/RotationHelper;->forceNotifyChange()V

    goto :goto_5b

    :cond_4d
    sget-object p1, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->unregisterSensorListener()V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/states/RotationHelper;->forceNotifyChange()V

    :goto_5b
    return-void
.end method

.method private final makeTaskViewsHidden()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "makeTaskViewsHidden()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewVisible:Z

    return-void
.end method

.method private final makeTaskViewsShown()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "makeTaskViewsShown()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewVisible:Z

    return-void
.end method

.method private final maybeBringEmbeddedTaskToForeground()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "maybeBringEmbeddedTaskToForeground()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->activityManager:Landroid/app/ActivityManager;

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTaskId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    :cond_16
    return-void
.end method

.method private final releaseVirtualDisplay()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "releaseVirtualDisplay"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->virtualDisplayId:I

    return-void
.end method

.method private static final setStateWithAnimation$lambda-23$lambda-22(Lcom/android/launcher3/LauncherState;Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;Ljava/lang/Boolean;)V
    .registers 9

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object p1, p1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showSystemBars(Landroid/view/Window;ZZ)V

    goto :goto_29

    :cond_1a
    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object p0, p1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    :goto_29
    return-void
.end method

.method private final shouldStartPreviousTask()Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->shouldStartPreviousTask()Z

    move-result p0

    if-ne p0, v1, :cond_e

    move v0, v1

    :cond_e
    :goto_e
    return v0
.end method

.method private final shouldStopPreviousTask()Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->shouldStopPreviousTask()Z

    move-result p0

    if-ne p0, v1, :cond_e

    move v0, v1

    :cond_e
    :goto_e
    return v0
.end method

.method private final startActivityInTaskView(Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewReady:Z

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    if-nez v0, :cond_13

    const-string p0, "Can\'t start activity due to TaskView isn\'t ready."

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_26

    const-string p0, "Can\'t start activity due to the display is off"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_85

    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v7

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launchCookie:Landroid/os/Binder;

    invoke-virtual {v0, v8}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    const-string p1, "startActivityInTaskView: launchBounds = "

    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    const/high16 v1, 0xc000000

    invoke-static {p1, v4, v3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-string p1, "getActivity(\n           …ENT\n                    )"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launchCookie:Landroid/os/Binder;

    const-string p0, "options"

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Binder;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_6f
    .catchall {:try_start_2c .. :try_end_6f} :catchall_70

    goto :goto_75

    :catchall_70
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_75
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7c

    goto :goto_85

    :cond_7c
    const-string p1, "start activity failure, because of "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    if-nez v0, :cond_8c

    const-string p0, "start activity failure, because of task view are null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    return-void
.end method

.method private final startPreviousTask(Z)Z
    .registers 7

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "startPreviousTask"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-nez v2, :cond_e

    goto :goto_2d

    :cond_e
    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeTaskViewsShown()V

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    const-string v2, "startPreviousTask: task view already exist, so not add again "

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_24
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_2d
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-nez v0, :cond_33

    const/4 p1, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->startPreviousTask(Z)Z

    move-result p1

    :goto_37
    if-eqz p1, :cond_40

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeOrientationLandscape(Z)V

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewStarted:Z

    goto :goto_51

    :cond_40
    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeLauncherViewsShown()V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeTaskViewsHidden()V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_51
    return p1
.end method

.method public static synthetic startPreviousTask$default(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;ZILjava/lang/Object;)Z
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    :cond_5
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->startPreviousTask(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic stopOrReleaseTaskView$default(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView(Z)V

    return-void
.end method

.method private final stopPreviousTask()Z
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "stopPreviousTask"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeLauncherViewsShown()V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeTaskViewsHidden()V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-nez v0, :cond_14

    goto :goto_1d

    :cond_14
    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getTaskViewContainer()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskViewContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_1d
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    move v0, v1

    goto :goto_28

    :cond_24
    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->stopPreviousTask()Z

    move-result v0

    :goto_28
    if-eqz v0, :cond_2d

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeOrientationLandscape(Z)V

    :cond_2d
    return v0
.end method

.method private final unbindTaskViewApp()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "unbindTaskViewApp()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/taskviewremoteanim/b;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V

    invoke-static {v0, v1}, Lcom/oplus/util/OplusExecutors;->executeWithUx(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final unbindTaskViewApp$lambda-17(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 5

    const-string v0, "TaskViewManager"

    const-string v1, "TaskView"

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskServiceBounded:Z

    if-nez v2, :cond_e

    return-void

    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->serviceConnection:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$serviceConnection$1;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskServiceBounded:Z

    const-string p0, "unbindTaskViewApp: unbind service true"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_20

    goto :goto_25

    :catchall_20
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_25
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2c

    goto :goto_35

    :cond_2c
    const-string v2, "unbindTaskViewApp: unbind service failure, because of "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method


# virtual methods
.method public final canGoBackToTaskView()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewReady:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewStarted:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final getSwipeToRecentAnimationHelper()Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->swipeToRecentAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    return-object p0
.end method

.method public final getTaskView()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    return-object p0
.end method

.method public final makeSystemBarsHideIfNeed()V
    .registers 8

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    const-string v1, "makeSystemBarsHideIfNeed: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskView"

    const-string v3, "TaskViewManager"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->canGoBackToTaskView()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v0, :cond_3c

    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static/range {v1 .. v6}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    :cond_3c
    return-void
.end method

.method public onBackPressed(Lcom/android/launcher/Launcher;)Z
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "onBackPressed: isResumed = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->canGoBackToTaskView()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez p1, :cond_5f

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView$default(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;ZILjava/lang/Object;)V

    :cond_5f
    return v1
.end method

.method public onHomeKeyPressed(Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "onHomeKeyPressed: isResumed = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_3a

    return-void

    :cond_3a
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->canGoBackToTaskView()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez p1, :cond_66

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView$default(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;ZILjava/lang/Object;)V

    :cond_66
    return-void
.end method

.method public final release()V
    .registers 4

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "release()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->releaseTaskView()V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->releaseVirtualDisplay()V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->unbindTaskViewApp()V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stateChangeListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->removeGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskStackChangeListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskStackChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->release()V

    sget-object v0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->INSTANCE:Lcom/oplus/quickstep/bracketspace/BracketModeHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->release()V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcherRemoteListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$launcherRemoteListener$1;

    invoke-static {p0}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->removeLauncherRemoteListener(Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;)V

    return-void
.end method

.method public final releaseTaskView()V
    .registers 11

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "releaseTaskView()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-nez v3, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {v3}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->release()V

    :goto_15
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    iput-boolean v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewReady:Z

    iput-boolean v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewStarted:Z

    iget v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTaskId:I

    iput v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->pendingRemoveTaskId:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTaskId:I

    iget-boolean v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewReleased:Z

    if-eqz v5, :cond_35

    iget-boolean v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isWorkspaceVisible:Z

    if-eqz v5, :cond_35

    iget-boolean v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewVisible:Z

    if-nez v5, :cond_35

    const-string p0, "releaseTaskView: task view already released, so we should not release again"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    iget v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->tmpTaskId:I

    if-eq v0, v4, :cond_44

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->tmpTaskId:I

    invoke-virtual {v0, v1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->rmTask(I)V

    iput v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->tmpTaskId:I

    :cond_44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewReleased:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->cancelTaskViewTransitionAnimator()V

    iput-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTransitionAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeOrientationLandscape(Z)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeLauncherViewsShown()V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeTaskViewsHidden()V

    sget-object v4, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v0, :cond_7f

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    :cond_7f
    return-void
.end method

.method public final setState(Lcom/android/launcher3/LauncherState;)V
    .registers 9

    const-string v0, "setState: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-eqz v0, :cond_70

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewReady:Z

    if-eqz v0, :cond_70

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewReleased:Z

    if-eqz v0, :cond_1a

    goto :goto_70

    :cond_1a
    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewStarted:Z

    if-nez v0, :cond_23

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    return-void

    :cond_23
    if-nez p1, :cond_26

    goto :goto_6f

    :cond_26
    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->TASK_VIEW_ALPHA:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->getTaskView()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/states/OPlusBaseState;->getLauncherTaskViewAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getLauncherTaskViewTouchable(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "it.getLauncherTaskViewTouchable(launcher)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    sget-object p1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, v0}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showSystemBars(Landroid/view/Window;ZZ)V

    goto :goto_6f

    :cond_60
    sget-object v1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    :goto_6f
    return-void

    :cond_70
    :goto_70
    const-string p0, "setState: taskView not ready, so we can\'t set state"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 7

    const-string v0, "setStateWithAnimation: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewReady:Z

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewReleased:Z

    if-eqz v0, :cond_1a

    goto :goto_65

    :cond_1a
    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewStarted:Z

    if-nez v0, :cond_23

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    return-void

    :cond_23
    if-nez p1, :cond_26

    goto :goto_64

    :cond_26
    if-nez p2, :cond_2a

    const/4 p2, 0x0

    goto :goto_31

    :cond_2a
    const/4 v0, 0x3

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    :goto_31
    if-nez p2, :cond_35

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    :cond_35
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getLauncherTaskViewTouchable(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "it.getLauncherTaskViewTouchable(launcher)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    if-nez p3, :cond_4a

    goto :goto_59

    :cond_4a
    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->getTaskView()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->TASK_VIEW_ALPHA:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/states/OPlusBaseState;->getLauncherTaskViewAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v2

    invoke-virtual {p3, v0, v1, v2, p2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :goto_59
    if-nez p3, :cond_5c

    goto :goto_64

    :cond_5c
    new-instance p2, Lcom/oplus/quickstep/rapidreaction/utils/g;

    invoke-direct {p2, p1, p0}, Lcom/oplus/quickstep/rapidreaction/utils/g;-><init>(Lcom/android/launcher3/LauncherState;Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    invoke-virtual {p3, p2}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    :goto_64
    return-void

    :cond_65
    :goto_65
    const-string p0, "setStateWithAnimation: taskView not ready, so we can\'t set state"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setSwipeToRecentAnimationHelper(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->swipeToRecentAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    return-void
.end method

.method public final setTaskViewAlpha(F)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-nez p0, :cond_5

    goto :goto_e

    :cond_5
    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->TASK_VIEW_ALPHA:Landroid/util/FloatProperty;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :goto_e
    return-void
.end method

.method public final setTaskViewTouchable(Z)V
    .registers 5

    const-string v0, "setTaskViewTouchable: "

    const-string v1, "TaskView"

    const-string v2, "TaskViewManager"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    if-nez p0, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;->setTaskViewTouchable(Z)V

    :goto_11
    return-void
.end method

.method public final stopOrReleaseTaskView(Z)V
    .registers 13

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    const-string v2, "stopOrReleaseTaskView()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_ac

    iget-boolean v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewReady:Z

    if-eqz v0, :cond_ac

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->shouldStopPreviousTask()Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_ac

    :cond_1c
    iput-boolean v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewStarted:Z

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stateChangeListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->unbindTaskViewApp()V

    invoke-static {v2, v3, v1, v2}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo$default(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;ZILjava/lang/Object;)V

    if-eqz p1, :cond_71

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->cancelTaskViewTransitionAnimator()V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->makeLauncherViewsShown()V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez p1, :cond_5c

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-static {p1, v3}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    :cond_5c
    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopPreviousTask()Z

    goto :goto_af

    :cond_71
    new-instance p1, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stopOrReleaseTaskView$startAction$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stopOrReleaseTaskView$startAction$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stopOrReleaseTaskView$endAction$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stopOrReleaseTaskView$endAction$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->cancelTaskViewTransitionAnimator()V

    iget-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    iget-object v5, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskView:Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    iget-object v6, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->swipeToRecentAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v4, v5, v6, p1, v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->createTaskViewCloseAnimation(Lcom/android/launcher3/Launcher;Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->taskViewTransitionAnimator:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_8d

    goto :goto_af

    :cond_8d
    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stopOrReleaseTaskView$lambda-11$$inlined$doOnEnd$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stopOrReleaseTaskView$lambda-11$$inlined$doOnEnd$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_af

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_af

    :cond_ac
    :goto_ac
    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->releaseTaskView()V

    :cond_af
    :goto_af
    iput-boolean v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->isTaskViewStarted:Z

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stateChangeListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    sget-object v4, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->unbindTaskViewApp()V

    invoke-static {v2, v3, v1, v2}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo$default(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;ZILjava/lang/Object;)V

    return-void
.end method
