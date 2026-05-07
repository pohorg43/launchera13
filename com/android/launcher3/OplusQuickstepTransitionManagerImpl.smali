.class public Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;
.super Lcom/android/launcher3/QuickstepTransitionManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;,
        Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;
    }
.end annotation


# static fields
.field public static final CLOSE_ICON_ALPHA_THRESHOLD:F = 0.9f

.field public static final CLOSE_WINDOW_START_CLIP:F = 0.0f

.field public static final CLOSE_WINDOW_STOP_CLIP:F = 0.5f

.field private static final LAUNCHER_RESUME_ANIM_START_SCALE_ALL_APPS:F = 0.92f

.field public static final OPEN_ICON_ALPHA_THRESHOLD:F = 0.2f

.field public static final OPEN_WINDOW_START_CLIP:F = 0.3f

.field public static final OPEN_WINDOW_STOP_CLIP:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "OplusQuickstepTransitionManagerImpl"


# instance fields
.field private final hasControlRemoteAppTransitionPermission:Z

.field private mAppLaunchAnimSpeedHandler:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;

.field private final mCropRect:Landroid/graphics/Rect;

.field private final mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

.field private mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-super {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->hasControlRemoteAppTransitionPermission:Z

    new-instance v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mAppLaunchAnimSpeedHandler:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;

    sget-object v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2c

    goto :goto_2e

    :cond_2c
    const/high16 v0, 0x42b40000  # 90.0f

    :goto_2e
    iput v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    new-instance v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$1;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->logToFile(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->resetAppsView()V

    return-void
.end method

.method private createDepthAnimator(Z)Landroid/animation/Animator;
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_eb

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_eb

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightLaunchAppAnimation()Z

    move-result v0

    if-nez v0, :cond_eb

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_eb

    :cond_27
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v3}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    if-eqz v3, :cond_5b

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderDepth()F

    move-result v0

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getFolderBlur()F

    move-result v2

    :cond_5b
    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v3

    if-eqz p1, :cond_68

    invoke-virtual {v3}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentDepth()F

    move-result v4

    goto :goto_6c

    :cond_68
    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAppDepth()F

    move-result v4

    :goto_6c
    move v7, v4

    if-eqz p1, :cond_73

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAppDepth()F

    move-result v0

    :cond_73
    move v8, v0

    if-eqz p1, :cond_7b

    invoke-virtual {v3}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentBlur()F

    move-result v0

    goto :goto_7f

    :cond_7b
    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAppBlur()F

    move-result v0

    :goto_7f
    move v9, v0

    if-eqz p1, :cond_86

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAppBlur()F

    move-result v2

    :cond_86
    move v10, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string/jumbo v0, "startDepth = "

    const-string v2, ", endDepth = "

    const-string v3, ", startBlur = "

    invoke-static {v0, v7, v2, v8, v3}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endBlur = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ac
    cmpl-float v0, v7, v8

    if-nez v0, :cond_b5

    cmpl-float v0, v9, v10

    if-nez v0, :cond_b5

    return-object v1

    :cond_b5
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getLauncherAnimProgress(Z)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/c1;

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/c1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;ZLandroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_eb
    :goto_eb
    return-object v1
.end method

.method private createViewAnimator(Landroid/view/View;ZF)Landroid/animation/Animator;
    .registers 18

    move-object v10, p0

    move-object v2, p1

    move/from16 v9, p2

    move/from16 v0, p3

    iget-object v1, v10, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    iget-object v0, v10, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v3, v0}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->createLauncherContentAnim(ZLcom/android/launcher/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_1a
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLightLaunchAppAnimation()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v1, v10, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p1, v9, v0, v1}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightLauncherContentAnimation(Landroid/view/View;ZFLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_29
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/custom/OplusGameBounceUtils;->resetGameBouncePackage()V

    iget-object v1, v10, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p1, v9, v0, v1}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightLauncherContentAnimation(Landroid/view/View;ZFLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_4b
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v4, v10, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v4, v9}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getLauncherAnimProgress(Z)F

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000  # 1.0f

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimDuration()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v9, :cond_71

    move v3, v4

    goto :goto_72

    :cond_71
    move v3, v0

    :goto_72
    if-eqz v9, :cond_76

    move v5, v4

    goto :goto_77

    :cond_76
    move v5, v0

    :goto_77
    const/4 v1, 0x0

    if-eqz v9, :cond_7c

    move v7, v4

    goto :goto_7d

    :cond_7c
    move v7, v1

    :goto_7d
    if-eqz v9, :cond_81

    move v6, v0

    goto :goto_82

    :cond_81
    move v6, v4

    :goto_82
    if-eqz v9, :cond_86

    move v8, v0

    goto :goto_87

    :cond_86
    move v8, v4

    :goto_87
    if-eqz v9, :cond_8b

    move v12, v1

    goto :goto_8c

    :cond_8b
    move v12, v4

    :goto_8c
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    new-instance v13, Lcom/android/launcher3/d1;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move v4, v6

    move v6, v8

    move v8, v12

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/d1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/view/View;FFFFFFZ)V

    invoke-virtual {v11, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$9;

    invoke-direct {v0, p0, v11}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$9;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v11
.end method

.method private findComponent(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/content/ComponentName;
    .registers 7

    iget-object p0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2b

    iget-object p0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2b

    iget-object p0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_2b
    const/4 p0, 0x4

    new-array v1, p0, [Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    aput-object p1, v1, v2

    :goto_44
    if-ge v3, p0, :cond_54

    aget-object p1, v1, v3

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51

    return-object p1

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_54
    return-object v0
.end method

.method private findTask([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 6

    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_e

    aget-object v1, p1, v0

    iget v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v2, p2, :cond_b

    return-object v1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCenterTargetBounds()Landroid/graphics/RectF;
    .registers 6

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v3, v1, v0

    sub-float v4, p0, v0

    add-float/2addr v1, v0

    add-float/2addr p0, v0

    invoke-direct {v2, v3, v4, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method private getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;
    .registers 7

    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    array-length p0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, p0, :cond_35

    aget-object v2, p1, v1

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_26

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_31

    :cond_26
    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_31
    return-object v0

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_35
    return-object v0
.end method

.method private getRunningTaskTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .registers 8

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsModel;->getCurrentTaskKey()Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_12

    return-object v0

    :cond_12
    array-length v1, p1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_31

    aget-object v3, p1, v2

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    iget p1, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, v1, :cond_31

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_31

    return-object v3

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_31
    return-object v0
.end method

.method public static synthetic h(Landroid/animation/Animator;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$getFallbackClosingWindowAnimators$3(Landroid/animation/Animator;I)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;ZLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FFFLandroid/graphics/Matrix;JLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 19

    invoke-direct/range {p0 .. p18}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$getOpeningWindowAnimators$0([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;ZLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FFFLandroid/graphics/Matrix;JLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method private isCloseFromSplitScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 7

    const/4 p0, 0x0

    if-eqz p1, :cond_1c

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    goto :goto_1c

    :cond_8
    array-length v0, p1

    move v2, p0

    move v3, v2

    :goto_b
    if-ge v2, v0, :cond_19

    aget-object v4, p1, v2

    iget v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eq v4, v1, :cond_14

    goto :goto_16

    :cond_14
    add-int/lit8 v3, v3, 0x1

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    if-le v3, v1, :cond_1c

    move p0, v1

    :cond_1c
    :goto_1c
    return p0
.end method

.method public static synthetic j(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/view/View;FFFFFFZLandroid/animation/ValueAnimator;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$createViewAnimator$5(Landroid/view/View;FFFFFFZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private jumpToAppIconPageIfNeeded([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .registers 12

    const-string v0, "Common"

    const-string v1, "OplusQuickstepTransitionManagerImpl"

    const-string v2, "jumpToAppIconPageIfNeeded()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_93

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightLaunchAppAnimation()Z

    move-result v1

    if-nez v1, :cond_93

    if-eqz p2, :cond_1f

    goto/16 :goto_93

    :cond_1f
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p2

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p2}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_42

    return-void

    :cond_42
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->findTask([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object p1

    if-nez p1, :cond_4a

    return-void

    :cond_4a
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->findComponent(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_51

    return-void

    :cond_51
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    return-void

    :cond_66
    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    if-nez v0, :cond_71

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_71
    move-object v4, v0

    const-wide/16 v7, 0x8

    const-string v0, "OplusWorkspace#findAppIconAndChangePageIfNeeded"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/OplusWorkspace;->findAppIconAndChangePageIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/Boolean;)V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    :cond_93
    :goto_93
    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;FFFFLandroid/animation/ValueAnimator;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$createDepthAnimator$4(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Point;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFFLandroid/graphics/Matrix;ZZILandroid/graphics/RectF;FZZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 29

    invoke-direct/range {p0 .. p28}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$getFallbackClosingWindowAnimators$2([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Point;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFFLandroid/graphics/Matrix;ZZILandroid/graphics/RectF;FZZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method private synthetic lambda$createDepthAnimator$4(FFFFLandroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    invoke-static {p5, p1, p2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    :cond_1b
    cmpl-float p1, p3, p4

    if-eqz p1, :cond_2c

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-static {p5, p3, p4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    :cond_2c
    return-void
.end method

.method private synthetic lambda$createViewAnimator$5(Landroid/view/View;FFFFFFZLandroid/animation/ValueAnimator;)V
    .registers 10

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/Float;

    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    move-result p9

    invoke-static {p9, p2, p3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-static {p9, p4, p5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    invoke-static {p9, p6, p7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {p0, p8, p9}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->updateLauncherAnimProgress(ZF)V

    return-void
.end method

.method private static synthetic lambda$getFallbackClosingWindowAnimators$1(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getFallbackClosingWindowAnimators$2([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Point;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFFLandroid/graphics/Matrix;ZZILandroid/graphics/RectF;FZZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 57

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p12

    move-object/from16 v15, p16

    move-object/from16 v14, p21

    move-object/from16 v13, p26

    move/from16 v8, p28

    array-length v3, v1

    new-array v7, v3, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-object/from16 v3, p2

    invoke-virtual {v3, v2, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    const/4 v3, 0x0

    move v6, v3

    move v4, v8

    move-object/from16 v3, p4

    :goto_23
    array-length v5, v1

    if-ge v6, v5, :cond_340

    aget-object v5, v1, v6

    move-object/from16 v16, v7

    new-instance v7, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v7, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    move/from16 v17, v6

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_47

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v1}, Landroid/graphics/Point;->set(II)V

    :cond_47
    iget v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v6, 0x1

    if-ne v6, v1, :cond_2ee

    invoke-interface {v9, v2, v10}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateScale(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v1

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000  # 1.0f

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v6, v5

    iget v5, v2, Landroid/graphics/RectF;->left:F

    move/from16 p2, v6

    iget v6, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, v11, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v5, v3

    iput v5, v11, Landroid/graphics/PointF;->y:F

    const-string v3, "getClosingWindowAnimators: transPoint: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", currentWindowRect = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v5, v3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v5, :cond_112

    instance-of v5, v3, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v5, :cond_112

    check-cast v3, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusDeviceProfile;->getSystemWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-eqz v5, :cond_e6

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v5, Lcom/android/launcher3/DeviceProfile;->windowX:I

    move-object/from16 p27, v6

    const/4 v6, 0x1

    if-le v2, v6, :cond_e1

    iget v2, v13, Landroid/graphics/RectF;->left:F

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v5

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v11, Landroid/graphics/PointF;->x:F

    goto :goto_114

    :cond_e1
    iget v2, v13, Landroid/graphics/RectF;->left:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    goto :goto_114

    :cond_e6
    move-object/from16 p27, v6

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->windowY:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_10d

    iget v5, v13, Landroid/graphics/RectF;->top:F

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v5, v2

    iput v5, v11, Landroid/graphics/PointF;->y:F

    goto :goto_114

    :cond_10d
    iget v2, v13, Landroid/graphics/RectF;->top:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    goto :goto_114

    :cond_112
    move-object/from16 p27, v6

    :goto_114
    const/high16 v2, 0x3f000000  # 0.5f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_179

    const v3, 0x3f666666  # 0.9f

    cmpl-float v3, v4, v3

    if-lez v3, :cond_12e

    const/4 v3, 0x0

    move/from16 v23, p2

    move-object/from16 v24, p27

    move-object/from16 v26, v7

    move v10, v8

    move-object/from16 v25, v16

    move/from16 v22, v17

    goto :goto_155

    :cond_12e
    const/high16 v4, 0x3f000000  # 0.5f

    const v5, 0x3f666666  # 0.9f

    const/high16 v6, 0x3f800000  # 1.0f

    const/16 v18, 0x0

    sget-object v19, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v3, p28

    move/from16 v23, p2

    move-object/from16 v24, p27

    move/from16 v22, v17

    move-object/from16 v26, v7

    move-object/from16 v25, v16

    move/from16 v7, v18

    move v10, v8

    move-object/from16 v8, v19

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v3

    :goto_155
    move/from16 v16, v3

    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v8

    move-object/from16 v3, p5

    move/from16 v6, p10

    invoke-interface/range {v3 .. v8}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateWindowCrop(Landroid/graphics/Rect;FFFF)V

    mul-float v3, p10, v1

    move/from16 v8, v23

    sub-float/2addr v3, v8

    invoke-interface {v9, v11, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyOffset(Landroid/graphics/PointF;F)V

    move v10, v8

    move/from16 v3, v16

    move/from16 v8, p9

    goto/16 :goto_1de

    :cond_179
    move-object/from16 v24, p27

    move-object/from16 v26, v7

    move v10, v8

    move-object/from16 v25, v16

    move/from16 v22, v17

    move/from16 v8, p2

    const/4 v3, 0x0

    cmpg-float v3, v4, v3

    if-gez v3, :cond_192

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v7, p11

    move v5, v4

    move v10, v8

    move/from16 v8, p9

    goto :goto_1b3

    :cond_192
    const/4 v4, 0x0

    const/high16 v5, 0x3f000000  # 0.5f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    sget-object v16, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v3, p28

    move v10, v8

    move-object/from16 v8, v16

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v3

    move/from16 v8, p9

    move/from16 v7, p11

    move/from16 v27, v5

    move v5, v3

    move/from16 v3, v27

    :goto_1b3
    invoke-static {v5, v7, v8}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v16

    mul-float v4, p10, v1

    invoke-static {v5, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    invoke-static {v5, v3, v10}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    sub-float/2addr v4, v3

    invoke-interface {v9, v11, v4}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyOffset(Landroid/graphics/PointF;F)V

    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v17

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v18

    move-object/from16 v3, p5

    move/from16 v6, p10

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-interface/range {v3 .. v8}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->updateWindowCrop(Landroid/graphics/Rect;FFFF)V

    const/high16 v3, 0x3f800000  # 1.0f

    move/from16 v8, v16

    :goto_1de
    invoke-virtual {v12, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v18

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v20

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v19, p15

    move/from16 v21, v3

    invoke-static/range {v16 .. v21}, Lcom/oplus/quickstep/gesture/TransitionManager;->calculateScrollOffset(ZZLcom/android/launcher3/Workspace;ILcom/android/launcher3/views/FloatingIconViewContainer;F)I

    move-result v1

    iget v4, v11, Landroid/graphics/PointF;->x:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iget v5, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float v5, v4, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_20e

    goto :goto_20f

    :cond_20e
    move v4, v6

    :goto_20f
    iget v5, v13, Landroid/graphics/RectF;->left:F

    iget v6, v13, Landroid/graphics/RectF;->top:F

    iget v7, v13, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p26 .. p26}, Landroid/graphics/RectF;->width()F

    move-result v16

    add-float v11, v16, v6

    invoke-virtual {v15, v5, v6, v7, v11}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v5

    if-eqz v5, :cond_242

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_242

    iget v5, v13, Landroid/graphics/RectF;->left:F

    iget v6, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p26 .. p26}, Landroid/graphics/RectF;->height()F

    move-result v7

    add-float/2addr v7, v5

    iget v11, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v15, v5, v6, v7, v11}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-interface {v9, v15, v10}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;F)V

    goto :goto_247

    :cond_242
    sget-object v5, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, v15, v10}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->applyIconRectOffset(Landroid/graphics/RectF;F)V

    :goto_247
    invoke-virtual/range {p16 .. p16}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v5, v5, p17

    if-nez p18, :cond_261

    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    instance-of v7, v6, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v7, :cond_261

    if-nez p19, :cond_261

    check-cast v6, Lcom/android/launcher3/OplusDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-virtual {v15, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    :cond_261
    if-lez v2, :cond_273

    invoke-virtual/range {p20 .. p20}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_273

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v6, p20

    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_275

    :cond_273
    move-object/from16 v6, p20

    :goto_275
    const/high16 v17, 0x3f000000  # 0.5f

    invoke-virtual/range {p16 .. p16}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v2, v2, p17

    mul-float v18, v2, p23

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v2, v13

    move-object/from16 v13, p22

    move-object v7, v14

    move-object/from16 v14, p16

    move-object v10, v15

    move v15, v4

    move/from16 v16, p28

    move-object/from16 v21, p24

    invoke-virtual/range {v13 .. v21}, Lcom/android/launcher3/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFFZLjava/util/function/Supplier;Ljava/util/function/Supplier;)V

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move/from16 v11, p28

    invoke-virtual {v4, v11}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->updateCloseWindowAnimProgress(F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getClosingWindowAnimators, progress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", windowAlpha:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cornerRadius:"

    const-string v13, ", transPoint:"

    invoke-static {v4, v3, v5, v8, v13}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", currentRect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", iconRect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mCropRect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", workspaceScrollX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v24

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p4

    move v4, v11

    move-object/from16 v5, v26

    goto :goto_314

    :cond_2ee
    move-object/from16 v6, p20

    move-object/from16 v26, v7

    move v11, v8

    move-object v2, v13

    move-object v7, v14

    move-object v10, v15

    move-object/from16 v25, v16

    move/from16 v22, v17

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    iget v13, v3, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget v14, v3, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v13, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    iget-object v5, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v5, v26

    move-object/from16 v27, v3

    move v3, v1

    move-object/from16 v1, v27

    :goto_314
    invoke-virtual {v5, v12}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    iget-object v8, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    invoke-virtual {v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v3

    move-object/from16 v5, v25

    aput-object v3, v5, v22

    add-int/lit8 v3, v22, 0x1

    move-object v13, v2

    move v6, v3

    move-object v14, v7

    move-object v15, v10

    move v8, v11

    move-object/from16 v2, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object v3, v1

    move-object v7, v5

    move-object/from16 v1, p1

    goto/16 :goto_23

    :cond_340
    move-object/from16 v1, p25

    move-object v5, v7

    invoke-virtual {v1, v5}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    return-void
.end method

.method private static synthetic lambda$getFallbackClosingWindowAnimators$3(Landroid/animation/Animator;I)V
    .registers 2

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    return-void
.end method

.method private synthetic lambda$getOpeningWindowAnimators$0([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;ZLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FFFLandroid/graphics/Matrix;JLcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v12, p5

    move/from16 v13, p9

    move-object/from16 v14, p12

    move-object/from16 v15, p15

    move-object/from16 v11, p16

    move-object/from16 v10, p17

    move/from16 v9, p18

    array-length v4, v1

    new-array v8, v4, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    const/4 v6, 0x0

    :goto_1a
    array-length v4, v1

    if-ge v6, v4, :cond_2e2

    aget-object v5, v1, v6

    new-instance v4, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v7, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v7, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v1, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_3a

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v7, v1}, Landroid/graphics/Point;->set(II)V

    :cond_3a
    iget v1, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/high16 v7, 0x3f800000  # 1.0f

    if-nez v1, :cond_29b

    const v1, 0x3e4ccccd  # 0.2f

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_52

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move v1, v6

    move v5, v7

    move v10, v5

    move-object/from16 v24, v8

    const/4 v9, 0x0

    goto :goto_7b

    :cond_52
    const v1, 0x3e4ccccd  # 0.2f

    const v17, 0x3e99999a  # 0.3f

    const/high16 v18, 0x3f800000  # 1.0f

    const/16 v19, 0x0

    sget-object v20, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v4

    move/from16 v4, p18

    move-object/from16 v22, v5

    move v5, v1

    move v1, v6

    move/from16 v6, v17

    move v10, v7

    move/from16 v7, v18

    move-object/from16 v24, v8

    move/from16 v8, v19

    move-object/from16 v9, v20

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v4

    const/4 v9, 0x0

    invoke-static {v4, v9, v10}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    move v5, v4

    :goto_7b
    sub-float v16, v10, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move/from16 v8, p18

    mul-float/2addr v4, v8

    const/high16 v6, 0x40000000  # 2.0f

    div-float v7, v4, v6

    if-eqz p4, :cond_a6

    iget v4, v11, Landroid/graphics/RectF;->left:F

    add-float v6, v4, v7

    iget v9, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v7

    invoke-virtual/range {p16 .. p16}, Landroid/graphics/RectF;->height()F

    move-result v18

    add-float v4, v18, v4

    iget v10, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12, v6, v9, v4, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_b8

    :cond_a6
    iget v4, v11, Landroid/graphics/RectF;->left:F

    iget v6, v11, Landroid/graphics/RectF;->top:F

    add-float v9, v6, v7

    iget v10, v11, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    invoke-virtual/range {p16 .. p16}, Landroid/graphics/RectF;->width()F

    move-result v19

    add-float v6, v19, v6

    invoke-virtual {v12, v4, v9, v10, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_b8
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, p6

    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    instance-of v9, v6, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v9, :cond_d0

    if-nez p7, :cond_d0

    check-cast v6, Lcom/android/launcher3/OplusDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {v12, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    :cond_d0
    if-eqz p8, :cond_eb

    const/16 v6, 0xff

    const v9, 0x3e4ccccd  # 0.2f

    const/4 v10, 0x0

    const/16 v19, 0x1

    move-object/from16 v4, p8

    move/from16 v25, v7

    move-object/from16 v7, p5

    move/from16 v8, p18

    const/16 v17, 0x0

    move-object v12, v11

    move/from16 v11, v19

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/views/FloatingIconView;->update(FILandroid/graphics/RectF;FFFZ)V

    goto :goto_ee

    :cond_eb
    move/from16 v25, v7

    move-object v12, v11

    :goto_ee
    invoke-virtual/range {p16 .. p16}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v10, v4, v5

    iget v4, v12, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v12, Landroid/graphics/RectF;->top:F

    move/from16 v11, v25

    add-float/2addr v5, v11

    iget v6, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v7, v6, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v7, :cond_155

    instance-of v7, v6, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v7, :cond_155

    check-cast v6, Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v6}, Lcom/android/launcher3/OplusDeviceProfile;->getSystemWindowRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v7}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-eqz v7, :cond_13d

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v6, v7

    move/from16 v9, p18

    const/4 v8, 0x0

    invoke-static {v9, v6, v8}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    sub-float/2addr v4, v6

    goto :goto_158

    :cond_13d
    move/from16 v9, p18

    const/4 v8, 0x0

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v9, v6, v8}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_158

    :cond_155
    move/from16 v9, p18

    const/4 v8, 0x0

    :goto_158
    move v7, v4

    move/from16 v17, v5

    const v4, 0x3e99999a  # 0.3f

    cmpg-float v4, v9, v4

    if-gez v4, :cond_1a5

    move-object/from16 v6, p17

    iget v4, v6, Landroid/graphics/RectF;->top:F

    add-float v17, v17, v4

    iget v4, v12, Landroid/graphics/RectF;->top:F

    sub-float v17, v17, v4

    mul-float v4, v13, v10

    sub-float v17, v17, v4

    if-eqz p4, :cond_187

    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    float-to-int v5, v13

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v8, v13

    float-to-int v8, v8

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    move/from16 v18, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v8, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_19b

    :cond_187
    move/from16 v18, v7

    const/4 v7, 0x0

    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    float-to-int v5, v13

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v11

    sub-float/2addr v11, v13

    float-to-int v11, v11

    invoke-virtual {v4, v7, v5, v8, v11}, Landroid/graphics/Rect;->set(IIII)V

    :goto_19b
    move/from16 v11, p10

    move v8, v7

    move v2, v9

    move/from16 v4, v17

    move/from16 v26, v18

    goto/16 :goto_22f

    :cond_1a5
    move-object/from16 v6, p17

    move/from16 v18, v7

    const/4 v7, 0x0

    const v5, 0x3e99999a  # 0.3f

    const/high16 v19, 0x3f800000  # 1.0f

    const/16 v20, 0x0

    const/high16 v23, 0x3f800000  # 1.0f

    sget-object v25, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v4, p18

    move/from16 v6, v19

    move/from16 v26, v18

    move/from16 v7, v20

    move/from16 v8, v23

    move v2, v9

    move-object/from16 v9, v25

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v4

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    invoke-static {v4, v6, v11}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v7

    sub-float v17, v17, v7

    move-object/from16 v7, p17

    iget v8, v7, Landroid/graphics/RectF;->top:F

    iget v9, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    mul-float v9, v13, v10

    sub-float/2addr v8, v9

    invoke-static {v4, v8, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v8

    add-float v17, v8, v17

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-static {v4, v8, v9}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v11

    if-eqz p4, :cond_20d

    iget-object v5, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-static {v4, v13, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v18

    sub-float v7, v18, v13

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v4, v7, v8}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_22d

    :cond_20d
    const/4 v8, 0x0

    iget-object v5, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-static {v4, v13, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v18

    sub-float v8, v18, v13

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-static {v4, v8, v9}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    float-to-int v4, v4

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_22d
    move/from16 v4, v17

    :goto_22f
    if-eqz p7, :cond_23a

    invoke-virtual {v14, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    move/from16 v5, v26

    invoke-virtual {v14, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_24c

    :cond_23a
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v14, v3, v12, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-object/from16 v4, v22

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v14, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_24c
    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->updateOpenWindowAnimProgress(F)V

    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->updateOpenAnimProgress(F)V

    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v4, v12}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setInterruptRectF(Landroid/graphics/RectF;)V

    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-wide/from16 v9, p13

    long-to-float v5, v9

    const/high16 v7, 0x3f800000  # 1.0f

    sub-float/2addr v7, v2

    mul-float/2addr v7, v5

    float-to-long v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setDuration(J)V

    iget-object v4, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v8, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    iget-object v2, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    move v6, v11

    move/from16 v7, v16

    goto :goto_2b7

    :cond_29b
    move-wide/from16 v9, p13

    move-object/from16 v21, v4

    move-object v4, v5

    move v1, v6

    move-object/from16 v24, v8

    move-object v12, v11

    const/4 v6, 0x0

    iget-object v2, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v14, v5, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2b7
    move-object/from16 v2, v21

    invoke-virtual {v2, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v2

    move-object/from16 v4, v24

    aput-object v2, v4, v1

    add-int/lit8 v6, v1, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p17

    move/from16 v9, p18

    move-object v8, v4

    move-object v11, v12

    move-object/from16 v12, p5

    goto/16 :goto_1a

    :cond_2e2
    move-object v4, v8

    if-eqz v15, :cond_2e8

    invoke-virtual {v15, v4}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    :cond_2e8
    return-void
.end method

.method public static synthetic m(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->lambda$getFallbackClosingWindowAnimators$1(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->resetAppsView()V

    return-void
.end method

.method private resetAppsView()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    const/4 v2, 0x0

    :goto_16
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3f

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0225

    if-eq v4, v5, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0224

    if-ne v4, v5, :cond_33

    goto :goto_3c

    :cond_33
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_3f
    return-void
.end method


# virtual methods
.method public composeIconLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .registers 19
    .param p1  # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v8, p0

    move-object v9, p1

    move-object v2, p3

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v10, 0x0

    if-ne v0, v1, :cond_14

    iget-object v0, v8, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {v0, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$102(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    goto :goto_1f

    :cond_14
    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-array v1, v10, [Landroid/animation/Animator;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    :goto_1f
    invoke-static {p3}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v11, 0x1

    move v0, v10

    move v1, v11

    :goto_2a
    array-length v3, v2

    if-ge v0, v3, :cond_3c

    aget-object v3, v2, v0

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v4, :cond_36

    iget-boolean v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    and-int/2addr v1, v3

    :cond_36
    if-nez v1, :cond_39

    goto :goto_3c

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3c
    :goto_3c
    xor-int/lit8 v6, v1, 0x1

    invoke-static {p3}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v0

    if-eqz p6, :cond_6b

    invoke-virtual {p0, v11, v0, v10}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getLauncherContentAnimator(ZIZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$2;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/util/Pair;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6b
    return-void
.end method

.method public composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .registers 14
    .param p1  # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p6, :cond_30

    array-length v1, p3

    if-ne v1, v0, :cond_30

    const/4 v1, 0x0

    aget-object v2, p3, v1

    iget-boolean v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-eqz v2, :cond_30

    aget-object v2, p3, v1

    iget v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v2, :cond_30

    aget-object v2, p3, v1

    iget v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    if-eq v2, v5, :cond_30

    const-string v2, "composeRecentsLaunchAnimator(), modify launcherClosing to true, taskId="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, p3, v1

    iget v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    const-string v5, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v2, v1, v5}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move v6, v0

    goto :goto_31

    :cond_30
    move v6, p6

    :goto_31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    return-void
.end method

.method public createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
    .registers 4

    new-instance v0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityLaunchOptions: fromRecents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Common"

    const-string v3, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1}, Lcom/android/quickstep/SystemUiProxy;->setIsStartingMultipleTasks()V

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V

    invoke-virtual {v1, v2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->registerSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    :cond_46
    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_85

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    const-string/jumbo v1, "splitScreenMinimizedChange"

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_85

    const/4 v1, 0x0

    const-string v2, "isMinimized"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_85

    new-instance p0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {p0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object p1

    :cond_85
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_9f

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "forceClearLaunchViewInfo"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    invoke-virtual {v0, v1}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationFinished(Landroid/os/Bundle;)Z

    :cond_9f
    invoke-super {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;
    .registers 38

    move-object/from16 v14, p0

    move-object/from16 v2, p1

    iget-object v0, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result v0

    iget-object v1, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    iget-object v3, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v3, Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/togglebar/ToggleBarManager;->hasPendingState()Z

    move-result v3

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->isCloseFromSplitScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v4

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->isFinishUpdateExpandItems()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    const-string v8, "OplusQuickstepTransitionManagerImpl"

    if-eqz v7, :cond_6e

    const-string v7, "getClosingWindowAnimators, "

    invoke-static {v7}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/anim/light/Utils;->getRemoteTargetsString([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", isInToggleBarState = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", closeFromSplitScreen = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isNotFinishUpdateExpandItems:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", canGoBackToTaskView = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v9}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    iget-object v7, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v7}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v7

    if-eqz v7, :cond_94

    iget-object v0, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object v0

    if-eqz v0, :cond_85

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setState(Lcom/android/launcher3/LauncherState;)V

    :cond_85
    iget-object v1, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v1, v2}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$HomeAnimation;->getMenuClosingWindowAnimators(Lcom/android/launcher3/Launcher;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$4;

    invoke-direct {v2, v14, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$4;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    :cond_94
    if-eqz v1, :cond_a3

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->Companion:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;

    iget-object v1, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v1, Lcom/android/launcher/Launcher;

    iget v3, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->getClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/Launcher;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_a3
    invoke-direct {v14, v2, v4}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->jumpToAppIconPageIfNeeded([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    const/4 v7, 0x0

    if-nez v1, :cond_b5

    if-nez v0, :cond_b5

    if-nez v3, :cond_b5

    if-eqz v5, :cond_b0

    goto :goto_b5

    :cond_b0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->findLauncherView([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;

    move-result-object v0

    goto :goto_b6

    :cond_b5
    :goto_b5
    move-object v0, v7

    :goto_b6
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v1

    if-eqz v1, :cond_d9

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_d9

    iget-object v1, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v1}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d9

    iget-object v1, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_d9

    move-object v0, v7

    :cond_d9
    iget-object v1, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v1, Lcom/android/launcher/Launcher;

    const/4 v3, 0x0

    if-eqz v0, :cond_e9

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result v1

    if-nez v1, :cond_e9

    move/from16 v17, v6

    goto :goto_eb

    :cond_e9
    move/from16 v17, v3

    :goto_eb
    if-eqz v17, :cond_3c4

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLightLaunchAppAnimation()Z

    move-result v5

    if-nez v5, :cond_3c4

    if-nez v4, :cond_3c4

    instance-of v13, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v13, :cond_103

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v5

    if-eqz v5, :cond_103

    goto/16 :goto_3c4

    :cond_103
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v1

    if-eqz v1, :cond_133

    invoke-direct {v14, v2, v6}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->findTask([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v1

    if-eqz v1, :cond_133

    invoke-direct {v14, v1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->findComponent(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_133

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_133

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->resetGameBouncePackage()V

    iget-object v0, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v1, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_133
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v4, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v4, v0, v6, v1, v3}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getClosingWindowAnimators, targetBounds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v4, :cond_15e

    instance-of v4, v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v4, :cond_15b

    goto :goto_15e

    :cond_15b
    move/from16 v19, v3

    goto :goto_160

    :cond_15e
    :goto_15e
    move/from16 v19, v6

    :goto_160
    if-nez v19, :cond_172

    iget-object v3, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    instance-of v4, v3, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v4, :cond_172

    if-nez v13, :cond_172

    check-cast v3, Lcom/android/launcher3/OplusDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float v3, v3

    invoke-virtual {v1, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    :cond_172
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v9

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v3

    if-nez v3, :cond_195

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_195

    iget v3, v5, Landroid/graphics/RectF;->right:F

    iget v4, v5, Landroid/graphics/RectF;->bottom:F

    iput v4, v5, Landroid/graphics/RectF;->right:F

    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    :cond_195
    iget-object v3, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v4, v3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v4, :cond_1c8

    iget v4, v3, Lcom/android/launcher3/DeviceProfile;->windowX:I

    if-gt v4, v6, :cond_1a3

    iget v4, v3, Lcom/android/launcher3/DeviceProfile;->windowY:I

    if-le v4, v6, :cond_1c8

    :cond_1a3
    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_1bb

    iget-object v3, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v4, v3

    iget v6, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v6

    iput v4, v5, Landroid/graphics/RectF;->left:F

    int-to-float v3, v3

    iput v3, v5, Landroid/graphics/RectF;->right:F

    iget v3, v9, Landroid/graphics/RectF;->bottom:F

    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    goto :goto_1c8

    :cond_1bb
    iget-object v3, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v4, v3

    iget v6, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v6

    iput v4, v5, Landroid/graphics/RectF;->top:F

    int-to-float v3, v3

    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    :cond_1c8
    :goto_1c8
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v6, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iget-object v4, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v4, v2, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getWindowCloseStartFactor([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;)F

    move-result v4

    invoke-direct {v6, v4, v5, v3, v7}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;)V

    instance-of v3, v12, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v3, :cond_1e6

    move-object v3, v12

    check-cast v3, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/views/OplusFloatingIconView;->createAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1e6
    new-instance v7, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v7, v12}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    iget-object v3, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/RecentsView;

    new-instance v4, Lcom/android/quickstep/util/TaskViewSimulator;

    iget-object v10, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v3

    invoke-direct {v4, v10, v3}, Lcom/android/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getRunningTaskTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v3

    iget-object v10, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v10}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    if-eqz v3, :cond_21a

    invoke-virtual {v4, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    :cond_21a
    sget-object v3, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v10, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3, v10}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v3}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v4, v3, v3}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setLayoutRotation(II)V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v11}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v10

    if-eqz v10, :cond_24d

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpl-float v4, v4, v10

    if-lez v4, :cond_24a

    sget-object v4, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_255

    :cond_24a
    sget-object v4, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_255

    :cond_24d
    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v4

    :goto_255
    new-instance v23, Landroid/graphics/PointF;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/PointF;-><init>()V

    new-instance v24, Landroid/graphics/RectF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/RectF;-><init>()V

    new-instance v26, Landroid/graphics/RectF;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/RectF;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [I

    iget-object v15, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v15}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v10, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v15, v10, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    move-object/from16 v27, v5

    instance-of v5, v10, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v5, :cond_289

    check-cast v10, Lcom/android/launcher3/OplusDeviceProfile;

    iget v15, v10, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_289

    const-string v5, "getFallbackClosingWindowAnimators--VisualSize, "

    invoke-static {v5, v15, v8}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_289
    if-eqz v13, :cond_290

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    goto :goto_291

    :cond_290
    int-to-float v5, v15

    :goto_291
    if-eqz v13, :cond_2a2

    move-object v10, v0

    check-cast v10, Lcom/android/launcher3/card/LauncherCardView;

    iget-object v15, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v15}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-interface {v10, v15}, Lcom/oplus/card/manager/domain/ICardView;->getAppTransAnimRadius(Landroid/content/res/Resources;)I

    move-result v10

    int-to-float v10, v10

    goto :goto_2a8

    :cond_2a2
    iget-object v10, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v10, v5}, Lcom/android/common/util/IconUtils;->getIconRadius(Landroid/content/Context;F)F

    move-result v10

    :goto_2a8
    const/4 v15, 0x0

    cmpl-float v15, v10, v15

    if-lez v15, :cond_2ae

    goto :goto_2b0

    :cond_2ae
    const/high16 v10, 0x42700000  # 60.0f

    :goto_2b0
    move v15, v10

    iget-object v10, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v10, v10, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v10, :cond_2bd

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v10

    if-eqz v10, :cond_2c3

    :cond_2bd
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v10

    if-eqz v10, :cond_2c7

    :cond_2c3
    const/4 v10, 0x0

    :goto_2c4
    move/from16 v28, v10

    goto :goto_2ca

    :cond_2c7
    iget v10, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    goto :goto_2c4

    :goto_2ca
    invoke-interface {v4, v9, v5, v15}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v10

    move/from16 v29, v10

    move-object/from16 v30, v4

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v4

    move-object/from16 v31, v6

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v4

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v6, Lv/a;

    move-object/from16 v25, v6

    invoke-direct {v6, v4}, Lv/a;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v4, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v16

    invoke-static {v0}, Lcom/oplus/quickstep/gesture/TransitionManager;->isHotseatIcon(Landroid/view/View;)Z

    move-result v0

    move v6, v15

    move v15, v0

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v32, v32, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v32, v32, v4

    sub-float v0, v0, v32

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move-object v4, v11

    move v11, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v7

    const-string v7, "getClosingWindowAnimators, targetBounds:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", winRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    const-string v7, ", iconRadius:"

    move/from16 v33, v5

    const-string v5, ", progressWindowRadius:"

    invoke-static {v0, v1, v7, v6, v5}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/launcher3/e1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v7, v30

    move-object/from16 v4, v24

    move-object/from16 v24, v27

    move/from16 v27, v33

    move-object/from16 v5, v20

    move/from16 v29, v6

    move-object/from16 v34, v31

    move-object v6, v7

    move-object/from16 v30, v32

    move-object v7, v9

    move-object v9, v8

    move-object/from16 v8, v24

    move-object/from16 v35, v9

    move-object/from16 v9, v23

    move-object/from16 p1, v12

    move/from16 v12, v28

    move/from16 v20, v13

    move-object/from16 v13, v18

    move/from16 v14, v17

    move-object/from16 v17, v26

    move/from16 v18, v27

    move-object/from16 v23, p1

    move/from16 v24, v29

    move-object/from16 v26, v30

    invoke-direct/range {v0 .. v26}, Lcom/android/launcher3/e1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Point;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFFLandroid/graphics/Matrix;ZZILandroid/graphics/RectF;FZZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;FLjava/util/function/Supplier;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    invoke-direct {v1, v3, v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Lcom/android/launcher3/views/FloatingIconView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v3, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/effect/EffectSetting;->isCurrentNormalEffect()Z

    move-result v1

    if-nez v1, :cond_3c3

    iget-object v1, v3, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/p0;

    invoke-direct {v2, v0}, Lcom/android/launcher3/p0;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setDeferredCallback(Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;)V

    :cond_3c3
    return-object v0

    :cond_3c4
    :goto_3c4
    move-object v3, v14

    iget-object v0, v3, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v1, v3, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    return-object p0
.end method

.method public getLauncherContentAnimator(ZIZ)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ)",
            "Landroid/util/Pair<",
            "Landroid/animation/AnimatorSet;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createLauncherResumeAnimation , isAppOpening "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OplusQuickstepTransitionManagerImpl"

    invoke-static {p3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v0, Lcom/android/launcher3/g1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/g1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;I)V

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    const v3, 0x3f6b851f  # 0.92f

    if-eqz v2, :cond_95

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    const-string v2, "createLauncherResumeAnimation for apps view, child count = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p3

    if-ge v1, p3, :cond_86

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f0a0225

    if-eq v2, v4, :cond_83

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f0a0224

    if-eq v2, v4, :cond_83

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f0a0093

    if-ne v2, v4, :cond_6e

    goto :goto_83

    :cond_6e
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPivotX()F

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPivotY()F

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-direct {p0, p3, p1, v3}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->createViewAnimator(Landroid/view/View;ZF)Landroid/animation/Animator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_83
    :goto_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_86
    new-instance p3, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;

    invoke-direct {p3, p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/g1;

    const/4 p3, 0x1

    invoke-direct {v0, p0, p3}, Lcom/android/launcher3/g1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;I)V

    goto :goto_d7

    :cond_95
    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast p3, Lcom/android/launcher/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result p3

    if-eqz p3, :cond_ab

    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/OplusWorkspace;->isOverlayBlurDisabled()Z

    move-result p3

    if-nez p3, :cond_d7

    :cond_ab
    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-direct {p0, p3, p1, v3}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->createViewAnimator(Landroid/view/View;ZF)Landroid/animation/Animator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->pauseAnimations()V

    iget-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p3, v1, v0}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p3, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$7;

    invoke-direct {p3, p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$7;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/g1;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/g1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;I)V

    :cond_d7
    :goto_d7
    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->createDepthAnimator(Z)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_e0

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_e0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/animation/Animator;
    .registers 33

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v3, "OplusQuickstepTransitionManagerImpl"

    if-eqz v1, :cond_22

    const-string v1, "getOpeningWindowAnimators, "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/anim/light/Utils;->getRemoteTargetsString([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    sget-object v1, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object v4, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v4}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v1

    int-to-float v1, v1

    iput v1, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    const-string/jumbo v4, "splitScreenMinimizedChange"

    invoke-virtual {v1, v4}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_54

    const-string v6, "isMinimized"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_54

    new-array v0, v4, [I

    fill-array-data v0, :array_24a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_54
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLightLaunchAppAnimation()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_66

    iget-object v0, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v1, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    invoke-static {v2, v7, v0, v1, v5}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_66
    if-eqz v0, :cond_6a

    move v6, v7

    goto :goto_6b

    :cond_6a
    move v6, v5

    :goto_6b
    if-eqz v6, :cond_91

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/custom/OplusGameBounceUtils;->resetGameBouncePackage()V

    iget-object v0, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget v1, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    invoke-static {v2, v7, v0, v1, v5}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_91
    instance-of v8, v0, Lcom/android/launcher3/card/LauncherCardView;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v9, 0x0

    if-eqz v6, :cond_aa

    iget-object v10, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    move/from16 v11, p6

    invoke-static {v10, v0, v11, v1, v7}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v7

    move-object v10, v7

    goto :goto_ab

    :cond_aa
    move-object v10, v9

    :goto_ab
    if-nez v6, :cond_b4

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getCenterTargetBounds()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_b4
    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v11, p5

    invoke-direct {v7, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v11, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    instance-of v12, v11, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v12, :cond_cb

    if-nez v8, :cond_cb

    check-cast v11, Lcom/android/launcher3/OplusDeviceProfile;

    iget v11, v11, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float v11, v11

    invoke-virtual {v1, v11, v11}, Landroid/graphics/RectF;->inset(FF)V

    :cond_cb
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOpeningWindowAnimators start, startBounds:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", targetBounds:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", startProgress:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-static {v12}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$200(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iget-object v11, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v11, v2, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getWindowOpenStartFactor([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;)F

    move-result v11

    invoke-direct {v15, v11, v1, v7, v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;)V

    if-eqz v6, :cond_118

    instance-of v6, v10, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v6, :cond_110

    move-object v6, v10

    check-cast v6, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {v6}, Lcom/android/launcher3/views/OplusFloatingIconView;->createAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_110
    new-instance v6, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v6, v10}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    move-object/from16 v16, v6

    goto :goto_11a

    :cond_118
    move-object/from16 v16, v9

    :goto_11a
    invoke-virtual {v15}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getDuration()J

    move-result-wide v17

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    new-array v4, v4, [I

    iget-object v9, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v4, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v4, v4, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v4, :cond_143

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v4

    if-eqz v4, :cond_140

    goto :goto_143

    :cond_140
    iget v4, v14, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mWindowCornerRadius:F

    goto :goto_144

    :cond_143
    :goto_143
    const/4 v4, 0x0

    :goto_144
    move v12, v4

    iget-object v4, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v9, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    instance-of v11, v4, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v11, :cond_15c

    check-cast v4, Lcom/android/launcher3/OplusDeviceProfile;

    iget v9, v4, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_15c

    const-string v4, "getOpeningWindowAnimators--IconVisualSize, "

    invoke-static {v4, v9, v3}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_15c
    if-eqz v8, :cond_163

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    goto :goto_164

    :cond_163
    int-to-float v4, v9

    :goto_164
    move v9, v4

    if-eqz v8, :cond_175

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    iget-object v4, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/oplus/card/manager/domain/ICardView;->getAppTransAnimRadius(Landroid/content/res/Resources;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_17b

    :cond_175
    iget-object v0, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0, v9}, Lcom/android/common/util/IconUtils;->getIconRadius(Landroid/content/Context;F)F

    move-result v0

    :goto_17b
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_181

    goto :goto_183

    :cond_181
    const/high16 v0, 0x42700000  # 60.0f

    :goto_183
    iget-object v4, v14, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v4, v4, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v4, :cond_197

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v4

    if-eqz v4, :cond_190

    goto :goto_197

    :cond_190
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v0

    div-float/2addr v4, v9

    goto :goto_198

    :cond_197
    :goto_197
    const/4 v4, 0x0

    :goto_198
    move v11, v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v19

    cmpl-float v4, v4, v19

    if-lez v4, :cond_1a7

    const/4 v4, 0x1

    goto :goto_1a8

    :cond_1a7
    const/4 v4, 0x0

    :goto_1a8
    move/from16 v19, v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v20

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v21

    mul-float v21, v21, v20

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v20

    div-float v21, v21, v20

    sub-float v4, v4, v21

    const/high16 v20, 0x40000000  # 2.0f

    div-float v4, v4, v20

    if-eqz v19, :cond_1de

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v21

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v22

    mul-float v22, v22, v21

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v22, v22, v1

    sub-float v4, v4, v22

    div-float v4, v4, v20

    :cond_1de
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_217

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpeningWindowAnimators, targetBounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", iconSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", winRadius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delta = "

    const-string v14, ", iconRadius:"

    invoke-static {v1, v12, v2, v4, v14}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", progressWindowRadius:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_217
    new-instance v14, Lcom/android/launcher3/f1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v20, v4

    move-object v4, v7

    move/from16 v5, v19

    move v7, v9

    move-object v9, v10

    move/from16 v10, v20

    move-object/from16 v24, v14

    move-object/from16 v23, v15

    move-wide/from16 v14, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/launcher3/f1;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/RectF;ZLandroid/graphics/RectF;FZLcom/android/launcher3/views/FloatingIconView;FFFLandroid/graphics/Matrix;JLcom/android/quickstep/util/SurfaceTransactionApplier;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;-><init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_24a
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public hasControlRemoteAppTransitionPermission()Z
    .registers 5

    const-string v0, "hasControlRemoteAppTransitionPermission: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->hasControlRemoteAppTransitionPermission:Z

    const-string v2, "Common"

    const-string v3, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->hasControlRemoteAppTransitionPermission:Z

    return p0
.end method

.method public isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method public makeDividerHidden([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 9

    if-eqz p1, :cond_4c

    array-length p0, p1

    if-nez p0, :cond_6

    goto :goto_4c

    :cond_6
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v2, v1, :cond_29

    aget-object v4, p1, v2

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v6, 0x7f2

    if-ne v4, v6, :cond_26

    if-eqz v5, :cond_26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_29
    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_30

    :cond_41
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const-string p0, "OplusQuickstepTransitionManagerImpl"

    const-string/jumbo p1, "makeDividerHidden()"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public onActivityDestroyed()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->onActivityDestroyed()V

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mAppLaunchAnimSpeedHandler:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->onActivityDestroyed()V

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->mInterruptParam:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    if-eqz p0, :cond_f

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->access$500(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)V

    :cond_f
    return-void
.end method

.method public resetBaseInfoWhenEnd()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public resetContentView()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->skipAnimationsToEnd()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDomesticLightOS()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_3b

    :cond_2a
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_38

    :cond_37
    move v1, v2

    :goto_38
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_3b
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method
