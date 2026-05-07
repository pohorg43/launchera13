.class public final Lcom/android/quickstep/OplusOverviewCommandHelperImpl;
.super Lcom/android/quickstep/OverviewCommandHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusOverviewCommandHelperImpl$Companion;,
        Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusOverviewCommandHelperImpl$Companion;

.field private static final EXECUTE_COMMAND_INTERVAL:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusOverviewCommandHelperImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private isInSuperPowerSaveMode:Z

.field private lastToggleTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->Companion:Lcom/android/quickstep/OplusOverviewCommandHelperImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/OverviewComponentObserver;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/SystemUiProxy;)V
    .registers 6

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskAnimationManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemUiProxy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/OverviewCommandHelper;-><init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/OverviewComponentObserver;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/SystemUiProxy;)V

    return-void
.end method

.method private static final addCommand$lambda-0(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->checkFirstCmdTimeout()V

    return-void
.end method

.method private static final addCommand$lambda-1(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method

.method private static final addOplusCommand$lambda-4(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addCommand$lambda-1(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method

.method private static final executeCommand$lambda-2(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->focusNextTaskIfNeeded(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->scheduleNextTask(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method

.method private static final executeCommand$lambda-3(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/OverviewCommandHelper;->onTransitionComplete(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addCommand$lambda-0(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V

    return-void
.end method

.method private final focusNextTaskIfNeeded(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .registers 5

    iget p1, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_47

    iget-object p0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1a

    move-object p1, v0

    goto :goto_2c

    :cond_1a
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isFocusableInTouchMode()Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    :cond_24
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    sget-object p1, Ly2/p;->a:Ly2/p;

    :goto_2c
    if-nez p1, :cond_47

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-nez p1, :cond_36

    goto :goto_3e

    :cond_36
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3e
    if-nez v0, :cond_44

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_47

    :cond_44
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_47
    :goto_47
    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->executeCommand$lambda-3(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->executeCommand$lambda-2(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method

.method private final handleCommand(Lcom/android/quickstep/BaseActivityInterface;J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "**>;J)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCommand: elapsedTime = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", doubleTapTimeout = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "OplusOverviewCommandHelperImpl"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_2e

    :cond_2c
    move p0, v0

    goto :goto_41

    :cond_2e
    const-wide/16 v1, 0x320

    cmp-long v1, p2, v1

    if-gez v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p0

    if-nez p0, :cond_2c

    move p0, p1

    :goto_41
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v1, v1

    cmp-long p2, p2, v1

    if-ltz p2, :cond_4e

    if-eqz p0, :cond_4d

    goto :goto_4e

    :cond_4d
    return v0

    :cond_4e
    :goto_4e
    return p1
.end method

.method public static synthetic i(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addOplusCommand$lambda-4(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;)V

    return-void
.end method

.method private final launchTaskOnToggle(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;",
            "Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->getNextTask(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v1, :cond_31

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_1d

    move-object v1, v0

    check-cast v1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getSafelyLaunchDelay()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_31

    :cond_1d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2a

    const-string p0, "OplusOverviewCommandHelperImpl"

    const-string p1, "launchTaskOnToggle(), can\'t launch group task, startHome."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    check-cast v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/TaskView;->setEndQuickswitchCuj(Z)V

    return p0

    :cond_31
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/quickstep/OverviewCommandHelper;->launchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z

    move-result p0

    return p0
.end method

.method private final print(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Ljava/lang/String;
    .registers 4

    iget p0, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1e

    :cond_13
    const-string p0, "TOGGLE"

    goto :goto_1e

    :cond_16
    const-string p0, "HIDE"

    goto :goto_1e

    :cond_19
    const-string p0, "NEXT_FOCUS"

    goto :goto_1e

    :cond_1c
    const-string p0, "SHOW"

    :goto_1e
    const-string v0, "cmd: type="

    const-string v1, ", createTime="

    invoke-static {v0, p0, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v0, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->createTime:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addCommand(I)V
    .registers 5
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_14

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/l;

    invoke-direct {v0, p0}, Lcom/android/quickstep/l;-><init>(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_14
    new-instance v0, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-direct {v0, p1}, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;-><init>(I)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/h0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/quickstep/h0;-><init>(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;I)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .registers 6

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCommand(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->print(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", wasEmpty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusOverviewCommandHelperImpl"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewCommandHelper;->executeNext()V

    return-void

    :cond_3a
    iget-wide v0, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->createTime:J

    iget-object v2, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    iget-wide v2, v2, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->createTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_51

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->executeCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z

    :cond_51
    return-void
.end method

.method public final addCommandWithoutPost(I)V
    .registers 3

    new-instance v0, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-direct {v0, p1}, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method

.method public final addOplusCommand(I)V
    .registers 4

    new-instance v0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;-><init>(IZ)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/k;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/k;-><init>(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final checkFirstCmdTimeout()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    const-string v1, "mPendingCommands"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mPendingCommands:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->createTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_43

    const-string v1, "cmd = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " execute timeout, schedule next task."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusOverviewCommandHelperImpl"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OverviewCommandHelper;->scheduleNextTask(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    :cond_43
    return-void
.end method

.method public executeCommand(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "*>;>(",
            "Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;",
            ")Z"
        }
    .end annotation

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    const-string v2, "executeCommand(), cmd="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", recents null ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_25

    move v5, v3

    goto :goto_26

    :cond_25
    move v5, v4

    :goto_26
    const-string v6, "QuickStep"

    const-string v7, "OplusOverviewCommandHelperImpl"

    invoke-static {v2, v5, v6, v7}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-nez v1, :cond_42

    iget v1, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    if-ne v1, v6, :cond_37

    return v3

    :cond_37
    const/4 v6, 0x2

    if-ne v1, v6, :cond_4a

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    goto :goto_4a

    :cond_42
    iget v7, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    if-eq v7, v3, :cond_16c

    if-eq v7, v6, :cond_14f

    if-eq v7, v5, :cond_14a

    :cond_4a
    :goto_4a
    iget v1, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    if-ne v1, v5, :cond_5f

    iget-wide v5, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->createTime:J

    sget-object v1, Lcom/android/quickstep/RecentsCommandHelper;->INSTANCE:Lcom/android/quickstep/RecentsCommandHelper;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsCommandHelper;->getLastToggleTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-wide v7, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->createTime:J

    iput-wide v7, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->lastToggleTime:J

    invoke-virtual {v1, v7, v8}, Lcom/android/quickstep/RecentsCommandHelper;->setLastToggleTime(J)V

    goto :goto_64

    :cond_5f
    iget-wide v5, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->createTime:J

    iget-wide v7, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->lastToggleTime:J

    sub-long/2addr v5, v7

    :goto_64
    const-string v1, "activityInterface"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v5, v6}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->handleCommand(Lcom/android/quickstep/BaseActivityInterface;J)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->scheduleNextTask(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return v4

    :cond_7a
    new-instance v1, Lcom/android/quickstep/h0;

    invoke-direct {v1, p0, p1, v3}, Lcom/android/quickstep/h0;-><init>(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;I)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->switchToRecentsIfVisible(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    return v4

    :cond_8d
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-eqz v0, :cond_9c

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    :cond_9c
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mService:Lcom/android/quickstep/TouchInteractionService;

    instance-of v0, v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;

    if-eqz v0, :cond_d3

    instance-of v0, p1, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;

    if-eqz v0, :cond_af

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;->getFromGesture()Z

    move-result v0

    if-nez v0, :cond_b9

    :cond_af
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mService:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v0, :cond_d3

    :cond_b9
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mService:Lcom/android/quickstep/TouchInteractionService;

    sget-object v1, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    const-string v5, "DEFAULT_STATE"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createOplusGestureState(Lcom/android/quickstep/GestureState;)Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v0

    if-nez v0, :cond_ce

    const-string v1, "gestureState"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_cf

    :cond_ce
    move-object v2, v0

    :goto_cf
    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setForceToRecents(Z)V

    goto :goto_e0

    :cond_d3
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mService:Lcom/android/quickstep/TouchInteractionService;

    sget-object v1, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService;->createGestureState(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    const-string v1, "mService.createGestureSt…stureState.DEFAULT_STATE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_e0
    iget-object v1, p0, Lcom/android/quickstep/OverviewCommandHelper;->mService:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v1}, Lcom/android/quickstep/TouchInteractionService;->getSwipeUpHandlerFactory()Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    move-result-object v1

    iget-wide v5, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->createTime:J

    invoke-interface {v1, v0, v5, v6}, Lcom/android/quickstep/AbsSwipeUpHandler$Factory;->newHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/z;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher/z;-><init>(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->setGestureEndCallback(Ljava/lang/Runnable;)V

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->initWhenReady()V

    new-instance v5, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$executeCommand$recentAnimListener$1;

    invoke-direct {v5, v1, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$executeCommand$recentAnimListener$1;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    iget-object v6, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v6}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v6

    if-eqz v6, :cond_12b

    iget-object v2, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v2, v0}, Lcom/android/quickstep/TaskAnimationManager;->continueRecentsAnimation(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v0

    iput-object v0, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->notifyRecentsAnimationState(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    invoke-virtual {v1, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureStarted(Z)V

    iget-object p1, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {p1, v5}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    iget-object p0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p0, v5}, Lcom/android/quickstep/TaskAnimationManager;->notifyRecentsAnimationState(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    goto :goto_144

    :cond_12b
    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getGestureId()I

    move-result v3

    const-string v6, "INTENT_EXTRA_LOG_TRACE_ID"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/quickstep/OverviewCommandHelper;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/quickstep/TaskAnimationManager;->startRecentsAnimation(Lcom/android/quickstep/GestureState;Landroid/content/Intent;Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object p0

    iput-object p0, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v1, v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureStarted(Z)V

    iget-object p0, p1, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {p0, v5}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :goto_144
    const-string p0, "Transition:toOverview"

    invoke-static {p0, v4}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    return v4

    :cond_14a
    invoke-direct {p0, v1, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->launchTaskOnToggle(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z

    move-result p0

    return p0

    :cond_14f
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-ltz v0, :cond_167

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v3

    if-ge v0, v3, :cond_167

    invoke-virtual {v1, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.android.quickstep.views.TaskView"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/quickstep/views/TaskView;

    :cond_167
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/quickstep/OverviewCommandHelper;->launchTask(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)Z

    move-result p0

    return p0

    :cond_16c
    return v3
.end method

.method public final getLastToggleTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->lastToggleTime:J

    return-wide v0
.end method

.method public final isInSuperPowerSaveMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->isInSuperPowerSaveMode:Z

    return p0
.end method

.method public final setInSuperPowerSaveMode(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->isInSuperPowerSaveMode:Z

    const-string p0, "isInSuperPowerSaveMode set to: "

    const-string v0, "OplusOverviewCommandHelperImpl"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setLastToggleTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->lastToggleTime:J

    return-void
.end method
