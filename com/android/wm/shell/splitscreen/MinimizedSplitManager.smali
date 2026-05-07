.class public Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;,
        Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;
    }
.end annotation


# static fields
.field private static final DEFAULT_SPLIT_MINI_DURATION:I = 0x1a1

.field private static final DEFAULT_SPLIT_MINI_TOAST_DURATION:I = 0x7d0

.field private static final DEFAULT_SPLIT_NORMAL_DURATION:I = 0x17f

.field private static final DEFAULT_TRANSITION_ANIMATION_DURATION:I = 0x150

.field public static MINIMIZED_VISIBLE_SIZE:I = 0xb4

.field private static final MSG_ENTER_MINIMIED_TOAST:I = 0x1

.field public static final SPLIT_STASH_LEASH_TARGET_SCALE:F = 1.0f

.field public static final SPLIT_STASH_LEASH_TARGET_SCALE_LARGE:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "MinimizedSplitManager"


# instance fields
.field private final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field public isInBackKeyExitAnim:Z

.field private isInMinimizedSplit:Z

.field private landscapeMiniVisiableSizeDp:F

.field private mActiveRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

.field private final mContext:Landroid/content/Context;

.field private final mCornerRadius:I

.field private mHandler:Landroid/os/Handler;

.field private mHasLargeScreenFeature:Z

.field private mHasTouchActionDown:Z

.field private mInputInterceptor:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;

.field private mIsDropAnimalRun:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

.field private mMinimizedRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

.field private mNormalAnimStartTime:J

.field private mNormalRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

.field private mPkgInMinimized:Ljava/lang/String;

.field private final mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

.field private mSideStageIsHiddenTemporary:Z

.field private final mSplitLayoutSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field private final mStashBounds:Landroid/graphics/Rect;

.field private mStashLeashScale:F

.field private mStashRootLeash:Landroid/view/SurfaceControl;

.field private mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private portraitMiniVisiableSizeDp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TransactionPool;Ljava/util/function/Supplier;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/splitscreen/StageCoordinator;",
            "Lcom/android/wm/shell/splitscreen/StageTaskListener;",
            "Lcom/android/wm/shell/splitscreen/StageTaskListener;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;",
            "Landroid/view/SurfaceSession;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashLeashScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHasTouchActionDown:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownX:F

    iput v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownY:F

    const-string v1, "homekey"

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInBackKeyExitAnim:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mIsDropAnimalRun:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStageIsHiddenTemporary:Z

    new-instance v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$2;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    iput-object p10, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/wm/shell/R$dimen;->split_rounded_corner_size:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mCornerRadius:I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHasLargeScreenFeature:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/wm/shell/R$dimen;->oplus_split_minimized_portrait_visible_size:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-static {p4, p2}, Lcom/oplus/splitscreen/DividerUtils;->pxToDp(ILandroid/content/res/Resources;)F

    move-result p4

    iput p4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->portraitMiniVisiableSizeDp:F

    sget p4, Lcom/android/wm/shell/R$dimen;->oplus_split_minimized_landscape_visible_size:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-static {p4, p2}, Lcom/oplus/splitscreen/DividerUtils;->pxToDp(ILandroid/content/res/Resources;)F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->landscapeMiniVisiableSizeDp:F

    iget-object p2, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->updateStashLeashTargetScale(Landroid/app/ActivityManager$RunningTaskInfo;)V

    new-instance p2, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$1;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.USER_SWITCHED"

    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$needInterceptInMinimized$1()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->exitAndGoHome()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;J)J
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getAnimDuration(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->restoreSideStageAlphaIfNeed()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterMinimizedFinish(I)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->releaseInputInterceptor()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->clearStashState()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->clearStageCornerRadius()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageCoordinator;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mNormalAnimStartTime:J

    return-wide v0
.end method

.method public static synthetic access$602(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mNormalAnimStartTime:J

    return-wide p1
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashLeashScale:F

    return p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/TransactionPool;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method private animateStashStage(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ZJLandroid/animation/AnimatorListenerAdapter;)V
    .registers 12
    .param p7  # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mIsDropAnimalRun:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->setSplitStashLeashVisible(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_8
    new-instance v0, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {}, Lcom/android/wm/shell/ShellAnimThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    new-instance v1, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;

    invoke-direct {v1, p2, p3}, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-direct {p0, p5, p6}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getAnimDuration(J)J

    move-result-wide p5

    invoke-virtual {v1, p5, p6}, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;->setDuration(J)V

    new-instance p5, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;

    iget-object p6, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, p3}, Landroid/graphics/Point;-><init>(II)V

    if-eqz p4, :cond_36

    iget p3, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashLeashScale:F

    goto :goto_38

    :cond_36
    const/high16 p3, 0x3f800000  # 1.0f

    :goto_38
    invoke-direct {p5, p0, p6, v2, p3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/view/SurfaceControl;Landroid/graphics/Point;F)V

    new-instance p0, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    invoke-direct {p0, p5}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;-><init>(Lcom/android/wm/shell/splitscreen/animation/Animatable;)V

    new-instance p3, Landroid/graphics/Point;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p3, p4, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, p3, v1, v0}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Point;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V

    if-eqz p7, :cond_51

    invoke-virtual {v0, p7}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_51
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->start()V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$continueApplyDividerVisibility$7(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->onTouchIntercept(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private clearLaunchRootAndFocus()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setSplitRootTaskAlwaysOnTop(Z)V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->registerRemoteAnimationsForNormal()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne v1, v2, :cond_14

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    :cond_14
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    if-nez v2, :cond_4f

    sget-object v2, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string v3, "clearLaunchRootAndFocus set rootTask to boottom"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_4f
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private clearStageCornerRadius()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/c;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private clearStashState()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeMinimizedChanged(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->clearLaunchRootAndFocus()V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->continueApplyDividerVisibility()V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->releaseInputInterceptor()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->setStashPositionInMinimized(I)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetStartType()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setPendingEnterSplitTaskId(I)V

    return-void
.end method

.method private continueApplyDividerVisibility()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/c;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$continueApplyDividerVisibility$6()V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$exitMinimizedToFullscreen$4(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private enterMinimizedFinish(I)V
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifyEnterMinimizedFinish(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_49

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    :cond_49
    sget-object p1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string v0, "enterMinimizedUncheck onAnimationEnd mPkgInMinimized:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private enterMinimizedSplit(IZI)V
    .registers 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_58

    sget-object v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterMinimizedSplit stashPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",withAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz v1, :cond_38

    const-string p1, "Already in stash state, mStashStage="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v0

    if-ne v0, p1, :cond_43

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    goto :goto_45

    :cond_43
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    :goto_45
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/c;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterMinimizedUncheck(Lcom/android/wm/shell/splitscreen/StageTaskListener;IZI)V

    return-void

    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid stash position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private enterMinimizedUncheck(Lcom/android/wm/shell/splitscreen/StageTaskListener;IZI)V
    .registers 22

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setSplitRootTaskAlwaysOnTop(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->registerRemoteAnimationsForMinimized()V

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v6, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne v0, v6, :cond_1c

    iget-object v6, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    :cond_1c
    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    sget-object v9, Lcom/android/wm/shell/splitscreen/StageTaskListener;->CONTROLLED_WINDOWING_MODES:[I

    sget-object v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->CONTROLLED_ACTIVITY_TYPES:[I

    invoke-virtual {v5, v7, v9, v10}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/window/WindowContainerTransaction;->setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v7, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-static {v7}, Lcom/oplus/splitscreen/DividerUtils;->getHomeAndRecentsTasks(Lcom/android/wm/shell/ShellTaskOrganizer;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v5, v10, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_39

    :cond_4b
    iget-object v7, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v7, v5}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v5, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    invoke-direct {v8, v10, v0, v6}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->prepareStashLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    const/4 v5, 0x5

    if-ne v3, v5, :cond_65

    iget-object v5, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->removePairIfNeeded(I)V

    :cond_65
    iget-boolean v5, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mIsDropAnimalRun:Z

    if-eqz v5, :cond_6c

    invoke-virtual {v8, v10, v9}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->setSplitStashLeashVisible(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_6c
    iget-object v5, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v6

    if-nez v1, :cond_7b

    goto :goto_7c

    :cond_7b
    move v4, v9

    :goto_7c
    if-eqz v4, :cond_83

    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v7

    goto :goto_87

    :cond_83
    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v7

    :goto_87
    new-instance v15, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;

    iget-object v12, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v13, v11, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    new-instance v0, Lcom/android/launcher3/allapps/i;

    invoke-direct {v0, v8}, Lcom/android/launcher3/allapps/i;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    move-object v11, v15

    move-object v9, v15

    move-object v15, v7

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/View$OnTouchListener;)V

    iput-object v9, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mInputInterceptor:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;

    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const v9, 0x7fffffff

    invoke-virtual {v10, v0, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v6}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->updateMinimizedVisibleSize(Z)V

    iget v0, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashLeashScale:F

    const/high16 v9, 0x3f800000  # 1.0f

    sub-float/2addr v9, v0

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->scale(F)V

    const/high16 v0, 0x3f000000  # 0.5f

    if-eqz v6, :cond_ee

    if-eqz v4, :cond_d7

    iget v6, v7, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v6, v13

    sget v13, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    add-int/2addr v6, v13

    goto :goto_e5

    :cond_d7
    iget v6, v7, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v13, v6

    sget v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    sub-int v6, v13, v6

    :goto_e5
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    mul-float/2addr v7, v0

    float-to-int v0, v7

    goto :goto_114

    :cond_ee
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    mul-float/2addr v6, v0

    float-to-int v6, v6

    if-eqz v4, :cond_106

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v0, v7

    sget v7, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    add-int/2addr v0, v7

    goto :goto_114

    :cond_106
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v0

    sget v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    sub-int v0, v7, v0

    :goto_114
    invoke-virtual {v12, v6, v0}, Landroid/graphics/Rect;->offset(II)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string v6, "enterMinimizedUncheck() topOrLeft="

    const-string v7, ",withAnim="

    const-string v9, " startBounds="

    invoke-static {v6, v4, v7, v2, v9}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",endBounds="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",getBounds1="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",getBounds2="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",startType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cb

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeChanged(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeMinimizedChanged(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setStashPositionInMinimized(I)V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_18d

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_18d

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_18d
    if-nez v2, :cond_1b5

    if-eq v3, v4, :cond_194

    const/4 v0, 0x6

    if-ne v3, v0, :cond_1b5

    :cond_194
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz v0, :cond_19f

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne v0, v1, :cond_19f

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->restoreSideStageAlphaIfNeed()V

    :cond_19f
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    iget v1, v12, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    iget v1, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashLeashScale:F

    invoke-virtual {v10, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8, v3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterMinimizedFinish(I)V

    goto :goto_1cb

    :cond_1b5
    new-instance v7, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;

    invoke-direct {v7, v8, v2, v3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$5;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;ZI)V

    const/4 v4, 0x1

    if-eqz v2, :cond_1c0

    const-wide/16 v0, 0x1a1

    goto :goto_1c2

    :cond_1c0
    const-wide/16 v0, 0x0

    :goto_1c2
    move-wide v5, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->animateStashStage(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ZJLandroid/animation/AnimatorListenerAdapter;)V

    :cond_1cb
    :goto_1cb
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private enterNormalSplitUncheck(Z)V
    .registers 11

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_f

    iget v0, v2, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_d

    goto :goto_f

    :cond_d
    move v0, v3

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v1

    :goto_10
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/split/SplitLayout;

    new-instance v5, Landroid/graphics/Rect;

    if-eqz v0, :cond_21

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_25

    :cond_21
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v0

    :goto_25
    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    if-eqz p1, :cond_34

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move p1, v3

    :cond_34
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_43
    if-nez p1, :cond_49

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->clearStashState()V

    return-void

    :cond_49
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mNormalAnimStartTime:J

    const/4 v4, 0x0

    const-wide/16 v6, 0x17f

    new-instance v8, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;

    invoke-direct {v8, p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v5

    move-wide v5, v6

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->animateStashStage(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ZJLandroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private exitAndGoHome()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/splitscreen/f;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/f;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private exitMinimizedToFullscreen()V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-nez v0, :cond_c

    sget-object p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string v0, "mStashStage is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mInputInterceptor:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->disableInputIntercept()V

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_23
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_4f

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_4c

    goto :goto_4f

    :cond_4c
    const/4 v2, 0x0

    move v6, v2

    goto :goto_50

    :cond_4f
    :goto_4f
    move v6, v1

    :goto_50
    invoke-static {v4}, Lcom/oplus/splitscreen/DividerUtils;->getDisplayBounds(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v7

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz v6, :cond_6b

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v9, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_72

    :cond_6b
    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v2, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_72
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne v1, v2, :cond_84

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    :cond_84
    iget-object v1, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/d;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/d;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$enterMinimizedSplit$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;ZLcom/android/wm/shell/common/split/SplitLayout;ZILandroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$updateMinimizedPosition$5(ZLcom/android/wm/shell/common/split/SplitLayout;ZILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private getAnimDuration(J)J
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/internal/R$dimen;->config_appTransitionAnimationDurationScaleDefault:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const-string/jumbo v1, "transition_animation_scale"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    long-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0
.end method

.method private getMinimizedRemoteAnimations()Landroid/view/RemoteAnimationDefinition;
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMinimizedRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

    if-nez v0, :cond_21

    new-instance v0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMinimizedRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

    new-instance v2, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$3;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    new-instance v0, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMinimizedRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    :cond_21
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMinimizedRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

    return-object p0
.end method

.method private getNormalRemoteAnimations()Landroid/view/RemoteAnimationDefinition;
    .registers 9

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHasLargeScreenFeature:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mNormalRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

    if-nez v0, :cond_28

    new-instance v0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mNormalRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

    new-instance v2, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$4;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    new-instance v0, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJZ)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mNormalRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v0}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    :cond_28
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mNormalRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$clearStageCornerRadius$8(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$exitAndGoHome$3()V

    return-void
.end method

.method public static synthetic j(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$needInterceptInMinimized$2()V

    return-void
.end method

.method private synthetic lambda$clearStageCornerRadius$8(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$continueApplyDividerVisibility$6()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getDividerFadeAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$8;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$8;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1a

    :cond_17
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->clearStageCornerRadius()V

    :goto_1a
    return-void
.end method

.method private synthetic lambda$continueApplyDividerVisibility$7(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->isMainStageActive()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/splitscreen/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/f;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;I)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->continueApplyDividerVisibility(Ljava/lang/Runnable;)V

    goto :goto_1f

    :cond_1c
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->clearStageCornerRadius()V

    :goto_1f
    return-void
.end method

.method private synthetic lambda$enterMinimizedSplit$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibilityWrapper(ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->deferApplyDividerVisibility()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->getSplitControlBarRootBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    :cond_38
    return-void
.end method

.method private synthetic lambda$exitAndGoHome$3()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v0, -0x1

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(II)V

    return-void
.end method

.method private synthetic lambda$exitMinimizedToFullscreen$4(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 15

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;->FORCE_HIDDEN:Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;

    invoke-virtual {v0, v1, p6}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->addControlBarHiddenFlag(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$HiddenFlag;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->updateMinimizedVisibleSize(Z)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashLeashScale:F

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    if-eqz p3, :cond_54

    if-eqz p1, :cond_42

    sget p1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p4

    sub-int/2addr p1, p4

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, p1, p4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_50

    :cond_42
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sget p4, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {v2, p1, p4}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_50
    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_70

    :cond_54
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_6a

    iget p1, p4, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_70

    :cond_6a
    iget p1, p4, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {v3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    :goto_70
    const/4 v4, 0x0

    const-wide/16 v5, 0x17f

    new-instance v7, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;

    invoke-direct {v7, p0, p5, p3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$7;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    move-object v0, p0

    move-object v1, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->animateStashStage(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ZJLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private synthetic lambda$needInterceptInMinimized$1()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->exitMinimizedToFullscreen()V

    return-void
.end method

.method private synthetic lambda$needInterceptInMinimized$2()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->exitMinimizedToFullscreen()V

    return-void
.end method

.method private synthetic lambda$updateMinimizedPosition$5(ZLcom/android/wm/shell/common/split/SplitLayout;ZILandroid/view/SurfaceControl$Transaction;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->restoreSideStageAlphaIfNeed()V

    :cond_10
    if-eqz p1, :cond_17

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object p2

    goto :goto_1b

    :cond_17
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object p2

    :goto_1b
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mInputInterceptor:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;

    if-eqz v0, :cond_22

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->relayoutViewSize(Landroid/graphics/Rect;)V

    :cond_22
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->updateMinimizedVisibleSize(Z)V

    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashLeashScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->scale(F)V

    const/high16 v0, 0x3f000000  # 0.5f

    if-eqz p3, :cond_66

    if-eqz p1, :cond_4f

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    sub-int/2addr p1, p3

    sget p3, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    add-int/2addr p1, p3

    goto :goto_5d

    :cond_4f
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p1

    sget p1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    sub-int p1, p3, p1

    :goto_5d
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_8c

    :cond_66
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    mul-float/2addr p3, v0

    float-to-int p3, p3

    if-eqz p1, :cond_7e

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p1, p2

    sget p2, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    add-int/2addr p2, p1

    goto :goto_8b

    :cond_7e
    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p1

    sget p1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    sub-int/2addr p2, p1

    :goto_8b
    move p1, p3

    :goto_8c
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    iget p2, v3, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, v3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p5, p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mCornerRadius:I

    int-to-float p2, p2

    invoke-virtual {p5, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mCornerRadius:I

    int-to-float p2, p2

    invoke-virtual {p5, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashLeashScale:F

    invoke-virtual {p5, p1, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-object p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateMinimizedPosition startBounds:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "rotatoToBounds:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " targetRotation:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " visableSize:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    invoke-static {p1, p2, p0}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private needExitMinimizedSplit(Landroid/view/MotionEvent;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string v1, "needExitMinimizedSplit downX:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " downY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " upX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " upY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43160000  # 150.0f

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    if-gez v0, :cond_5e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_5e

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->exitMinimizedSplit(Z)V

    goto :goto_8e

    :cond_5e
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result p1

    if-nez p1, :cond_8b

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashLeashScale:F

    div-float/2addr p1, v0

    sget v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownY:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8e

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->exitMinimizedSplit(Z)V

    goto :goto_8e

    :cond_8b
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->exitMinimizedSplit(Z)V

    :cond_8e
    :goto_8e
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownX:F

    iput p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownY:F

    return-void
.end method

.method private onTouchIntercept(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    if-eq p1, v0, :cond_f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    goto :goto_29

    :cond_f
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHasTouchActionDown:Z

    if-nez p1, :cond_14

    goto :goto_29

    :cond_14
    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->needExitMinimizedSplit(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHasTouchActionDown:Z

    goto :goto_29

    :cond_1b
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHasTouchActionDown:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTouchDownY:F

    :goto_29
    return v0
.end method

.method private prepareStashLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "Split Stash Layer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "MinimizedSplitManager.createStashLeashIfNeed"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mCornerRadius:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mCornerRadius:I

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mActiveRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mActiveRemoteAnimations:Landroid/view/RemoteAnimationDefinition;

    invoke-static {p1}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setOverrideRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    return-void
.end method

.method private registerRemoteAnimationsForMinimized()V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getMinimizedRemoteAnimations()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    return-void
.end method

.method private registerRemoteAnimationsForNormal()V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getNormalRemoteAnimations()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    return-void
.end method

.method private releaseInputInterceptor()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mInputInterceptor:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mInputInterceptor:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$InputInterceptor;

    :cond_a
    return-void
.end method

.method private restoreSideStageAlphaIfNeed()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStageIsHiddenTemporary:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStageIsHiddenTemporary:Z

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->setSideStageAlpha(F)V

    sget-object p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string v0, "restoreSideStageAlpha"

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private setSideStageAlpha(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_22
    return-void
.end method

.method private shouldMinimizedAnim()Z
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getStartType()I

    move-result p0

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eq p0, v1, :cond_13

    const/4 v2, 0x5

    if-eq p0, v2, :cond_13

    if-eq p0, v0, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    if-eq p0, v1, :cond_1f

    if-eq p0, v0, :cond_1f

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->resetStartType()V

    :cond_1f
    return v2
.end method

.method private updateMinimizedPosition(Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_d

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->adjustTopOrLeft(Z)Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result v5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v7, Lcom/android/wm/shell/splitscreen/e;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/e;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;ZLcom/android/wm/shell/common/split/SplitLayout;ZI)V

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private updateStashLeashTargetScale(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {p1}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_f

    const p1, 0x3f4ccccd  # 0.8f

    goto :goto_11

    :cond_f
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_11
    iput p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashLeashScale:F

    return-void
.end method


# virtual methods
.method public adjustTopOrLeft(Z)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getMiniStashPos()I

    move-result p0

    if-nez p1, :cond_a

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    return p1
.end method

.method public enterMinimizedSplit(I)V
    .registers 4

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->getStartType()I

    move-result v0

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->shouldMinimizedAnim()Z

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterMinimizedSplit(IZI)V

    return-void
.end method

.method public enterNormalSplit(Z)V
    .registers 5

    sget-object v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string v1, "enterNormalSplit withAnim="

    const-string v2, " mStashStage="

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->restoreSideStageAlphaIfNeed()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->registerRemoteAnimationsForNormal()V

    return-void

    :cond_21
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterNormalSplitUncheck(Z)V

    return-void
.end method

.method public exitMinimizedSplit(Z)V
    .registers 5

    sget-object v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string v1, "exitMinimizedSplit maximize="

    const-string v2, " mStashStage="

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_26
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    if-nez p1, :cond_34

    :cond_2d
    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->getInstance()Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitScreenStateChangedDispatcher;->notifySplitScreenModeChanged(Z)V

    :cond_34
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-nez v0, :cond_40

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setPendingEnterSplitTaskId(I)V

    return-void

    :cond_40
    if-nez p1, :cond_46

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->clearStashState()V

    return-void

    :cond_46
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->exitMinimizedToFullscreen()V

    return-void
.end method

.method public getMiniStashPos()I
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne v0, v1, :cond_f

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result p0

    return p0

    :cond_f
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne v0, v1, :cond_1a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result p0

    return p0

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public getPkgInMinimized()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    return-object p0
.end method

.method public getStashStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    return-object p0
.end method

.method public isMinimized()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    return p0
.end method

.method public needInterceptInMinimized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    if-eqz v0, :cond_67

    sget-object v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string v2, "needInterceptInMinimized mPkgInMinimized="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    const-string v4, " targetPkg="

    const-string v5, " calledPkg:"

    invoke-static {v2, v3, v4, p2, v5}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mPkgInMinimized:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_42

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/splitscreen/f;

    invoke-direct {p2, p0, v1}, Lcom/android/wm/shell/splitscreen/f;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;I)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    return v0

    :cond_42
    const-string p2, "home_key_called"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->exitAndGoHome()V

    return v0

    :cond_4e
    const-string p2, "back_key_called"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInBackKeyExitAnim:Z

    if-nez p1, :cond_66

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInBackKeyExitAnim:Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/splitscreen/f;

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/splitscreen/f;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;I)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_66
    return v0

    :cond_67
    return v1
.end method

.method public onFoldedStateChanged(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->swapMiniPositionWhenFolded(Z)Z

    return-void
.end method

.method public onRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iget-object v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {p1}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(Landroid/content/res/Configuration;)Z

    move-result p1

    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v2}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(Landroid/content/res/Configuration;)Z

    move-result v2

    invoke-direct {p0, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->updateStashLeashTargetScale(Landroid/app/ActivityManager$RunningTaskInfo;)V

    if-ne v0, v1, :cond_24

    if-ne p1, v2, :cond_24

    return-void

    :cond_24
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_39

    if-eqz p1, :cond_39

    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->updateMinimizedPosition(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    :cond_39
    return-void
.end method

.method public onStartTaskToSideStage()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->setSideStageAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mSideStageIsHiddenTemporary:Z

    sget-object p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string v0, "onStartTaskToSideStage hide side stage temporary"

    invoke-static {p0, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDropAnimalStatus(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mIsDropAnimalRun:Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mIsDropAnimalRun:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->setSplitStashLeashVisible(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public setSplitStashLeashVisible(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p2, :cond_12

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_17

    :cond_12
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_17
    :goto_17
    return-void
.end method

.method public swapMiniPositionWhenFolded(Z)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getMiniStashPos()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-nez v1, :cond_e

    goto :goto_55

    :cond_e
    const/4 v3, 0x1

    if-eqz p1, :cond_24

    if-ne v0, v3, :cond_24

    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    if-eqz v4, :cond_24

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->reversePosition(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    move v2, v3

    :cond_24
    sget-object v1, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "swapMiniPositionWhenFolded  res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",miniPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isMini="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",folded="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    :goto_55
    return v2
.end method

.method public swapMiniPositionWhenTabletDevice()Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getMiniStashPos()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStashStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-nez v1, :cond_e

    goto :goto_5f

    :cond_e
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    if-ne v0, v3, :cond_2e

    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    if-eqz v4, :cond_2e

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStagePosition()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->reversePosition(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    move v2, v3

    :cond_2e
    sget-object v3, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "swapMiniPositionWhenTabletDevice  res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",miniPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isMini="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->isInMinimizedSplit:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",isTabletDevice="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return v2
.end method

.method public updateMinimizedVisibleSize(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mHasLargeScreenFeature:Z

    if-eqz v0, :cond_18

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->landscapeMiniVisiableSizeDp:F

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->portraitMiniVisiableSizeDp:F

    :goto_b
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p0

    sput p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    goto :goto_26

    :cond_18
    iget v0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->portraitMiniVisiableSizeDp:F

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p0

    sput p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    :goto_26
    sget-object p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateMinimizedVisibleSize island="

    const-string v1, ",size="

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->MINIMIZED_VISIBLE_SIZE:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
