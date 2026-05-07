.class public Lcom/android/wm/shell/back/BackAnimationController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;,
        Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/back/BackAnimationController;",
        ">;"
    }
.end annotation


# static fields
.field public static final IS_ENABLED:Z

.field private static final MAX_TRANSITION_DURATION:J = 0x7d0L

.field private static final PREDICTIVE_BACK_PROGRESS_THRESHOLD_PROP:Ljava/lang/String; = "persist.wm.debug.predictive_back_progress_threshold"

.field private static final PROGRESS_THRESHOLD:I

.field private static final SETTING_VALUE_OFF:I = 0x0

.field private static final SETTING_VALUE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BackAnimationController"


# instance fields
.field private final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mBackAnimation:Lcom/android/wm/shell/back/BackAnimation;

.field private mBackGestureStarted:Z

.field private mBackNavigationInfo:Landroid/window/BackNavigationInfo;

.field private mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

.field private final mContext:Landroid/content/Context;

.field private final mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInitTouchLocation:Landroid/graphics/PointF;

.field private mProgressThreshold:F

.field private final mResetTransitionRunnable:Ljava/lang/Runnable;

.field private final mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mTouchEventDelta:Landroid/graphics/Point;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mTransitionInProgress:Z

.field private mTriggerBack:Z

.field private mTriggerThreshold:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    sput-boolean v1, Lcom/android/wm/shell/back/BackAnimationController;->IS_ENABLED:Z

    const/4 v0, -0x1

    const-string v1, "persist.wm.debug.predictive_back_progress_threshold"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/wm/shell/back/BackAnimationController;->PROGRESS_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 11
    .param p1  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .param p2  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellBackgroundThread;
        .end annotation
    .end param

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/back/BackAnimationController;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/view/SurfaceControl$Transaction;Landroid/app/IActivityTaskManager;Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/view/SurfaceControl$Transaction;Landroid/app/IActivityTaskManager;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .registers 9
    .param p1  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .param p2  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellBackgroundThread;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mInitTouchLocation:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchEventDelta:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    new-instance v0, Lcom/android/launcher3/widget/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/a;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mResetTransitionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;-><init>(Lcom/android/wm/shell/back/BackAnimationController;Lcom/android/wm/shell/back/BackAnimationController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimation;

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iput-object p5, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p6, p2}, Lcom/android/wm/shell/back/BackAnimationController;->setupAnimationDeveloperSettingsObserver(Landroid/content/ContentResolver;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->updateEnableAnimationFromSetting()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/back/BackAnimationController;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/back/BackAnimationController;->setSwipeThresholds(FF)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->clearBackToLauncherCallback()V

    return-void
.end method

.method private clearBackToLauncherCallback()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    return-void
.end method

.method private static dispatchOnBackCancelled(Landroid/window/IOnBackInvokedCallback;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Landroid/window/IOnBackInvokedCallback;->onBackCancelled()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string v0, "BackAnimationController"

    const-string v1, "dispatchOnBackCancelled error: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method private static dispatchOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string v0, "BackAnimationController"

    const-string v1, "dispatchOnBackInvoked error: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method private static dispatchOnBackProgressed(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackEvent;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0, p1}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackEvent;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string p1, "BackAnimationController"

    const-string v0, "dispatchOnBackProgressed error: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method private static dispatchOnBackStarted(Landroid/window/IOnBackInvokedCallback;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Landroid/window/IOnBackInvokedCallback;->onBackStarted()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string v0, "BackAnimationController"

    const-string v1, "dispatchOnBackStarted error: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method private displayTargetScreenshot(Landroid/hardware/HardwareBuffer;Landroid/app/WindowConfiguration;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getScreenshotSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_a
    if-nez v0, :cond_14

    const-string p0, "BackAnimationController"

    const-string p1, "BackNavigationInfo doesn\'t contain a surface for the screenshot. "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_38

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_39

    :cond_38
    move v1, v3

    :goto_39
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_49

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v3, p2, v2

    :cond_49
    iget-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private finishAnimation()V
    .registers 6

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x8933043

    const-string v4, "BackAnimationController: finishAnimation()"

    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iput-boolean v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchEventDelta:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mInitTouchLocation:Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    iget-boolean v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    iput-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    iput-boolean v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    if-nez v0, :cond_28

    return-void

    :cond_28
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v2, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3f
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getScreenshotSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_50
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->stopTransition()V

    invoke-virtual {v0, v3}, Landroid/window/BackNavigationInfo;->onBackNavigationFinished(Z)V

    return-void
.end method

.method private initAnimation(FF)V
    .registers 10

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x46dd5950

    const/4 v4, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v0, "initAnimation mMotionStarted=%b"

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    const-string v2, "BackAnimationController"

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v0, :cond_2d

    :cond_25
    const-string v0, "Animation is being initialized but is already started."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishAnimation()V

    :cond_2d
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mInitTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    :try_start_34
    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {p2, p1}, Landroid/app/IActivityTaskManager;->startBackNavigation(Z)Landroid/window/BackNavigationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->onBackNavigationInfoReceived(Landroid/window/BackNavigationInfo;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_45} :catch_46

    goto :goto_4f

    :catch_46
    move-exception p1

    const-string p2, "Failed to initAnimation"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishAnimation()V

    :goto_4f
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    return-void
.end method

.method private onBackNavigationInfoReceived(Landroid/window/BackNavigationInfo;)V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz v0, :cond_18

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x7f37ffb6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "Received backNavigationInfo:%s"

    invoke-static {v1, v2, v4, v0, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    if-nez p1, :cond_25

    const-string p1, "BackAnimationController"

    const-string v0, "Received BackNavigationInfo is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishAnimation()V

    return-void

    :cond_25
    invoke-virtual {p1}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_40

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo;->getScreenshotHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo;->getTaskWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->displayTargetScreenshot(Landroid/hardware/HardwareBuffer;Landroid/app/WindowConfiguration;)V

    :cond_3a
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_52

    :cond_40
    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToLauncher(I)Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    goto :goto_52

    :cond_49
    const/4 p1, 0x4

    if-ne v0, p1, :cond_52

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {p0}, Landroid/window/BackNavigationInfo;->getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v1

    :cond_52
    :goto_52
    invoke-static {v1}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackStarted(Landroid/window/IOnBackInvokedCallback;)V

    return-void
.end method

.method private onGestureFinished()V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0xdfb413

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "onGestureFinished() mTriggerBack == %s"

    invoke-static {v2, v3, v5, v0, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-nez v0, :cond_23

    goto :goto_4d

    :cond_23
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToLauncher(I)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    goto :goto_36

    :cond_30
    iget-object v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v3}, Landroid/window/BackNavigationInfo;->getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v3

    :goto_36
    if-eqz v2, :cond_3b

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->startTransition()V

    :cond_3b
    iget-boolean v4, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    if-eqz v4, :cond_43

    invoke-static {v3}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V

    goto :goto_46

    :cond_43
    invoke-static {v3}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackCancelled(Landroid/window/IOnBackInvokedCallback;)V

    :goto_46
    if-ne v0, v1, :cond_4a

    if-nez v2, :cond_4d

    :cond_4a
    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishAnimation()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private onMove(FFI)V
    .registers 12

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-nez v0, :cond_9

    goto :goto_5e

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mInitTouchLocation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/android/wm/shell/back/BackAnimationController;->PROGRESS_THRESHOLD:I

    if-ltz v1, :cond_19

    int-to-float v1, v1

    goto :goto_1b

    :cond_19
    iget v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mProgressThreshold:F

    :goto_1b
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v1}, Landroid/window/BackNavigationInfo;->getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    new-instance v1, Landroid/window/BackEvent;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/window/BackEvent;-><init>(FFFILandroid/view/RemoteAnimationTarget;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToLauncher(I)Z

    move-result p2

    if-eqz p2, :cond_4b

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    goto :goto_5b

    :cond_4b
    const/4 p2, 0x3

    if-eq v0, p2, :cond_5b

    const/4 p2, 0x2

    if-ne v0, p2, :cond_52

    goto :goto_5b

    :cond_52
    const/4 p2, 0x4

    if-ne v0, p2, :cond_5b

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {p0}, Landroid/window/BackNavigationInfo;->getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object p1

    :cond_5b
    :goto_5b
    invoke-static {p1, v1}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackProgressed(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackEvent;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private setSwipeThresholds(FF)V
    .registers 3

    iput p2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mProgressThreshold:F

    iput p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerThreshold:F

    return-void
.end method

.method private setupAnimationDeveloperSettingsObserver(Landroid/content/ContentResolver;Landroid/os/Handler;)V
    .registers 5
    .param p2  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellBackgroundThread;
        .end annotation
    .end param

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/back/BackAnimationController$1;-><init>(Lcom/android/wm/shell/back/BackAnimationController;Landroid/os/Handler;)V

    const-string p2, "enable_back_animation"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->updateEnableAnimationFromSetting()V

    return-void
.end method

.method private shouldDispatchToLauncher(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private startTransition()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mResetTransitionRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private stopTransition()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mResetTransitionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    return-void
.end method

.method private updateEnableAnimationFromSetting()V
    .registers 5
    .annotation runtime Lcom/android/wm/shell/common/annotations/ShellBackgroundThread;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_back_animation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p0, :cond_2e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x7fb8f79f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Back animation enabled=%s"

    invoke-static {v0, v3, v2, p0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public getBackAnimationImpl()Lcom/android/wm/shell/back/BackAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimation;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public onBackToLauncherAnimationFinished()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    if-eqz v1, :cond_10

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V

    goto :goto_13

    :cond_10
    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackCancelled(Landroid/window/IOnBackInvokedCallback;)V

    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishAnimation()V

    return-void
.end method

.method public onMotionEvent(FFII)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    if-ne p3, v0, :cond_13

    iget-boolean p3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-nez p3, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/back/BackAnimationController;->initAnimation(FF)V

    :cond_f
    invoke-direct {p0, p1, p2, p4}, Lcom/android/wm/shell/back/BackAnimationController;->onMove(FFI)V

    goto :goto_34

    :cond_13
    const/4 p1, 0x1

    if-eq p3, p1, :cond_19

    const/4 p2, 0x3

    if-ne p3, p2, :cond_34

    :cond_19
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz p2, :cond_31

    int-to-long p2, p3

    sget-object p4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, -0x2363b9cd

    new-array v1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "Finishing gesture with event action: %d"

    invoke-static {p4, v0, p1, p2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    invoke-direct {p0}, Lcom/android/wm/shell/back/BackAnimationController;->onGestureFinished()V

    :cond_34
    :goto_34
    return-void
.end method

.method public setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    return-void
.end method

.method public setTriggerBack(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    return-void
.end method
