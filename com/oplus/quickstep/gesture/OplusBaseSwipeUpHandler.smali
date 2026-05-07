.class public abstract Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
.super Lcom/android/quickstep/AbsSwipeUpHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;,
        Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TS;>;Q:",
        "Lcom/android/quickstep/views/RecentsView<",
        "+",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "*>;+",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "*>;>;S::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TS;>;>",
        "Lcom/android/quickstep/AbsSwipeUpHandler<",
        "TT;TQ;TS;>;"
    }
.end annotation


# static fields
.field private static final ASSISTANT_SCREEN_CARD_DEFAULT_WIDTH:F = 478.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;

.field private static final DISPLAY_ID_LISTEN_EPISODE_MODE:I = 0x2710
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final GO_HOME_REGION_BOTTOM_INSET_FRACTION:F = 0.2f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final GO_HOME_REGION_LEFT_INSET_FRACTION:F = 0.2f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final GO_HOME_REGION_RIGHT_INSET_FRACTION:F = 0.2f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final GO_HOME_REGION_TOP_INSET_FRACTION:F = 0.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_ANIMATION_DURATION:J = 0xf0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_DURATION_THRESHOLD:J = 0x190L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_GESTURE_STATE_TYPE_FLOATING_WINDOW:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_GESTURE_STATE_TYPE_SPLIT_SCREEN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_MIN_PROGRESS_FOR_OVERVIEW:F = 0.14f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SCREENSHOT_CAPTURED_TIMEOUT:J = 0x64L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SCRIM_ALPHA_DURATION_MS:J = 0x1c2L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SCRIM_ALPHA_OVERVIEW_DURATION_MS:J = 0x15eL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SHELF_ANIM_DURATION:J = 0xf0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusBaseSwipeUpHandler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TARGET_ASSISTANT_SCREEN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TARGET_UNSET:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private alreadyDrawFirst:Z

.field private animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

.field private animateToExternalScreen:Z

.field private animateToFloatWindow:Z

.field private appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field private canSupportedOnePutt:Z

.field private canSupportedRapidReaction:Z

.field private capturedTimeoutRunnable:Ljava/lang/Runnable;

.field private currentAnimateRectF:Landroid/graphics/RectF;

.field private currentPreWindowCropRect:Landroid/graphics/Rect;

.field private currentPreWindowRectF:Landroid/graphics/RectF;

.field private currentProgress:F

.field private currentScrollOffset:F

.field private defferExecuteAnimation:Z

.field private dragLengthFactorMaxPullback:F

.field private dragLengthFactorStartPullback:F

.field private endTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field private forceNotChangeStateToQuickSwitch:Z

.field private gpuBoostFd:J

.field private gradientSlop:F

.field private hasLauncherTransitionControllerStarted:Z

.field private hasTriggerPanelTransitionControllerStarted:Z

.field private isDragging:Z

.field private isInPreviewState:Z

.field private isInSelected:Z

.field private isInSplitScreenMode:Z

.field private isLandscape:Z

.field private isNewTaskStarted:Z

.field private isStatusBarHidden:Z

.field private isWindowFirstMove:Z

.field private final mGoHomeRegion:Landroid/graphics/RectF;

.field private final mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

.field private mUpPos:Landroid/graphics/PointF;

.field private onePuttData:Lcom/oplus/quickstep/rapidreaction/OnePuttData;

.field private realScreenSize:Landroid/graphics/Point;

.field private recentsAnimatoinCancelled:Z

.field private releaseRemoteAnimationViewInfo:Z

.field private scrimFadeAnim:Landroid/animation/Animator;

.field private selectedOptionsType:I

.field private shouldUseCurrentScrollOffset:Z

.field private systemConfiguration:Landroid/content/res/Configuration;

.field private transitionFromMenuKey:Z

.field private triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

.field private triggerPanelSelectAnimation:Landroid/animation/ValueAnimator;

.field private triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private windowAnimationEnded:Z

.field private windowCropProgress:F

.field private zoomWindowData:Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->Companion:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskAnimationManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p8}, Lcom/android/quickstep/AbsSwipeUpHandler;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    const-class p2, Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-static {p2}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p3, "type(ISwipeUpHandlerExt:…   .base(this).create()!!"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/quickstep/ISwipeUpHandlerExt;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    const/high16 p3, 0x3f800000  # 1.0f

    iput p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    new-instance p3, Lcom/oplus/quickstep/gesture/f;

    const/16 p4, 0x11

    invoke-direct {p3, p0, p4}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->capturedTimeoutRunnable:Ljava/lang/Runnable;

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction()Z

    move-result p3

    iput-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getSystemConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->systemConfiguration:Landroid/content/res/Configuration;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowCropRect:Landroid/graphics/Rect;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->releaseRemoteAnimationViewInfo:Z

    sget-object p4, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p7, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object p7, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p7}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p4

    iget p7, p4, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p4, p4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-le p7, p4, :cond_82

    move p8, p7

    goto :goto_83

    :cond_82
    move p8, p4

    :goto_83
    if-ge p7, p4, :cond_86

    goto :goto_87

    :cond_86
    move p7, p4

    :goto_87
    invoke-interface {p2}, Lcom/android/quickstep/ISwipeUpHandlerExt;->isLandscape()Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p2

    invoke-virtual {p2, p5, p6}, Lcom/android/statistics/LauncherStatistics;->setToggleClickedTime(J)V

    iget-boolean p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    const p4, 0x3e4ccccd  # 0.2f

    const p5, 0x3f4ccccd  # 0.8f

    const/4 p6, 0x0

    if-eqz p2, :cond_ae

    new-instance p2, Landroid/graphics/RectF;

    int-to-float p8, p8

    mul-float/2addr p4, p8

    int-to-float p7, p7

    mul-float v0, p7, p6

    mul-float/2addr p8, p5

    mul-float/2addr p7, p5

    invoke-direct {p2, p4, v0, p8, p7}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_ba

    :cond_ae
    new-instance p2, Landroid/graphics/RectF;

    int-to-float p7, p7

    mul-float/2addr p4, p7

    int-to-float p8, p8

    mul-float v0, p8, p6

    mul-float/2addr p7, p5

    mul-float/2addr p8, p5

    invoke-direct {p2, p4, v0, p7, p8}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_ba
    iput-object p2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mGoHomeRegion:Landroid/graphics/RectF;

    sget-object p4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p4, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget-object p5, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p7, p5, Landroid/graphics/Point;->x:I

    iget p5, p5, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, p7, p5}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object p4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const/high16 p5, 0x7f090000

    invoke-virtual {p4, p5, p3, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p4

    mul-float/2addr p4, p1

    iput p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gradientSlop:F

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->inSplitScreenMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSplitScreenMode:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedOnePutt()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedOnePutt:Z

    sget-object p1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    sput-boolean p4, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    sput p6, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentProgress:F

    sput p6, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentScrollOffset:F

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result p1

    iget-object p5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p6, p5, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz p6, :cond_114

    check-cast p5, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p5}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getForceToRecents()Z

    move-result p5

    if-eqz p5, :cond_114

    goto :goto_115

    :cond_114
    move p3, p4

    :goto_115
    or-int/2addr p1, p3

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_16c

    const-string p1, "init: transitionFromMenuKey = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isButtonNavMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p3}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", forceToRecents="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p3, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    const/4 p4, 0x0

    if-eqz p3, :cond_146

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_147

    :cond_146
    move-object p0, p4

    :goto_147
    if-nez p0, :cond_14a

    goto :goto_152

    :cond_14a
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getForceToRecents()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :goto_152
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", mGoHomeRegion = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusBaseSwipeUpHandler"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16c
    return-void
.end method

.method public static synthetic A0()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resolveHomeAnimEnd$lambda-73()V

    return-void
.end method

.method public static synthetic B0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onWindowAnimationStart$lambda-41(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic C0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onGestureStarted$lambda-16(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic D0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->finishCurrentTransitionToHome$lambda-49(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic E0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->finishCurrentTransitionToHome$lambda-47(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic F0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgress$lambda-24$lambda-23(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic G0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onLauncherStart$lambda-7$lambda-6(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void
.end method

.method public static synthetic H0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onAnimatorPlaybackControllerCreated$lambda-12(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F

    move-result p0

    return p0
.end method

.method public static synthetic I0(ZLkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;ZLkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createRecentsAnimation$lambda-61(ZLkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;ZLkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic J0(Lkotlin/jvm/functions/Function1;F)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal$lambda-27(Lkotlin/jvm/functions/Function1;F)F

    move-result p0

    return p0
.end method

.method public static synthetic K0(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToHome$lambda-31(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resumeLastTask$lambda-13(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic W(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initTriggerPanelTransition$lambda-57(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F

    move-result p0

    return p0
.end method

.method public static synthetic X(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyAssistantScreenRecentsAnimationFinished$lambda-67$lambda-66(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic Y(F[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Rect;FLandroid/graphics/RectF;FFLcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 15

    invoke-static/range {p0 .. p14}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimateToCurrent$lambda-40(F[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Rect;FLandroid/graphics/RectF;FFLcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static synthetic Z(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onGestureCancelled$lambda-17(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic a0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->finishCurrentTransitionToHome$lambda-48(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static final synthetic access$cancelScrimFadeAnimIfNeed(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelScrimFadeAnimIfNeed()V

    return-void
.end method

.method public static final synthetic access$createRecentsAnimation(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createRecentsAnimation(ZZIJ)V

    return-void
.end method

.method public static final synthetic access$getAppTransitionManager$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    return-object p0
.end method

.method public static final synthetic access$getCurrentAnimateRectF$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final synthetic access$getHasLauncherTransitionControllerStarted$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasLauncherTransitionControllerStarted:Z

    return p0
.end method

.method public static final synthetic access$getLastAppearedTaskIndex(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getLastAppearedTaskIndex()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMActivity$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/statemanager/StatefulActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    return-object p0
.end method

.method public static final synthetic access$getMActivityInterface$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/BaseActivityInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object p0
.end method

.method public static final synthetic access$getMContext$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMCurrentShift$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public static final synthetic access$getMDeviceState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationDeviceState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-object p0
.end method

.method public static final synthetic access$getMDp$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/launcher3/DeviceProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method public static final synthetic access$getMGestureState$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/GestureState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    return-object p0
.end method

.method public static final synthetic access$getMLauncherTransitionController$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    return-object p0
.end method

.method public static final synthetic access$getMRecentsAnimationController$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/RecentsAnimationController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    return-object p0
.end method

.method public static final synthetic access$getMRecentsView$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/views/RecentsView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method public static final synthetic access$getMStateCallback$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Lcom/android/quickstep/MultiStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    return-object p0
.end method

.method public static final synthetic access$getWindowCropProgress$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowCropProgress:F

    return p0
.end method

.method public static final synthetic access$hasStartedNewTask(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasStartedNewTask()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isDragging$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isDragging:Z

    return p0
.end method

.method public static final synthetic access$isInvalidRectF(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/graphics/RectF;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$maybeUpdateRecentsAttachedState(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    return-void
.end method

.method public static final synthetic access$onSelectProgressChange(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFFZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onSelectProgressChange(FFFZ)V

    return-void
.end method

.method public static final synthetic access$onViewScroll(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/views/OplusRecentsViewImpl;FII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onViewScroll(Lcom/android/quickstep/views/OplusRecentsViewImpl;FII)V

    return-void
.end method

.method public static final synthetic access$resolveHomeAnimEnd(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resolveHomeAnimEnd(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method

.method public static final synthetic access$sendIconSurfaceToAssistantScreen(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->sendIconSurfaceToAssistantScreen()V

    return-void
.end method

.method public static final synthetic access$setAlreadyDrawFirst$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->alreadyDrawFirst:Z

    return-void
.end method

.method public static final synthetic access$setCurrentProgress$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    return-void
.end method

.method public static final synthetic access$setInPreviewState$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInPreviewState:Z

    return-void
.end method

.method public static final synthetic access$setInSelected$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    return-void
.end method

.method public static final synthetic access$setMParallelRunningAnim$p$s1465835919(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    return-void
.end method

.method public static final synthetic access$setSelectedOptionsType$p(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->selectedOptionsType:I

    return-void
.end method

.method public static final synthetic access$updateSysUiFlags(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSysUiFlags(F)V

    return-void
.end method

.method private static final animateToProgress$lambda-21(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v1, "mRecentsAnimationTargets.unfilteredApps"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_2e

    iget-object v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    goto :goto_33

    :cond_2e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_33
    const-string v1, "cookies"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->jumpToAppIconPageIfNeeded(Ljava/util/ArrayList;)V

    :cond_3b
    return-void
.end method

.method private static final animateToProgress$lambda-24(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 21

    move-object v1, p0

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$velocityPxPerMs"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v10, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {v0, v10}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    iget-boolean v2, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const-string v3, "OplusBaseSwipeUpHandler"

    const-string v4, "QuickStep"

    if-eqz v2, :cond_2a

    iget-boolean v2, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->alreadyDrawFirst:Z

    if-nez v2, :cond_2a

    const-string v0, "animateToProgress: start animate to home after next frame"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->deferStartAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    goto :goto_59

    :cond_2a
    if-eqz v0, :cond_3d

    iget-boolean v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v0, :cond_39

    const-string v0, "animateToProgress: start animate after next frame, when transition is from menu key"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->deferStartAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    goto :goto_59

    :cond_39
    invoke-virtual/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    goto :goto_59

    :cond_3d
    const-string v0, "animateToProgress: start animate to home until Launcher draw"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    new-instance v12, Lcom/oplus/quickstep/gesture/g;

    const/4 v9, 0x1

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/oplus/quickstep/gesture/g;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;I)V

    invoke-virtual {v11, v10, v12}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    :goto_59
    return-void
.end method

.method private static final animateToProgress$lambda-24$lambda-23(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 20

    move-object v1, p0

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$velocityPxPerMs"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v0, :cond_1e

    const-string v0, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    const-string v3, "animateToProgress: start animate after next frame, when transition is from menu key"

    invoke-static {v0, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->deferStartAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    goto :goto_38

    :cond_1e
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/oplus/quickstep/gesture/g;

    const/4 v9, 0x2

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/oplus/quickstep/gesture/g;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;I)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_38
    return-void
.end method

.method private static final animateToProgress$lambda-24$lambda-23$lambda-22(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$velocityPxPerMs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    return-void
.end method

.method private static final animateToProgressInternal$lambda-25(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->computeRecentsScrollIfInvisible()V

    return-void
.end method

.method private static final animateToProgressInternal$lambda-26(FF)F
    .registers 2

    return p0
.end method

.method private static final animateToProgressInternal$lambda-27(Lkotlin/jvm/functions/Function1;F)F
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static synthetic b0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateThumbnail$lambda-52(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onTasksAppeared$lambda-2(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private final canSupportedOnePutt()Z
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    :goto_f
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_16

    :cond_14
    move v5, v4

    goto :goto_1b

    :cond_16
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v5, v2, :cond_14

    move v5, v3

    :goto_1b
    if-nez v5, :cond_2a

    if-nez v0, :cond_21

    :cond_1f
    move v0, v4

    goto :goto_26

    :cond_21
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez v0, :cond_1f

    move v0, v3

    :goto_26
    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    move v3, v4

    :cond_2a
    :goto_2a
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result v5

    if-nez v5, :cond_b3

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportOnePutt()Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    if-nez v0, :cond_b3

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSplitScreenMode:Z

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_b3

    if-nez v3, :cond_51

    goto :goto_b3

    :cond_51
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_5f

    :goto_5d
    move-object v0, v1

    goto :goto_68

    :cond_5f
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v0, :cond_64

    goto :goto_5d

    :cond_64
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_68
    if-nez v0, :cond_6b

    return v4

    :cond_6b
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-nez v3, :cond_78

    goto :goto_7a

    :cond_78
    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_7a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "taskId"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "baseIntentComponent.flattenToShortString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-nez v2, :cond_9a

    goto :goto_a3

    :cond_9a
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_9f

    goto :goto_a3

    :cond_9f
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_a3
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "mContext.packageName"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p0, v3}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->isSupportedApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_b3
    :goto_b3
    return v4
.end method

.method private final canUpdateScrim()Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isWindowFirstMove:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_COMPLETED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method private final cancelAnimation()V
    .registers 4

    const-string v0, "RapidReaction"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "cancelAnimation"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelSelectAnimation:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_11
    return-void
.end method

.method private final cancelScrimFadeAnimIfNeed()V
    .registers 4

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->scrimFadeAnim:Landroid/animation/Animator;

    if-nez p0, :cond_5

    goto :goto_17

    :cond_5
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "cancelScrimFadeAnimIfNeed"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_17
    :goto_17
    return-void
.end method

.method private static final capturedTimeoutRunnable$lambda-0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyCapturedTimeout()V

    return-void
.end method

.method private final checkPauseAppList()V
    .registers 6

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-nez p0, :cond_5

    goto :goto_30

    :cond_5
    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez p0, :cond_a

    goto :goto_30

    :cond_a
    const/4 v0, 0x0

    array-length v1, p0

    :goto_c
    if-ge v0, v1, :cond_30

    aget-object v2, p0, v0

    const/4 v3, 0x0

    if-nez v2, :cond_15

    :goto_13
    move-object v4, v3

    goto :goto_1c

    :cond_15
    iget-object v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v4, :cond_1a

    goto :goto_13

    :cond_1a
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    :goto_1c
    if-nez v2, :cond_1f

    goto :goto_2a

    :cond_1f
    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v2, :cond_24

    goto :goto_2a

    :cond_24
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2a
    invoke-static {v4, v3}, Lcom/android/common/util/PausedAppCacheUtil;->needPauseImmediately(Landroid/content/Intent;Ljava/lang/Integer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_30
    :goto_30
    return-void
.end method

.method private final createAnimateToExternalScreen(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;
    .registers 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x8

    const-string v3, "OplusBaseSwipeUpHandler#createAnimateToExternalScreen"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    iget-object v5, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v14

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/RectF;

    iget-object v4, v3, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-direct {v11, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v11}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_50

    sget-object v4, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v4}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iput v5, v11, Landroid/graphics/RectF;->right:F

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iput v4, v11, Landroid/graphics/RectF;->bottom:F

    :cond_50
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v3, v8}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v5, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070974

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v6, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070973

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v15

    cmpg-float v7, v7, v15

    if-gez v7, :cond_99

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v15

    goto :goto_a1

    :cond_99
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v15

    :goto_a1
    div-float/2addr v7, v15

    mul-float/2addr v7, v5

    neg-float v7, v7

    const/4 v15, 0x0

    invoke-virtual {v4, v6, v7, v5, v15}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v6, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "mContext.resources"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v11, v4, v12, v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateRapidReactionWindowRadius(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/content/res/Resources;)V

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v5

    iput v5, v12, Landroid/graphics/PointF;->x:F

    new-instance v5, Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    iget-object v6, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v6}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v16

    const/16 v17, 0x2af8

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v18

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    move-object v15, v5

    invoke-direct/range {v15 .. v20}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;-><init>(IIILandroid/graphics/Rect;Landroid/os/Bundle;)V

    iput-object v5, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onePuttData:Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onCancel()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v15

    const-string v5, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v5

    iget-object v7, v5, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_132

    const-string v5, "createAnimateToExternalScreen: , startBounds = "

    invoke-static {v5}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", targetBounds = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", displayRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "QuickStep"

    const-string v6, "OplusBaseSwipeUpHandler"

    invoke-static {v5, v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_132
    new-instance v3, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    new-instance v4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;

    move-object v5, v4

    move-object v6, v15

    invoke-direct/range {v5 .. v14}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$1;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/Rect;Lcom/android/quickstep/util/TransformParams;)V

    invoke-virtual {v3, v4}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->addUpdateListener(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;)V

    invoke-virtual {v3}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$2;

    invoke-direct {v5, v0, v15}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToExternalScreen$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3
.end method

.method private final createAnimateToFloatOrMiniWindow(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;
    .registers 26

    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    iget-object v0, v13, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v12

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Landroid/graphics/RectF;

    iget-object v0, v3, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-direct {v8, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, v13, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, v8, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->bottom:F

    :cond_49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v2}, Lcom/android/quickstep/ISwipeUpHandlerExt;->isTaskLandscape()Z

    const/4 v2, 0x1

    new-array v10, v2, [F

    const/high16 v2, 0x42b40000  # 90.0f

    aput v2, v10, v1

    invoke-virtual {v8, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v1, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v1}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getCropWidthInCreateAnimateMiniWindow()F

    move-result v1

    iget-object v2, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v2}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getCropHeightInCreateAnimateMiniWindow()F

    move-result v2

    iget-object v9, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v9}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getTopOffsetInCreateAnimateMiniWindow()F

    move-result v21

    iget-object v9, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v9}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getRightOffsetInCreateAnimateMiniWindow()F

    move-result v22

    iget-object v9, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v9, v6, v8, v1, v2}, Lcom/android/quickstep/ISwipeUpHandlerExt;->updateTargetCropRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V

    iget-object v14, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    move-object v15, v0

    move-object/from16 v16, v8

    move-object/from16 v17, v6

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v10

    invoke-interface/range {v14 .. v22}, Lcom/android/quickstep/ISwipeUpHandlerExt;->updateTargetBoundsInCreateAnimateMiniWindow(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;FF[FFF)V

    iget-object v1, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowCropRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_a5

    :cond_a0
    iget-object v1, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_a5
    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iget-object v2, v13, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v9, "mContext.resources"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v8, v0, v11, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateRapidReactionWindowRadius(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/content/res/Resources;)V

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v1

    iput v1, v11, Landroid/graphics/PointF;->x:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v14, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v14}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getTopOffsetInCreateAnimateMiniWindow()F

    move-result v19

    iget-object v2, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v2}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getRightOffsetInCreateAnimateMiniWindow()F

    move-result v20

    move-object v15, v6

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v8

    invoke-interface/range {v14 .. v20}, Lcom/android/quickstep/ISwipeUpHandlerExt;->updateZoomWindowRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V

    new-instance v2, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;

    iget-object v9, v13, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v9}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v15

    sget-object v9, Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;

    invoke-virtual {v9}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;->getMINI_WINDOW()I

    move-result v16

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v18

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object v14, v2

    invoke-direct/range {v14 .. v19}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;-><init>(IILandroid/graphics/Rect;ILandroid/os/Bundle;)V

    iput-object v2, v13, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->zoomWindowData:Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onCancel()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v14

    const-string v2, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v2

    iget-object v2, v2, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_14c

    const-string v9, "createAnimateToSmallWindow: targetBounds = "

    invoke-static {v9}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", zoomWindowRect = "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayRotation = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "QuickStep"

    const-string v15, "OplusBaseSwipeUpHandler"

    invoke-static {v9, v15, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14c
    new-instance v15, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    move-object/from16 v1, p1

    invoke-direct {v15, v1, v0}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    new-instance v9, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;

    move-object v0, v9

    move-object v1, v14

    move-object v13, v9

    move-object/from16 v9, p0

    invoke-direct/range {v0 .. v12}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$1;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/RectF;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;[FLandroid/graphics/PointF;Lcom/android/quickstep/util/TransformParams;)V

    invoke-virtual {v15, v13}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->addUpdateListener(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;)V

    invoke-virtual {v15}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$2;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v14}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v15
.end method

.method private final createRecentsAnimation(ZZIJ)V
    .registers 28

    move-object/from16 v14, p0

    move/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelAnimation()V

    iget-object v0, v14, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-nez v1, :cond_e

    return-void

    :cond_e
    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v0, v14, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget v2, v14, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    iput v2, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v13, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v15, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-interface {v0, v12}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    iput v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v16

    const/4 v2, 0x1

    if-gez v0, :cond_54

    invoke-virtual {v12}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_54

    move/from16 v17, v2

    goto :goto_56

    :cond_54
    move/from16 v17, v1

    :goto_56
    if-gez v0, :cond_59

    move v0, v1

    :cond_59
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {v12, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getScrollForPage(I)I

    move-result v3

    iput v3, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v12}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_71

    move v9, v2

    goto :goto_72

    :cond_71
    move v9, v1

    :goto_72
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput v0, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    if-eqz v11, :cond_96

    iget-object v0, v14, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v1, v14, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float/2addr v0, v1

    iput v0, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getCurrentScroll()I

    move-result v0

    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v0, 0x0

    iput v0, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_96
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_f4

    const-string v0, "createRecentsAnimation: reverse = "

    const-string v1, "forceUseRealScroll = "

    const-string v2, ", runningTaskIndex = "

    invoke-static {v0, v11, v1, v9, v2}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startScroll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endScroll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startScaleProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endScaleProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RapidReaction"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f4
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_156

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getPATH_03_0_01_1_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/quickstep/gesture/c;

    move-object v0, v4

    move/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, p0

    move-object v11, v4

    move-object v4, v10

    move-object v14, v5

    move-object v5, v12

    move-object/from16 v18, v7

    move-object v7, v8

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    move/from16 v20, v9

    move/from16 v9, p2

    move-object/from16 v21, v10

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/oplus/quickstep/gesture/c;-><init>(ZLkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;ZLkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v14, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;

    move-object v0, v11

    move-object v1, v12

    move/from16 v2, v20

    move/from16 v3, v17

    move-object/from16 v4, v16

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    move-object v8, v15

    move-object/from16 v9, v21

    move-object v10, v13

    move-object v15, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v18

    move/from16 v13, p2

    invoke-direct/range {v0 .. v13}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createRecentsAnimation$2;-><init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;ZZLcom/android/quickstep/views/TaskView;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZILkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Z)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    move-object v1, v14

    iput-object v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelSelectAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_156
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createRecentsAnimation$lambda-61(ZLkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;ZLkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V
    .registers 12

    const-string v0, "$endProgress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$endScroll"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rv"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$startProgress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$startScaleProgress"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$endScaleProgress"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$startScroll"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p10}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p10

    if-eqz p0, :cond_3d

    iget-object p0, p2, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v0, p2, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float/2addr p0, v0

    iput p0, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getCurrentScroll()I

    move-result p0

    iput p0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_3d
    iget-boolean p0, p2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasLauncherTransitionControllerStarted:Z

    if-nez p0, :cond_5a

    iget p0, p5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {p10, p0, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    iput p0, p2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    iget-object p1, p2, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-nez p1, :cond_50

    goto :goto_5a

    :cond_50
    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    if-nez p1, :cond_57

    goto :goto_5a

    :cond_57
    invoke-virtual {p1, p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_5a
    :goto_5a
    iget p0, p6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget p1, p7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-direct {p2, p10, p0, p1, p8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onSelectProgressChange(FFFZ)V

    iget p0, p9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget p1, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {p2, p4, p10, p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onViewScroll(Lcom/android/quickstep/views/OplusRecentsViewImpl;FII)V

    return-void
.end method

.method private final createSplitWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const-string v1, "mRemoteTargetHandles"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_26

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v4

    if-nez v4, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v4}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v4

    if-nez v4, :cond_1e

    goto :goto_a

    :cond_1e
    iget v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    goto :goto_a

    :cond_26
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    aget-object v0, p1, v2

    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createSplitWindowAnimationToHome$1;

    invoke-direct {v1, p2, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createSplitWindowAnimationToHome$1;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "outAnim"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createWindowAnimateToCurrent(Landroid/graphics/RectF;)Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;
    .registers 29

    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v10

    iget-object v0, v3, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v12

    new-instance v7, Landroid/graphics/RectF;

    iget-object v0, v10, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v2, v3, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    const-wide/16 v4, 0x0

    if-nez v2, :cond_26

    goto :goto_31

    :cond_26
    invoke-virtual {v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v2

    if-nez v2, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getDuration()J

    move-result-wide v4

    :goto_31
    iget-object v2, v3, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez v2, :cond_36

    goto :goto_3c

    :cond_36
    invoke-virtual {v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v2

    if-nez v2, :cond_3e

    :goto_3c
    const/4 v2, 0x0

    goto :goto_42

    :cond_3e
    invoke-virtual {v2}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getOpenAnimProgress()F

    move-result v2

    :goto_42
    const-wide/16 v8, 0x1

    cmp-long v6, v8, v4

    const-wide/16 v8, 0x32

    if-gtz v6, :cond_50

    cmp-long v6, v4, v8

    if-gtz v6, :cond_50

    const/4 v6, 0x1

    goto :goto_51

    :cond_50
    move v6, v1

    :goto_51
    const-wide/16 v13, 0xf0

    const/4 v11, 0x2

    if-eqz v6, :cond_59

    int-to-long v8, v11

    mul-long/2addr v4, v8

    goto :goto_93

    :cond_59
    cmp-long v6, v8, v4

    const-wide/16 v8, 0x4b

    if-gtz v6, :cond_65

    cmp-long v6, v4, v8

    if-gtz v6, :cond_65

    const/4 v6, 0x1

    goto :goto_66

    :cond_65
    move v6, v1

    :goto_66
    if-eqz v6, :cond_6c

    long-to-float v4, v4

    const/high16 v5, 0x3fe00000  # 1.75f

    goto :goto_7e

    :cond_6c
    cmp-long v6, v8, v4

    if-gtz v6, :cond_78

    const-wide/16 v8, 0x64

    cmp-long v6, v4, v8

    if-gtz v6, :cond_78

    const/4 v6, 0x1

    goto :goto_79

    :cond_78
    move v6, v1

    :goto_79
    if-eqz v6, :cond_81

    long-to-float v4, v4

    const/high16 v5, 0x3fa00000  # 1.25f

    :goto_7e
    mul-float/2addr v4, v5

    float-to-long v4, v4

    goto :goto_93

    :cond_81
    cmp-long v6, v13, v4

    if-gtz v6, :cond_8d

    const-wide/16 v8, 0x190

    cmp-long v6, v4, v8

    if-gtz v6, :cond_8d

    const/4 v6, 0x1

    goto :goto_8e

    :cond_8d
    move v6, v1

    :goto_8e
    if-eqz v6, :cond_93

    move-wide/from16 v18, v13

    goto :goto_95

    :cond_93
    :goto_93
    move-wide/from16 v18, v4

    :goto_95
    new-instance v9, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    const/4 v14, 0x0

    const/16 v17, 0x0

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v13, v9

    move-object/from16 v15, p1

    move-object/from16 v16, v0

    move-object/from16 v20, v4

    invoke-direct/range {v13 .. v20}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;JLandroid/view/animation/Interpolator;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v12}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v6

    iget-object v6, v6, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v13

    sub-float/2addr v8, v13

    int-to-float v11, v11

    div-float/2addr v8, v11

    iget-object v11, v3, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v13, v3, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const-string v14, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    invoke-static {v13, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/OplusDeviceProfile;

    iget v13, v13, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v13, v13

    invoke-static {v11, v13}, Lcom/android/launcher/theme/LauncherIconConfig;->getStyleIconSizeAndIconRadius(Landroid/content/res/Resources;F)[F

    move-result-object v11

    aget v1, v11, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v13, "getIconVisualSize : "

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v15, "QuickStep"

    const-string v14, "OplusBaseSwipeUpHandler"

    invoke-static {v15, v14, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v13, "mContext"

    if-nez v1, :cond_f4

    const/4 v1, 0x0

    move-object/from16 v20, v9

    goto :goto_106

    :cond_f4
    move-object/from16 v20, v9

    sget-object v9, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v1

    int-to-float v1, v1

    :goto_106
    move v9, v1

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    move-object/from16 v16, v14

    if-nez v1, :cond_12b

    iget-object v14, v3, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v14, v14, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v14, :cond_116

    goto :goto_12b

    :cond_116
    sget-object v14, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    move-object/from16 v17, v15

    iget-object v15, v3, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v14}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v14

    int-to-float v14, v14

    goto :goto_12e

    :cond_12b
    :goto_12b
    move-object/from16 v17, v15

    const/4 v14, 0x0

    :goto_12e
    move v15, v14

    new-instance v14, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    if-nez v1, :cond_156

    const/4 v1, 0x0

    aget v18, v11, v1

    const/16 v21, 0x0

    cmpg-float v18, v18, v21

    if-nez v18, :cond_142

    const/16 v18, 0x1

    goto :goto_144

    :cond_142
    move/from16 v18, v1

    :goto_144
    if-eqz v18, :cond_147

    goto :goto_156

    :cond_147
    const/16 v18, 0x1

    aget v18, v11, v18

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v21

    mul-float v21, v21, v18

    aget v1, v11, v1

    div-float v21, v21, v1

    goto :goto_158

    :cond_156
    :goto_156
    const/16 v21, 0x0

    :goto_158
    move/from16 v1, v21

    iput v1, v14, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const v1, 0x3e99999a  # 0.3f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_199

    const v1, 0x3e99999a  # 0.3f

    const/high16 v18, 0x3f800000  # 1.0f

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000  # 1.0f

    move-object/from16 v23, v13

    move v13, v2

    move-object/from16 v25, v10

    move-object/from16 v24, v12

    move-object v10, v14

    move-object/from16 v12, v16

    move v14, v1

    move/from16 v26, v15

    move-object/from16 v1, v17

    move/from16 v15, v18

    move/from16 v16, v21

    move/from16 v17, v22

    move-object/from16 v18, v4

    invoke-static/range {v13 .. v18}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v4

    const/high16 v13, 0x3f800000  # 1.0f

    const/4 v14, 0x0

    invoke-static {v4, v14, v13}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    iget v13, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    move/from16 v14, v26

    invoke-static {v4, v13, v14}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    iput v4, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    goto :goto_1a4

    :cond_199
    move-object/from16 v25, v10

    move-object/from16 v24, v12

    move-object/from16 v23, v13

    move-object v10, v14

    move-object/from16 v12, v16

    move-object/from16 v1, v17

    :goto_1a4
    sget-object v4, Lcom/android/quickstep/SwipeUpAnimationLogic;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    sget-object v13, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object v14, v3, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    move-object/from16 v15, v23

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v13}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenCornerRadiusFraction()F

    move-result v13

    mul-float/2addr v13, v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_214

    const-string v4, " createWindowAnimateToCurrent: \ntargetRect: "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nstartBounds: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\niconRadius: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v0, v11, v0

    const-string v14, "\nwindowRadius: "

    const-string v15, "\nstartProgress: "

    invoke-static {v4, v0, v14, v9, v15}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\niconSize: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v0, v11, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\nprogressWindowRadius: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v12, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_214
    new-instance v14, Lcom/oplus/quickstep/gesture/e;

    move-object v0, v14

    move v1, v2

    move-object v2, v6

    move-object/from16 v3, p0

    move-object v4, v10

    move v6, v8

    move v8, v9

    move-object/from16 v15, v20

    move v9, v13

    move-object/from16 v10, v25

    move-object/from16 v11, v19

    move-object/from16 v12, v24

    invoke-direct/range {v0 .. v12}, Lcom/oplus/quickstep/gesture/e;-><init>(F[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Rect;FLandroid/graphics/RectF;FFLcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;)V

    invoke-virtual {v15, v14}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;)V

    return-object v15
.end method

.method private static final createWindowAnimateToCurrent$lambda-40(F[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/graphics/Rect;FLandroid/graphics/RectF;FFLcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 41

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p10

    move-object/from16 v7, p12

    move/from16 v8, p14

    const-string v9, "this$0"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$progressWindowRadius"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$cropRect"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$closeWindowRect"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$matrix"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "currentRect"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "adjustRect"

    move-object/from16 v10, p13

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v9, 0x3f800000  # 1.0f

    move/from16 v10, p0

    invoke-static {v8, v10, v9}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v16

    array-length v15, v0

    new-array v14, v15, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    array-length v10, v0

    add-int/lit8 v13, v10, -0x1

    if-ltz v13, :cond_181

    const/16 v17, 0x0

    :goto_49
    add-int/lit8 v11, v17, 0x1

    aget-object v10, v0, v17

    iget v12, v10, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    move-object/from16 p13, v14

    const/4 v14, 0x1

    if-ne v14, v12, :cond_11c

    const v12, 0x3e99999a  # 0.3f

    cmpg-float v12, v16, v12

    if-gez v12, :cond_83

    iput v9, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowCropProgress:F

    iget v12, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    float-to-int v14, v4

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v18

    add-float v0, v18, v4

    float-to-int v0, v0

    move/from16 v19, v11

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v14, v9, v0}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v14, p8

    move-object/from16 v24, p13

    move-object/from16 v21, v10

    move v10, v12

    move/from16 v23, v13

    move/from16 v25, v15

    move/from16 v22, v19

    move/from16 v13, p7

    goto/16 :goto_102

    :cond_83
    move/from16 v19, v11

    const/4 v11, 0x0

    const v0, 0x3e99999a  # 0.3f

    const/high16 v12, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    const/high16 v14, 0x3f800000  # 1.0f

    sget-object v20, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v10

    move/from16 v10, v16

    move/from16 v22, v19

    move/from16 v19, v11

    move v11, v0

    move/from16 v0, v19

    move/from16 v23, v13

    move v13, v9

    move-object/from16 v24, p13

    const/4 v9, 0x0

    move/from16 v25, v15

    move-object/from16 v15, v20

    invoke-static/range {v10 .. v15}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v10

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-static {v10, v9, v11}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v9

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/RectF;->width()F

    move-result v10

    sget-object v11, Lcom/android/quickstep/SwipeUpAnimationLogic;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    iget v11, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v12, v1, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v12, v12, Lcom/android/quickstep/AnimatedFloat;->value:F

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-static {v12, v13, v14}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v12

    div-float/2addr v12, v10

    invoke-static {v8, v11, v12}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v10

    const/high16 v11, 0x3f800000  # 1.0f

    sub-float v12, v11, v9

    iput v12, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowCropProgress:F

    invoke-virtual/range {p9 .. p9}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v9, v4, v11}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v15

    add-float/2addr v15, v4

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v18

    iget v0, v5, Landroid/graphics/RectF;->top:F

    add-float v0, v18, v0

    invoke-static {v9, v15, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    float-to-int v0, v0

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v11, v12, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_102
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v5, v7, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v11, v9, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v6, v11, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v9, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v9, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move v9, v10

    const/4 v10, 0x0

    goto :goto_14c

    :cond_11c
    move/from16 v14, p8

    move-object/from16 v24, p13

    move-object v0, v10

    move/from16 v22, v11

    move/from16 v23, v13

    move/from16 v25, v15

    const/4 v9, 0x0

    move/from16 v13, p7

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v10, :cond_138

    iget v11, v10, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v6, v11, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_143

    :cond_138
    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v11, v10, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v6, v11, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_143
    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_14c
    new-instance v11, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v11, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {v11, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v9

    move-object/from16 v11, v24

    aput-object v9, v11, v17

    move/from16 v9, v22

    move/from16 v12, v23

    if-le v9, v12, :cond_176

    move/from16 v0, v25

    goto :goto_183

    :cond_176
    move/from16 v17, v9

    move-object v14, v11

    move v13, v12

    move/from16 v15, v25

    move v9, v0

    move-object/from16 v0, p1

    goto/16 :goto_49

    :cond_181
    move-object v11, v14

    move v0, v15

    :goto_183
    invoke-static {v11, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-object/from16 v1, p11

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    return-void
.end method

.method private final createWindowAnimationToAssistantScreen(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 48

    move-object/from16 v15, p0

    move/from16 v6, p1

    const-wide/16 v0, 0x8

    const-string v2, "OplusBaseSwipeUpHandler#createWindowAnimationToAssistantScreen"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    iget-object v0, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-nez v0, :cond_23

    const/4 v0, 0x0

    goto :goto_27

    :cond_23
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    :goto_27
    instance-of v1, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_2e

    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    move-object v14, v0

    const/4 v0, 0x0

    if-nez v14, :cond_34

    goto :goto_37

    :cond_34
    invoke-virtual {v14, v0}, Lcom/android/launcher/LauncherCallbacksImp;->onViewAlphaChanged(F)V

    :goto_37
    iget-object v1, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v2, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->scrollToAssistantScreenWithoutScroll()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v13

    const-string v1, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/16 v31, 0x0

    aget-object v1, v1, v31

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v12

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v31

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v31

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v2

    iget-object v8, v2, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v2, "targets"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getTargetRectByTargets([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v21

    invoke-direct {v15, v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasClosingApps([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v24

    invoke-static {v8}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getIconLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_8d

    const/4 v0, 0x0

    move-object/from16 v23, v0

    goto :goto_a3

    :cond_8d
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const v5, 0x7fffffff

    invoke-virtual {v4, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move-object/from16 v23, v2

    :goto_a3
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {v15, v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v7

    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string v4, "QuickStep"

    move-object/from16 v16, v7

    const-string v7, "OplusBaseSwipeUpHandler"

    if-eqz v2, :cond_107

    const-string v2, "createWindowAnimationToAssistantScreen: isStarted = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-nez v3, :cond_d7

    goto :goto_dd

    :cond_d7
    invoke-virtual {v3}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    if-nez v3, :cond_df

    :goto_dd
    const/4 v3, 0x0

    goto :goto_e7

    :cond_df
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_e7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentAnimateRectF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", startProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_107
    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17e

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v11, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-nez v0, :cond_119

    goto :goto_129

    :cond_119
    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_120

    goto :goto_129

    :cond_120
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_129

    const/4 v1, 0x1

    goto :goto_12b

    :cond_129
    :goto_129
    move/from16 v1, v31

    :goto_12b
    if-eqz v1, :cond_13b

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x1

    goto :goto_172

    :cond_13b
    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez v0, :cond_141

    :goto_13f
    const/4 v1, 0x1

    goto :goto_158

    :cond_141
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-nez v0, :cond_148

    goto :goto_13f

    :cond_148
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_14f

    goto :goto_13f

    :cond_14f
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_158

    move v0, v1

    goto :goto_15a

    :cond_158
    :goto_158
    move/from16 v0, v31

    :goto_15a
    if-eqz v0, :cond_172

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez v0, :cond_161

    goto :goto_172

    :cond_161
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-nez v0, :cond_168

    goto :goto_172

    :cond_168
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_16f

    goto :goto_172

    :cond_16f
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_172
    :goto_172
    move-object/from16 v17, v4

    move-object/from16 v22, v5

    move-object/from16 v18, v8

    move-object/from16 v20, v10

    move-object/from16 v25, v13

    goto/16 :goto_2d2

    :cond_17e
    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v31

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v2

    if-nez v2, :cond_189

    goto :goto_197

    :cond_189
    invoke-virtual {v2}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    if-nez v2, :cond_190

    goto :goto_197

    :cond_190
    iget v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float v3, v6, v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :goto_197
    iget-object v2, v1, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_1d5

    const-string v3, "createWindowAnimationToAssistantScreen: mRecentsViewScrollLinked = "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v17, v4

    iget-boolean v4, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", defferExecuteAnimation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", currentScroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", shouldUseCurrentScrollOffset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", currentScrollOffset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-static {v3, v4, v7}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    goto :goto_1d7

    :cond_1d5
    move-object/from16 v17, v4

    :goto_1d7
    iget-boolean v3, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v3, :cond_1e4

    iget-boolean v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    if-eqz v3, :cond_1e4

    iget v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_1e4
    iget-boolean v3, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v3, :cond_1f4

    iget-boolean v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v3, :cond_1f4

    iget-object v3, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_1f4

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_1f4
    iget-object v3, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_20b

    const-string v4, "createWindowAnimationToAssistantScreen: current running index is "

    invoke-static {v3, v4, v7}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_20b
    const/4 v4, -0x1

    if-eq v3, v4, :cond_254

    iget-object v4, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v4

    sub-int v18, v4, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    if-lez v18, :cond_254

    move-object/from16 v18, v8

    iget-object v8, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v8, v4}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v8

    move-object/from16 v20, v10

    int-to-float v10, v8

    invoke-virtual {v1, v10}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    const/4 v10, 0x1

    iput-boolean v10, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v10

    if-eqz v10, :cond_251

    const-string v10, "createWindowAnimationToAssistantScreen: running index is "

    move-object/from16 v22, v5

    const-string v5, ", current page is "

    move-object/from16 v25, v13

    const-string v13, ". so we should set scroll offset to "

    invoke-static {v10, v3, v5, v4, v13}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", and force invisible recents view"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25c

    :cond_251
    move-object/from16 v22, v5

    goto :goto_25a

    :cond_254
    move-object/from16 v22, v5

    move-object/from16 v18, v8

    move-object/from16 v20, v10

    :goto_25a
    move-object/from16 v25, v13

    :goto_25c
    invoke-virtual {v12, v6}, Lcom/android/quickstep/util/TransformParams;->setProgress(F)Lcom/android/quickstep/util/TransformParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v9}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v11, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_2c4

    sget-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    iget-object v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/quickstep/util/SplitScreenBounds;->isLauncherOnFirstScreen(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2c5

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2b4

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v0

    if-ne v0, v4, :cond_2b4

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    neg-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v11, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2c5

    :cond_2b4
    const/4 v0, 0x0

    iget-object v3, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    neg-float v3, v3

    invoke-virtual {v11, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2c5

    :cond_2c4
    const/4 v4, 0x1

    :cond_2c5
    :goto_2c5
    move v3, v4

    iget-boolean v0, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v0, :cond_2d1

    iget-boolean v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v0, :cond_2d1

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_2d1
    move v1, v3

    :goto_2d2
    new-instance v13, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-object v6, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const/4 v0, 0x1

    move-object v2, v13

    move-object v3, v11

    move-object/from16 v8, v17

    move-object/from16 v4, v21

    move-object/from16 v32, v22

    move-object/from16 v10, v16

    move-object/from16 v16, v12

    move-object v12, v7

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/quickstep/util/OplusRectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Z)V

    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    new-instance v27, Landroid/graphics/Matrix;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Matrix;-><init>()V

    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    new-instance v26, Landroid/graphics/RectF;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/RectF;-><init>()V

    new-instance v29, Landroid/graphics/PointF;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v30

    const/4 v0, 0x3

    new-array v5, v0, [F

    fill-array-data v5, :array_49c

    if-nez v23, :cond_32d

    const/high16 v0, 0x43ef0000  # 478.0f

    goto :goto_332

    :cond_32d
    invoke-virtual/range {v23 .. v23}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_332
    aput v0, v5, v31

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-nez v0, :cond_339

    goto :goto_33f

    :cond_339
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_341

    :goto_33f
    const/4 v0, 0x0

    goto :goto_34c

    :cond_341
    const v3, 0x7f07015f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_34c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v5, v1

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-nez v0, :cond_35b

    goto :goto_361

    :cond_35b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_363

    :goto_361
    const/4 v0, 0x0

    goto :goto_36e

    :cond_363
    const v3, 0x7f07015e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_36e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v5, v2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v0

    aget v2, v5, v31

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_38f

    const-string v0, "createWindowAnimationToAssistantScreen: icon width greater than the float icon width"

    invoke-static {v8, v12, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v0

    aput v0, v5, v31

    :cond_38f
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v0

    if-eqz v0, :cond_396

    goto :goto_39a

    :cond_396
    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-nez v2, :cond_39d

    :goto_39a
    const/4 v2, 0x0

    :goto_39b
    move v7, v2

    goto :goto_3b0

    :cond_39d
    sget-object v3, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    const-string v4, "mContext"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v2

    int-to-float v2, v2

    goto :goto_39b

    :goto_3b0
    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v2, v11}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    if-eqz v0, :cond_3ba

    const/4 v0, 0x0

    goto :goto_3c2

    :cond_3ba
    aget v0, v5, v31

    aget v2, v5, v1

    invoke-interface {v6, v10, v0, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v0

    :goto_3c2
    move v4, v0

    const v33, 0x3f666666  # 0.9f

    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3da

    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d7

    goto :goto_3da

    :cond_3d7
    move/from16 v3, v31

    goto :goto_3db

    :cond_3da
    :goto_3da
    move v3, v1

    :goto_3db
    new-instance v34, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v34 .. v34}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v35, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v35 .. v35}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_437

    const-string v0, "createWindowAnimationToAssistantScreen: prepare\ndefferExecuteAnimation: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\ntargetRect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nstartRect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ncloseWindowRect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\niconRadius: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v1

    const-string v2, "\nwinRadius: "

    move-object/from16 p1, v6

    const-string v6, "\niconSize: "

    invoke-static {v0, v1, v2, v7, v6}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    aget v1, v5, v31

    const-string v2, "\nprogressWindowRadius: "

    const-string v6, "\nisLandscape: "

    invoke-static {v0, v1, v2, v4, v6}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-static {v0, v3, v8, v12}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_439

    :cond_437
    move-object/from16 p1, v6

    :goto_439
    new-instance v12, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$1;

    move-object v0, v12

    const-wide/16 v36, 0x8

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v38, v3

    move-object v3, v13

    move/from16 v39, v4

    move-object/from16 v4, v25

    move-object/from16 v40, p1

    move-object v6, v9

    move/from16 v41, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v18

    move-object/from16 v9, v40

    move-object/from16 v42, v12

    move-object/from16 v40, v16

    move-object/from16 v12, v29

    move-object/from16 v44, v13

    move-object/from16 v43, v25

    move/from16 v13, v39

    move-object/from16 v39, v14

    move/from16 v14, v33

    move-object/from16 v15, v17

    move/from16 v16, v30

    move/from16 v17, v41

    move-object/from16 v18, v22

    move/from16 v20, v38

    move-object/from16 v22, v26

    move-object/from16 v25, v34

    move-object/from16 v26, v40

    move-object/from16 v29, v35

    move-object/from16 v30, p2

    invoke-direct/range {v0 .. v30}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$1;-><init>(Lcom/android/launcher/LauncherCallbacksImp;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/launcher3/anim/AnimatorPlaybackController;[FLandroid/graphics/Matrix;Landroid/graphics/RectF;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;ZLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/SurfaceControl;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/Matrix;Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)V

    move-object/from16 v0, v42

    move-object/from16 v6, v44

    invoke-virtual {v6, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    new-instance v7, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;

    move-object v0, v7

    move-object/from16 v1, v32

    move-object/from16 v3, v39

    move-object/from16 v4, v43

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher/LauncherCallbacksImp;Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)V

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/quickstep/util/OplusRectFSpringAnim;

    aput-object v6, v0, v31

    return-object v0

    nop

    :array_49c
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final createWindowAnimationToBracketSpace(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 45

    move-object/from16 v15, p0

    move/from16 v6, p1

    const-wide/16 v0, 0x8

    const-string v2, "OplusBaseSwipeUpHandler#createWindowAnimationToBracketSpace"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v1, "mRemoteTargetHandles[0].….targetSet.unfilteredApps"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->findClosingAppPackage([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->shouldAnimateToRemoteViewPosition(Ljava/lang/String;)Z

    move-result v14

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez v14, :cond_2e

    invoke-static {v1, v7, v0, v1}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo$default(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;ZILjava/lang/Object;)V

    :cond_2e
    if-eqz v14, :cond_3b

    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getRemoteAnimationViewInfo()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    goto :goto_54

    :cond_3b
    new-instance v0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    const-string v3, "orientationHandler"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const-string v4, "mDp"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getWindowTargetRect(Lcom/android/launcher3/touch/PagedOrientationHandler;Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    move-object v8, v0

    const/4 v9, 0x1

    if-nez v8, :cond_72

    new-array v0, v9, [Lcom/android/quickstep/util/OplusRectFSpringAnim;

    new-instance v8, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const/4 v6, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/util/OplusRectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Z)V

    aput-object v8, v0, v7

    return-object v0

    :cond_72
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v13

    const-string v0, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v11

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v1

    iget-object v10, v1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v8}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getViewLocation()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const-string v1, "targets"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->findClosingAppPackage([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v27

    invoke-direct {v15, v10}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasClosingApps([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    invoke-static {v10}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getOpeningAppsLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v8}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getViewSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_cc

    const/4 v1, 0x0

    move-object/from16 v28, v1

    goto :goto_fc

    :cond_cc
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_d4

    const/4 v2, 0x0

    goto :goto_fa

    :cond_d4
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-nez v1, :cond_dc

    goto :goto_e3

    :cond_dc
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v8

    if-ne v8, v9, :cond_e3

    move v7, v9

    :cond_e3
    :goto_e3
    if-eqz v7, :cond_e8

    invoke-virtual {v4, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_e8
    invoke-virtual {v4, v2, v9}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const v1, 0x7fffffff

    invoke-virtual {v4, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_fa
    move-object/from16 v28, v2

    :goto_fc
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {v15, v10}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v9

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    move-object/from16 v16, v10

    const-string v10, "QuickStep"

    move-object/from16 v17, v8

    const-string v8, "OplusBaseSwipeUpHandler"

    if-eqz v2, :cond_16b

    const-string v2, "createWindowAnimationToBracketSpace: isStarted = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v18, v13

    iget-object v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-nez v13, :cond_139

    goto :goto_13f

    :cond_139
    invoke-virtual {v13}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v13

    if-nez v13, :cond_141

    :goto_13f
    const/4 v13, 0x0

    goto :goto_149

    :cond_141
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    :goto_149
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", currentAnimateRectF = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", startProgress = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", backToCardPosition="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v14, v10, v8}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_16d

    :cond_16b
    move-object/from16 v18, v13

    :goto_16d
    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e0

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-nez v0, :cond_17f

    goto :goto_18f

    :cond_17f
    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_186

    goto :goto_18f

    :cond_186
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18f

    const/4 v0, 0x1

    goto :goto_190

    :cond_18f
    :goto_18f
    const/4 v0, 0x0

    :goto_190
    if-eqz v0, :cond_19f

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1d4

    :cond_19f
    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez v0, :cond_1a4

    goto :goto_1bb

    :cond_1a4
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-nez v0, :cond_1ab

    goto :goto_1bb

    :cond_1ab
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_1b2

    goto :goto_1bb

    :cond_1b2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1bb

    const/4 v0, 0x1

    goto :goto_1bc

    :cond_1bb
    :goto_1bb
    const/4 v0, 0x0

    :goto_1bc
    if-eqz v0, :cond_1d4

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez v0, :cond_1c3

    goto :goto_1d4

    :cond_1c3
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-nez v0, :cond_1ca

    goto :goto_1d4

    :cond_1ca
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_1d1

    goto :goto_1d4

    :cond_1d1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1d4
    :goto_1d4
    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v20, v14

    goto/16 :goto_2f2

    :cond_1e0
    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v13, 0x0

    aget-object v2, v2, v13

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v2

    if-nez v2, :cond_1ec

    goto :goto_1fa

    :cond_1ec
    invoke-virtual {v2}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    if-nez v2, :cond_1f3

    goto :goto_1fa

    :cond_1f3
    iget v13, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float v13, v6, v13

    invoke-virtual {v2, v13}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :goto_1fa
    iget-object v2, v0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v13

    if-eqz v13, :cond_238

    const-string v13, "createWindowAnimationToBracketSpace: mRecentsViewScrollLinked = "

    invoke-static {v13}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v20, v14

    iget-boolean v14, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", defferExecuteAnimation = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", currentScroll = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", shouldUseCurrentScrollOffset = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", currentScrollOffset = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-static {v13, v14, v8}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    goto :goto_23a

    :cond_238
    move/from16 v20, v14

    :goto_23a
    iget-boolean v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v13, :cond_247

    iget-boolean v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    if-eqz v13, :cond_247

    iget v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v0, v13}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_247
    iget-boolean v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v13, :cond_257

    iget-boolean v13, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v13, :cond_257

    iget-object v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v13, :cond_257

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_257
    iget-object v13, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v14, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v14}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v13

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v14

    if-eqz v14, :cond_26e

    const-string v14, "createWindowAnimationToBracketSpace: current running index is "

    invoke-static {v13, v14, v8}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_26e
    const/4 v14, -0x1

    if-eq v13, v14, :cond_2b9

    iget-object v14, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v14}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v14

    sub-int v21, v14, v13

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    if-lez v21, :cond_2b9

    move-object/from16 v21, v9

    iget-object v9, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v9, v14}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v9

    move-object/from16 v22, v10

    int-to-float v10, v9

    invoke-virtual {v0, v10}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    const/4 v10, 0x1

    iput-boolean v10, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v10

    if-eqz v10, :cond_2b4

    const-string v10, "createWindowAnimationToBracketSpace: running index is "

    move-object/from16 v23, v3

    const-string v3, ", current page is "

    move-object/from16 v24, v5

    const-string v5, ". so we should set scroll offset to "

    invoke-static {v10, v13, v3, v14, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", and force invisible recents view"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c1

    :cond_2b4
    move-object/from16 v23, v3

    move-object/from16 v24, v5

    goto :goto_2c1

    :cond_2b9
    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    :goto_2c1
    invoke-virtual {v11, v6}, Lcom/android/quickstep/util/TransformParams;->setProgress(F)Lcom/android/quickstep/util/TransformParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v12, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-boolean v1, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v1, :cond_2f2

    iget-boolean v1, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v1, :cond_2f2

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_2f2
    :goto_2f2
    new-instance v14, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const/4 v6, 0x1

    move-object v1, v14

    move-object v2, v12

    move-object/from16 v29, v23

    move-object/from16 v3, v24

    move-object v9, v4

    move-object v4, v0

    move-object/from16 v0, v24

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/util/OplusRectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Z)V

    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    new-instance v25, Landroid/graphics/Matrix;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Matrix;-><init>()V

    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    new-instance v30, Landroid/graphics/RectF;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/RectF;-><init>()V

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/4 v1, 0x3

    new-array v4, v1, [F

    fill-array-data v4, :array_4fa

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v4, v2

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-nez v1, :cond_34d

    goto :goto_353

    :cond_34d
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_355

    :goto_353
    const/4 v1, 0x0

    goto :goto_360

    :cond_355
    const v2, 0x7f07019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_360
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v4, v2

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x2

    aput v1, v4, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    aget v3, v4, v2

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_38b

    const-string v1, "createWindowAnimationToBracketSpace: icon width greater than the float icon width"

    move-object/from16 v3, v22

    invoke-static {v3, v8, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    aput v1, v4, v2

    goto :goto_38d

    :cond_38b
    move-object/from16 v3, v22

    :goto_38d
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-eqz v1, :cond_395

    const/4 v2, 0x0

    goto :goto_3ae

    :cond_395
    iget-object v2, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v5, "mContext"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object v6, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v2

    int-to-float v2, v2

    :goto_3ae
    move v10, v2

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v2, v12}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    iput-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v2, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v2, :cond_3c1

    goto :goto_3e1

    :cond_3c1
    sget-object v5, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v5}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v2}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iget-object v6, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v2, v5, v6}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->getPagedOrientationHandler(IILcom/android/launcher3/touch/PagedOrientationHandler;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    iput-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_3e1
    if-eqz v1, :cond_3e8

    const/4 v1, 0x0

    move v5, v1

    move-object/from16 v6, v21

    goto :goto_3f9

    :cond_3e8
    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/touch/PagedOrientationHandler;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v5, 0x1

    aget v5, v4, v5

    move-object/from16 v6, v21

    invoke-interface {v1, v6, v2, v5}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v1

    move v5, v1

    :goto_3f9
    const v21, 0x3f666666  # 0.9f

    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_413

    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_411

    goto :goto_413

    :cond_411
    const/4 v1, 0x0

    goto :goto_414

    :cond_413
    :goto_413
    const/4 v1, 0x1

    :goto_414
    move v2, v1

    const/16 v32, 0x0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_487

    const-string v1, "createWindowAnimationToBracketSpace: prepare\ndefferExecuteAnimation: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v22, v11

    iget-boolean v11, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "\ntargetRect: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "\ntargetRect-center("

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")\nstartRect: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\ncloseWindowRect: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\niconRadius: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v0, v4, v0

    const-string v11, "\nwinRadius: "

    move-object/from16 p1, v6

    const-string v6, "\niconSize: "

    invoke-static {v1, v0, v11, v10, v6}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const/4 v0, 0x0

    aget v6, v4, v0

    const-string v11, "\nprogressWindowRadius: "

    const-string v0, "\nisLandscape: "

    invoke-static {v1, v6, v11, v5, v0}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-static {v1, v2, v3, v8}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    const/16 v33, 0x0

    goto :goto_48e

    :cond_487
    move-object/from16 p1, v6

    move-object/from16 v22, v11

    const/4 v0, 0x0

    move/from16 v33, v0

    :goto_48e
    new-instance v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToBracketSpace$2;

    move-object v0, v11

    const-wide/16 v34, 0x8

    move-object/from16 v1, p0

    move/from16 v36, v2

    move-object v2, v14

    move-object/from16 v3, v18

    move/from16 v37, v5

    move-object v5, v7

    move-object/from16 v38, p1

    move-object/from16 v6, v17

    move-object/from16 v7, v28

    move-object/from16 v8, v16

    move-object/from16 v16, v38

    move/from16 v17, v10

    move-object/from16 v10, v16

    move-object/from16 v39, v11

    move-object v11, v13

    move-object/from16 v38, v12

    move/from16 v12, v37

    move-object/from16 v37, v18

    move/from16 v13, v21

    move-object/from16 v41, v14

    move/from16 v40, v20

    move-object/from16 v14, v23

    move/from16 v15, v31

    move/from16 v16, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v38

    move-object/from16 v20, v30

    move-object/from16 v21, v22

    move-object/from16 v22, v25

    move/from16 v23, v36

    move-object/from16 v24, v26

    move/from16 v25, v32

    move-object/from16 v26, p2

    invoke-direct/range {v0 .. v26}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToBracketSpace$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/launcher3/anim/AnimatorPlaybackController;[FLandroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/SurfaceControl;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/quickstep/util/TransformParams;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;ZLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)V

    move-object/from16 v0, v39

    move-object/from16 v8, v41

    invoke-virtual {v8, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    new-instance v9, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToBracketSpace$3;

    move-object v0, v9

    move-object/from16 v1, v27

    move/from16 v2, v40

    move-object/from16 v3, v29

    move-object/from16 v4, p0

    move-object/from16 v5, v37

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToBracketSpace$3;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Landroid/view/SurfaceControl;)V

    invoke-virtual {v8, v9}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static/range {v34 .. v35}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/quickstep/util/OplusRectFSpringAnim;

    aput-object v8, v0, v33

    return-object v0

    :array_4fa
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final createWindowAnimationToHome$lambda-30(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "$alreadyStartForegroundAnim"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_c

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final createWindowAnimationToHome$lambda-31(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "$getIconImmediately"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onTasksAppeared$lambda-2$lambda-1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private final deferStartAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 19

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v10, Lcom/oplus/quickstep/gesture/d;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/oplus/quickstep/gesture/d;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v10}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private static final deferStartAnimation$lambda-20(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;J)V
    .registers 22

    const-string v0, "this$0"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$velocityPxPerMs"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v11, Lcom/oplus/quickstep/gesture/g;

    const/4 v10, 0x3

    move-object v1, v11

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/oplus/quickstep/gesture/g;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;I)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final deferStartAnimation$lambda-20$lambda-19(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$velocityPxPerMs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic e0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgress$lambda-24(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic f0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onWindowAnimationEnd$lambda-43(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private static final finishCurrentTransitionToHome$lambda-47(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private static final finishCurrentTransitionToHome$lambda-48(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private static final finishCurrentTransitionToHome$lambda-49(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_CURRENT_TASK_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p0, Lcom/android/launcher3/BaseDraggingActivity;

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    if-nez p0, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->launchOnePuttPermissionDialog(Landroid/content/Context;)V

    goto :goto_28

    :cond_25
    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->showHighTemperatureToast(Landroid/content/Context;)Z

    :goto_28
    return-void
.end method

.method public static synthetic g0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->sendIconSurfaceToAssistantScreen$lambda-69(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private final getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;
    .registers 7

    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    array-length p0, p1

    const/4 v1, 0x0

    :cond_10
    if-ge v1, p0, :cond_4c

    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getClosingSourceWinBounds: x = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", y = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    const-string v1, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {p0, p1, v1, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_4c
    return-object v0
.end method

.method private final getEndTargetStateNumber(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object p0, p1, Lcom/android/quickstep/GestureState$GestureEndTarget;->protoEndTarget:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->getNumber()I

    move-result p0

    if-nez p2, :cond_10

    const/4 p1, 0x1

    if-ne p0, p1, :cond_10

    const/4 p0, 0x5

    :cond_10
    return p0
.end method

.method private final getSystemConfiguration()Landroid/content/res/Configuration;
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-nez v1, :cond_10

    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-string v0, "getConfiguration()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_10
    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getLastGestureConfig()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setLastGestureConfig(Landroid/content/res/Configuration;)V

    const-string p0, "config"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_28
    return-object v0
.end method

.method public static synthetic h0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal$lambda-25(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final hasClosingApps([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 6

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :cond_3
    if-ge v1, p0, :cond_f

    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iget v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    return v3

    :cond_f
    return v0
.end method

.method public static synthetic i0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateThumbnail$lambda-51(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private final inSplitScreenMode()Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v1, :cond_17

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInSplitScreenMode()Z

    move-result p0

    return p0

    :cond_17
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1f

    :cond_1d
    :goto_1d
    move v0, v1

    goto :goto_2b

    :cond_1f
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    if-nez v0, :cond_26

    goto :goto_1d

    :cond_26
    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-ne v0, v2, :cond_1d

    move v0, v2

    :goto_2b
    if-eqz v0, :cond_31

    invoke-direct {p0, v2, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateGestureState(IZ)V

    return v2

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    const/4 v3, 0x0

    if-nez v0, :cond_38

    move-object v0, v3

    goto :goto_3c

    :cond_38
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    :goto_3c
    instance-of v4, v0, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_43

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_44

    :cond_43
    move-object v0, v3

    :goto_44
    if-nez v0, :cond_47

    goto :goto_4f

    :cond_47
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_4f
    if-nez v3, :cond_5a

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v0

    goto :goto_5e

    :cond_5a
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_5e
    invoke-direct {p0, v2, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateGestureState(IZ)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_61} :catch_62

    return v0

    :catch_62
    move-exception p0

    const-string v0, "inSplitScreenMode failed to get dock side e = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static final initTransitionEndpoints$lambda-10(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private final initTriggerPanelTransition()V
    .registers 13

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "initTriggerPanelTransition: triggerPanel = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transitionFromMenuKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    const-string v2, "RapidReaction"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_35

    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v0, :cond_35

    return-void

    :cond_35
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    if-eqz v0, :cond_c0

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v1, :cond_3f

    goto/16 :goto_c0

    :cond_3f
    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedOnePutt:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    if-eqz v1, :cond_4a

    move v1, v2

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x1

    :goto_4b
    iget-boolean v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    if-eqz v3, :cond_52

    sget-object v3, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    goto :goto_54

    :cond_52
    sget-object v3, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->ONE_PUTT:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    :goto_54
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->refreshRotationIfNeed()V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->updateRotationIfAppRotationChange(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$initTriggerPanelTransition$1;

    invoke-direct {v4, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$initTriggerPanelTransition$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1, v3}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->initAnimation(Lkotlin/jvm/functions/Function4;ILcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;)V

    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    sget-object v8, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;->TRIGGER_PANEL_ENTER:Landroid/util/FloatProperty;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000  # 1.0f

    sget-object v11, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/oplus/quickstep/gesture/b;

    invoke-direct {v1, p0, v5}, Lcom/oplus/quickstep/gesture/b;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateTriggerPanelTransitionProgress()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    new-instance v2, Lcom/oplus/quickstep/gesture/f;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    :cond_c0
    :goto_c0
    return-void
.end method

.method private static final initTriggerPanelTransition$lambda-57(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private static final initTriggerPanelTransition$lambda-58(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resetTriggerPanel()V

    return-void
.end method

.method private final isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 8

    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_13

    :cond_12
    move-object v0, v3

    :goto_13
    const/4 v2, 0x1

    if-nez v0, :cond_18

    :cond_16
    move v0, v1

    goto :goto_1f

    :cond_18
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistScreenConnected()Z

    move-result v0

    if-ne v0, v2, :cond_16

    move v0, v2

    :goto_1f
    if-nez v0, :cond_22

    return v1

    :cond_22
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_30

    move-object p0, v3

    goto :goto_32

    :cond_30
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    :goto_32
    if-nez p0, :cond_36

    :goto_34
    move-object v0, v3

    goto :goto_41

    :cond_36
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3d

    goto :goto_34

    :cond_3d
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_41
    if-nez v0, :cond_4b

    if-nez p0, :cond_46

    goto :goto_4c

    :cond_46
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    goto :goto_4c

    :cond_4b
    move-object v3, v0

    :goto_4c
    array-length p0, p1

    move v0, v1

    :cond_4e
    if-ge v0, p0, :cond_65

    aget-object v4, p1, v0

    add-int/lit8 v0, v0, 0x1

    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v5, :cond_4e

    iget-boolean v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startFromAssistScreen:Z

    if-eqz v5, :cond_4e

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->launchPkg:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    return v2

    :cond_65
    return v1
.end method

.method private final isInterruptRectEmpty()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    goto :goto_18

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_18

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getInterruptRectF()Landroid/graphics/RectF;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    :goto_18
    return v0
.end method

.method private final isInvalidRectF(Landroid/graphics/RectF;)Z
    .registers 2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_23

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_23

    iget p0, p1, Landroid/graphics/RectF;->right:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_23

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private final isUpInGoHomeRegion(Landroid/graphics/PointF;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_e

    :cond_4
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mGoHomeRegion:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    :goto_e
    return p0
.end method

.method public static synthetic j0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->screenshotGroupTask$lambda-72(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private final jumpToAppIconPageIfNeeded(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "jumpToAppIconPageIfNeeded()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    if-nez v0, :cond_f

    goto/16 :goto_89

    :cond_f
    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-nez v0, :cond_17

    goto/16 :goto_89

    :cond_17
    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    goto/16 :goto_89

    :cond_1f
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_26

    move-object v1, v2

    goto :goto_2a

    :cond_26
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :goto_2a
    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3d

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_3d

    :cond_3b
    move v3, v4

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v3, v5

    :goto_3e
    if-nez v3, :cond_4f

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4d

    :cond_4c
    move v4, v5

    :cond_4d
    if-eqz v4, :cond_59

    :cond_4f
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_59

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_59

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    :cond_59
    if-nez v1, :cond_5c

    goto :goto_89

    :cond_5c
    const-wide/16 v3, 0x8

    const-string v5, "OplusWorkspace#findAppIconAndChangePageIfNeeded"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v5, p0, Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_6c

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/Launcher;

    :cond_6c
    if-nez v2, :cond_6f

    goto :goto_86

    :cond_6f
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    if-nez v5, :cond_76

    goto :goto_86

    :cond_76
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget v9, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/OplusWorkspace;->findAppIconAndChangePageIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/Boolean;)V

    :goto_86
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :goto_89
    return-void
.end method

.method public static synthetic k0(FF)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgressInternal$lambda-26(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic l0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onLauncherStart$lambda-7(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic m0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initTransitionEndpoints$lambda-10(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F

    move-result p0

    return p0
.end method

.method public static synthetic n0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onRecentsAnimationStart$lambda-8(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private final needAnimateToCurrent()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    goto :goto_11

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->isNeedAnimateToCurrent()Z

    move-result v0

    :goto_11
    return v0
.end method

.method private final notifyAssistantScreenRecentsAnimationFinished()V
    .registers 7

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "notifyAssistantScreenRecentsAnimationFinished()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_16

    :goto_14
    move-object v1, v3

    goto :goto_32

    :cond_16
    aget-object v1, v1, v2

    if-nez v1, :cond_1b

    goto :goto_14

    :cond_1b
    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_14

    :cond_22
    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v1

    if-nez v1, :cond_29

    goto :goto_14

    :cond_29
    iget-object v1, v1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez v1, :cond_2e

    goto :goto_14

    :cond_2e
    invoke-static {v1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getIconLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v1

    :goto_32
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_3e

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_40

    :cond_3e
    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_40
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v4, :cond_47

    const/4 v2, 0x1

    :cond_47
    invoke-direct {p0, v1, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getEndTargetStateNumber(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)I

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v5, "viewLeash"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "endTarget"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v5, v4, Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_65

    check-cast v4, Lcom/android/launcher3/Launcher;

    goto :goto_66

    :cond_65
    move-object v4, v3

    :goto_66
    if-nez v4, :cond_6a

    move-object v4, v3

    goto :goto_6e

    :cond_6a
    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v4

    :goto_6e
    const/4 v5, 0x5

    if-ne v1, v5, :cond_94

    instance-of v1, v4, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_78

    check-cast v4, Lcom/android/launcher/LauncherCallbacksImp;

    goto :goto_79

    :cond_78
    move-object v4, v3

    :goto_79
    if-nez v4, :cond_7c

    goto :goto_84

    :cond_7c
    invoke-virtual {v4, v2}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationFinished(Landroid/os/Bundle;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_84
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->removeViewLeash(Landroid/view/SurfaceControl;)V

    goto :goto_9e

    :cond_94
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher/c;

    invoke-direct {v3, v4, v2, p0, v0}, Lcom/android/launcher/c;-><init>(Lcom/android/systemui/plugins/shared/LauncherOverlayManager;Landroid/os/Bundle;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method private static final notifyAssistantScreenRecentsAnimationFinished$lambda-67(Lcom/android/systemui/plugins/shared/LauncherOverlayManager;Landroid/os/Bundle;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 6

    const-string v0, "$bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$leash"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher/LauncherCallbacksImp;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    check-cast p0, Lcom/android/launcher/LauncherCallbacksImp;

    goto :goto_18

    :cond_17
    move-object p0, v1

    :goto_18
    if-nez p0, :cond_1b

    goto :goto_23

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationFinished(Landroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_23
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {p1, p2, p3}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_35
    return-void
.end method

.method private static final notifyAssistantScreenRecentsAnimationFinished$lambda-67$lambda-66(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$leash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/view/SurfaceControl;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->removeViewLeash(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private final notifyCapturedTimeout()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "screenshot captured timeout, so set the state immediately"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method public static synthetic o0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgress$lambda-21(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private static final onAnimatorPlaybackControllerCreated$lambda-12(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private static final onGestureCancelled$lambda-17(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lcom/oplus/app/OplusHansFreezeManager;->getInstance()Lcom/oplus/app/OplusHansFreezeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v1, "OLauncher-onGestureCancelled"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/app/OplusHansFreezeManager;->exitFastFreezer(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    goto :goto_1d

    :catch_11
    move-exception p0

    const-string v0, "exitFastFreezer cancel error: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusBaseSwipeUpHandler"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method private static final onGestureEnded$lambda-18(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lcom/oplus/app/OplusHansFreezeManager;->getInstance()Lcom/oplus/app/OplusHansFreezeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v1, "OLauncher-onGestureEnded"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/app/OplusHansFreezeManager;->exitFastFreezer(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    goto :goto_1d

    :catch_11
    move-exception p0

    const-string v0, "exitFastFreezer end error: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusBaseSwipeUpHandler"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method private static final onGestureStarted$lambda-16(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->hideZoomWindow(I)V

    :try_start_e
    invoke-static {}, Lcom/oplus/app/OplusHansFreezeManager;->getInstance()Lcom/oplus/app/OplusHansFreezeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-wide/16 v5, 0x5dc

    const-string v7, "OLauncher-onGestureStarted"

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/app/OplusHansFreezeManager;->enterFastFreezer(Landroid/content/Context;[IJLjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_29

    :catch_1d
    move-exception p0

    const-string v0, "enterFastFreezer error: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusBaseSwipeUpHandler"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method private static final onLauncherStart$lambda-7(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    new-instance v3, Lcom/android/quickstep/fallback/a;

    invoke-direct {v3, p0}, Lcom/android/quickstep/fallback/a;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/BaseActivityInterface;->prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_27

    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState(Z)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedOnePutt:Z

    if-eqz v0, :cond_36

    :cond_33
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initTriggerPanelTransition()V

    :cond_36
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mAnimationFactory:Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    :cond_49
    return-void
.end method

.method private static final onLauncherStart$lambda-7$lambda-6(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onAnimatorPlaybackControllerCreated(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void
.end method

.method private static final onRecentsAnimationStart$lambda-8(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->needAnimateToCurrent()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInterruptRectEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    :goto_1b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getInterruptRectF()Landroid/graphics/RectF;

    move-result-object v0

    const-string v1, "appTransitionManager?.in…uptParam!!.interruptRectF"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimateToCurrent(Landroid/graphics/RectF;)Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez p0, :cond_39

    goto :goto_4a

    :cond_39
    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object p0

    if-nez p0, :cond_40

    goto :goto_4a

    :cond_40
    invoke-virtual {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object p0

    if-nez p0, :cond_47

    goto :goto_4a

    :cond_47
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_4a
    return-void

    :cond_4b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$1$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onRecentsAnimationStart$1$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6c

    :cond_67
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    :goto_6c
    return-void
.end method

.method private final onSelectProgressChange(FFFZ)V
    .registers 5

    return-void
.end method

.method private static final onTasksAppeared$lambda-2(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/oplus/quickstep/gesture/f;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onTasksAppeared$lambda-2$lambda-1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onTaskAppeared: onLaunchTaskSuccess"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->onLaunchTaskSuccess()V

    return-void
.end method

.method private final onViewScroll(Lcom/android/quickstep/views/OplusRecentsViewImpl;FII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;FII)V"
        }
    .end annotation

    int-to-float v0, p3

    sub-int/2addr p4, p3

    int-to-float p3, p4

    mul-float/2addr p2, p3

    add-float/2addr p2, v0

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowUpdateCurrentScroll(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    sget-object p3, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    float-to-int p2, p2

    const/4 p4, 0x0

    invoke-interface {p0, p1, p3, p2, p4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;II)V

    invoke-virtual {p1, p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowUpdateCurrentScroll(Z)V

    return-void
.end method

.method private static final onWindowAnimationEnd$lambda-43(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_13

    goto :goto_1c

    :cond_13
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_18

    goto :goto_1c

    :cond_18
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    const-string p0, "com.android.launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    const/4 p0, 0x0

    const-string v1, "lchr"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/FolerUtils;->freezeFrameUseFrtc(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_2a
    return-void
.end method

.method private static final onWindowAnimationStart$lambda-41(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.launcher.action.GESTURE_TARGET_HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v2, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_2a

    goto :goto_33

    :cond_2a
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_2f

    goto :goto_33

    :cond_2f
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_33
    const-string p0, "com.android.launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    const/4 p0, 0x1

    const-string v1, "lchr"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/FolerUtils;->freezeFrameUseFrtc(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_41
    return-void
.end method

.method public static synthetic p0(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToHome$lambda-30(Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;J)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->deferStartAnimation$lambda-20(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;J)V

    return-void
.end method

.method public static synthetic r0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setupLauncherUiAfterSwipeUpToRecentsAnimation$lambda-50(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private final removeViewLeash(Landroid/view/SurfaceControl;)V
    .registers 4

    const-string p0, "QuickStep"

    const-string v0, "OplusBaseSwipeUpHandler"

    const-string v1, "remove viewLeash by self"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_c

    return-void

    :cond_c
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private final resetTriggerPanel()V
    .registers 11

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "resetTriggerPanel()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    if-nez v0, :cond_e

    goto :goto_4a

    :cond_e
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const-string v3, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    if-eqz v2, :cond_1e

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeCurrentScrollChangeListener()V

    :cond_1e
    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    if-eqz v1, :cond_2b

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createRecentsAnimation(ZZIJ)V

    :cond_2b
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v4, 0x0

    if-eqz v2, :cond_44

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowScrollByTouch(Z)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUseRealScroll(Z)V

    :cond_44
    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->notifyWindowAnimationStateChange(Z)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->reset()V

    :goto_4a
    return-void
.end method

.method private final resolveHomeAnimEnd(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .registers 5

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    goto :goto_18

    :cond_17
    move p1, v2

    :goto_18
    if-eqz p1, :cond_2b

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/c0;->f:Lcom/android/launcher/c0;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->addPageTranstionEndCallback(Ljava/lang/Runnable;)V

    goto :goto_35

    :cond_2b
    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenWindowAnimate(ZLjava/lang/String;Z)V

    :goto_35
    return-void
.end method

.method private static final resolveHomeAnimEnd$lambda-73()V
    .registers 3

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenWindowAnimate(ZLjava/lang/String;Z)V

    return-void
.end method

.method private static final resumeLastTask$lambda-13(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/FingerPrintUtils;->INSTANCE:Lcom/oplus/quickstep/utils/FingerPrintUtils;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->showFingerPrintIcon(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->capturedTimeoutRunnable$lambda-0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method private static final screenshotGroupTask$lambda-72(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateThumbnail(IZ)Z

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenshotGroupTask(), update="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", taskIds=["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], taskSnapshot null ? "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_39

    move p1, v0

    goto :goto_3a

    :cond_39
    move p1, v3

    :goto_3a
    const-string p2, "QuickStep"

    const-string v4, "OplusBaseSwipeUpHandler"

    invoke-static {v2, p1, p2, v4}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_41
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p1

    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq p1, p2, :cond_4f

    sget-object p2, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p1, p2, :cond_50

    :cond_4f
    move v3, v0

    :cond_50
    if-eqz v3, :cond_59

    if-eqz p4, :cond_59

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, p3, p4, v0}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;

    :cond_59
    if-nez v1, :cond_5e

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->setScreenshotCapturedState()V

    :cond_5e
    return-void
.end method

.method private final sendIconSurfaceToAssistantScreen()V
    .registers 5

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "sendIconSurfaceToAssistantScreen()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    :goto_e
    move-object v0, v1

    goto :goto_2d

    :cond_10
    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_16

    goto :goto_e

    :cond_16
    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_e

    :cond_1d
    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_e

    :cond_24
    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez v0, :cond_29

    goto :goto_e

    :cond_29
    invoke-static {v0}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getIconLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_2d
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_36

    :cond_35
    move-object v0, v1

    :cond_36
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "viewLeash"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v3, v0, Lcom/android/launcher3/Launcher;

    if-eqz v3, :cond_49

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_4a

    :cond_49
    move-object v0, v1

    :goto_4a
    if-nez v0, :cond_4e

    move-object v0, v1

    goto :goto_52

    :cond_4e
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    :goto_52
    instance-of v3, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v3, :cond_59

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/LauncherCallbacksImp;

    :cond_59
    if-nez v1, :cond_5c

    goto :goto_5f

    :cond_5c
    invoke-virtual {v1, v2}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V

    :goto_5f
    sget-object v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;

    new-instance v1, Lcom/oplus/quickstep/gesture/f;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->setDeferredCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final sendIconSurfaceToAssistantScreen$lambda-69(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endLauncherTransitionController()V

    return-void
.end method

.method private final setStatusBarHiddenIfNeed(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget v0, v0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->displayRotation:I

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isStatusBarHidden:Z

    if-nez v1, :cond_32

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-nez v1, :cond_32

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v2, 0x3

    if-eq v0, v2, :cond_32

    const v0, 0x3f733333  # 0.95f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1a

    goto :goto_32

    :cond_1a
    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isStatusBarHidden:Z

    sget-object p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "setStatusBarHiddenIfNeed: progress = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RapidReaction"

    const-string v0, "OplusBaseSwipeUpHandler"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private static final setupLauncherUiAfterSwipeUpToRecentsAnimation$lambda-50(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    :goto_d
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    return-void
.end method

.method private final startLauncherTransitionAnimation(FFJLandroid/view/animation/Interpolator;)V
    .registers 9

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "startLauncherTransitionAnimation: currentProgress = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mDragLengthFactor = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RapidReaction"

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    iget v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    mul-float/2addr p1, v0

    invoke-static {p5, p1, p2}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object p5

    const-string v0, "mapToProgress(\n         …ator, startProgress, end)"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    cmpg-float p1, p1, p2

    const/4 v0, 0x1

    if-nez p1, :cond_40

    move p1, v0

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    :goto_41
    const-wide/16 v1, 0x0

    if-nez p1, :cond_54

    cmp-long p1, p3, v1

    if-gtz p1, :cond_4a

    goto :goto_54

    :cond_4a
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_62

    :cond_54
    :goto_54
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    new-instance p5, Lcom/oplus/quickstep/gesture/a;

    invoke-direct {p5, p2, v0}, Lcom/oplus/quickstep/gesture/a;-><init>(FI)V

    invoke-virtual {p1, p5}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_62
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasLauncherTransitionControllerStarted:Z

    return-void
.end method

.method private static final startLauncherTransitionAnimation$lambda-62(FF)F
    .registers 2

    return p0
.end method

.method private final superOnRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 9

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    iget-object v1, p2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    const-string v2, "startRecentsAnimationCallback"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/logging/EventLogArray;->addLog(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Landroid/content/Context;Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v0, 0x0

    if-nez p1, :cond_7b

    iget-object p1, p2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string v1, "targets.apps"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    const/4 v1, 0x1

    if-nez p1, :cond_2a

    move p1, v1

    goto :goto_2b

    :cond_2a
    move p1, v0

    :goto_2b
    xor-int/2addr p1, v1

    if-eqz p1, :cond_33

    iget-object p1, p2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object p1, p1, v0

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v3, p2, Lcom/android/quickstep/RecentsAnimationTargets;->minimizedHomeBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_5e

    if-eqz p1, :cond_5e

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v4, v3, p1}, Lcom/android/quickstep/BaseActivityInterface;->getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/launcher3/util/WindowBounds;

    iget-object v5, p2, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    invoke-direct {v4, p1, v5}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    goto :goto_64

    :cond_5e
    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    :goto_64
    iget-object p2, p2, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    const-string p2, "dp"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v1, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setMultiWindowMode(Z)V

    :cond_7b
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->flushOnRecentsAnimationAndLauncherBound()V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_APP_CONTROLLER_RECEIVED:I

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    or-int/2addr v1, p2

    new-instance v2, Lcom/oplus/quickstep/gesture/f;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p1, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mPassedOverviewThreshold:Z

    return-void
.end method

.method private static final superOnRecentsAnimationStart$lambda-9(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->startInterceptingTouchesForGesture()V

    return-void
.end method

.method public static synthetic t0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->superOnRecentsAnimationStart$lambda-9(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic u0(Lcom/android/systemui/plugins/shared/LauncherOverlayManager;Landroid/os/Bundle;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyAssistantScreenRecentsAnimationFinished$lambda-67(Lcom/android/systemui/plugins/shared/LauncherOverlayManager;Landroid/os/Bundle;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method private final updateGestureState(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v0, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateGestureState: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    if-eqz p1, :cond_3b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_33

    goto :goto_42

    :cond_33
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setInSplitScreenMode(Z)V

    goto :goto_42

    :cond_3b
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setSupportFloatingWindow(Z)V

    :goto_42
    return-void
.end method

.method private final updateScrimIfNeed(ZZZ)V
    .registers 10

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelScrimFadeAnimIfNeed()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_d6

    const-string v1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_19

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v1

    goto :goto_1f

    :cond_19
    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v1

    :goto_1f
    if-eqz p1, :cond_24

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_26

    :cond_24
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_26
    if-eqz p2, :cond_8b

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p3, :cond_53

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p3

    const/4 v5, 0x2

    new-array v4, v4, [F

    aput v1, v4, v3

    invoke-virtual {p3, v5, v4}, Lcom/android/launcher3/statemanager/StateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->scrimFadeAnim:Landroid/animation/Animator;

    if-nez p3, :cond_3e

    goto :goto_41

    :cond_3e
    invoke-virtual {p3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_41
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->scrimFadeAnim:Landroid/animation/Animator;

    if-nez p0, :cond_46

    goto :goto_9c

    :cond_46
    const-wide/16 v2, 0x1c2

    invoke-virtual {p0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p0

    if-nez p0, :cond_4f

    goto :goto_9c

    :cond_4f
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_9c

    :cond_53
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/Scrim;

    move-result-object p3

    sget-object v5, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    new-array v4, v4, [F

    aput v1, v4, v3

    invoke-static {p3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->scrimFadeAnim:Landroid/animation/Animator;

    if-nez p3, :cond_6a

    goto :goto_6d

    :cond_6a
    invoke-virtual {p3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_6d
    iget-object p3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->scrimFadeAnim:Landroid/animation/Animator;

    if-nez p3, :cond_72

    goto :goto_7e

    :cond_72
    const-wide/16 v2, 0x15e

    invoke-virtual {p3, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p3

    if-nez p3, :cond_7b

    goto :goto_7e

    :cond_7b
    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    :goto_7e
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p3

    new-instance v2, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$updateScrimIfNeed$1;

    invoke-direct {v2, p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$updateScrimIfNeed$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher/Launcher;)V

    invoke-virtual {p3, v2}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    goto :goto_9c

    :cond_8b
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/Scrim;

    move-result-object p0

    sget-object p3, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p3, p0, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :goto_9c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_d6

    const-string p0, "updateScrimIfNeed: showScrim="

    const-string p3, ", scrimAnimate="

    const-string v2, ", values: "

    invoke-static {p0, p1, p3, p2, v2}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",os ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "bs: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusBaseSwipeUpHandler"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d6
    return-void
.end method

.method public static synthetic updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_b

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed(ZZZ)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateScrimIfNeed"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final updateThumbnail$lambda-51(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    return-void
.end method

.method private static final updateThumbnail$lambda-52(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)Z
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isPostDrawCanceled()Z

    move-result p0

    return p0
.end method

.method private final updateTriggerPanelTransitionProgress()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasTriggerPanelTransitionControllerStarted:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedOnePutt:Z

    if-nez v0, :cond_d

    goto :goto_34

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v1, :cond_19

    goto :goto_25

    :cond_19
    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    if-nez v2, :cond_1e

    goto :goto_25

    :cond_1e
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->updateHorizontalOffset(I)V

    :goto_25
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v1, :cond_2a

    goto :goto_2d

    :cond_2a
    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :goto_2d
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setStatusBarHiddenIfNeed(F)V

    :cond_34
    :goto_34
    return-void
.end method

.method public static synthetic v0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onGestureEnded$lambda-18(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method

.method public static synthetic w0(FF)F
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->startLauncherTransitionAnimation$lambda-62(FF)F

    move-result p0

    return p0
.end method

.method private final wrapRapidReactionAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
    .registers 2

    new-instance p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$wrapRapidReactionAnimator$1;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$wrapRapidReactionAnimator$1;-><init>(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)V

    return-object p0
.end method

.method public static synthetic x0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToProgress$lambda-24$lambda-23$lambda-22(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic y0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->deferStartAnimation$lambda-20$lambda-19(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic z0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->initTriggerPanelTransition$lambda-58(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void
.end method


# virtual methods
.method public animateToProgress(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 21

    move-object v10, p0

    move-object/from16 v7, p6

    const-string v0, "velocityPxPerMs"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne v7, v0, :cond_48

    new-instance v3, Lcom/oplus/quickstep/gesture/f;

    const/16 v4, 0xc

    invoke-direct {v3, p0, v4}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p0, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    iget-object v3, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v4, v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v4, :cond_23

    check-cast v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_24

    :cond_23
    move-object v3, v2

    :goto_24
    if-nez v3, :cond_27

    goto :goto_31

    :cond_27
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v3

    if-nez v3, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {v3, v1}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :goto_31
    iget-object v3, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v4, v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v4, :cond_3a

    check-cast v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_3b

    :cond_3a
    move-object v3, v2

    :goto_3b
    if-nez v3, :cond_3e

    goto :goto_48

    :cond_3e
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v3

    if-nez v3, :cond_45

    goto :goto_48

    :cond_45
    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeCpu()V

    :cond_48
    :goto_48
    sget-boolean v3, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    if-eqz v3, :cond_4f

    sget v3, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentProgress:F

    goto :goto_50

    :cond_4f
    move v3, p1

    :goto_50
    sget-boolean v4, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5a

    iput-boolean v5, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    sget v4, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentScrollOffset:F

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    iput v4, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    sput-boolean v1, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    iput-object v7, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_d9

    const-string v4, "animateToProgress: start = "

    const-string v6, ", end = "

    const-string v9, ", currentProgress = "

    move v11, p1

    move v12, p2

    invoke-static {v4, p1, v6, p2, v9}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", target = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mActivity: isFinishing="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v6, :cond_89

    move-object v6, v2

    goto :goto_91

    :cond_89
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_91
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", isDestroyed="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v6, :cond_9f

    move-object v6, v2

    goto :goto_a7

    :cond_9f
    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_a7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mRecentsView null ? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v6, :cond_b4

    goto :goto_b5

    :cond_b4
    move v5, v1

    :goto_b5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isPageInTransition"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v5, :cond_c2

    goto :goto_ca

    :cond_c2
    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_ca
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "QuickStep"

    const-string v5, "OplusBaseSwipeUpHandler"

    invoke-static {v4, v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_db

    :cond_d9
    move v11, p1

    move v12, p2

    :goto_db
    if-eq v7, v0, :cond_e5

    iget-boolean v0, v10, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-nez v0, :cond_e5

    invoke-super/range {p0 .. p7}, Lcom/android/quickstep/AbsSwipeUpHandler;->animateToProgress(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void

    :cond_e5
    iget-object v0, v10, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/OplusBaseTransformParams;->removeFrameCallback()V

    new-instance v11, Lcom/oplus/quickstep/gesture/g;

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, v3

    move v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/oplus/quickstep/gesture/g;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v11}, Lcom/android/quickstep/AbsSwipeUpHandler;->runOnRecentsAnimationAndLauncherBound(Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 31

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v6, p6

    const-string v0, "velocityPxPerMs"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v14, "OplusBaseSwipeUpHandler"

    const-string v15, "QuickStep"

    if-eqz v0, :cond_39

    const-string v0, "animateToProgressInternal: start = "

    const-string v1, ", end = "

    const-string v2, ", duration="

    invoke-static {v0, v8, v1, v9, v2}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v14, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    sget-object v5, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v6, v5, :cond_4c

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v13, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    goto :goto_4d

    :cond_4c
    move-object v13, v5

    :goto_4d
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeUpdateRecentsAttachedState()V

    iget-object v0, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz v0, :cond_94

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    if-nez v0, :cond_71

    :cond_68
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityRestartListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    :cond_71
    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    iget-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v2}, Lcom/android/quickstep/TaskAnimationManager;->getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/android/quickstep/BaseActivityInterface;->getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_94

    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$1;

    invoke-direct {v1, v7}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mParallelRunningAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_94
    iget-object v0, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    if-ne v0, v13, :cond_105

    iget-object v0, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_b0

    iget-object v2, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    move-object v13, v0

    goto :goto_b2

    :cond_b0
    move-object/from16 v13, v16

    :goto_b2
    if-eqz v13, :cond_b9

    iget-object v0, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    goto :goto_be

    :cond_b9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_be
    move-object v2, v0

    if-eqz v13, :cond_c7

    iget-boolean v0, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-eqz v0, :cond_c7

    move v4, v1

    goto :goto_c8

    :cond_c7
    move v4, v5

    :goto_c8
    iget-object v0, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isPipActive()Z

    move-result v0

    if-nez v0, :cond_e4

    if-eqz v13, :cond_e4

    iget-boolean v0, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->allowEnterPip:Z

    if-eqz v0, :cond_e4

    iget-object v0, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_e4

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_e4

    move v14, v1

    goto :goto_e5

    :cond_e4
    move v14, v5

    :goto_e5
    move-object/from16 v0, p0

    move-object v1, v2

    move-wide/from16 v2, p3

    move v15, v5

    move v5, v14

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/AbsSwipeUpHandler;->createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-result-object v3

    const-string v0, "homeAnimFactory"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    move-object v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToHome(FLandroid/graphics/PointF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    const/4 v0, 0x1

    move v5, v0

    move v0, v15

    goto/16 :goto_1ba

    :cond_105
    move v0, v5

    sget-object v17, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    long-to-int v2, v10

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x4

    const/16 v22, 0x0

    move/from16 v18, v2

    invoke-static/range {v17 .. v22}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf$default(Lcom/oplus/quickstep/utils/GestureBooster;IZZILjava/lang/Object;)V

    iget-object v2, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v2, v3, :cond_125

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v2}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    :cond_125
    iget-object v2, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    if-nez v2, :cond_12f

    const/4 v2, -0x1

    goto :goto_137

    :cond_12f
    sget-object v3, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_137
    if-eq v2, v1, :cond_148

    const/4 v3, 0x2

    if-eq v2, v3, :cond_145

    const/4 v3, 0x3

    if-eq v2, v3, :cond_142

    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->NONE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_14a

    :cond_142
    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_LAST_TASK:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_14a

    :cond_145
    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_NEW_TASK:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    goto :goto_14a

    :cond_148
    sget-object v2, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    :goto_14a
    iget-object v3, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v3, v8, v9}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/quickstep/views/a;

    invoke-direct {v4, v7}, Lcom/android/quickstep/views/a;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$3;

    invoke-direct {v4, v2, v7, v6}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$3;-><init>(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    new-array v2, v1, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1b9

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_1af

    const-string v3, "onPrepareGestureEndAnimation: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v14, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v7, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v4, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    :cond_1af
    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_1b9
    move v5, v1

    :goto_1ba
    iget-boolean v1, v7, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v1, :cond_1c1

    invoke-direct {v7, v5, v5, v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed(ZZZ)V

    :cond_1c1
    invoke-direct/range {p0 .. p5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->startLauncherTransitionAnimation(FFJLandroid/view/animation/Interpolator;)V

    iget-object v1, v7, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v1, :cond_1c9

    return-void

    :cond_1c9
    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$adjustedInterpolator$1;

    invoke-direct {v1, v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$animateToProgressInternal$adjustedInterpolator$1;-><init>(F)V

    cmpg-float v2, v8, v9

    if-nez v2, :cond_1d4

    move v2, v5

    goto :goto_1d5

    :cond_1d4
    move v2, v0

    :goto_1d5
    const-wide/16 v3, 0x0

    if-nez v2, :cond_1ec

    cmp-long v2, v10, v3

    if-gtz v2, :cond_1de

    goto :goto_1ec

    :cond_1de
    iget-object v0, v7, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_1e3

    goto :goto_1f9

    :cond_1e3
    new-instance v2, Lcom/android/launcher3/anim/a;

    invoke-direct {v2, v1}, Lcom/android/launcher3/anim/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1f9

    :cond_1ec
    :goto_1ec
    iget-object v1, v7, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v1, :cond_1f1

    goto :goto_1f9

    :cond_1f1
    new-instance v2, Lcom/oplus/quickstep/gesture/a;

    invoke-direct {v2, v9, v0}, Lcom/oplus/quickstep/gesture/a;-><init>(FI)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_1f9
    iget-object v0, v7, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_1fe

    goto :goto_202

    :cond_1fe
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v16

    :goto_202
    move-object/from16 v0, v16

    if-nez v0, :cond_207

    goto :goto_20e

    :cond_207
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_20e
    iget-object v0, v7, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_213

    goto :goto_216

    :cond_213
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :goto_216
    iget-object v0, v7, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanelTransitionController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_21b

    goto :goto_225

    :cond_21b
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_222

    goto :goto_225

    :cond_222
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_225
    iput-boolean v5, v7, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasTriggerPanelTransitionControllerStarted:Z

    return-void
.end method

.method public applyScrollAndTransform()V
    .registers 16

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    iget-boolean v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v3, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v2

    :goto_18
    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const-string v5, "mRemoteTargetHandles"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v4

    move v6, v2

    :cond_21
    :goto_21
    if-ge v6, v5, :cond_9c

    aget-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v8

    if-nez v8, :cond_2e

    goto :goto_3c

    :cond_2e
    iget-object v9, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v9, v9, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v10, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float/2addr v9, v10

    invoke-virtual {v8}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :goto_3c
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canUpdateScrim()Z

    move-result v8

    if-eqz v8, :cond_4d

    iput-boolean v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isWindowFirstMove:Z

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v9, p0

    invoke-static/range {v9 .. v14}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    :cond_4d
    if-eqz v0, :cond_21

    invoke-virtual {v7}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v8

    if-eqz v3, :cond_66

    iget-object v9, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    invoke-virtual {v7}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/quickstep/util/OplusBaseTransformParams;->setCurrentScrollOffset(F)V

    :cond_66
    iget-object v9, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-nez v9, :cond_6c

    :cond_6a
    :goto_6a
    move v9, v2

    goto :goto_7a

    :cond_6c
    invoke-virtual {v9}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v9

    if-nez v9, :cond_73

    goto :goto_6a

    :cond_73
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v9

    if-ne v9, v1, :cond_6a

    move v9, v1

    :goto_7a
    if-eqz v9, :cond_89

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getCurrentApplyRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->updateTargetRect(Landroid/graphics/RectF;)V

    goto :goto_21

    :cond_89
    invoke-virtual {v7}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v9

    iget-object v10, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v10, v10, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v9, v10}, Lcom/android/quickstep/util/OplusBaseTransformParams;->setCurrentProgress(F)V

    invoke-virtual {v7}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    goto :goto_21

    :cond_9c
    return-void
.end method

.method public calculateEndTarget(Landroid/graphics/PointF;FZZ)Lcom/android/quickstep/GestureState$GestureEndTarget;
    .registers 12

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v0, :cond_7

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_7
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    if-eqz v0, :cond_e

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0

    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_15

    goto :goto_66

    :cond_15
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v0

    if-gez v0, :cond_55

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_55

    new-instance v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v5, v3}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isHiddenPkg(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_55

    move v0, v2

    :cond_55
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v3

    if-eqz v3, :cond_68

    if-ltz v0, :cond_66

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v3

    if-eq v3, v0, :cond_66

    goto :goto_68

    :cond_66
    :goto_66
    move v0, v2

    goto :goto_69

    :cond_68
    :goto_68
    move v0, v1

    :goto_69
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    const v4, 0x3e0f5c29  # 0.14f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_76

    move v3, v1

    goto :goto_77

    :cond_76
    move v3, v2

    :goto_77
    if-nez p3, :cond_b8

    if-eqz p4, :cond_7f

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_105

    :cond_7f
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsMotionPaused:Z

    if-eqz v1, :cond_8f

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_105

    :cond_8f
    if-eqz v0, :cond_9d

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpInGoHomeRegion(Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_9d

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_105

    :cond_9d
    if-nez v3, :cond_a3

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_105

    :cond_a3
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto/16 :goto_105

    :cond_a7
    if-eqz v3, :cond_b0

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    if-eqz v1, :cond_b0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_105

    :cond_b0
    if-eqz v0, :cond_b5

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_105

    :cond_b5
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_105

    :cond_b8
    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_bf

    move v4, v1

    goto :goto_c0

    :cond_bf
    move v4, v2

    :goto_c0
    if-eqz v0, :cond_d4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d4

    goto :goto_d5

    :cond_d4
    move v1, v2

    :goto_d5
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v2

    if-eqz v2, :cond_f2

    if-eqz v4, :cond_f2

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isUpInGoHomeRegion(Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_ea

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_105

    :cond_ea
    if-eqz v1, :cond_ef

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_105

    :cond_ef
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_105

    :cond_f2
    if-eqz v4, :cond_fe

    if-nez v3, :cond_fb

    if-eqz v1, :cond_fb

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_105

    :cond_fb
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_105

    :cond_fe
    if-eqz v0, :cond_103

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    goto :goto_105

    :cond_103
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :goto_105
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_199

    const-string v2, "calculateEndTarget: endTarget = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", runningTaskId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    const/4 v5, 0x0

    if-nez v4, :cond_124

    move-object v4, v5

    goto :goto_12c

    :cond_124
    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_12c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", nextPage="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v4, :cond_13a

    move-object v4, v5

    goto :goto_142

    :cond_13a
    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_142
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", hasTargets="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-nez v4, :cond_14f

    goto :goto_157

    :cond_14f
    invoke-virtual {v4}, Lcom/android/quickstep/RecentsAnimationTargets;->hasTargets()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_157
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", velocity = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", endVelocity = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", isFling = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mUpPos = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isCancel = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", goingToNewTask = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reachedOverviewThreshold = "

    const-string p2, ", mGestureStarted = "

    invoke-static {v2, v0, p1, v3, p2}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    const-string p2, "QuickStep"

    const-string p3, "OplusBaseSwipeUpHandler"

    invoke-static {v2, p1, p2, p3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_199
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOverviewDisabled()Z

    move-result p0

    if-eqz p0, :cond_1ab

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v1, p0, :cond_1a9

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v1, p0, :cond_1ab

    :cond_1a9
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    :cond_1ab
    return-object v1
.end method

.method public canSupportedRapidReaction()Z
    .registers 8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-nez v0, :cond_11

    :goto_f
    move-object v0, v1

    goto :goto_21

    :cond_11
    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_f

    :cond_18
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    const-string v2, "canSupportedRapidReaction: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v2, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v2, :cond_45

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isSupportFloatingWindow()Z

    move-result p0

    return p0

    :cond_45
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateGestureState(IZ)V

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    if-nez v2, :cond_53

    move-object v2, v1

    goto :goto_57

    :cond_53
    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    :goto_57
    const/4 v3, 0x1

    if-nez v2, :cond_5c

    :cond_5a
    move v4, v0

    goto :goto_62

    :cond_5c
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5a

    move v4, v3

    :goto_62
    if-nez v4, :cond_72

    if-nez v2, :cond_68

    :cond_66
    move v2, v0

    goto :goto_6d

    :cond_68
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez v2, :cond_66

    move v2, v3

    :goto_6d
    if-eqz v2, :cond_70

    goto :goto_72

    :cond_70
    move v2, v0

    goto :goto_73

    :cond_72
    :goto_72
    move v2, v3

    :goto_73
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result v4

    if-nez v4, :cond_111

    iget-boolean v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSplitScreenMode:Z

    if-nez v4, :cond_111

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_111

    if-nez v2, :cond_8b

    goto/16 :goto_111

    :cond_8b
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-nez v2, :cond_99

    :cond_97
    :goto_97
    move v2, v0

    goto :goto_ab

    :cond_99
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    if-nez v2, :cond_9e

    goto :goto_97

    :cond_9e
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-nez v2, :cond_a3

    goto :goto_97

    :cond_a3
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_97

    move v2, v3

    :goto_ab
    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_b9

    :goto_b7
    move-object v4, v1

    goto :goto_c2

    :cond_b9
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v4, :cond_be

    goto :goto_b7

    :cond_be
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :goto_c2
    if-nez v4, :cond_c5

    return v0

    :cond_c5
    sget-object v5, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;

    invoke-virtual {v5}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isSupportZoomWindowMode()Z

    move-result v6

    if-eqz v6, :cond_10c

    if-eqz v2, :cond_d5

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-nez v2, :cond_10c

    :cond_d5
    invoke-virtual {v5}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->inSingleHandMode()Z

    move-result v2

    if-nez v2, :cond_10c

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "baseIntentComponent.flattenToShortString()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_f1

    goto :goto_fa

    :cond_f1
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v4, :cond_f6

    goto :goto_fa

    :cond_f6
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_fa
    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mContext.packageName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1, v4}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isSupportedApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10c

    goto :goto_10d

    :cond_10c
    move v3, v0

    :goto_10d
    invoke-direct {p0, v0, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateGestureState(IZ)V

    return v3

    :cond_111
    :goto_111
    return v0
.end method

.method public final createAnimateToHome(FLandroid/graphics/PointF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .registers 14

    const-string v0, "velocityPxPerMs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "homeAnimationFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->inSplitScreenMode()Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    if-eqz v0, :cond_38

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowCropRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    :cond_38
    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    iget p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->selectedOptionsType:I

    if-eq p1, v1, :cond_59

    const/4 p4, 0x2

    if-eq p1, p4, :cond_50

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToFloatOrMiniWindow(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    move-result-object p1

    goto :goto_61

    :cond_50
    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToExternalScreen:Z

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToExternalScreen(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    move-result-object p1

    goto :goto_61

    :cond_59
    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToFloatWindow:Z

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentPreWindowRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createAnimateToFloatOrMiniWindow(Landroid/graphics/RectF;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    move-result-object p1

    :goto_61
    invoke-virtual {p1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p4

    new-instance p5, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$1;

    invoke-direct {p5, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->start()V

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->playAtomicAnimation(F)V

    new-array p2, v1, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->wrapRapidReactionAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object p1

    aput-object p1, p2, v2

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    iput-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    goto/16 :goto_1aa

    :cond_83
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v4, v0

    if-le v4, v1, :cond_8a

    move v4, v1

    goto :goto_8b

    :cond_8a
    move v4, v2

    :goto_8b
    iget-boolean v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForStagedSplit:Z

    if-nez v5, :cond_93

    if-eqz p5, :cond_93

    move p5, v1

    goto :goto_94

    :cond_93
    move p5, v2

    :goto_94
    iput-boolean p5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    const/4 v5, 0x0

    if-nez v4, :cond_12c

    if-eqz p5, :cond_9d

    goto/16 :goto_12c

    :cond_9d
    aget-object p4, v0, v2

    invoke-virtual {p4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object p4

    iget-object p4, p4, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const-string p5, "targets"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p4

    iget-object p5, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p5}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result p5

    if-nez p4, :cond_c8

    if-nez p5, :cond_c8

    invoke-virtual {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, p1, v2

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_fa

    :cond_c8
    if-eqz p5, :cond_e2

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {p4}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p4, v3}, Lcom/android/quickstep/BaseActivityInterface;->setCustomOnDeferredCallback(Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;)V

    iput-boolean v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->releaseRemoteAnimationViewInfo:Z

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToBracketSpace(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, p1, v2

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    goto :goto_fa

    :cond_e2
    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {p4}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p4, v3}, Lcom/android/quickstep/BaseActivityInterface;->setCustomOnDeferredCallback(Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;)V

    invoke-virtual {p3, v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setAnimType(I)V

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createWindowAnimationToAssistantScreen(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, p1, v2

    check-cast p1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    :goto_fa
    new-instance p4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;

    invoke-direct {p4, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$4;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {p1, p4}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p4

    invoke-interface {p4, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start(Landroid/graphics/PointF;)V

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->playAtomicAnimation(F)V

    new-array p2, v1, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object p1

    aput-object p1, p2, v2

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    iput-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    sget p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    cmpg-float p1, p1, v5

    if-nez p1, :cond_124

    goto :goto_125

    :cond_124
    move v1, v2

    :goto_125
    if-eqz v1, :cond_1aa

    invoke-virtual {p0, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    goto/16 :goto_1aa

    :cond_12c
    :goto_12c
    if-eqz p5, :cond_13e

    invoke-virtual {p0, p3, p4, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToPip(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;F)Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimator:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iget-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mSwipePipToHomeAnimators:[Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    aput-object p1, p4, v2

    const-string p1, "mSwipePipToHomeAnimators"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_153

    :cond_13e
    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->createSplitWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object p4

    aget-object p1, p4, v2

    new-instance p5, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$2;

    invoke-direct {p5, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToHome$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {p1, p5}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V

    :goto_153
    array-length p1, p4

    new-array p1, p1, [Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    array-length p1, p4

    move p5, v2

    move v0, p5

    :goto_15b
    if-ge p5, p1, :cond_180

    aget-object v4, p4, p5

    add-int/lit8 v6, v0, 0x1

    if-nez v4, :cond_164

    goto :goto_17c

    :cond_164
    instance-of v7, v4, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    if-eqz v7, :cond_16f

    move-object v7, v4

    check-cast v7, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {v7, p2}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start(Landroid/graphics/PointF;)V

    goto :goto_174

    :cond_16f
    iget-object v7, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7, p2}, Lcom/android/quickstep/util/RectFSpringAnim;->start(Landroid/content/Context;Landroid/graphics/PointF;)V

    :goto_174
    iget-object v7, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRunningWindowAnim:[Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    invoke-static {v4}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v4

    aput-object v4, v7, v0

    :goto_17c
    add-int/lit8 p5, p5, 0x1

    move v0, v6

    goto :goto_15b

    :cond_180
    iget p1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setSwipeVelocity(F)V

    iget p1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->playAtomicAnimation(F)V

    iput-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p1, :cond_19d

    iget-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p3

    invoke-virtual {p1, v3, p2, p3}, Lcom/android/quickstep/views/RecentsView;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V

    :cond_19d
    sget p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    cmpg-float p1, p1, v5

    if-nez p1, :cond_1a4

    goto :goto_1a5

    :cond_1a4
    move v1, v2

    :goto_1a5
    if-eqz v1, :cond_1aa

    invoke-virtual {p0, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    :cond_1aa
    :goto_1aa
    return-void
.end method

.method public final createNewInputProxyHandler()Lcom/android/quickstep/InputConsumer;
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->endRunningWindowAnim(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endLauncherTransitionController()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v3

    if-nez v3, :cond_23

    sget-object p0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    const-string v0, "{\n            InputConsumer.NO_OP\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3b

    :cond_23
    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    const-string v1, "mGestureState"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    const-string p0, "mDeviceState"

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;-><init>(Lcom/android/quickstep/GestureState;Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/RecentsAnimationDeviceState;)V

    move-object p0, v0

    :goto_3b
    return-object p0
.end method

.method public createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .registers 41

    move-object/from16 v15, p0

    move/from16 v0, p1

    move-object/from16 v14, p2

    const-string v1, "homeAnimationFactory"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x8

    const-string v3, "OplusBaseSwipeUpHandler#createWindowAnimationToHome"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v1, Lcom/android/common/util/VRRServiceHelper;->INSTANCE:Lcom/android/common/util/VRRServiceHelper$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/util/VRRServiceHelper;

    invoke-virtual {v1}, Lcom/android/common/util/VRRServiceHelper;->notifyLauncherEvent()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v13

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    iget-object v3, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v2

    iget-object v6, v2, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getWindowTargetRect()Landroid/graphics/RectF;

    move-result-object v2

    const-string v3, "homeAnimationFactory.windowTargetRect"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    const-string v7, "targets"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v6}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getClosingSourceWinBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;

    move-result-object v8

    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    const-string v10, "QuickStep"

    const-string v11, "OplusBaseSwipeUpHandler"

    if-eqz v7, :cond_b3

    const-string v7, "createWindowAnimationToHome: isStarted = "

    invoke-static {v7}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v16, v6

    iget-object v6, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    const/16 v17, 0x0

    if-nez v6, :cond_80

    goto :goto_86

    :cond_80
    invoke-virtual {v6}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v6

    if-nez v6, :cond_89

    :goto_86
    move-object/from16 v6, v17

    goto :goto_92

    :cond_89
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto :goto_86

    :goto_92
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", currentAnimateRectF = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", startProgress = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v11, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b5

    :cond_b3
    move-object/from16 v16, v6

    :goto_b5
    iget-object v6, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_125

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-nez v0, :cond_c8

    goto :goto_d7

    :cond_c8
    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_cf

    goto :goto_d7

    :cond_cf
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-ne v0, v7, :cond_d7

    move v0, v7

    goto :goto_d8

    :cond_d7
    :goto_d7
    const/4 v0, 0x0

    :goto_d8
    if-eqz v0, :cond_e7

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_11a

    :cond_e7
    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez v0, :cond_ec

    goto :goto_101

    :cond_ec
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-nez v0, :cond_f3

    goto :goto_101

    :cond_f3
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_fa

    goto :goto_101

    :cond_fa
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-ne v0, v7, :cond_101

    goto :goto_102

    :cond_101
    :goto_101
    const/4 v7, 0x0

    :goto_102
    if-eqz v7, :cond_11a

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez v0, :cond_109

    goto :goto_11a

    :cond_109
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-nez v0, :cond_110

    goto :goto_11a

    :cond_110
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_117

    goto :goto_11a

    :cond_117
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_11a
    :goto_11a
    const/4 v0, 0x0

    move-object/from16 v17, v5

    move-object/from16 v19, v8

    move-object/from16 v18, v10

    move-object/from16 v20, v12

    goto/16 :goto_279

    :cond_125
    iget-object v6, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v6

    if-nez v6, :cond_131

    goto :goto_13f

    :cond_131
    invoke-virtual {v6}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v6

    if-nez v6, :cond_138

    goto :goto_13f

    :cond_138
    iget v7, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float v7, v0, v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :goto_13f
    iget-object v6, v1, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    iget v6, v6, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_17d

    const-string v7, "createWindowAnimationToHome: mRecentsViewScrollLinked = "

    invoke-static {v7}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v17, v5

    iget-boolean v5, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", defferExecuteAnimation = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", currentScroll = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", shouldUseCurrentScrollOffset = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", currentScrollOffset = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-static {v7, v5, v11}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    goto :goto_17f

    :cond_17d
    move-object/from16 v17, v5

    :goto_17f
    iget-boolean v5, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v5, :cond_18c

    iget-boolean v5, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->shouldUseCurrentScrollOffset:Z

    if-eqz v5, :cond_18c

    iget v5, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentScrollOffset:F

    invoke-virtual {v1, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_18c
    iget-boolean v5, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v5, :cond_19c

    iget-boolean v5, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v5, :cond_19c

    iget-object v5, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v5, :cond_19c

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_19c
    iget-object v5, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v5}, Lcom/android/quickstep/ISwipeUpHandlerExt;->setTaskViewSimulatorScroll()V

    iget-object v5, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v5, :cond_1ac

    :cond_1a5
    move-object/from16 v19, v8

    move-object/from16 v18, v10

    :cond_1a9
    move-object/from16 v20, v12

    goto :goto_204

    :cond_1ac
    iget-object v7, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v7}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/quickstep/views/RecentsView;->getTaskIndexForId(I)I

    move-result v5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_1c1

    const-string v7, "createWindowAnimationToHome: current running index is "

    invoke-static {v5, v7, v11}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1c1
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1a5

    iget-object v7, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v7

    sub-int v18, v7, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    if-lez v18, :cond_1a5

    move-object/from16 v18, v10

    iget-object v10, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v10, v7}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v10

    move-object/from16 v19, v8

    int-to-float v8, v10

    invoke-virtual {v1, v8}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    const/4 v8, 0x1

    iput-boolean v8, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_1a9

    const-string v8, "createWindowAnimationToHome: running index is "

    move-object/from16 v20, v12

    const-string v12, ", current page is "

    const-string v14, ". so we should set scroll offset to "

    invoke-static {v8, v5, v12, v7, v14}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", and force invisible recents view"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_204
    invoke-virtual {v13, v0}, Lcom/android/quickstep/util/TransformParams;->setProgress(F)Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v9, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v4, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_26d

    sget-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/quickstep/util/SplitScreenBounds;->isLauncherOnFirstScreen(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_26d

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_25d

    iget-object v0, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v0

    if-ne v0, v5, :cond_25d

    iget-object v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    neg-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v4}, Landroid/graphics/RectF;->offset(FF)V

    move v0, v4

    goto :goto_26e

    :cond_25d
    const/4 v0, 0x0

    iget-object v4, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->realScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    neg-float v4, v4

    invoke-virtual {v9, v0, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_26e

    :cond_26d
    const/4 v0, 0x0

    :goto_26e
    iget-boolean v4, v15, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsViewScrollLinked:Z

    if-eqz v4, :cond_279

    iget-boolean v4, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    if-eqz v4, :cond_279

    invoke-virtual {v1, v6}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    :cond_279
    :goto_279
    new-instance v14, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-direct {v14, v9, v2, v1, v4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    move-object/from16 v12, p2

    invoke-virtual {v12, v14}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    new-instance v23, Landroid/graphics/RectF;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/RectF;-><init>()V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v5, v4

    sub-float/2addr v1, v5

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v24

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v8

    const-string v1, "homeAnimationFactory.cre…ActivityAnimationToHome()"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    const-string v5, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/OplusDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v4, v4

    invoke-static {v1, v4}, Lcom/android/launcher/theme/LauncherIconConfig;->getStyleIconSizeAndIconRadius(Landroid/content/res/Resources;F)[F

    move-result-object v25

    const/4 v1, 0x0

    aget v4, v25, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "getIconVisualSize : "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-static {v5, v11, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->isCard()Z

    move-result v4

    if-eqz v4, :cond_300

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    aput v4, v25, v1

    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getCardAnimRadius(Landroid/content/res/Resources;)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v25, v6

    :cond_300
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    aget v6, v25, v1

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gez v4, :cond_317

    const-string v4, "createWindowAnimationToHome: icon width greater than the float icon width"

    invoke-static {v5, v11, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    aput v4, v25, v1

    :cond_317
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-eqz v1, :cond_31e

    goto :goto_322

    :cond_31e
    iget-object v4, v15, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    if-nez v4, :cond_324

    :goto_322
    move v7, v0

    goto :goto_337

    :cond_324
    sget-object v6, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    const-string v7, "mContext"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v4

    int-to-float v4, v4

    move v7, v4

    :goto_337
    iget-object v4, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    invoke-interface {v4, v9}, Lcom/android/quickstep/ISwipeUpHandlerExt;->getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    if-eqz v1, :cond_340

    goto :goto_347

    :cond_340
    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->canUseWorkspaceItemView()Z

    move-result v0

    if-nez v0, :cond_34b

    move v0, v7

    :goto_347
    move v1, v0

    move-object/from16 v4, v19

    goto :goto_358

    :cond_34b
    const/4 v0, 0x0

    aget v0, v25, v0

    const/4 v1, 0x1

    aget v1, v25, v1

    move-object/from16 v4, v19

    invoke-interface {v6, v4, v0, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v0

    move v1, v0

    :goto_358
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object/from16 v18, v13

    new-instance v13, Lcom/oplus/quickstep/gesture/h;

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-direct {v13, v0, v4}, Lcom/oplus/quickstep/gesture/h;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;I)V

    new-instance v26, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v26 .. v26}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v0, Lcom/oplus/quickstep/gesture/h;

    move-object/from16 p1, v6

    const/4 v6, 0x1

    invoke-direct {v0, v4, v6}, Lcom/oplus/quickstep/gesture/h;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->canUseWorkspaceItemView()Z

    move-result v6

    if-eqz v6, :cond_383

    const v6, 0x3f666666  # 0.9f

    goto :goto_385

    :cond_383
    const/high16 v6, 0x3f800000  # 1.0f

    :goto_385
    move/from16 v27, v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_3d9

    const-string v6, " createWindowAnimationToHome: prepare\ndefferExecuteAnimation: "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v28, v0

    iget-boolean v0, v15, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->defferExecuteAnimation:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\ntargetRect: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nstartRect: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\niconRadius: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v0, v25, v0

    const-string v2, "\nwinRadius: "

    move-object/from16 v29, v4

    const-string v4, "\niconSize: "

    invoke-static {v6, v0, v2, v7, v4}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const/4 v0, 0x0

    aget v2, v25, v0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\nprogressWindowRadius: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v11, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3de

    :cond_3d9
    move-object/from16 v28, v0

    move-object/from16 v29, v4

    const/4 v0, 0x0

    :goto_3de
    move/from16 v30, v0

    new-instance v11, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;

    move-object v0, v11

    const-wide/16 v31, 0x8

    move/from16 v33, v1

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, v17

    move-object v5, v8

    move-object/from16 v17, p1

    move-object/from16 v6, v16

    move/from16 v16, v7

    move-object/from16 v7, v17

    move-object/from16 v34, v8

    move-object/from16 v8, v19

    move-object/from16 v35, v11

    move/from16 v11, v33

    move-object/from16 v36, v20

    move/from16 v12, v27

    move-object/from16 v33, v13

    move-object/from16 v27, v18

    move-object/from16 v13, v21

    move-object/from16 v37, v14

    move/from16 v14, v24

    move/from16 v15, v16

    move-object/from16 v16, v22

    move-object/from16 v17, p2

    move-object/from16 v18, v25

    move-object/from16 v19, v26

    move-object/from16 v20, v29

    move-object/from16 v21, v23

    move-object/from16 v22, v33

    move-object/from16 v23, v28

    move-object/from16 v24, v27

    invoke-direct/range {v0 .. v24}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/graphics/Matrix;Landroid/graphics/RectF;Lcom/android/launcher3/anim/AnimatorPlaybackController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/graphics/Rect;FFLandroid/graphics/Matrix;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;[FLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/RectF;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/quickstep/util/TransformParams;)V

    move-object/from16 v1, v35

    move-object/from16 v0, v37

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, v34

    move-object/from16 v4, v36

    invoke-direct {v1, v4, v2, v5, v3}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static/range {v31 .. v32}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/quickstep/util/OplusRectFSpringAnim;

    aput-object v0, v1, v30

    return-object v1
.end method

.method public deferSetCapturedState()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "deferSetCapturedState()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->capturedTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public endLauncherTransitionController()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    const-string v1, "null"

    if-nez v0, :cond_7

    goto :goto_1d

    :cond_7
    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_1d

    :cond_e
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_1d

    :cond_15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1d
    const-string v0, "endLauncherTransitionController: isAnimationStarted = "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_38

    :cond_36
    :goto_36
    move v1, v2

    goto :goto_45

    :cond_38
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_3f

    goto :goto_36

    :cond_3f
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-ne v0, v1, :cond_36

    :goto_45
    if-eqz v1, :cond_5a

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    if-nez v0, :cond_50

    goto :goto_5a

    :cond_50
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_57

    goto :goto_5a

    :cond_57
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_5a
    :goto_5a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    :cond_5d
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_64

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation()V

    :cond_64
    return-void
.end method

.method public finishCurrentTransitionToHome()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTargets()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToFloatWindow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->zoomWindowData:Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;

    if-eqz v0, :cond_23

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/oplus/quickstep/gesture/f;

    const/16 v3, 0x9

    invoke-direct {v1, p0, v3}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->finishRecentsControllerToZoom(Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V

    :goto_21
    move v1, v2

    goto :goto_5e

    :cond_23
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animateToExternalScreen:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onePuttData:Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    if-eqz v0, :cond_5e

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->isThermalLevelReached10()Z

    move-result v0

    if-nez v0, :cond_3e

    move v1, v2

    :cond_3e
    if-eqz v1, :cond_50

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onePuttData:Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/oplus/quickstep/gesture/f;

    const/16 v3, 0xa

    invoke-direct {v1, p0, v3}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->finishRecentsControllerToExternalScreen(Lcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V

    goto :goto_21

    :cond_50
    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->maybeFinishSwipeToHome()V

    new-instance v0, Lcom/oplus/quickstep/gesture/f;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishRecentsControllerToHome(Ljava/lang/Runnable;)V

    goto :goto_21

    :cond_5e
    :goto_5e
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    if-eqz v1, :cond_67

    return-void

    :cond_67
    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishCurrentTransitionToHome()V

    return-void
.end method

.method public finishCurrentTransitionToRecents()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "finishCurrentTransitionToRecents()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_16

    goto :goto_1a

    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRunningTaskHiddenWhenNeed(Z)V

    :goto_1a
    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->finishCurrentTransitionToRecents()V

    return-void
.end method

.method public finishRecentsControllerToExternalScreen(Lcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez p0, :cond_14

    goto :goto_18

    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, v0, p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishOnePuttController(ZLjava/lang/Runnable;ZLcom/oplus/quickstep/rapidreaction/OnePuttData;)V

    :goto_18
    return-void
.end method

.method public finishRecentsControllerToZoom(Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V
    .registers 10

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    goto :goto_26

    :cond_1c
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_21

    goto :goto_26

    :cond_21
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_26
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->handleShowCompatibilityToast(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)Z

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mInputConsumerProxy:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/util/InputConsumerProxy;->destroy()V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez p0, :cond_43

    goto :goto_47

    :cond_43
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, v0, p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishZoomController(ZLjava/lang/Runnable;ZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;)V

    :goto_47
    return-void
.end method

.method public final getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0
.end method

.method public final getMSwipeUpHandlerExt()Lcom/android/quickstep/ISwipeUpHandlerExt;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mSwipeUpHandlerExt:Lcom/android/quickstep/ISwipeUpHandlerExt;

    return-object p0
.end method

.method public handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 8

    if-nez p1, :cond_3

    goto :goto_48

    :cond_3
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    array-length v2, p1

    :goto_10
    if-ge v1, v2, :cond_3b

    aget-object v3, p1, v1

    const-string v4, "target = "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", taskId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_3b
    const-string v1, "handleTaskAppeared: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    :goto_48
    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method public hasTaskPreviouslyAppeared(I)Z
    .registers 11

    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasTaskPreviouslyAppeared(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p0

    const/4 v3, -0x1

    if-nez p0, :cond_1b

    goto :goto_26

    :cond_1b
    invoke-virtual {p0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object p0

    if-nez p0, :cond_22

    goto :goto_26

    :cond_22
    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez p0, :cond_28

    :goto_26
    move v6, v3

    goto :goto_38

    :cond_28
    array-length v4, p0

    move v5, v2

    move v6, v3

    :cond_2b
    :goto_2b
    if-ge v5, v4, :cond_38

    aget-object v7, p0, v5

    add-int/lit8 v5, v5, 0x1

    iget v8, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v8, v1, :cond_2b

    iget v6, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    goto :goto_2b

    :cond_38
    :goto_38
    if-eq v6, p1, :cond_3c

    if-ne v0, p1, :cond_3f

    :cond_3c
    if-eq p1, v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasTaskPreviouslyAppeared: force = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " taskId = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", closingTaskId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", runningTaskId = "

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {p0, v6, p1, v0, v2}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "dp"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSplitScreenMode:Z

    if-nez v1, :cond_11

    iget-boolean v1, v7, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    :cond_11
    iput-boolean v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSplitScreenMode:Z

    const/4 v8, 0x0

    if-eqz v1, :cond_18

    iput-boolean v8, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    :cond_18
    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    iget-object v3, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/quickstep/SwipeUpAnimationLogic;->TEMP_RECT:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/BaseActivityInterface;->getOplusSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;I)I

    move-result v1

    iput v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x1

    if-eqz v1, :cond_79

    iget v1, v7, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    iget v4, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iput v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v1

    const/high16 v4, 0x3f400000  # 0.75f

    sub-float/2addr v4, v1

    int-to-float v5, v3

    sub-float/2addr v5, v1

    div-float/2addr v4, v5

    iput v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    const/high16 v4, 0x3f000000  # 0.5f

    sub-float/2addr v4, v1

    div-float/2addr v4, v5

    iput v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    goto :goto_7f

    :cond_79
    iput v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    iput v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    iput v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    :goto_7f
    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v1

    iget-object v4, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v5

    if-nez v5, :cond_b2

    if-eq v1, v3, :cond_aa

    const/4 v5, 0x3

    if-ne v1, v5, :cond_b2

    :cond_aa
    if-nez v4, :cond_b2

    const v1, 0x3e99999a  # 0.3f

    iput v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    goto :goto_b4

    :cond_b2
    iput v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    :goto_b4
    iget-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const-string v2, "mRemoteTargetHandles"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    :goto_bc
    if-ge v8, v2, :cond_103

    aget-object v4, v1, v8

    add-int/lit8 v8, v8, 0x1

    new-instance v5, Lcom/android/launcher3/anim/PendingAnimation;

    iget v6, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    mul-int/lit8 v6, v6, 0x2

    int-to-long v9, v6

    invoke-direct {v5, v9, v10}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    iget v9, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    invoke-virtual {v6, v9}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->updateDraggingMaxProgress(F)V

    new-instance v9, Lcom/oplus/quickstep/gesture/b;

    invoke-direct {v9, v0, v3}, Lcom/oplus/quickstep/gesture/b;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v6, v5, v9, v3}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;Z)V

    invoke-virtual {v5}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v10

    iget-object v11, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v12

    iget-object v13, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v14, v6, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    sget-object v17, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    iget-object v5, v6, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    move-object/from16 v15, v17

    move-object/from16 v16, v5

    invoke-static/range {v10 .. v17}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createForRecents(Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->setPlaybackController(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    iget-boolean v4, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    invoke-virtual {v6, v4}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setIgnoreTranslate(Z)V

    goto :goto_bc

    :cond_103
    iget-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_10d

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_10e

    :cond_10d
    move-object v1, v3

    :goto_10e
    if-nez v1, :cond_111

    goto :goto_116

    :cond_111
    iget v2, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateDraggingMaxProgress(F)V

    :goto_116
    iget-object v1, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_11f

    move-object v3, v1

    check-cast v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_11f
    if-nez v3, :cond_122

    goto :goto_127

    :cond_122
    iget-boolean v0, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    invoke-virtual {v3, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setIgnoreTranslate(Z)V

    :goto_127
    return-void
.end method

.method public final isLandscape()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    return p0
.end method

.method public final isPostDrawCanceled()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskAnimationManager;->getController()Lcom/android/quickstep/RecentsAnimationController;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public linkRecentsViewScroll()V
    .registers 5

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->linkRecentsViewScroll()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-nez v1, :cond_a

    return-void

    :cond_a
    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowScrollByTouch(Z)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceUseRealScroll(Z)V

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    const-string v2, "OplusBaseSwipeUpHandler"

    const-string v3, "QuickStep"

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-eqz v1, :cond_25

    goto :goto_33

    :cond_25
    new-instance v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$linkRecentsViewScroll$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$linkRecentsViewScroll$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOnCurrentScrollChangeListener(Lcom/android/quickstep/views/OplusRecentsViewImpl$OnCurrentScrollChangeListener;)V

    const-string p0, "linkRecentsViewScroll: current scroll change listener added"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_33
    :goto_33
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "linkRecentsViewScroll: ignore add current scroll change listener, because the transitionFromMenuKey is "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " and the canSupportedRapidReaction is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->canSupportedRapidReaction:Z

    invoke-static {v0, p0, v3, v2}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

.method public moveWindowWithRecentsScroll()Z
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->moveWindowWithRecentsScroll()Z

    move-result p0

    return p0
.end method

.method public final notifyDragging(Z)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "notifyDragging: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isDragging:Z

    return-void
.end method

.method public onActivityInit(Ljava/lang/Boolean;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    const-string v1, "onActivityInit: mActivity = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", alreadyOnHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_88

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_6d

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSetRotationByActivityInit(Z)V

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v4, v3, Lcom/oplus/quickstep/gesture/OplusGestureState;

    const/4 v5, 0x0

    if-eqz v4, :cond_50

    check-cast v3, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isFallbackRecents()Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_51

    :cond_50
    move v2, v5

    :goto_51
    if-nez v2, :cond_6a

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setLayoutRotation(II)V

    :cond_6a
    invoke-virtual {v1, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSetRotationByActivityInit(Z)V

    :cond_6d
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v1, :cond_82

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.OplusQuickstepTransitionManagerImpl"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    :cond_82
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    :cond_88
    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onActivityInit(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public onAnimatorPlaybackControllerCreated(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .registers 4

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    new-instance v0, Lcom/oplus/quickstep/gesture/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/gesture/b;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateLauncherTransitionProgress()V

    return-void
.end method

.method public onConsumerAboutToBeSwitched()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onConsumerAboutToBeSwitched()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->clearRunOnceOnStartCallback()V

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->resetLauncherListeners()V

    :cond_13
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->cancelCurrentAnimation()V

    goto :goto_34

    :cond_31
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->reset()V

    :goto_34
    return-void
.end method

.method public onGestureCancelled()V
    .registers 4

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureCancelled()V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oplus/quickstep/gesture/f;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureEnded: endVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    iput-object p4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->mUpPos:Landroid/graphics/PointF;

    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    sget-object p1, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/oplus/quickstep/gesture/f;

    const/16 p3, 0xf

    invoke-direct {p2, p0, p3}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGestureStarted(Z)V
    .registers 5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureStarted(Z)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result p1

    if-eqz p1, :cond_1e

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_gesture_start"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;

    invoke-virtual {v1, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->onRecentsAnimationStart(Landroid/os/Bundle;)V

    goto :goto_44

    :cond_1e
    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, p1, Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    check-cast p1, Lcom/android/launcher3/Launcher;

    goto :goto_2f

    :cond_2e
    move-object p1, v2

    :goto_2f
    if-nez p1, :cond_33

    move-object p1, v2

    goto :goto_37

    :cond_33
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p1

    :goto_37
    instance-of v1, p1, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v1, :cond_3e

    move-object v2, p1

    check-cast v2, Lcom/android/launcher/LauncherCallbacksImp;

    :cond_3e
    if-nez v2, :cond_41

    goto :goto_44

    :cond_41
    invoke-virtual {v2}, Lcom/android/launcher/LauncherCallbacksImp;->onRecentsAnimationStart()V

    :cond_44
    :goto_44
    sget-object p1, Lcom/oplus/quickstep/utils/FingerPrintUtils;->INSTANCE:Lcom/oplus/quickstep/utils/FingerPrintUtils;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->hideFingerPrintIcon(Landroid/content/Context;I)V

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isWindowFirstMove:Z

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_6f

    const-string v0, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object p1

    if-nez p1, :cond_6c

    goto :goto_6f

    :cond_6c
    invoke-virtual {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancelForHomeGesture()V

    :cond_6f
    :goto_6f
    sget-object p1, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oplus/quickstep/gesture/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLauncherStart()V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.BaseDraggingActivity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLauncherStart: mActivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mWasLauncherAlreadyVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const-string v3, "QuickStep"

    const-string v4, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eq v1, v0, :cond_35

    return-void

    :cond_35
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v1

    if-eqz v1, :cond_40

    return-void

    :cond_40
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v1

    const-string v2, "mRemoteTargetHandles"

    const/4 v3, 0x0

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v1

    move v5, v3

    :goto_50
    if-ge v5, v4, :cond_72

    aget-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    if-nez v6, :cond_5d

    goto :goto_50

    :cond_5d
    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v6

    if-nez v6, :cond_64

    goto :goto_50

    :cond_64
    iget-object v7, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/quickstep/util/RecentsOrientedState;->setRecentsRotation(I)Z

    goto :goto_50

    :cond_72
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const-string v5, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    if-ne v1, v4, :cond_aa

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    if-ne v1, v4, :cond_e5

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    :cond_aa
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    move v4, v3

    :goto_b7
    if-ge v4, v2, :cond_c5

    aget-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->adjustTransYPropertyState(Z)V

    goto :goto_b7

    :cond_c5
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->adjustTransYPropertyState(Z)V

    :cond_cf
    new-instance v1, Lcom/oplus/quickstep/gesture/f;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v2, :cond_e2

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    invoke-virtual {v2, v4, v1}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    goto :goto_e5

    :cond_e2
    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/f;->run()V

    :cond_e5
    :goto_e5
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v1, v2, :cond_10a

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_10a

    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const-string v2, "onLauncherStart"

    invoke-virtual {v1, v3, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    :cond_10a
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v2, v1, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_121

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    if-nez v1, :cond_11e

    goto :goto_121

    :cond_11e
    invoke-virtual {v1, v3}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_121
    :goto_121
    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    iget-boolean v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    if-eqz v1, :cond_14a

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-nez v2, :cond_13a

    goto :goto_142

    :cond_13a
    new-instance v3, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$2;

    invoke-direct {v3, p0, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$2;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :goto_142
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    goto :goto_168

    :cond_14a
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v2, "WTS-init"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    if-nez v3, :cond_160

    goto :goto_168

    :cond_160
    new-instance v4, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onLauncherStart$3;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Ljava/lang/Object;Landroid/view/View;Lcom/android/launcher3/BaseDraggingActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :goto_168
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    if-nez v0, :cond_16f

    goto :goto_172

    :cond_16f
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :goto_172
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_STARTED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "thumbnailDatas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "onRecentsAnimationCanceled: gpuBoostFd="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    iget-wide v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    iget-wide v2, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    invoke-virtual {v0, v2, v3}, Lcom/android/common/util/LauncherBooster$GpuBoost;->closeAction(J)V

    iput-wide v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    :cond_33
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateScrimIfNeed$default(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;ZZZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v2, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v2, :cond_5a

    const-string v2, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :cond_5a
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_5f

    goto :goto_64

    :cond_5f
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/RecentsAnimationController;->setSplitScreenMinimized(Landroid/content/Context;Z)V

    :goto_64
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRemoteRecentsAnimationRunning(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentsAnimatoinCancelled:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyAssistantScreenRecentsAnimationFinished()V

    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRecentsAnimationCanceled(Ljava/util/HashMap;)V

    sget-object p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->resetState()V

    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 5

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onRecentsAnimationFinished"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of p1, p0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_28

    const-string p1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object p0

    if-nez p0, :cond_25

    goto :goto_28

    :cond_25
    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancelForHomeGesture()V

    :cond_28
    :goto_28
    sget-object p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecentsAnimationStart: controller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targets = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf$default(Lcom/oplus/quickstep/utils/GestureBooster;IZZILjava/lang/Object;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    const-string v1, "OSENSE_ACTION_GESTURE_ANIMATION"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openWithType$default(Lcom/android/common/util/LauncherBooster$GpuBoost;Ljava/lang/String;IILjava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->needAnimateToCurrent()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInterruptRectEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez v1, :cond_4e

    goto :goto_52

    :cond_4e
    invoke-virtual {v1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v4

    :goto_52
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getInterruptRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_63

    :goto_61
    move v2, v1

    goto :goto_6f

    :cond_63
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-nez v0, :cond_6a

    goto :goto_61

    :cond_6a
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getOpenAnimProgress()F

    move-result v0

    move v2, v0

    :goto_6f
    const/4 v0, 0x1

    int-to-float v0, v0

    const v3, 0x3e99999a  # 0.3f

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowCropProgress:F

    goto :goto_a4

    :cond_89
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentAnimateRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->appTransitionManager:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-nez v0, :cond_93

    goto :goto_a4

    :cond_93
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    if-nez v0, :cond_9a

    goto :goto_a4

    :cond_9a
    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->getIconLaunchAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_a1

    goto :goto_a4

    :cond_a1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_a4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->superOnRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_GESTURE_STARTED:I

    new-instance v0, Lcom/oplus/quickstep/gesture/f;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p1, p2, v0}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onRecentsViewScroll()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isDragging:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->moveWindowWithRecentsScroll()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateFinalShift()V

    :cond_d
    return-void
.end method

.method public onRestartPreviouslyAppearedTask()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onRestartPreviouslyAppearedTask"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isNewTaskStarted:Z

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onRestartPreviouslyAppearedTask()V

    return-void
.end method

.method public onSettledOnEndTarget()V
    .registers 6

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->exitSetSchedAssistScene()V

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    const-string v3, "onSettledOnEndTarget()"

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/LauncherBooster$GpuBoost;->closeAction(J)V

    iput-wide v3, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->gpuBoostFd:J

    :cond_25
    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onSettledOnEndTarget()V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v2, :cond_48

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v3, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v3, :cond_48

    const-string v3, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    :cond_48
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v3, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v4, 0x0

    if-eqz v3, :cond_52

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_53

    :cond_52
    move-object v0, v4

    :goto_53
    if-nez v0, :cond_56

    goto :goto_60

    :cond_56
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    if-nez v0, :cond_5d

    goto :goto_60

    :cond_5d
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :goto_60
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eq v0, v2, :cond_88

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_88

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_7b

    move-object v4, v0

    check-cast v4, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_7b
    if-nez v4, :cond_7e

    goto :goto_88

    :cond_7e
    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    if-nez v0, :cond_85

    goto :goto_88

    :cond_85
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeCpu()V

    :cond_88
    :goto_88
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->transitionFromMenuKey:Z

    if-nez v0, :cond_98

    sget-object v0, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/learning/NotificationHelper;->sendLearningGestureNotificationIfNeed(Landroid/content/Context;)V

    :cond_98
    return-void
.end method

.method public onSetupInputProxy()V
    .registers 2

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRemoteRecentsAnimationRunning(Z)V

    return-void
.end method

.method public onStartNewTaskBefore(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_4

    goto :goto_14

    :cond_4
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez p1, :cond_9

    goto :goto_14

    :cond_9
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    const/16 v1, 0x2710

    if-lt p1, v1, :cond_11

    move p1, v0

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceNotChangeStateToQuickSwitch:Z

    :goto_14
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceNotChangeStateToQuickSwitch:Z

    const-string v1, "onStartNewTaskBefore: "

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {p1, v1, v2, v3}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isNewTaskStarted:Z

    return-void
.end method

.method public onStartNewTaskFailed()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onStartNewTaskFailed"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isNewTaskStarted:Z

    return-void
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 5

    const-string v0, "appearedTaskTargets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskAppeared: appearedTaskTarget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastStartedTaskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_25

    :cond_1d
    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_52

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->handleTaskAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/oplus/quickstep/gesture/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {p1, v1, v0}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string p1, "finishRecentsAnimation"

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/logging/EventLogArray;->addLog(Ljava/lang/String;Z)V

    :cond_52
    return-void
.end method

.method public onWindowAnimationEnd()V
    .registers 13

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onWindowAnimationEnd()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/oplus/quickstep/gesture/f;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_1e
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_8e

    const-string v2, "bottom swipe to switch apps"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.launcher"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    if-eqz v2, :cond_89

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    const-string v1, "getLauncher(recentsView.getContext())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6e

    move v1, v4

    goto :goto_6f

    :cond_6e
    move v1, v5

    :goto_6f
    const v2, 0x7f06040a

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-static {v2}, Lcom/android/common/util/ColorUtils;->isColorDark(I)Z

    move-result v2

    if-nez v2, :cond_84

    if-nez v1, :cond_84

    move v1, v4

    goto :goto_85

    :cond_84
    move v1, v5

    :goto_85
    invoke-virtual {v0, v5, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    goto :goto_8e

    :cond_89
    const-string v2, "launcher has destroyed"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    :goto_8e
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v1, :cond_9d

    sget-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    :cond_9d
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_a2

    goto :goto_a7

    :cond_a2
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_a7
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v0, :cond_ac

    goto :goto_b6

    :cond_ac
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-nez v0, :cond_b3

    goto :goto_b6

    :cond_b3
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->clearSkipDrawWorkspaceFlags()V

    :goto_b6
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v0, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x4

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-nez v0, :cond_c7

    const/4 v0, -0x1

    goto :goto_cf

    :cond_c7
    sget-object v3, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    :goto_cf
    const-string v3, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    if-eq v0, v4, :cond_e1

    if-eq v0, v2, :cond_d6

    goto :goto_eb

    :cond_d6
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    goto :goto_eb

    :cond_e1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisibleWithAnimation()V

    :cond_eb
    :goto_eb
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->resetTriggerPanel()V

    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v3, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v3, :cond_fc

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_fd

    :cond_fc
    const/4 v0, 0x0

    :goto_fd
    if-nez v0, :cond_100

    goto :goto_10a

    :cond_100
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    if-nez v0, :cond_107

    goto :goto_10a

    :cond_107
    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :goto_10a
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v3, :cond_11f

    sget-object v6, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    const/16 v7, 0x258

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/oplus/quickstep/utils/GestureBooster;->openSf$default(Lcom/oplus/quickstep/utils/GestureBooster;IZZILjava/lang/Object;)V

    :cond_11f
    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result v0

    if-eqz v0, :cond_12e

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowAnimationEnded:Z

    if-nez v0, :cond_12e

    iput-boolean v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->windowAnimationEnded:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyAssistantScreenRecentsAnimationFinished()V

    :cond_12e
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eq v0, v1, :cond_13e

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-ne v0, v3, :cond_150

    :cond_13e
    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    if-ne p0, v1, :cond_147

    const/4 v2, 0x2

    :cond_147
    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    invoke-virtual {p0, v2, v5}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :cond_150
    return-void
.end method

.method public onWindowAnimationStart()V
    .registers 9

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "onWindowAnimationStart()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1f

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    sget-object v6, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v2, v6, :cond_4e

    :cond_1f
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v2, :cond_3a

    const-string v2, "onWindowAnimationStart(),target home/recents,ready to start broardcast"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/oplus/quickstep/gesture/f;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_3a
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-ne v0, v3, :cond_44

    move v0, v4

    goto :goto_45

    :cond_44
    const/4 v0, 0x4

    :goto_45
    sget-object v1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :cond_4e
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-ne v0, v3, :cond_5d

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    if-eqz v0, :cond_5d

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelAnimation()V

    :cond_5d
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->triggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    if-nez v0, :cond_62

    goto :goto_65

    :cond_62
    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->notifyWindowAnimationStateChange(Z)V

    :goto_65
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_99

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v0, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const-string v1, "mRemoteTargetHandles"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    move v3, v2

    :goto_7f
    if-ge v3, v1, :cond_8d

    aget-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->adjustTransYPropertyState(Z)V

    goto :goto_7f

    :cond_8d
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->adjustTransYPropertyState(Z)V

    :cond_99
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_fe

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->checkPauseAppList()V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    iget-object v6, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string v7, "mContext"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v6}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v6

    if-nez v6, :cond_be

    move-object v6, v3

    goto :goto_c6

    :cond_be
    invoke-virtual {v6}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getMSystemWindowClosed()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_c6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_e9

    const-string v6, "homekey"

    invoke-static {v6, v5}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v0

    if-nez v0, :cond_e6

    goto :goto_e9

    :cond_e6
    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setMSystemWindowClosed(Z)V

    :cond_e9
    :goto_e9
    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeUpGesture()Z

    move-result v0

    if-eqz v0, :cond_fe

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInSelected:Z

    if-nez v0, :cond_fe

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->performHapticFeedback()V

    :cond_fe
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-nez v0, :cond_104

    :cond_102
    :goto_102
    move v5, v2

    goto :goto_111

    :cond_104
    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_10b

    goto :goto_102

    :cond_10b
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-ne v0, v5, :cond_102

    :goto_111
    if-eqz v5, :cond_12c

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v5, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v5, :cond_12c

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->animToCurrent:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    if-nez v0, :cond_122

    goto :goto_12c

    :cond_122
    invoke-virtual {v0}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_129

    goto :goto_12c

    :cond_129
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_12c
    :goto_12c
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eq v0, v1, :cond_139

    sget-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    :cond_139
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v5, v0, Lcom/android/launcher/Launcher;

    if-eqz v5, :cond_142

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_143

    :cond_142
    move-object v0, v3

    :goto_143
    if-nez v0, :cond_146

    goto :goto_149

    :cond_146
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->clearOplusOnResumeCallback()V

    :goto_149
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->releaseRemoteAnimationViewInfo:Z

    if-eqz v0, :cond_162

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eq v0, v1, :cond_15f

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p0

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p0, v0, :cond_162

    :cond_15f
    invoke-static {v3, v2, v4, v3}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo$default(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;ZILjava/lang/Object;)V

    :cond_162
    return-void
.end method

.method public performHapticFeedback()V
    .registers 9

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportLuxunVirbrator()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16f

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    move v2, v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const-string p0, "mContext"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/common/util/VibrationUtils;->vibrate$default(Landroid/content/Context;IJZILjava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "reset()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceNotChangeStateToQuickSwitch:Z

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->reset()V

    return-void
.end method

.method public resetStateForAnimationCancel()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mWasLauncherAlreadyVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureStarted:Z

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    move v0, v1

    :goto_d
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    instance-of v3, v2, Lcom/android/quickstep/LauncherActivityInterface;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->forceNotChangeStateToQuickSwitch:Z

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/quickstep/BaseActivityInterface;->onTransitionCancelled(ZLcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    goto :goto_28

    :cond_1f
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/quickstep/BaseActivityInterface;->onTransitionCancelled(ZLcom/android/quickstep/GestureState$GestureEndTarget;)V

    :goto_28
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-eqz v0, :cond_2f

    invoke-virtual {p0, v1, v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->setDividerShown(ZZ)V

    :cond_2f
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_36

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_36
    return-void
.end method

.method public final restoreStateIfNeed()V
    .registers 8

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    const-string v1, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->notifyWorkspaceVisible(Z)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :cond_1f
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    move-object v0, v1

    goto :goto_2a

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    :goto_2a
    if-nez v0, :cond_2e

    move-object v3, v1

    goto :goto_32

    :cond_2e
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    :goto_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreStateIfNeed: currentState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", endTarget = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v5}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QuickStep"

    const-string v6, "OplusBaseSwipeUpHandler"

    invoke-static {v5, v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v4

    if-nez v4, :cond_83

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    if-eqz v0, :cond_6b

    move-object v1, v0

    :cond_6b
    if-nez v1, :cond_6e

    goto :goto_83

    :cond_6e
    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    goto :goto_83

    :cond_74
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_83

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->reset()V

    :cond_83
    :goto_83
    return-void
.end method

.method public resumeLastTask()V
    .registers 5

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "resumeLastTask"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    goto :goto_18

    :cond_f
    new-instance v2, Lcom/oplus/quickstep/gesture/f;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    :goto_18
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v2, "finishRecentsAnimation"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/logging/EventLogArray;->addLog(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->reset()V

    return-void
.end method

.method public screenshotGroupTask(I)Z
    .registers 11

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p0, "QuickStep"

    const-string p1, "OplusBaseSwipeUpHandler"

    const-string v0, " mRecent is empty"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    const/4 v2, 0x0

    if-nez v0, :cond_14

    move-object v0, v2

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    :goto_18
    instance-of v3, v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v3, :cond_1f

    check-cast v0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    goto :goto_20

    :cond_1f
    move-object v0, v2

    :goto_20
    if-nez v0, :cond_23

    return v1

    :cond_23
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getOtherTask(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_2b

    :goto_29
    move-object v0, v2

    goto :goto_36

    :cond_2b
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_30

    goto :goto_29

    :cond_30
    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_36
    if-nez v0, :cond_39

    return v1

    :cond_39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_43

    move-object v5, v2

    goto :goto_48

    :cond_43
    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    move-object v5, v0

    :goto_48
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_4d

    goto :goto_51

    :cond_4d
    invoke-virtual {v0, v7}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v2

    :goto_51
    move-object v8, v2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/folder/download/c;

    move-object v3, v1

    move-object v4, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher/folder/download/c;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setDividerShown(ZZ)V
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v1, "setDividerShown: shown="

    const-string v2, ", immediate="

    const-string v3, ", isTargetsNull="

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseSwipeUpHandler"

    invoke-static {p2, v0, v1, v2}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationTargets:Lcom/android/quickstep/RecentsAnimationTargets;

    if-nez p0, :cond_23

    goto :goto_28

    :cond_23
    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {p0, p1}, Lcom/android/quickstep/TaskViewUtils;->setDividerShown([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    :goto_28
    return-void
.end method

.method public final setLandscape(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isLandscape:Z

    return-void
.end method

.method public setScreenshotCaptured()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "setScreenshotCaptured()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->capturedTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setupLauncherUiAfterSwipeUpToRecentsAnimation()V
    .registers 5

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    const-string v2, "setupLauncherUiAfterSwipeUpToRecentsAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    instance-of v2, v0, Lcom/android/quickstep/OplusBaseActivityInterface;

    if-eqz v2, :cond_14

    check-cast v0, Lcom/android/quickstep/OplusBaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseActivityInterface;->onSwipeUpToRecentsComplete()V

    :cond_14
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->onSwipeUpAnimationSuccess()V

    :goto_1c
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v2, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    invoke-virtual {v0, v2}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    :cond_27
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->endLauncherTransitionController()V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    new-instance v2, Lcom/oplus/quickstep/gesture/f;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/TaskAnimationManager;->setLiveTileCleanUpHandler(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->enableLiveTileRestartListener()V

    :cond_42
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v1, :cond_58

    const/4 v1, 0x0

    goto :goto_5c

    :cond_58
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    :goto_5c
    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->doLogGesture(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->reset()V

    return-void
.end method

.method public startNewTask(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    const-string v1, "startNewTask(), mCanceled="

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->startNewTask(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateDisplacement(F)V
    .registers 5

    neg-float p1, p1

    iget v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    mul-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_10

    if-lez v0, :cond_10

    iget p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    goto :goto_37

    :cond_10
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    if-nez v1, :cond_1b

    move p1, v0

    goto :goto_1d

    :cond_1b
    int-to-float v0, v1

    div-float/2addr p1, v0

    :goto_1d
    iget v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_37

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorStartPullback:F

    iget v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->dragLengthFactorMaxPullback:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isDragging:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(FZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isDragging:Z

    return-void
.end method

.method public updateFinalShift()V
    .registers 1

    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateFinalShift()V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->updateTriggerPanelTransitionProgress()V

    return-void
.end method

.method public updateLauncherTransitionProgress()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isInPreviewState:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->canCreateNewOrUpdateExistingLauncherTransitionController()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hasLauncherTransitionControllerStarted:Z

    if-eqz v0, :cond_1d

    goto :goto_28

    :cond_1d
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mLauncherTransitionController:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iget p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->currentProgress:F

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_28
    :goto_28
    return-void
.end method

.method public updateSplitScreenMinimized(Z)V
    .registers 4

    if-eqz p1, :cond_2a

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentsAnimatoinCancelled:Z

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "updateSplitScreenMinimized: splitScreenMinimized = "

    const-string v1, ", recentsAnimatoinCancelled = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->recentsAnimatoinCancelled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", minimized = false"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseSwipeUpHandler"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    const/4 p1, 0x0

    :cond_2a
    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->updateSplitScreenMinimized(Z)V

    return-void
.end method

.method public updateThumbnail(IZ)Z
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_19

    goto :goto_20

    :cond_19
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mTaskSnapshot:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/quickstep/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p1, 0x0

    :goto_21
    if-eqz p1, :cond_3c

    if-eqz p2, :cond_3c

    iget-boolean p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mCanceled:Z

    if-nez p2, :cond_3c

    sget-object p2, Lcom/android/quickstep/OplusViewUtils;->INSTANCE:Lcom/android/quickstep/OplusViewUtils;

    new-instance v0, Lcom/oplus/quickstep/gesture/f;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/gesture/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V

    new-instance v1, Lcom/android/launcher3/uioverrides/touchcontrollers/f;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/f;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/quickstep/OplusViewUtils;->postDrawWithLog(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)Z

    move-result p0

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    return p0
.end method
