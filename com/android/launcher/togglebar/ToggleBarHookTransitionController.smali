.class public final Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

.field private static final DELAY_HOTSEAT_ALPHA:I = 0x32

.field public static final INVALID_DURATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "CustomTransitionController"


# instance fields
.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

.field private mScaleTarget:Lcom/android/launcher3/anim/ScaleTarget;

.field private mToggleBarRootView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarContainer()Landroid/view/View;

    move-result-object v0

    const-string v1, "mLauncher.toggleBarManager.toggleBarContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mToggleBarRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLayout()Lcom/android/launcher/pagepreview/PagePreviewRoot;

    move-result-object v0

    const-string v1, "mLauncher.pagePreviewManager.pagePreviewLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    new-instance v0, Lcom/android/launcher3/anim/ScaleTarget;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    const-string v3, "mLauncher.hotseat"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    const-string v3, "mLauncher.workspace"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    const-string v3, "mLauncher.workspace.pageIndicator"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/ScaleTarget;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mScaleTarget:Lcom/android/launcher3/anim/ScaleTarget;

    invoke-static {p1}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->setPivotForToggleBarState(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setTransitionProperty$lambda-1(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setTransitionProperty$lambda-0(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V

    return-void
.end method

.method public static final hookScaleHotseat(Lcom/android/launcher3/LauncherState;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookScaleHotseat(Lcom/android/launcher3/LauncherState;)Z

    move-result p0

    return p0
.end method

.method public static final hookScalePageIndicator(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookScalePageIndicator(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z

    move-result p0

    return p0
.end method

.method public static final hookScaleWorkspace(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookScaleWorkspace(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z

    move-result p0

    return p0
.end method

.method public static final hookTranslateYPagePreview(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookTranslateYPagePreview(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z

    move-result p0

    return p0
.end method

.method private final setTransitionProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    instance-of v2, v1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    const-string v3, "CustomTransitionController"

    if-nez v2, :cond_16

    const-string v0, "Don\'t support the state: "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    iget-object v2, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTransitionProperty, toState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", last state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", propertySetter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v4, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v4

    and-int/lit16 v5, v4, 0x100

    const/4 v6, 0x0

    if-eqz v5, :cond_5e

    const/high16 v5, 0x3f800000  # 1.0f

    goto :goto_5f

    :cond_5e
    move v5, v6

    :goto_5f
    and-int/lit16 v8, v4, 0x200

    if-eqz v8, :cond_66

    const/high16 v8, 0x3f800000  # 1.0f

    goto :goto_67

    :cond_66
    move v8, v6

    :goto_67
    iget-object v10, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v10

    invoke-virtual {v10, v5, v8}, Lcom/android/launcher/togglebar/ToggleBarManager;->toolbarAnimation(FF)Landroid/animation/AnimatorSet;

    move-result-object v10

    move-object v11, v1

    check-cast v11, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {v11}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getDelayForOpsBtn()I

    move-result v12

    sget-object v13, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_8b

    sget-object v14, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8b

    move v14, v15

    goto :goto_8c

    :cond_8b
    const/4 v14, 0x0

    :goto_8c
    if-eqz v10, :cond_c7

    iget-object v7, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v7, :cond_ac

    cmpg-float v5, v5, v6

    if-nez v5, :cond_9e

    move v5, v15

    goto :goto_9f

    :cond_9e
    const/4 v5, 0x0

    :goto_9f
    if-eqz v5, :cond_ac

    cmpg-float v5, v8, v6

    if-nez v5, :cond_a7

    move v5, v15

    goto :goto_a8

    :cond_a7
    const/4 v5, 0x0

    :goto_a8
    if-eqz v5, :cond_ac

    move v5, v15

    goto :goto_ad

    :cond_ac
    const/4 v5, 0x0

    :goto_ad
    if-nez v14, :cond_b4

    if-eqz v5, :cond_b2

    goto :goto_b4

    :cond_b2
    int-to-long v7, v12

    goto :goto_b6

    :cond_b4
    :goto_b4
    const-wide/16 v7, 0x0

    :goto_b6
    invoke-virtual {v10, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    instance-of v5, v9, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v5, :cond_c4

    move-object v5, v9

    check-cast v5, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-virtual {v5, v10}, Lcom/android/launcher3/anim/PendingAnimation;->addWithoutDuration(Landroid/animation/Animator;)V

    goto :goto_c7

    :cond_c4
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->end()V

    :cond_c7
    :goto_c7
    iget-object v5, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v5

    sget-object v10, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_108

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_108

    instance-of v7, v5, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz v7, :cond_108

    check-cast v5, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    invoke-virtual {v5}, Lcom/android/launcher/togglebar/state/ToggleBarMainState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    move-result-object v5

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    new-instance v8, Lcom/android/launcher/togglebar/c;

    const/4 v12, 0x0

    invoke-direct {v8, v0, v3, v12}, Lcom/android/launcher/togglebar/c;-><init>(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;I)V

    invoke-virtual {v5, v7, v8}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->animationForDestroyMainUI(ZLjava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_116

    instance-of v5, v9, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v5, :cond_104

    move-object v5, v9

    check-cast v5, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/anim/PendingAnimation;->addWithoutDuration(Landroid/animation/Animator;)V

    goto :goto_116

    :cond_104
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_116

    :cond_108
    const/4 v12, 0x0

    sget-object v5, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    iget-object v7, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mToggleBarRootView:Landroid/view/View;

    sget-object v8, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget v3, v3, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    sget-object v14, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_4:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v7, v8, v3, v14}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_116
    :goto_116
    invoke-virtual {v11}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getLauncherRootViewBgAlpha()I

    move-result v3

    iget-object v5, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v5

    const-string/jumbo v7, "null cannot be cast to non-null type com.android.launcher3.OplusLauncherRootView"

    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/OplusLauncherRootView;

    invoke-virtual {v5}, Lcom/android/launcher3/OplusLauncherRootView;->getBackgroundRender()Lcom/android/launcher3/RootViewBackgroundRenderer;

    move-result-object v5

    sget-object v7, Lcom/android/launcher3/RootViewBackgroundRenderer;->Companion:Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;

    invoke-virtual {v7}, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;->getBACKGROUND_ALPHA()Landroid/util/IntProperty;

    move-result-object v7

    sget-object v8, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_APPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    invoke-interface {v9, v5, v7, v3, v8}, Lcom/android/launcher3/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)V

    sget-object v14, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->Companion:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;

    invoke-virtual {v14, v1, v9}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookScaleWorkspace(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z

    move-result v3

    if-eqz v3, :cond_161

    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_161

    move-object v3, v9

    check-cast v3, Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v5, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v7, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mScaleTarget:Lcom/android/launcher3/anim/ScaleTarget;

    invoke-static {v5, v7}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->workspaceStateTransitionForToggleBar(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/anim/ScaleTarget;)Landroid/animation/AnimatorSet;

    move-result-object v5

    const-wide/16 v7, 0x226

    invoke-virtual {v3, v5, v7, v8}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;J)V

    :cond_161
    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_168

    const/high16 v7, 0x3f800000  # 1.0f

    goto :goto_169

    :cond_168
    move v7, v6

    :goto_169
    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    if-eqz v3, :cond_173

    move v4, v6

    goto :goto_174

    :cond_173
    move v4, v7

    :goto_174
    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_185

    sget-object v3, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_HOTSEAT:Landroid/view/animation/PathInterpolator;

    goto :goto_18d

    :cond_185
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18d

    sget-object v3, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_TOGGLE_BAR:Landroid/view/animation/PathInterpolator;

    :cond_18d
    :goto_18d
    move-object v5, v3

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_198

    const/16 v3, 0x32

    move v6, v3

    goto :goto_199

    :cond_198
    move v6, v12

    :goto_199
    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    if-ne v2, v10, :cond_1a4

    const-wide/16 v7, 0x15e

    goto :goto_1a6

    :cond_1a4
    const-wide/16 v7, -0x1

    :goto_1a6
    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v8}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;IJ)V

    invoke-virtual {v14, v1, v9}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController$Companion;->hookTranslateYPagePreview(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)Z

    move-result v2

    if-eqz v2, :cond_1e7

    iget-object v2, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v11, v2}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPagePreviewScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v2

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    instance-of v3, v9, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v3, :cond_1d5

    move-object v1, v9

    check-cast v1, Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v3, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    new-instance v4, Lcom/android/launcher/togglebar/c;

    invoke-direct {v4, v0, v2, v15}, Lcom/android/launcher/togglebar/c;-><init>(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;I)V

    invoke-virtual {v3, v4}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->destroyUIAnimation(Ljava/lang/Runnable;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x8c

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;J)V

    goto :goto_1e7

    :cond_1d5
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e7

    sget-object v1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    iget-object v0, v0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget v2, v2, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    const/4 v4, 0x0

    invoke-interface {v1, v0, v3, v2, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_1e7
    :goto_1e7
    return-void
.end method

.method private static final setTransitionProperty$lambda-0(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mToggleBarRootView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget p1, p1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, p1, v2}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private static final setTransitionProperty$lambda-1(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget p1, p1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mPagePreviewRoot:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x0

    goto :goto_20

    :cond_1e
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_20
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public setState(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->toolbarAnimation(FF)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_28

    :cond_25
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :goto_28
    sget-object p1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.OplusLauncherRootView"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusLauncherRootView;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherRootView;->getBackgroundRender()Lcom/android/launcher3/RootViewBackgroundRenderer;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/RootViewBackgroundRenderer;->Companion:Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;->getBACKGROUND_ALPHA()Landroid/util/IntProperty;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_APPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/android/launcher3/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)V

    return-void

    :cond_49
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    const-string v1, "NO_ANIM_PROPERTY_SETTER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v1}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setTransitionProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 5

    const-string/jumbo v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->isDragLayerInternalAnimateAllowed(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-direct {p0, p1, p3, p2}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setTransitionProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
