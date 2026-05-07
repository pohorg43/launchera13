.class public Lcom/android/launcher/touch/WorkspacePullDownDetectController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# static fields
.field private static final BLUR_ANIMATE_SCALE:F = 0.6f

.field private static final BLUR_ANIMATE_THRESHOLD:F = 0.1f

.field private static final INVALID_POINT:I = -0x1

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final PULL_DOWN_ACTION_QUITE:Ljava/lang/String; = "shelf_or_search_quite_action_call_time"

.field private static final PULL_DOWN_ANIMATION_FRACTION:F = 1.5f

.field private static final SCREEN_HEIGHT_SCALE_RADIO:F = 12.5f

.field private static final START_ACTIVITY_THRESHOLD:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WorkspacePullDownDetectController"

.field private static final TOP_AREA_DETECT_HEIGHT_RADIO:F = 3.0f

.field private static final WAITE_FRACTION_TIME:I = 0x3e8

.field public static sGlobalSearchActivityName:Ljava/lang/String; = null

.field private static sOneHandedRegionRatio:D = 0.125


# instance fields
.field private mActionQuiteObserver:Landroid/database/ContentObserver;

.field private mActivePointer:I

.field private mActivityStarted:Ljava/lang/Boolean;

.field private mCanIntercept:Ljava/lang/Boolean;

.field private mHiAssistantAppEnable:Z

.field private mIsFirstPullInExpVersion:Z

.field private mIsHiAssistantSupport:Z

.field private mIsOneHandedModeEnabled:Z

.field private mIsPullDownReady:Z

.field private mIsShelfSupport:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOneHandedContentObserver:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private mOneHandedGestureDomain:I

.field private mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

.field private mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

.field private mPullDownFinished:Ljava/lang/Boolean;

.field private mScaledTouchSlop:I

.field private mShelfAppEnable:Z

.field private mSlideDownType:I

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowHeight:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowHeight:I

    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedGestureDomain:I

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsOneHandedModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownFinished:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsFirstPullInExpVersion:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivePointer:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mShelfAppEnable:Z

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mHiAssistantAppEnable:Z

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mScaledTouchSlop:I

    new-instance p1, Lcom/android/launcher/touch/PullDownAnimator;

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/android/launcher/touch/PullDownAnimator;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowHeight:I

    const-string/jumbo p1, "mWindowHeight = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowHeight:I

    const-string v1, "WorkspacePullDownDetectController"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowHeight:I

    int-to-double v2, p1

    sget-wide v4, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->sOneHandedRegionRatio:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    iput p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedGestureDomain:I

    const-string p1, "mOneHandedGestureDomain = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedGestureDomain:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-direct {p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsOneHandedModeEnabled:Z

    new-instance p1, Lcom/android/launcher/touch/c;

    invoke-direct {p1, p0}, Lcom/android/launcher/touch/c;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)V

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedContentObserver:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance p1, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActionQuiteObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->updateShelfSupport()V

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz p1, :cond_c5

    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->updateHiAssistantSupport()V

    :cond_c5
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$pullCancel$6()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/touch/PullDownAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$showShelf$5(Lcom/android/launcher/Launcher;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$updateShelfSupport$1()V

    return-void
.end method

.method private canInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    if-eqz v0, :cond_10

    return v2

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1b

    return v2

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const-string v3, "WorkspacePullDownDetectController"

    if-eqz v0, :cond_2b

    const-string p0, "has Top Open View"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2b
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string p0, "Guide page is showing, WorkSpacePullDown cancel"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3d
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(FF)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string p0, "isTouchScrollAppWidget"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->isOnehandedModeActivating(I)Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p0, "isOnehandedModeActivating"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_68
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mSlideDownType:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_79

    const-string p0, "isSlideDownTypeNotificationCenter"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_79
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private checkTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-gtz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_f

    goto :goto_10

    :cond_f
    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic d(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$updateHiAssistantSupport$2()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/Launcher;Landroid/app/SearchManager;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$showSearchBar$3(Lcom/android/launcher/Launcher;Landroid/app/SearchManager;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$startGlobalSearch$4(Lcom/android/launcher/Launcher;Landroid/content/Intent;)V

    return-void
.end method

.method private initDragStates(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownFinished:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivePointer:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_3f

    const-string/jumbo p1, "onControllerInterceptTouchEvent -- ACTION_DOWN, mTouchDownX = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mTouchDownY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownY:F

    const-string v0, "WorkspacePullDownDetectController"

    invoke-static {p1, p0, v0}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_3f
    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 4

    const-string p1, "WorkspacePullDownDetectController"

    const-string/jumbo v0, "onChange, oneHandedMode Enabled changed"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsOneHandedModeEnabled:Z

    return-void
.end method

.method private synthetic lambda$pullCancel$6()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorIfNeeded()V

    return-void
.end method

.method private static synthetic lambda$showSearchBar$3(Lcom/android/launcher/Launcher;Landroid/app/SearchManager;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 14

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "WorkspacePullDownDetectController"

    const-string/jumbo v1, "real start showSearchBar"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    :cond_24
    return-void
.end method

.method private synthetic lambda$showShelf$5(Lcom/android/launcher/Launcher;Landroid/content/Intent;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    const-string p1, "WorkspacePullDownDetectController"

    const-string/jumbo p2, "start activity failed, ShelfMainActivity not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancel()V

    :goto_f
    return-void
.end method

.method private synthetic lambda$startGlobalSearch$4(Lcom/android/launcher/Launcher;Landroid/content/Intent;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    const-string p1, "WorkspacePullDownDetectController"

    const-string/jumbo p2, "start activity failed, searchHomeActivity not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancel()V

    :goto_f
    return-void
.end method

.method private synthetic lambda$updateHiAssistantSupport$2()V
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsHiAssistantPullDownSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsHiAssistantSupport:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, "com.oplus.leftscreen"

    invoke-static {v0, v1}, Lcom/android/common/util/PackageUtils;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/common/util/PackageUtils;->isApplicationEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mHiAssistantAppEnable:Z

    const-string v0, "Get HiAssistant app enable state result = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mHiAssistantAppEnable:Z

    const-string v1, "WorkspacePullDownDetectController"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_23
    return-void
.end method

.method private synthetic lambda$updateShelfSupport$1()V
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsShelfSupport:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->slideDownDialogHasShownForShelf(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsFirstPullInExpVersion:Z

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, "com.coloros.assistantscreen"

    invoke-static {v0, v1}, Lcom/android/common/util/PackageUtils;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/common/util/PackageUtils;->isApplicationEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mShelfAppEnable:Z

    const-string v0, "Get shel app enable state result = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mShelfAppEnable:Z

    const-string v1, "WorkspacePullDownDetectController"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2b
    return-void
.end method

.method private normalAreaDetect(Lcom/android/launcher/Launcher;Landroid/view/MotionEvent;II)Z
    .registers 12

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownFinished:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-direct {p0, p2}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivePointer:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    return v1

    :cond_1f
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    int-to-float p3, p3

    sub-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    int-to-float v0, p4

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {p3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    if-nez v3, :cond_3d

    move p3, v4

    :cond_3d
    div-float/2addr v0, p3

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float p3, v5

    const v0, 0x3f860a92

    cmpl-float p3, p3, v0

    if-gtz p3, :cond_53

    iget-object p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p3}, Lcom/android/launcher/touch/PullDownAnimator;->isInit()Z

    move-result p3

    if-eqz p3, :cond_101

    :cond_53
    iget p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mScaledTouchSlop:I

    mul-int/lit8 p3, p3, 0x6

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_6e

    iget p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mScaledTouchSlop:I

    mul-int/lit8 v3, p3, 0x5

    mul-int/2addr v3, p4

    div-int/2addr v3, v0

    const/high16 p4, 0x41480000  # 12.5f

    int-to-float p3, p3

    mul-float/2addr p3, p4

    int-to-float p4, v3

    sub-float/2addr p3, p4

    float-to-int p3, p3

    :cond_6e
    int-to-float p3, p3

    const p4, 0x3dcccccd  # 0.1f

    mul-float v0, p3, p4

    cmpl-float v0, p2, v0

    const/4 v3, 0x1

    if-lez v0, :cond_a0

    iget-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    if-eqz v0, :cond_a0

    sget-object v0, Lcom/android/launcher/touch/ShelfDialog;->INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

    invoke-virtual {v0, p1}, Lcom/android/launcher/touch/ShelfDialog;->cancelBubble(Lcom/android/launcher/Launcher;)V

    iput-boolean v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    iget-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsFirstPullInExpVersion:Z

    if-eqz v0, :cond_9b

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    if-eqz v0, :cond_93

    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mSlideDownType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9b

    :cond_93
    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->showDialog()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    return v3

    :cond_9b
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->initAnimator()V

    :cond_a0
    const/high16 v0, 0x3fc00000  # 1.5f

    mul-float/2addr v0, p3

    div-float v0, p2, v0

    sub-float/2addr v0, p4

    const p4, 0x3f19999a  # 0.6f

    mul-float/2addr v0, p4

    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-static {v0, v2, v4}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/launcher/touch/PullDownAnimator;->updatePullDownProgress(F)V

    const/high16 p4, 0x3f000000  # 0.5f

    mul-float/2addr p3, p4

    cmpl-float p2, p2, p3

    if-lez p2, :cond_101

    iget-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownFinished:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_101

    sget-object p2, Lcom/android/launcher/touch/ShelfDialog;->INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

    invoke-virtual {p2}, Lcom/android/launcher/touch/ShelfDialog;->isShowDialog()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_101

    iget-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->showDetectedType(Lcom/android/launcher/Launcher;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    const-string/jumbo p1, "normalAreaDetect: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WorkspacePullDownDetectController"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownFinished:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_101

    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancel()V

    :cond_101
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static setGlobleSearchName(Landroid/content/Context;)V
    .registers 4

    const-string v0, "WorkspacePullDownDetectController"

    const-string/jumbo v1, "search"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SearchManager;

    :try_start_b
    invoke-virtual {p0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_f} :catch_34

    if-nez p0, :cond_18

    const-string/jumbo p0, "putGlobleSearchToSP -- No global search activity found, return!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putGlobleSearchToSP -- searchActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->sGlobalSearchActivityName:Ljava/lang/String;

    return-void

    :catch_34
    move-exception p0

    const-string/jumbo v1, "putGlobleSearchToSP -- e: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private shouldOpenHiAssistant()Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mSlideDownType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsHiAssistantSupport:Z

    if-eqz v0, :cond_f

    iget-boolean p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mHiAssistantAppEnable:Z

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private showDetectedType(Lcom/android/launcher/Launcher;)Z
    .registers 8

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const-string v1, "WorkspacePullDownDetectController"

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    const-string p0, "in multi mode, do not show search bar!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_11
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/launcher3/util/SimpleGuidPageManager;->isPageCalled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/launcher3/util/SimpleGuidPageManager;->callPage(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    return v2

    :cond_3b
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_49

    const-string p0, "launcher not resumed, do not show search bar!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_49
    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->shouldOpenHiAssistant()Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Lcom/android/launcher/touch/d;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher/touch/d;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;I)V

    invoke-static {p1, v0}, Lcom/oplus/leftscreen/OverlayUtils;->showHiAssistant(Lcom/android/launcher/Launcher;Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_59
    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mSlideDownType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6b

    iget-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsShelfSupport:Z

    if-eqz v0, :cond_6b

    iget-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mShelfAppEnable:Z

    if-eqz v0, :cond_6b

    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->showShelf(Lcom/android/launcher/Launcher;)Z

    move-result p0

    return p0

    :cond_6b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->showSearchBar(Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)Z

    move-result p0

    return p0
.end method

.method private showDialog()V
    .registers 3

    sget-object v0, Lcom/android/launcher/touch/ShelfDialog;->INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher/touch/ShelfDialog;->showDialog(Lcom/android/launcher/Launcher;)V

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownDialogHasShowed(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsFirstPullInExpVersion:Z

    return-void
.end method

.method private showSearchBar(Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)Z
    .registers 16

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomSearchGlobalDisabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "WorkspacePullDownDetectController"

    if-eqz v0, :cond_14

    const-string/jumbo p0, "search box customize disabled"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_14
    if-nez p4, :cond_3f

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mDensity:F

    div-float v2, v0, v2

    const-string/jumbo v3, "pull_search_speed_px"

    invoke-virtual {p4, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "pull_search_speed_dp"

    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_3f
    move-object v8, p4

    const-string/jumbo p4, "search"

    invoke-virtual {p1, p4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Landroid/app/SearchManager;

    sget-object p4, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->sGlobalSearchActivityName:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_68

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->setGlobleSearchName(Landroid/content/Context;)V

    sget-object p4, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->sGlobalSearchActivityName:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_68

    const-string/jumbo p2, "showSearchBar -- No global search activity found in searchManager, just start global Search by intent!"

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v8}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->startGlobalSearch(Lcom/android/launcher/Launcher;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_68
    sget-object p0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p4, Lcom/android/launcher/touch/f;

    move-object v3, p4

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher/touch/f;-><init>(Lcom/android/launcher/Launcher;Landroid/app/SearchManager;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    invoke-virtual {p0, p4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const-string/jumbo p0, "showSearchBar, showing"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsPullDownToSearch()V

    const/4 p0, 0x1

    return p0
.end method

.method private showShelf(Lcom/android/launcher/Launcher;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result v0

    const-string v1, "WorkspacePullDownDetectController"

    if-eqz v0, :cond_10

    const-string/jumbo p0, "split screen no shelf"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_10
    const-string/jumbo v0, "showShelf"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "oplus.intent.action.SHELF_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.coloros.assistantscreen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.oplus.assistantscreen.shelf.activity.ShelfMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "source"

    const-string v3, "launcher-shelf"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    iget v2, v2, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "alpha_start"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/launcher/touch/e;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/launcher/touch/e;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return v3
.end method

.method private startGlobalSearch(Lcom/android/launcher/Launcher;Landroid/os/Bundle;)Z
    .registers 7

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "WorkspacePullDownDetectController"

    const-string/jumbo v2, "startGlobalSearch by intent"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.heytap.quicksearchbox"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.heytap.quicksearchbox.ui.activity.SearchHomeActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "app_data"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p2, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/launcher/touch/e;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/launcher/touch/e;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/content/Intent;I)V

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private unRegisterOneHandedListener(Lcom/android/launcher/Launcher;)V
    .registers 4

    if-eqz p1, :cond_1e

    const-string v0, "WorkspacePullDownDetectController"

    const-string/jumbo v1, "unRegisterOneHandedModeListener"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "one_handed_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedContentObserver:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    :cond_1e
    return-void
.end method

.method private updateHiAssistantSupport()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/touch/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/touch/d;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public isOnehandedModeActivating(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    const/4 v1, 0x0

    const-string v2, "WorkspacePullDownDetectController"

    if-nez v0, :cond_d

    const-string p0, "mOneHandedSettingsUtil is null, just return false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowHeight:I

    if-nez v0, :cond_18

    const-string/jumbo p0, "mWindowHeight is 0 ,just return false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_18
    iget-boolean v3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsOneHandedModeEnabled:Z

    if-eqz v3, :cond_28

    sub-int/2addr v0, p1

    iget p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedGestureDomain:I

    if-ge v0, p0, :cond_28

    const-string p0, "OneHanded mode activated, skipping downY is "

    invoke-static {p0, p1, v2}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_28
    return v1
.end method

.method public isShelfShowing()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1d

    goto :goto_8e

    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "WorkspacePullDownDetectController"

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_3f

    const-string p1, "Can not intercept as have started activity and is paused"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    return v2

    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->initDragStates(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->canInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    const-string/jumbo v0, "onControllerInterceptTouchEvent, mCanIntercept:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_68

    return v2

    :cond_68
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/OplusPagedViewImpl;->isFolderHandleEvent()Z

    move-result v0

    if-eqz v0, :cond_75

    return v2

    :cond_75
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    iget v3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownY:F

    float-to-int v4, v4

    invoke-direct {p0, v0, p1, v3, v4}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->normalAreaDetect(Lcom/android/launcher/Launcher;Landroid/view/MotionEvent;II)Z

    move-result p1

    if-nez p1, :cond_8d

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->isInit()Z

    move-result p0

    if-eqz p0, :cond_8c

    goto :goto_8d

    :cond_8c
    move v1, v2

    :cond_8d
    :goto_8d
    return v1

    :cond_8e
    :goto_8e
    iput-boolean v2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorIfNeeded()V

    return v2
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1d

    goto :goto_35

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    iget v3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownY:F

    float-to-int v4, v4

    invoke-direct {p0, v0, p1, v3, v4}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->normalAreaDetect(Lcom/android/launcher/Launcher;Landroid/view/MotionEvent;II)Z

    move-result p1

    if-nez p1, :cond_33

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->isInit()Z

    move-result p0

    if-eqz p0, :cond_34

    :cond_33
    move v1, v2

    :cond_34
    return v1

    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorIfNeeded()V

    goto :goto_53

    :cond_43
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/touch/PullDownAnimator;->pullEndAnimate(F)V

    :goto_53
    iput-boolean v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    return v1
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 5
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x1

    if-nez p1, :cond_7

    move p1, v0

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNullLauncher = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WorkspacePullDownDetectController"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->registerOneHandedListener(Lcom/android/launcher/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "shelf_or_search_quite_action_call_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActionQuiteObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_37
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_12

    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->unRegisterOneHandedListener(Lcom/android/launcher/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActionQuiteObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_12
    return-void
.end method

.method public onHomeKeyPressed(Lcom/android/launcher/Launcher;)V
    .registers 2
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/android/launcher/touch/ShelfDialog;->INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

    invoke-virtual {p0}, Lcom/android/launcher/touch/ShelfDialog;->dismissDialog()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo p1, "onResume, showing = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WorkspacePullDownDetectController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorIfNeeded()V

    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->resetActivityStarted()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Lcom/android/launcher/touch/ShelfDialog;->INSTANCE:Lcom/android/launcher/touch/ShelfDialog;

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher/touch/ShelfDialog;->cancelBubble(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public pullCancel()V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/touch/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/touch/d;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorIfNeeded()V

    return-void
.end method

.method public pullCancelForHomeGesture()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorForBlur()V

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->resetForHomeGesture()V

    :cond_2e
    return-void
.end method

.method public registerOneHandedListener(Lcom/android/launcher/Launcher;)V
    .registers 4

    if-eqz p1, :cond_1e

    const-string v0, "WorkspacePullDownDetectController"

    const-string/jumbo v1, "registerOneHandedModeListener"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "one_handed_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedContentObserver:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    :cond_1e
    return-void
.end method

.method public resetActivityStarted()V
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivityStarted:Ljava/lang/Boolean;

    return-void
.end method

.method public setHiAssistantAppEnable(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mHiAssistantAppEnable:Z

    const-string/jumbo p0, "setHiAssistantAppEnable, enable = "

    const-string v0, "WorkspacePullDownDetectController"

    invoke-static {p0, p1, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public setShelAppEnableState(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mShelfAppEnable:Z

    const-string/jumbo p0, "setShelAppEnableState, enable = "

    const-string v0, "WorkspacePullDownDetectController"

    invoke-static {p0, p1, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public updateShelfSupport()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/touch/d;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/touch/d;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
