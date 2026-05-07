.class public Lcom/android/launcher/touch/PullDownAnimator;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CALLER_DEPTH:I = 0x6

.field public static final CANCEL_PULL_ANIMATION_DURATION:I = 0x190

.field public static final DELAY_CANCEL_ANIMATION_DURATION:I = 0x12c

.field public static final DRAGLAYER_ANIMATION_SCALE:F = 0.92f

.field public static final LAUNCHER_BLUR_RADIUS_MAX:F = 240.0f

.field public static final OPEN_SEARCH_BLUR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final OPEN_SEARCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final PULL_END_ANIMATION_DURATION:I = 0x215

.field public static final SWIPE_DOWN_MAX_SPEED:F = 6.0f

.field public static final SWIPE_SPEED_MIN_FRACTION:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "PullDownAnimator"

.field public static final WALL_PAPER_ZOOM_OUT:F = 1.0f


# instance fields
.field private mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

.field private mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mInit:Z

.field public final mLauncher:Lcom/android/launcher/Launcher;

.field public mProgress:F

.field private mPullCancelAnimator:Landroid/animation/ValueAnimator;

.field private mPullEndAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/touch/PullDownAnimator;->OPEN_SEARCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/touch/PullDownAnimator;->OPEN_SEARCH_BLUR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/touch/PullDownAnimator;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/touch/PullDownAnimator;->updatePullDownProgressInternal(F)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/touch/PullDownAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/touch/PullDownAnimator;->resetStatus()V

    return-void
.end method

.method private createPullCancelAnimator()Landroid/animation/ValueAnimator;
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    const/high16 v3, 0x43c80000  # 400.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/launcher/touch/PullDownAnimator;->OPEN_SEARCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher/touch/PullDownAnimator$1;

    invoke-direct {v2, p0}, Lcom/android/launcher/touch/PullDownAnimator$1;-><init>(Lcom/android/launcher/touch/PullDownAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/launcher/touch/PullDownAnimator$2;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher/touch/PullDownAnimator$2;-><init>(Lcom/android/launcher/touch/PullDownAnimator;[Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private createPullFinishAnimator(F)Landroid/animation/ValueAnimator;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const v1, 0x44054000  # 533.0f

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/android/launcher/touch/PullDownAnimator;->OPEN_SEARCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/launcher/touch/PullDownAnimator$3;

    invoke-direct {p1, p0}, Lcom/android/launcher/touch/PullDownAnimator$3;-><init>(Lcom/android/launcher/touch/PullDownAnimator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private resetStatus()V
    .registers 3

    const-string v0, "PullDownAnimator"

    const-string/jumbo v1, "resetStatus: "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

    invoke-virtual {v0}, Lcom/android/launcher/touch/BlurScrimWindowController;->detach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/touch/PullDownAnimator;->mInit:Z

    iput-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    return-void
.end method

.method private updatePullDownProgressInternal(F)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mInit:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/high16 v1, 0x3f800000  # 1.0f

    const v2, 0x3f6b851f  # 0.92f

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    sget-object v0, Lcom/android/launcher/touch/PullDownAnimator;->OPEN_SEARCH_BLUR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/touch/PullDownAnimator;->mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

    const/high16 v3, 0x43700000  # 240.0f

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/android/launcher/touch/BlurScrimWindowController;->blurBackground(I)V

    iput p1, p0, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    return-void
.end method


# virtual methods
.method public destroyAnimatorForBlur()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mInit:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "destroyAnimatorIfNeeded: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullDownAnimator"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2b
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3a
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/touch/BlurScrimWindowController;->blurBackground(I)V

    invoke-direct {p0}, Lcom/android/launcher/touch/PullDownAnimator;->resetStatus()V

    return-void
.end method

.method public destroyAnimatorIfNeeded()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mInit:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "destroyAnimatorIfNeeded: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullDownAnimator"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2b
    iget v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_56

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_59

    :cond_4c
    invoke-direct {p0}, Lcom/android/launcher/touch/PullDownAnimator;->createPullCancelAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_59

    :cond_56
    invoke-direct {p0}, Lcom/android/launcher/touch/PullDownAnimator;->resetStatus()V

    :cond_59
    :goto_59
    return-void
.end method

.method public initAnimator()V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-boolean v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mInit:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mLauncher:Lcom/android/launcher/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    const-string v2, "PullDownAnimator"

    if-nez v1, :cond_34

    const-string p0, " initAnimator: mLauncher instance Error"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_3d

    return-void

    :cond_3d
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4c
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5b
    const-string v0, "initAnimator: "

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/launcher/touch/PullDownAnimator;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/launcher/touch/PullDownAnimator;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mBlurScrimWindowController:Lcom/android/launcher/touch/BlurScrimWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/touch/BlurScrimWindowController;->attach(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mInit:Z

    return-void
.end method

.method public isInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mInit:Z

    return p0
.end method

.method public pullEndAnimate(F)V
    .registers 5

    iget v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6f

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6f

    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    :cond_23
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40c00000  # 6.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    const v2, 0x3ecccccd  # 0.4f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher/touch/PullDownAnimator;->createPullFinishAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pullEndAnimate: velocity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  mProgress: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " duration: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PullDownAnimator"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6f
    return-void
.end method

.method public updatePullDownProgress(F)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePullDownProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullDownAnimator"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullEndAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    return-void

    :cond_29
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mPullCancelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_34

    return-void

    :cond_34
    iget-object v0, p0, Lcom/android/launcher/touch/PullDownAnimator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_45

    return-void

    :cond_45
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/PullDownAnimator;->updatePullDownProgressInternal(F)V

    return-void
.end method
