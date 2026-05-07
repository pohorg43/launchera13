.class public Lcom/android/quickstep/RecentsActivityCommand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "*>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsActivityCommand"


# instance fields
.field public mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/BaseActivityInterface<",
            "*TT;>;"
        }
    .end annotation
.end field

.field private final mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/AppToOverviewAnimationProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCreateTime:J

.field private mListener:Lcom/android/quickstep/util/ActivityInitListener;

.field private mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

.field private final mRecentsModel:Lcom/android/quickstep/RecentsModel;

.field private final mToggleClickedTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/OverviewComponentObserver;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mToggleClickedTime:J

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    sget-object p3, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/quickstep/RecentsModel;

    iput-object p3, p0, Lcom/android/quickstep/RecentsActivityCommand;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mCreateTime:J

    new-instance v0, Lcom/android/quickstep/AppToOverviewAnimationProvider;

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/quickstep/AppToOverviewAnimationProvider;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentsActivityCommand;Ljava/lang/Boolean;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsActivityCommand;->onActivityReady(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/android/quickstep/RecentsActivityCommand;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsActivityCommand;->createWindowAndAdjacentAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private createWindowAndAdjacentAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsActivityCommand;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p2

    const-string p3, "RecentsActivityCommand"

    const-string v0, "QuickStep"

    if-nez p2, :cond_16

    const-string p0, "getCreatedRecentsView: activity == null"

    invoke-static {v0, p3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_16
    invoke-virtual {p2}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/views/RecentsView;

    if-nez p2, :cond_24

    const-string p0, "getCreatedRecentsView return null"

    invoke-static {v0, p3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_24
    instance-of p3, p2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p3, :cond_44

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result p0

    if-eqz p0, :cond_44

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_44

    :cond_39
    check-cast p2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getEnterAnimator()Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_44
    :goto_44
    return-object p1
.end method

.method private createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mToggleClickedTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/statistics/LauncherStatistics;->setToggleClickedTime(J)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    const-string/jumbo v1, "toggle"

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statStartActivityDuration(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mListener:Lcom/android/quickstep/util/ActivityInitListener;

    invoke-virtual {v0}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    new-instance v0, Lcom/oplus/painteranimation/OplusAnimatorSet;

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oplus/painteranimation/OplusAnimatorSet;-><init>(Landroid/animation/AnimatorSet;)V

    new-instance p1, Lcom/android/quickstep/RecentsActivityCommand$2;

    invoke-direct {p1, p0}, Lcom/android/quickstep/RecentsActivityCommand$2;-><init>(Lcom/android/quickstep/RecentsActivityCommand;)V

    invoke-virtual {v0, p1}, Lcom/oplus/painteranimation/OplusAnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "EnterRecentsByMenu"

    const-string p1, "Window Animation"

    invoke-virtual {v0, p0, p1}, Lcom/oplus/painteranimation/OplusAnimatorSet;->setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/painteranimation/OplusAnimatorSet;->getInternalAnimSet()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private getNextTask(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/TaskView;
    .registers 2

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_14

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p0

    if-lez p0, :cond_12

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return-object p0

    :cond_14
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getNextTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_1b

    move-object p0, p1

    :cond_1b
    return-object p0
.end method

.method private onActivityReady(Ljava/lang/Boolean;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->clearOplusOnResumeCallback()V

    :cond_10
    iget-object p0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->onActivityReady(Lcom/android/launcher3/statemanager/StatefulActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public handleCommand(J)Z
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCommand: elapsedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", doubleTapTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "RecentsActivityCommand"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result p1

    if-nez p1, :cond_37

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    goto :goto_4d

    :cond_37
    instance-of p1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p1, :cond_41

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->showNextTask()V

    goto :goto_4d

    :cond_41
    invoke-direct {p0, v0}, Lcom/android/quickstep/RecentsActivityCommand;->getNextTask(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_4d

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskView;->setEndQuickswitchCuj(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    :cond_4d
    :goto_4d
    return v1

    :cond_4e
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_8c

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-eqz v0, :cond_8a

    const-wide/16 v2, 0x2bc

    cmp-long p1, p1, v2

    if-gez p1, :cond_8a

    iget-object p1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_8a

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result p0

    if-nez p0, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 p0, 0x0

    return p0

    :cond_8c
    :goto_8c
    return v1
.end method

.method public onTransitionComplete()V
    .registers 1

    return-void
.end method

.method public run()V
    .registers 12

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    const-string v1, "RecentsActivityCommand"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_1c

    iget-object v3, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    if-eq v0, v3, :cond_1c

    const-string v3, "RecentsActivityCommand--run(), update activityInterface."

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v3, p0, Lcom/android/quickstep/RecentsActivityCommand;->mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-virtual {v3, v0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->setActivityInterface(Lcom/android/quickstep/BaseActivityInterface;)V

    :cond_1c
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-static {v0, v3}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;Z)V

    :cond_27
    iget-wide v4, p0, Lcom/android/quickstep/RecentsActivityCommand;->mCreateTime:J

    sget-object v0, Lcom/android/quickstep/RecentsCommandHelper;->INSTANCE:Lcom/android/quickstep/RecentsCommandHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsCommandHelper;->getLastToggleTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/quickstep/RecentsActivityCommand;->mCreateTime:J

    invoke-virtual {v0, v6, v7}, Lcom/android/quickstep/RecentsCommandHelper;->setLastToggleTime(J)V

    invoke-virtual {p0, v4, v5}, Lcom/android/quickstep/RecentsActivityCommand;->handleCommand(J)Z

    move-result v0

    if-eqz v0, :cond_3c

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    instance-of v4, v0, Lcom/android/quickstep/LauncherActivityInterface;

    if-eqz v4, :cond_50

    check-cast v0, Lcom/android/quickstep/LauncherActivityInterface;

    new-instance v4, Lcom/android/quickstep/q0;

    invoke-direct {v4, p0, v3}, Lcom/android/quickstep/q0;-><init>(Lcom/android/quickstep/RecentsActivityCommand;I)V

    invoke-virtual {v0, v4}, Lcom/android/quickstep/OplusBaseActivityInterface;->oplusSwitchToRecentsIfVisible(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5d

    return-void

    :cond_50
    new-instance v3, Lcom/android/quickstep/q0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/quickstep/q0;-><init>(Lcom/android/quickstep/RecentsActivityCommand;I)V

    invoke-virtual {v0, v3}, Lcom/android/quickstep/BaseActivityInterface;->switchToRecentsIfVisible(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5d

    return-void

    :cond_5d
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    new-instance v3, Lcom/android/launcher/badge/f;

    invoke-direct {v3, p0}, Lcom/android/launcher/badge/f;-><init>(Lcom/android/quickstep/RecentsActivityCommand;)V

    invoke-virtual {v0, v3}, Lcom/android/quickstep/BaseActivityInterface;->createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quickstep/RecentsActivityCommand;->mListener:Lcom/android/quickstep/util/ActivityInitListener;

    :try_start_6a
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Lcom/android/quickstep/RecentsActivityCommand$1;

    invoke-direct {v6, p0}, Lcom/android/quickstep/RecentsActivityCommand$1;-><init>(Lcom/android/quickstep/RecentsActivityCommand;)V

    iget-object v7, p0, Lcom/android/quickstep/RecentsActivityCommand;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mAnimationProvider:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-virtual {v0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->getRecentsLaunchDuration()J

    move-result-wide v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/quickstep/util/ActivityInitListener;->registerAndStartActivity(Landroid/content/Intent;Lcom/android/quickstep/util/OplusRemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V
    :try_end_86
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6a .. :try_end_86} :catch_87

    goto :goto_9d

    :catch_87
    const-string v0, "registerAndStartActivity ActivityNotFoundException overviewIntent:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {p0}, Lcom/android/quickstep/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9d
    return-void
.end method
