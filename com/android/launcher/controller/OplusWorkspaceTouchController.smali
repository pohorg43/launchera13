.class public Lcom/android/launcher/controller/OplusWorkspaceTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/util/TouchController;",
        "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_ON_VALUE:Ljava/lang/String; = "0"

.field private static final ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"

.field private static final DEBUG:Z = false

.field private static final DELAY_DURATION_GO_TOGGLE_BAR_STATE:I = 0xb7

.field private static final SCALE_1:F = 1.0f

.field private static final SCALE_OF_GESTURE_NORMAL_TO_TOGGLE_STATE:F = 0.9f

.field private static final SCALE_OF_GESTURE_TOGGLE_TO_NORMAL_STATE:F = 1.1f

.field private static final TAG:Ljava/lang/String; = "OplusWorkspaceTouchController"


# instance fields
.field private mActualScale:F

.field private mAnim:Landroid/animation/AnimatorSet;

.field private mHiddenAppsGestureHelper:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

.field private mHotseat:Lcom/android/launcher3/Hotseat;

.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mReadyToToggleBarState:Z

.field private mScaleAnimTarget:Lcom/android/launcher3/anim/ScaleTarget;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;

.field private mWorkspaceBeginScale:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspaceBeginScale:Z

    iput-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object v1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mHotseat:Lcom/android/launcher3/Hotseat;

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/launcher3/anim/ScaleTarget;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mHotseat:Lcom/android/launcher3/Hotseat;

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/android/launcher3/anim/ScaleTarget;-><init>([Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mScaleAnimTarget:Lcom/android/launcher3/anim/ScaleTarget;

    invoke-static {p1}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->setPivotForToggleBarState(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    new-instance p1, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p1, v0}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mHiddenAppsGestureHelper:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

    return-void
.end method

.method private animWorkspaceOnScale()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    const-string v1, "OplusWorkspaceTouchController"

    if-eqz v0, :cond_10

    const-string p0, "animWorkspaceAndHotseatOnScale -- mAnim running!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeLongPressLauncherDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p0, "animWorkspaceOnScale -- Customized disabled!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_3e

    const-string p0, "animWorkspaceOnScale -- open recommend folder so not go to toggle_bar!!!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    const-string v0, "animWorkspaceAndHotseatOnScale"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-object p0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v0, 0x45

    invoke-static {p0, v0}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;I)V

    return-void
.end method

.method private animateWorkspaceToNormal()V
    .registers 4

    const-string v0, "OplusWorkspaceTouchController"

    const-string v1, "animateWorkspaceToNormal "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mScaleAnimTarget:Lcom/android/launcher3/anim/ScaleTarget;

    invoke-static {v0, v1, v2}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->animScaleToNormal(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorListenerAdapter;Lcom/android/launcher3/anim/ScaleTarget;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static isSystemAnimClosed(Landroid/content/Context;)Z
    .registers 2

    sget p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method


# virtual methods
.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusWorkspaceTouchController"

    if-eqz v0, :cond_14

    const-string/jumbo p0, "onScale, is In Split Screen Mode."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo p1, "onScale, is switching state, new state = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_38
    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string/jumbo p0, "onScale: is workspace loading."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_47
    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string/jumbo p0, "onScale return as hidden apps folder is opening"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5a
    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_7b

    instance-of v3, v0, Lcom/android/launcher3/folder/Folder;

    if-nez v3, :cond_7b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "has open view! view = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7b
    instance-of v3, v0, Lcom/android/launcher3/folder/Folder;

    if-eqz v3, :cond_93

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_93

    const-string p0, "Hidden folders are prohibited from entering the ToggleBar"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_93
    if-eqz v3, :cond_a7

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v0, v3, :cond_a7

    const-string p0, "Can\'t handle scale in hotseat\'s folder"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_a7
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a  # 0.01f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_e0

    iget v1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_d7

    const/high16 v2, 0x3fa00000  # 1.25f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_de

    :cond_d7
    const/high16 v2, 0x3f400000  # 0.75f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_de
    iput v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    :cond_e0
    iget-object v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mHiddenAppsGestureHelper:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;

    iget v1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->handleScaleGesture(Landroid/view/ScaleGestureDetector;F)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_ec

    return v0

    :cond_ec
    iget p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    const v1, 0x3f666666  # 0.9f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_114

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_168

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/LauncherAssetManager;->reloadCategoryMapIfNeeded()V

    iget-boolean p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspaceBeginScale:Z

    if-nez p1, :cond_111

    invoke-direct {p0}, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->animWorkspaceOnScale()V

    iput-boolean v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspaceBeginScale:Z

    :cond_111
    iput-boolean v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mReadyToToggleBarState:Z

    goto :goto_168

    :cond_114
    const v1, 0x3f8ccccd  # 1.1f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_14f

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_12f

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_168

    :cond_12f
    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object p1

    const/16 v1, 0x190

    invoke-virtual {p1, v1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->notifyORMSAnimationEditModeOpenOrClose(I)V

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-object p0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 p1, 0x45

    const-wide/16 v1, 0x32

    invoke-static {p0, p1, v1, v2}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJ)V

    goto :goto_168

    :cond_14f
    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_168

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_168

    iget-boolean p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspaceBeginScale:Z

    if-nez p1, :cond_168

    invoke-direct {p0}, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->animWorkspaceOnScale()V

    iput-boolean v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspaceBeginScale:Z

    :cond_168
    :goto_168
    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const-string p1, "OplusWorkspaceTouchController"

    const-string/jumbo v0, "onScaleBegin!"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancel()V

    :cond_1c
    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspaceBeginScale:Z

    iput-boolean p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mReadyToToggleBarState:Z

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 4

    const-string/jumbo p1, "onScaleEnd -- mActualScale:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mReadyToToggleBarState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mReadyToToggleBarState:Z

    const-string v1, "OplusWorkspaceTouchController"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mReadyToToggleBarState:Z

    if-nez p1, :cond_47

    iget p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    const v0, 0x3f666666  # 0.9f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_36

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mReadyToToggleBarState:Z

    invoke-direct {p0}, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->animWorkspaceOnScale()V

    goto :goto_47

    :cond_36
    iget-boolean p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspaceBeginScale:Z

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-direct {p0}, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->animateWorkspaceToNormal()V

    :cond_47
    :goto_47
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mWorkspaceBeginScale:Z

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mActualScale:F

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateTransitionStart toState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusWorkspaceTouchController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p0, p0, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_24
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
