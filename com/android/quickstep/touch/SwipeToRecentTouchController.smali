.class public Lcom/android/quickstep/touch/SwipeToRecentTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;
.implements Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# static fields
.field private static final DBG:Z = false

.field private static final FLAG_SWIPE_HONE_DISTANCE:I = 0x12c

.field private static final FLAG_SWITCH_TO_APP:I = 0x1

.field private static final FLAG_SWITCH_TO_HOME:I = 0x0

.field private static final FLAG_SWITCH_TO_OVERVIEW:I = 0x2

.field private static final INTERCEPT_EVENT_ANGLE_ARCTAN:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "SwipeToRecentTouchController"


# instance fields
.field private mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

.field private mDragPaused:Z

.field private mEndAction:Ljava/lang/Runnable;

.field private final mEndState:Lcom/android/launcher3/LauncherState;

.field private final mFlingSpeed:F

.field private mGoOverviewCancel:Z

.field private mGoPeekPoint:Landroid/graphics/PointF;

.field private mGoingToOverview:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsRTL:Z

.field private mLastDisplacement:Landroid/graphics/PointF;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private final mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

.field private mNoIntercept:Z

.field private mOverviewInteractionCompleted:Z

.field private mReachedOverview:Z

.field private mStartDisplacement:Landroid/graphics/PointF;

.field private mStartOverview:Z

.field private mStartState:Lcom/android/launcher3/LauncherState;

.field private final mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

.field private mSwipeTranslateInit:Z

.field private mUnpauseDistance:F


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartDisplacement:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoPeekPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070695

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mUnpauseDistance:F

    const v1, 0x7f070c03

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mFlingSpeed:F

    new-instance v0, Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    sget-object v1, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/oplus/quickstep/touch/OplusSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-direct {v1, p1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    new-instance v1, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-direct {v1, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->setTanAngle(F)V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object v0

    if-nez v0, :cond_66

    return-void

    :cond_66
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setSwipeToRecentAnimationHelper(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/touch/SwipeToRecentTouchController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->lambda$goOverviewVibrate$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/touch/SwipeToRecentTouchController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->lambda$onDragEnd$1(Z)V

    return-void
.end method

.method private changeBrowserNewsShowStatus()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getBrowserOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    instance-of v0, p0, Lo1/d;

    if-eqz v0, :cond_10

    check-cast p0, Lo1/d;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lo1/d;->d(I)V

    :cond_10
    return-void
.end method

.method private clearAssistScreenStatus()V
    .registers 8

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2c

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getScrimBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2c
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    const-string v0, "recentapps"

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    return-void
.end method

.method private clearState()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    iput-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoingToOverview:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mEndAction:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->clearState()V

    return-void
.end method

.method private closeTopViewOrMovePageIfNeeded()V
    .registers 6

    const-string v0, "SwipeToRecentTouchController"

    const-string v1, "closeTopViewOrMovePageIfNeeded"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    move-result v1

    if-nez v1, :cond_31

    move v1, v2

    goto :goto_32

    :cond_31
    move v1, v3

    :goto_32
    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v4

    if-eqz v4, :cond_5c

    sget v4, Lcom/android/launcher3/Workspace;->DEFAULT_PAGE:I

    if-ne v1, v4, :cond_5c

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_5c

    const-string v1, "closeTopViewOrMovePageIfNeeded: we are in multi window mode, so we should send home key"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectKeyEvent(I)V

    goto :goto_65

    :cond_5c
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->moveToDefaultScreen()V

    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_84

    :cond_82
    move v0, v3

    goto :goto_85

    :cond_84
    :goto_84
    move v0, v2

    :goto_85
    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    if-eqz v1, :cond_92

    if-eqz v0, :cond_92

    invoke-virtual {v1, v3}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_92
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "homekey"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/learning/NotificationHelper;->sendLearningGestureNotificationIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method private dragEndPeekingAnimation()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoOverviewCancel:Z

    if-eqz v0, :cond_9

    goto :goto_51

    :cond_9
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityX()F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v2}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityY()F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->checkSwitchMode(FFLandroid/graphics/PointF;)I

    move-result v0

    const-string v1, "goToOverviewOrHomeOnDragEnd: "

    const-string v2, "SwipeToRecentTouchController"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateStiffnessWhenFling()V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goSwitchAppAnimation()V

    return-void

    :cond_37
    if-nez v0, :cond_44

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goHomeAnimation()V

    return-void

    :cond_44
    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->goOverviewAnimation()V

    :cond_51
    :goto_51
    return-void
.end method

.method private goOverviewVibrate()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/widget/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/a;-><init>(Lcom/android/quickstep/touch/SwipeToRecentTouchController;)V

    sget-object p0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$goOverviewVibrate$0()V
    .registers 2

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportLuxunVirbrator()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16f

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0, v0}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$onDragEnd$1(Z)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;Z)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->canGoBackToTaskView()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView(Z)V

    :cond_29
    return-void
.end method

.method private onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;Z)V
    .registers 6

    const-string v0, "onSwipeInteractionCompleted: targetState = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v2, "SwipeToRecentTouchController"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_22
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    iget p1, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {p0, p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    move p1, v0

    goto :goto_d

    :cond_c
    move p1, v1

    :goto_d
    const-string v2, "canInterceptTouch: cameFromNavBar="

    const-string v3, ", mStartState="

    invoke-static {v2, p1, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget v3, v3, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v4, "SwipeToRecentTouchController"

    invoke-static {v2, v3, v4}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-nez p1, :cond_21

    return v1

    :cond_21
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAnimatingToOverView()Z

    move-result p1

    if-eqz p1, :cond_2a

    return v1

    :cond_2a
    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-boolean p0, p0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p0, :cond_31

    return v1

    :cond_31
    return v0
.end method

.method public getHelper()Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    return-object p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_20

    return v1

    :cond_20
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_25
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_2a

    return v1

    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(F)Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->calculateBackgroundAnimate(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDrag(FFLandroid/view/MotionEvent;)Z
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, " onDrag: displacementX="

    const-string v1, ", displacementy="

    const-string v2, ", ev="

    invoke-static {v0, p2, v1, p1, v2}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDragPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSwipeTranslateInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    const-string v2, "SwipeToRecentTouchController"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2d
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v0, p3}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    iget-boolean p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    if-eqz p3, :cond_80

    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityY()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityX()F

    move-result v1

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updateSwipeDirection(FFFF)V

    iget-boolean p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    const/4 v0, 0x1

    if-nez p3, :cond_58

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartDisplacement:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p0}, Landroid/graphics/PointF;->set(FF)V

    return v0

    :cond_58
    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->checkRecentsViewAlpha()V

    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p3, p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->calculateTranslateAndAnimate(F)V

    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {v1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityY()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->calculateScaleAndAnimate(FF)V

    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoPeekPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mUnpauseDistance:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v0, 0x0

    :goto_7d
    invoke-virtual {p3, v0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->setAllowCancel(Z)V

    :cond_80
    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    invoke-virtual {p3, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->onDrag(F)Z

    move-result p0

    return p0
.end method

.method public onDragEnd(F)V
    .registers 6

    const-string v0, "onDragEnd mSwipeTranslateInit:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mReachedOverview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mReachedOverview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDragPaused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    const-string v2, "SwipeToRecentTouchController"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->dragEndPeekingAnimation()V

    goto :goto_3c

    :cond_2e
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mReachedOverview:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->calculateBackgroundAnimate(F)V

    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_4e

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mFlingSpeed:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4e

    move p1, v2

    goto :goto_4f

    :cond_4e
    move p1, v1

    :goto_4f
    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mReachedOverview:Z

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x43960000  # 300.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_63

    if-eqz p1, :cond_8a

    :cond_63
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->closeTopViewOrMovePageIfNeeded()V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_6d

    move v1, v2

    :cond_6d
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/common/util/g0;

    invoke-direct {v0, p0, v1}, Lcom/android/common/util/g0;-><init>(Lcom/android/quickstep/touch/SwipeToRecentTouchController;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    move-result p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getBrowserOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    check-cast p1, Lo1/d;

    invoke-virtual {p1, v2}, Lo1/d;->hideOverlay(I)V

    :cond_8a
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->clear()V

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->clearState()V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_DRAG_RECENTS_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onDragStart(ZF)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " startDisplacement: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SwipeToRecentTouchController"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_DRAG_RECENTS_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mOverviewInteractionCompleted:Z

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object p2

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->hideZoomWindow(I)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x1

    const/high16 v1, 0x100000

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p2}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->clear()V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    invoke-virtual {p2, p0}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initState()V

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoOverviewCancel:Z

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mStartOverview:Z

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mReachedOverview:Z

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    return-void
.end method

.method public onMotionPauseChanged(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    const-string v0, "onMotionPauseChanged: "

    const-string v1, ", mGoingToOverview="

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoingToOverview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSwipeTranslateInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    const-string v2, "SwipeToRecentTouchController"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->updatePaused(Z)V

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mDragPaused:Z

    if-eqz p1, :cond_7b

    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoingToOverview:Z

    if-nez p1, :cond_7b

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->hideKeyboard()V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->clearAssistScreenStatus()V

    :cond_3b
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->changeBrowserNewsShowStatus()V

    :cond_46
    invoke-direct {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->goOverviewVibrate()V

    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    if-nez p1, :cond_5e

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->initDragParam(Landroid/graphics/PointF;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mGoPeekPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLastDisplacement:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_5e
    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mSwipeTranslateInit:Z

    const/4 v0, 0x1

    if-nez p1, :cond_79

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mAnimationHelper:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->cancelAnimationIfNeed()V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mMotionPauseDetector:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->setAllowCancel(Z)V

    :cond_79
    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->mReachedOverview:Z

    :cond_7b
    return-void
.end method

.method public onMotionPauseDetected()V
    .registers 1

    return-void
.end method
