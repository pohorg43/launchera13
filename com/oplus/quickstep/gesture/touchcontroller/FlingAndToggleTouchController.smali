.class public Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# static fields
.field private static final DBG:Z = false

.field private static final INTERCEPT_EVENT_ANGLE_ARCTAN:F = 0.5f

.field private static final PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final REST_ANIM_DURATION:J = 0x50L

.field private static final SINGLE_FRAME_MS:J = 0x10L

.field private static final SLOW_SPEED_TIMEOUT:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "FlingAndToggleTouchController"


# instance fields
.field private mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mEndAction:Ljava/lang/Runnable;

.field private final mEndState:Lcom/android/launcher3/LauncherState;

.field private mGoingToOverview:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mMotionPauseDetector:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

.field private mNoIntercept:Z

.field private mOverviewInteractionCompleted:Z

.field private final mPullbackDistance:F

.field private mStartState:Lcom/android/launcher3/LauncherState;

.field private final mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    sget-object v2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v1, p1, p0, v2}, Lcom/oplus/quickstep/touch/OplusSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->setTanAngle(F)V

    new-instance v1, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

    const v2, 0x7f07027a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-wide/16 v2, 0x32

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;-><init>(Landroid/content/Context;IJ)V

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mMotionPauseDetector:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706eb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mPullbackDistance:F

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->lambda$onDragEnd$4(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;)Lcom/android/launcher3/LauncherState;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;Lcom/android/launcher3/LauncherState;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->lambda$onDragStart$0()V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->lambda$onDragStart$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearState()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    iput-boolean v2, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mGoingToOverview:Z

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method private closeTopViewIfNeeded()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_d
    return-void
.end method

.method private closeTopViewOrMovePageIfNeeded()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_22

    move v0, v1

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v3

    if-eqz v3, :cond_4f

    sget v3, Lcom/android/launcher3/Workspace;->DEFAULT_PAGE:I

    if-ne v0, v3, :cond_4f

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_4f

    const-string v0, "FlingAndToggleTouchController"

    const-string v3, "closeTopViewOrMovePageIfNeeded: we are in multi window mode, so we should send home key"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectKeyEvent(I)V

    goto :goto_58

    :cond_4f
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->moveToDefaultScreen()V

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_75

    goto :goto_77

    :cond_75
    move v0, v2

    goto :goto_78

    :cond_77
    :goto_77
    move v0, v1

    :goto_78
    iget-object v3, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    if-eqz v3, :cond_85

    if-eqz v0, :cond_85

    invoke-virtual {v3, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_85
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "homekey"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/learning/NotificationHelper;->sendLearningGestureNotificationIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;Ljava/lang/Boolean;)Ly2/p;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->lambda$onDragStart$2(Ljava/lang/Boolean;)Ly2/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/Hotseat;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->lambda$initCurrentAnimation$3(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/Hotseat;)V

    return-void
.end method

.method private getShiftRange()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    return p0
.end method

.method private initCurrentAnimation()V
    .registers 13

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_9a

    if-eqz v1, :cond_15

    goto/16 :goto_9a

    :cond_15
    new-instance v1, Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v7, v6, [F

    iget v8, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mPullbackDistance:F

    neg-float v8, v8

    const/4 v9, 0x0

    aput v8, v7, v9

    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v7, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v8, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v1, v5, v7, v8}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v6, [F

    iget v11, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mPullbackDistance:F

    neg-float v11, v11

    aput v11, v10, v9

    invoke-static {v3, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5, v7, v8}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v6, [F

    iget v10, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mPullbackDistance:F

    neg-float v10, v10

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5, v7, v8}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    mul-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher/z;

    invoke-direct {v1, v2, v4, v3}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/Hotseat;)V

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mEndAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->getShiftRange()F

    move-result v1

    float-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mEndAction:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    return-void

    :cond_9a
    :goto_9a
    const-string v2, "initCurrentAnimation: no anim, mStartState = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", openFolder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlingAndToggleTouchController"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->getShiftRange()F

    move-result v1

    float-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method

.method private static synthetic lambda$initCurrentAnimation$3(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/Hotseat;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setTranslationY(F)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$onDragEnd$4(Z)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0, v0, p1}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;Z)V

    return-void
.end method

.method private synthetic lambda$onDragStart$0()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mOverviewInteractionCompleted:Z

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_a
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;Z)V

    return-void
.end method

.method private synthetic lambda$onDragStart$1(Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mGoingToOverview:Z

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v0}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;I)V

    const-string p1, "FlingAndToggleTouchController"

    const-string v0, "we should show learning gesture notification when we go to OVERVIEW, if the notification "

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/learning/NotificationHelper;->sendLearningGestureNotificationIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onDragStart$2(Ljava/lang/Boolean;)Ly2/p;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnMotionPauseListener: paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mGoingToOverview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mGoingToOverview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlingAndToggleTouchController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b4

    iget-boolean p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mGoingToOverview:Z

    if-nez p1, :cond_b4

    new-instance p1, Lcom/oplus/quickstep/common/observers/a;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/common/observers/a;-><init>(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result v0

    goto :goto_3e

    :cond_3d
    move v0, v2

    :goto_3e
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v3, v1, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_4b

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    move-result v1

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    if-nez v0, :cond_50

    if-eqz v1, :cond_a2

    :cond_50
    iget-object v3, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_67
    const/4 v8, 0x0

    if-ge v7, v6, :cond_81

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getScrimBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    :cond_81
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getBrowserOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v3

    if-eqz v1, :cond_99

    instance-of v1, v3, Lo1/d;

    if-eqz v1, :cond_99

    check-cast v3, Lo1/d;

    invoke-virtual {v3, v2}, Lo1/d;->d(I)V

    :cond_99
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const-string v2, "recentapps"

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    :cond_a2
    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;Ljava/lang/Runnable;)V

    if-eqz v0, :cond_b1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x20

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b4

    :cond_b1
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/animation/o;->run()V

    :cond_b4
    :goto_b4
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method private onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;Z)V
    .registers 6

    const-string v0, "onSwipeInteractionCompleted: targetState = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v2, "FlingAndToggleTouchController"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->clearState()V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    if-eq p1, v0, :cond_25

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_25
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

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

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget v3, v3, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v4, "FlingAndToggleTouchController"

    invoke-static {v2, v3, v4}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-nez p1, :cond_21

    return v1

    :cond_21
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2f

    const-string p0, "Can not intercept while there is still popup exist"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2f
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p1, :cond_36

    return v1

    :cond_36
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v2, p1, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_53

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4e

    const-string p0, "Can not intercept while window animation"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4e
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result p1

    goto :goto_54

    :cond_53
    move p1, v1

    :goto_54
    if-nez p1, :cond_7b

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isLightEnterRecentsAnimation()Z

    move-result p1

    if-nez p1, :cond_7b

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v2, :cond_7b

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-eq p1, v2, :cond_7b

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq p1, v2, :cond_7b

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v2, :cond_71

    goto :goto_7b

    :cond_71
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_7a

    goto :goto_7b

    :cond_7a
    move v0, v1

    :cond_7b
    :goto_7b
    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_20

    return v1

    :cond_20
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_25
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_2a

    return v1

    :cond_2a
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(F)Z
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mGoingToOverview:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_a

    goto :goto_1c

    :cond_a
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->getShiftRange()F

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_1c
    :goto_1c
    return v1
.end method

.method public onDrag(FLandroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mMotionPauseDetector:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->addPosition(FJ)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->onDrag(F)Z

    move-result p0

    return p0
.end method

.method public onDragEnd(F)V
    .registers 9

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_11

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mSwipeDetector:Lcom/oplus/quickstep/touch/OplusSwipeDetector;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v3

    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDragEnd: velocity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", isFling = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mGoingToOverview = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mGoingToOverview:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mOverviewInteractionCompleted = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mOverviewInteractionCompleted:Z

    const-string v5, "FlingAndToggleTouchController"

    invoke-static {v4, p1, v5}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mGoingToOverview:Z

    if-eqz p1, :cond_4b

    iput-boolean v3, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mGoingToOverview:Z

    iput-boolean v3, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mOverviewInteractionCompleted:Z

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mMotionPauseDetector:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

    invoke-virtual {p0}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->clear()V

    return-void

    :cond_4b
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isBrowserNewsVisible()Z

    move-result p1

    const/4 v4, 0x2

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getBrowserOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isBrowserNewsVisible()Z

    move-result v5

    if-eqz v5, :cond_6b

    instance-of v5, p1, Lo1/d;

    if-eqz v5, :cond_6b

    check-cast p1, Lo1/d;

    invoke-virtual {p1, v4}, Lo1/d;->hideOverlay(I)V

    :cond_6b
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    sget-object v5, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v5, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    const/high16 v5, 0x3f000000  # 0.5f

    cmpl-float p1, p1, v5

    if-gez p1, :cond_82

    if-eqz v1, :cond_80

    goto :goto_82

    :cond_80
    move p1, v3

    goto :goto_83

    :cond_82
    :goto_82
    move p1, v2

    :goto_83
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v5, 0x50

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-array v4, v4, [F

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v6

    aput v6, v4, v3

    aput v0, v4, v2

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    if-eqz p1, :cond_b6

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->closeTopViewOrMovePageIfNeeded()V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_aa

    goto :goto_ab

    :cond_aa
    move v2, v3

    :goto_ab
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/common/util/g0;

    invoke-direct {v0, p0, v2}, Lcom/android/common/util/g0;-><init>(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_be

    :cond_b6
    new-instance p1, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController$1;-><init>(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_be
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mMotionPauseDetector:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

    invoke-virtual {p0}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->clear()V

    return-void
.end method

.method public onDragStart(ZF)V
    .registers 3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mOverviewInteractionCompleted:Z

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->hideZoomWindow(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mMotionPauseDetector:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

    invoke-virtual {p1}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->clear()V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->mMotionPauseDetector:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

    new-instance p2, Lcom/android/wm/shell/bubbles/g;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/g;-><init>(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;)V

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->setOnMotionPauseListener(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->initCurrentAnimation()V

    return-void
.end method
