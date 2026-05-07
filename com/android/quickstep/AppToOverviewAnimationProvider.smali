.class final Lcom/android/quickstep/AppToOverviewAnimationProvider;
.super Lcom/android/quickstep/util/OplusRemoteAnimationProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "*>;>",
        "Lcom/android/quickstep/util/OplusRemoteAnimationProvider;"
    }
.end annotation


# static fields
.field private static final PROGRESS_LOWER:F = 0.0f

.field private static final PROGRESS_UPPER:F = 0.8f

.field private static final RECENTS_LAUNCH_DURATION:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "AppToOverviewAnimationProvider"


# instance fields
.field private mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/BaseActivityInterface<",
            "*TT;>;"
        }
    .end annotation
.end field

.field private final mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private final mSplitIds:[I

.field private final mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "*TT;>;",
            "Lcom/android/quickstep/RecentsAnimationDeviceState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/quickstep/util/OplusRemoteAnimationProvider;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    sget-object p2, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p2}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mSplitIds:[I

    new-instance p2, Lcom/android/quickstep/RemoteTargetGluer;

    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-direct {p2, p1, v0}, Lcom/android/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    iput-object p2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    iput-object p3, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/BaseActivityInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/launcher3/statemanager/StatefulActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quickstep/AnimatedFloat;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->lambda$createWindowAnimation$2(Lcom/android/quickstep/AnimatedFloat;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/util/TransformParams;Lcom/android/quickstep/util/TaskViewSimulator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->lambda$createWindowAnimation$4(Lcom/android/quickstep/util/TransformParams;Lcom/android/quickstep/util/TaskViewSimulator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->lambda$onActivityReady$0(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void
.end method

.method public static synthetic e()V
    .registers 0

    invoke-static {}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->lambda$createWindowAnimation$1()V

    return-void
.end method

.method public static synthetic f(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->lambda$createWindowAnimation$3(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method private static synthetic lambda$createWindowAnimation$1()V
    .registers 0

    return-void
.end method

.method private static synthetic lambda$createWindowAnimation$2(Lcom/android/quickstep/AnimatedFloat;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 4

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    return-void
.end method

.method private static synthetic lambda$createWindowAnimation$3(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .registers 3

    invoke-virtual {p2}, Lcom/android/quickstep/util/TransformParams;->getProgress()F

    move-result p1

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    return-void
.end method

.method private static synthetic lambda$createWindowAnimation$4(Lcom/android/quickstep/util/TransformParams;Lcom/android/quickstep/util/TaskViewSimulator;)V
    .registers 4

    const-string v0, "createWindowAnimation: progress = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/util/TransformParams;->PROGRESS:Landroid/util/FloatProperty;

    invoke-virtual {v1, p0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppToOverviewAnimationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method private static synthetic lambda$onActivityReady$0(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .registers 16

    new-instance v6, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v0, 0xfa

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v1, "AppToOverviewAnimationProvider"

    if-nez v0, :cond_17

    const-string p0, "Animation created, before activity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0

    :cond_17
    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->setTaskIconScaledDown(Z)V

    new-instance v0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;-><init>(Lcom/android/quickstep/AppToOverviewAnimationProvider;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    if-eqz v3, :cond_3a

    check-cast v0, Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3, v4, v6, v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->addDepthAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;Landroid/view/animation/Interpolator;)V

    :cond_3a
    new-instance v7, Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-direct {v7, p1, p2, p3, v2}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    iget-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    iget-object p2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mSplitIds:[I

    invoke-virtual {p1, v7, p2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/android/quickstep/RemoteAnimationTargets;[I)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p1

    if-eqz p1, :cond_101

    array-length p2, p1

    if-ge p2, v2, :cond_4e

    goto/16 :goto_101

    :cond_4e
    invoke-virtual {v7}, Lcom/android/quickstep/RemoteAnimationTargets;->isAnimatingHome()Z

    move-result p2

    if-eqz p2, :cond_57

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_61

    :cond_57
    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    const v0, 0x3f4ccccd  # 0.8f

    invoke-static {p2, p3, v0}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object p2

    :goto_61
    array-length p3, p1

    const/4 v8, 0x0

    move v9, v8

    :goto_64
    if-ge v9, p3, :cond_f4

    aget-object v0, p1, v9

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v10

    iget-object v1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setLayoutRotation(II)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-virtual {v10}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/RecentsOrientedState;->setRecentsRotation(I)Z

    :cond_a3
    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v11

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v11, v0}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    new-instance v1, Lcom/android/quickstep/AnimatedFloat;

    sget-object v0, Lcom/android/quickstep/o;->a:Lcom/android/quickstep/o;

    invoke-direct {v1, v0}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/quickstep/n;

    invoke-direct {v0, v1}, Lcom/android/quickstep/n;-><init>(Lcom/android/quickstep/AnimatedFloat;)V

    invoke-virtual {v11, v0}, Lcom/android/quickstep/util/TransformParams;->setBaseBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {v7}, Lcom/android/quickstep/RemoteAnimationTargets;->isAnimatingHome()Z

    move-result v0

    if-eqz v0, :cond_da

    sget-object v0, Lcom/android/quickstep/m;->a:Lcom/android/quickstep/m;

    invoke-virtual {v11, v0}, Lcom/android/quickstep/util/TransformParams;->setHomeBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;

    sget-object v2, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    :cond_da
    sget-object v2, Lcom/android/quickstep/util/TransformParams;->PROGRESS:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    move-object v0, v6

    move-object v1, v11

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v10, v6, p2, v8}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;Z)V

    new-instance v0, Lcom/android/quickstep/k;

    invoke-direct {v0, v11, v10}, Lcom/android/quickstep/k;-><init>(Lcom/android/quickstep/util/TransformParams;Lcom/android/quickstep/util/TaskViewSimulator;)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_64

    :cond_f4
    new-instance p1, Lcom/android/quickstep/AppToOverviewAnimationProvider$2;

    invoke-direct {p1, p0, v7}, Lcom/android/quickstep/AppToOverviewAnimationProvider$2;-><init>(Lcom/android/quickstep/AppToOverviewAnimationProvider;Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v6, p1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0

    :cond_101
    :goto_101
    const-string p0, "No closing app"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public getRecentsLaunchDuration()J
    .registers 3

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public makeDividerHidden([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 9

    if-eqz p1, :cond_44

    array-length p0, p1

    if-nez p0, :cond_6

    goto :goto_44

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

    :cond_44
    :goto_44
    return-void
.end method

.method public onActivityReady(Lcom/android/launcher3/statemanager/StatefulActivity;Ljava/lang/Boolean;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p0, "AppToOverviewAnimationProvider"

    const-string p1, "activity is null, do nothing"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    sget-object v1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPlaceholderTasks()[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->showCurrentTask([Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-object v1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v3, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sget-object v4, Lcom/android/quickstep/p;->b:Lcom/android/quickstep/p;

    invoke-virtual {v1, v3, p2, v4}, Lcom/android/quickstep/BaseActivityInterface;->prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    move-result-object p2

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-interface {p2, v1}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->adjustTransYPropertyState(Z)V

    const-wide/16 v3, 0xfa

    invoke-interface {p2, v3, v4}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->createActivityInterface(J)V

    invoke-interface {p2, v2, v0}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setRecentsAttachedToAppWindow(ZZ)V

    iput-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    iput-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of p1, p1, Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_63

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    goto :goto_65

    :cond_63
    sget-object p1, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    :goto_65
    invoke-static {p1}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_75

    iget-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    :cond_75
    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const-string p1, "onActivityReady"

    invoke-virtual {p0, v2, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    return v0
.end method

.method public setActivityInterface(Lcom/android/quickstep/BaseActivityInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "*TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-void
.end method
