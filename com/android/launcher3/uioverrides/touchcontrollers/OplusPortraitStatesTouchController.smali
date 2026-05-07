.class public Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusPortraitStatesTouchController"


# instance fields
.field private mBrowserLauncherCycleCallbacksImp:Lo1/d;

.field private mIsIconFall:Z

.field private mTricFallenIconsThreshold:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    sget-object p1, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mIsIconFall:Z

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070711

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mTricFallenIconsThreshold:F

    return-void
.end method

.method private isIconFallenEnabled(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    sget-object p0, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string/jumbo v0, "sp_key_icon_fallen_switch"

    invoke-static {p1, v0, p0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isTouchOnIconFallenArea(Lcom/android/launcher3/Launcher;F)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mTricFallenIconsThreshold:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_19

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mTricFallenIconsThreshold:F

    sub-float/2addr p1, p0

    cmpl-float p0, p2, p1

    if-lez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method


# virtual methods
.method public canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getOverviewPeeking()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public cancelDragAnim()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->onDragEnd(F)V

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_17
    return-void
.end method

.method public getAllAppsToNormalAnimation()Lcom/android/launcher3/states/StateAnimationConfig;
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getAllAppsToNormalAnimation()Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object p0

    sget-object v0, Lcom/android/common/config/AnimationConstant;->WORKSPACE_FADE_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/android/common/config/AnimationConstant;->INTERPOLATOR_ALL_APPS_SCALE:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method public getNormalToAllAppsAnimation()Lcom/android/launcher3/states/StateAnimationConfig;
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getNormalToAllAppsAnimation()Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object p0

    sget-object v0, Lcom/android/common/config/AnimationConstant;->INTERPOLATOR_ALL_APPS_SCALE:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/common/config/AnimationConstant;->WORKSPACE_FADE_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/common/config/AnimationConstant;->INTERPOLATOR_ALL_APPS_FADE:Landroid/view/animation/Interpolator;

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method public getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .registers 4

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_7

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_7
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1a

    if-eqz p2, :cond_1a

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    :cond_19
    return-object v0

    :cond_1a
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object p0

    return-object p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4b

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-nez v0, :cond_23

    sget-boolean v0, Lo1/e;->a:Z

    if-nez v0, :cond_23

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_22

    sget-object p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->TAG:Ljava/lang/String;

    const-string p1, "onControllerInterceptTouchEvent, not in drawer mode, ignore ACTION_DOWN."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return v1

    :cond_23
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->isIconFallenEnabled(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->isTouchOnIconFallenArea(Lcom/android/launcher3/Launcher;F)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    goto :goto_3a

    :cond_39
    move v0, v1

    :goto_3a
    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mIsIconFall:Z

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->TAG:Ljava/lang/String;

    const-string v2, "is IconFallen"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mIsIconFall:Z

    if-eqz v0, :cond_50

    return v1

    :cond_50
    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_71

    return v1

    :cond_71
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(FLandroid/view/MotionEvent;)Z
    .registers 4

    sget-boolean v0, Lo1/e;->a:Z

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mBrowserLauncherCycleCallbacksImp:Lo1/d;

    if-eqz v0, :cond_93

    neg-float p1, p1

    iget-object p2, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mBrowserLauncherCycleCallbacksImp:Lo1/d;

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    if-eqz p0, :cond_91

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result p2

    const-string v0, "BrowserLauncherClient"

    if-eqz p2, :cond_7a

    iget-boolean p2, p0, Lo1/b;->u:Z

    if-eqz p2, :cond_7a

    iget-boolean p2, p0, Lo1/b;->D:Z

    if-eqz p2, :cond_69

    const-string p1, "endScroll"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result p1

    if-eqz p1, :cond_4b

    iget-boolean p1, p0, Lo1/b;->u:Z

    if-eqz p1, :cond_4b

    const/4 p1, 0x0

    :try_start_3b
    iput-boolean p1, p0, Lo1/b;->u:Z

    iget-object p1, p0, Lo1/b;->s:Lr1/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lr1/a;->a(F)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_5f

    :catch_44
    move-exception p1

    const-string p2, "endScroll exception, message:"

    invoke-static {p2, p1, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_5f

    :cond_4b
    const-string p1, "endScroll but isConnect: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5f
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lo1/b;->j(I)V

    const-string p0, "onScroll,endScroll and hideOverlay with CLOSE_BROWSER_NEWS_MENU"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    :cond_69
    :try_start_69
    iget-object p0, p0, Lo1/b;->s:Lr1/a;

    iget-object p0, p0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz p0, :cond_91

    invoke-interface {p0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->onScroll(F)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_72} :catch_73

    goto :goto_91

    :catch_73
    move-exception p0

    const-string p1, "setScroll exception, message:"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_91

    :cond_7a
    const-string p1, "setScroll but isConnect: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mIsScrolling: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lo1/b;->u:Z

    invoke-static {p1, p0, v0}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_91
    :goto_91
    const/4 p0, 0x1

    return p0

    :cond_93
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDrag(FLandroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDragEnd(F)V
    .registers 7

    sget-boolean v0, Lo1/e;->a:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mBrowserLauncherCycleCallbacksImp:Lo1/d;

    if-eqz v0, :cond_71

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endScrollWithVelocity mClient not null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lo1/d;->b:Lo1/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    move v2, v3

    :goto_1d
    const-string v4, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    invoke-static {v1, v2, v4}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v1, v0, Lo1/d;->b:Lo1/b;

    if-eqz v1, :cond_6a

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v2, "BrowserLauncherCycleCallbacksImp-endScrollWithVelocity"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Lo1/d;->b:Lo1/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endScrollWithVelocity velocity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BrowserLauncherClient"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo1/b;->g()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-boolean v2, v0, Lo1/b;->u:Z

    if-eqz v2, :cond_65

    :try_start_53
    iput-boolean v3, v0, Lo1/b;->u:Z

    iget-object v0, v0, Lo1/b;->s:Lr1/a;

    iget-object v0, v0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz v0, :cond_65

    invoke-interface {v0, p1}, Lcom/heytap/browser/ILauncherOverlayBrowser;->endScrollWithVelocity(F)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5e} :catch_5f

    goto :goto_65

    :catch_5f
    move-exception p1

    const-string v0, "endScrollWithVelocity exception, message:"

    invoke-static {v0, p1, v4}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_65
    :goto_65
    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    :cond_6a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mBrowserLauncherCycleCallbacksImp:Lo1/d;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->clearState()V

    return-void

    :cond_71
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDragEnd(F)V

    return-void
.end method

.method public onDragStart(ZF)V
    .registers 7

    sget-boolean v0, Lo1/e;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12e

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mBrowserLauncherCycleCallbacksImp:Lo1/d;

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getBrowserOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    instance-of p1, p1, Lo1/d;

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getBrowserOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    check-cast p1, Lo1/d;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mBrowserLauncherCycleCallbacksImp:Lo1/d;

    const-string p2, "ondragstart"

    invoke-virtual {p1, p2}, Lo1/d;->a(Ljava/lang/String;)V

    :cond_22
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->mBrowserLauncherCycleCallbacksImp:Lo1/d;

    if-eqz p0, :cond_126

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startScroll mClient not null:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo1/d;->b:Lo1/b;

    const/4 v0, 0x1

    if-eqz p2, :cond_3b

    move p2, v0

    goto :goto_3c

    :cond_3b
    move p2, v1

    :goto_3c
    const-string v2, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    invoke-static {p1, p2, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lo1/d;->b:Lo1/b;

    if-eqz p1, :cond_10e

    sget-object p1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string p2, "BrowserLauncherCycleCallbacksImp-startScroll"

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    iget-object p2, p0, Lo1/b;->C:Landroidx/appcompat/app/AlertDialog;

    const-string v2, "BrowserLauncherClient"

    if-eqz p2, :cond_63

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_63

    const-string/jumbo p0, "startScroll, Dialog is showing, not startScroll"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_108

    :cond_63
    sget-object p2, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {p2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_eb

    iget p2, p0, Lo1/b;->n:F

    cmpl-float p2, p2, v3

    if-lez p2, :cond_74

    goto/16 :goto_eb

    :cond_74
    iget-object p2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz p2, :cond_8c

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p2, v3, :cond_8c

    const-string/jumbo p0, "startScroll, go to OVERVIEW, not startScroll"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_108

    :cond_8c
    iget-object p2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    if-eqz p2, :cond_c9

    invoke-virtual {p2}, Landroid/app/Activity;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_c9

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result p2

    if-eqz p2, :cond_c9

    const-string/jumbo p2, "startScroll"

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a2
    invoke-virtual {p0, v0}, Lo1/b;->p(Z)V

    iget-object p2, p0, Lo1/b;->s:Lr1/a;

    iget-object p2, p2, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz p2, :cond_ae

    invoke-interface {p2}, Lcom/heytap/browser/ILauncherOverlayBrowser;->startScroll()V

    :cond_ae
    iput-boolean v0, p0, Lo1/b;->u:Z

    iput-boolean v1, p0, Lo1/b;->D:Z

    iget-object p2, p0, Lo1/b;->m:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->runDeferredCallback(I)V

    invoke-virtual {p0}, Lo1/b;->o()V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_c0} :catch_c1

    goto :goto_108

    :catch_c1
    move-exception p0

    const-string/jumbo p2, "startScroll exception, message:"

    invoke-static {p2, p0, v2}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_108

    :cond_c9
    const-string/jumbo p2, "startScroll forceScroll: "

    const-string v0, " ,isConnected: "

    invoke-static {p2, v1, v0}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,mIsScrolling: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lo1/b;->u:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_108

    :cond_eb
    :goto_eb
    const-string/jumbo p2, "startScroll, launcher not fininish bind data, not startScroll,mBrowserProcess:"

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lo1/b;->n:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lo1/b;->n:F

    cmpl-float p2, p2, v3

    if-lez p2, :cond_108

    const/4 p2, 0x6

    invoke-virtual {p0, p2, v0}, Lo1/b;->f(IZ)V

    :cond_108
    :goto_108
    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    goto :goto_12d

    :cond_10e
    const-string p1, "mClient is null, reinit mClient"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo1/d;->b:Lo1/b;

    if-nez p1, :cond_12d

    new-instance p1, Lp1/b;

    iget-object p2, p0, Lo1/d;->a:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p2}, Lp1/b;-><init>(Lcom/android/launcher/Launcher;)V

    new-instance v0, Lo1/b;

    invoke-direct {v0, p2, p1}, Lo1/b;-><init>(Lcom/android/launcher/Launcher;Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;)V

    iput-object v0, p0, Lo1/d;->b:Lo1/b;

    goto :goto_12d

    :cond_126
    sget-object p0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;->TAG:Ljava/lang/String;

    const-string p1, "mBrowserLauncherCycleCallbacksImp object init failed"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12d
    :goto_12d
    return-void

    :cond_12e
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDragStart(ZF)V

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, p2, :cond_14a

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->runDeferredCallback(I)V

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 p1, 0x100

    invoke-static {p0, v1, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_14a
    return-void
.end method
