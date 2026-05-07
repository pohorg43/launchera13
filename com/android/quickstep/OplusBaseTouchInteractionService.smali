.class public abstract Lcom/android/quickstep/OplusBaseTouchInteractionService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;
    }
.end annotation


# static fields
.field private static final CHECK_INPUT_CONSUMER_DELAY:J = 0x12cL

.field public static final Companion:Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

.field private static final DEFAULT_STATE:Lcom/oplus/quickstep/gesture/OplusGestureState;

.field private static final TAG:Ljava/lang/String; = "OplusBaseTouchInteractionService"

.field private static sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;


# instance fields
.field private isInputMonitorRegistered:Z

.field private isInvalidEvent:Z

.field public mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field public mConsumer:Lcom/android/quickstep/InputConsumer;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field public final mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mForceSendKeyWhenLanguageChange:Z

.field public mGestureState:Lcom/android/quickstep/GestureState;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

.field public mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

.field public mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

.field private final mPhoneGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

.field public mResetGestureInputConsumer:Lcom/android/quickstep/InputConsumer;

.field public mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field public mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mainChoreographer:Landroid/view/Choreographer;

.field private statusBarHeight:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->Companion:Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-direct {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;-><init>()V

    sput-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->DEFAULT_STATE:Lcom/oplus/quickstep/gesture/OplusGestureState;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/quickstep/d0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/d0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;I)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    new-instance v0, Lcom/android/quickstep/d0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/d0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;I)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-direct {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPhoneGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

    sget-object v0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v0, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    const-string v1, "DEFAULT_STATE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->initInputMonitor$lambda-5$lambda-4(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/quickstep/OplusBaseTouchInteractionService;
    .registers 1

    sget-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    return-object v0
.end method

.method public static synthetic b(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/InputConsumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onConsumerInactive(Lcom/android/quickstep/InputConsumer;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/InputEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->initInputMonitor$lambda-6(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/InputEvent;)V

    return-void
.end method

.method private final canRespondGesture()Z
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->isAutoRotateOn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v3, 0x2

    if-ne v0, v3, :cond_22

    goto :goto_24

    :cond_22
    move v0, v1

    goto :goto_25

    :cond_24
    :goto_24
    move v0, v2

    :goto_25
    if-nez v0, :cond_2f

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result p0

    if-nez p0, :cond_30

    :cond_2f
    move v1, v2

    :cond_30
    return v1
.end method

.method private final createGestureState(Lcom/android/quickstep/OverviewComponentObserver;)Lcom/oplus/quickstep/gesture/OplusGestureState;
    .registers 6

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/EventLogArray;->generateAndSetLogId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-direct {v0, p1, v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;IZ)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updateLastStartedTaskId(I)V

    goto :goto_68

    :cond_2e
    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    if-nez p1, :cond_3a

    const/4 v1, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    :goto_3e
    if-eqz v1, :cond_58

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p1, :cond_58

    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p0, v3}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    goto :goto_68

    :cond_58
    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    :goto_68
    return-object v0
.end method

.method private final createOplusDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/InputConsumer;
    .registers 9

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    return-object v0

    :cond_23
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0
.end method

.method private final createOplusOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Z)Lcom/android/quickstep/InputConsumer;
    .registers 13

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v3

    if-nez v3, :cond_f

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRunningAnimationToLauncher()Z

    move-result p1

    if-nez p1, :cond_54

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ASSISTANT_GIVES_LAUNCHER_FOCUS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_29

    if-nez p4, :cond_54

    :cond_29
    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_54

    :cond_3c
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInExclusionRegion(Landroid/view/MotionEvent;)Z

    move-result v6

    new-instance p1, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p3

    iget-object v5, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v1, p1

    move-object v2, v3

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V

    goto :goto_64

    :cond_54
    :goto_54
    new-instance p1, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    iget-object v4, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v5, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;-><init>(Lcom/android/quickstep/GestureState;Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/RecentsAnimationDeviceState;)V

    :goto_64
    return-object p1
.end method

.method private final createOtherActivityInputConsumer(Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .registers 15

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    :goto_f
    move-object v11, v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2d

    :cond_2a
    const/4 v0, 0x0

    move v6, v0

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v6, v1

    :goto_2e
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInExclusionRegion(Landroid/view/MotionEvent;)Z

    move-result v10

    new-instance p2, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v4

    new-instance v7, Lcom/android/quickstep/g0;

    invoke-direct {v7, p0, v1}, Lcom/android/quickstep/g0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;I)V

    iget-object v8, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v9, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-object v1, p2

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/oplus/quickstep/gesture/OplusGestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;)V

    return-object p2
.end method

.method public static synthetic d(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mFallbackSwipeHandlerFactory$lambda-1(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->notifyGestureDisable()V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onOverviewToggle$lambda-8(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLauncherSwipeHandlerFactory$lambda-0(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0
.end method

.method private final getInputMonitor()Lcom/android/systemui/shared/system/InputMonitorCompat;
    .registers 6

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTouchInteractionService"

    const-string v2, "getInputMonitor()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_a
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const-string/jumbo v4, "swipe-up"

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getDisplayId()I

    move-result p0

    invoke-virtual {v3, v4, p0}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    move-exception p0

    const-string v3, "monitor gesture input failed, msg is "

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    :goto_29
    if-nez p0, :cond_31

    const-string p0, "failed register gesture monitor"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_31
    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Landroid/view/InputMonitor;)V

    return-object v0
.end method

.method public static final getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->Companion:Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;->getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lcom/android/quickstep/OplusBaseTouchInteractionService;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onInputEvent$lambda-10(Lcom/android/quickstep/OplusBaseTouchInteractionService;J)V

    return-void
.end method

.method private static final initInputMonitor$lambda-5$lambda-4(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/MotionEvent;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private static final initInputMonitor$lambda-6(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/InputEvent;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private final initSystemGestureInfo(Landroid/content/Context;)V
    .registers 9

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    sget-object v6, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->statusBarHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->init$default(Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;Landroid/graphics/Point;IZILjava/lang/Object;)V

    new-instance v0, Lcom/android/quickstep/OplusBaseTouchInteractionService$initSystemGestureInfo$1;

    invoke-direct {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService$initSystemGestureInfo$1;-><init>()V

    invoke-virtual {v6, v0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->setCallbacks(Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "initSystemGestureInfo: size = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", statusBarHeight = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->statusBarHeight:I

    const-string p1, "QuickStep"

    const-string v1, "OplusBaseTouchInteractionService"

    invoke-static {v0, p0, p1, v1}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method private final isInExitFocusMode(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInExitFocusMode()Z

    move-result p0

    return p0

    :cond_b
    sget-object p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->isInExitFocusMode(Landroid/content/Intent;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setInExitFocusMode(Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string p1, "isInExitFocusMode: inExitFocusMode = "

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTouchInteractionService"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return p0
.end method

.method private final isMotionEventInvalid(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInvalidEvent:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string p1, "QuickStep"

    const-string v0, "OplusBaseTouchInteractionService"

    const-string v1, "isMotionEventInvalid: oplus input has registered, so we do not intercept event"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_37

    :cond_2b
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->interceptInjectEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_37
    iput-boolean p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInvalidEvent:Z

    :cond_39
    iget-boolean p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInvalidEvent:Z

    return p0
.end method

.method private static final mFallbackSwipeHandlerFactory$lambda-1(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 14

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/FallbackSwipeHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_36

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    if-nez v1, :cond_24

    :cond_22
    :goto_22
    move v1, v5

    goto :goto_32

    :cond_24
    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    if-nez v1, :cond_2b

    goto :goto_22

    :cond_2b
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-ne v1, v2, :cond_22

    move v1, v2

    :goto_32
    if-eqz v1, :cond_36

    move v8, v2

    goto :goto_37

    :cond_36
    move v8, v5

    :goto_37
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v9

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/quickstep/FallbackSwipeHandler;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    return-object v0
.end method

.method private static final mLauncherSwipeHandlerFactory$lambda-0(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 14

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v4

    const-string v1, "gestureState"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    if-nez v1, :cond_29

    :cond_27
    :goto_27
    move v1, v5

    goto :goto_37

    :cond_29
    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    if-nez v1, :cond_30

    goto :goto_27

    :cond_30
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-ne v1, v2, :cond_27

    move v1, v2

    :goto_37
    if-eqz v1, :cond_3b

    move v8, v2

    goto :goto_3c

    :cond_3b
    move v8, v5

    :goto_3c
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v9

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    return-object v0
.end method

.method private final newBaseConsumer(Lcom/android/quickstep/GestureState;Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .registers 11

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isKeyguardShowingOccluded()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createOplusDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_41

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_31

    :cond_2d
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v0, :cond_33

    :goto_31
    move-object v0, v1

    goto :goto_37

    :cond_33
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_37
    const-string v4, "android.intent.action.CHOOSER"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    move v0, v2

    goto :goto_42

    :cond_41
    move v0, v3

    :goto_42
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    if-nez v4, :cond_49

    goto :goto_51

    :cond_49
    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isExcludedAssistant()Z

    move-result v4

    if-ne v4, v2, :cond_51

    move v4, v2

    goto :goto_52

    :cond_51
    :goto_51
    move v4, v3

    :goto_52
    if-eqz v4, :cond_8f

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_7a

    goto :goto_7e

    :cond_7a
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v4, :cond_80

    :goto_7e
    move-object v4, v1

    goto :goto_84

    :cond_80
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :goto_84
    if-eqz v4, :cond_8e

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v2

    goto :goto_8f

    :cond_8e
    move v0, v3

    :cond_8f
    :goto_8f
    iget-boolean v4, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mForceSendKeyWhenLanguageChange:Z

    if-eqz v4, :cond_b6

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_a6

    check-cast v4, Lcom/android/launcher3/Launcher;

    goto :goto_a7

    :cond_a6
    move-object v4, v1

    :goto_a7
    if-nez v4, :cond_aa

    goto :goto_b2

    :cond_aa
    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->forceNonGesture()Z

    move-result v4

    if-ne v4, v2, :cond_b2

    move v4, v2

    goto :goto_b3

    :cond_b2
    :goto_b2
    move v4, v3

    :goto_b3
    iput-boolean v3, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mForceSendKeyWhenLanguageChange:Z

    goto :goto_b7

    :cond_b6
    move v4, v3

    :goto_b7
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result v5

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v6

    if-nez v6, :cond_ca

    goto :goto_d7

    :cond_ca
    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    if-nez v6, :cond_d1

    goto :goto_d7

    :cond_d1
    iget-boolean v6, v6, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-ne v6, v2, :cond_d7

    move v6, v2

    goto :goto_d8

    :cond_d7
    :goto_d7
    move v6, v3

    :goto_d8
    if-eqz v6, :cond_fd

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_fb

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v5

    if-eqz v5, :cond_fc

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v5

    sget-object v6, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v5, v6, :cond_fb

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v5

    sget-object v6, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v5, v6, :cond_fb

    goto :goto_fc

    :cond_fb
    move v2, v3

    :cond_fc
    :goto_fc
    move v5, v2

    :cond_fd
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_176

    const-string v2, "newBaseConsumer: isResumed="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isRecentsAnimationRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", endTarget="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", runningTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v3

    if-nez v3, :cond_138

    goto :goto_140

    :cond_138
    invoke-virtual {v3}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTaskId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInExitFocusMode="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInExitFocusMode()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useSpecialInputConsumer="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getUseSpecialInputConsumer()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canOverview="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceOverview="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseTouchInteractionService"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_176
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    if-nez v1, :cond_182

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto/16 :goto_1f0

    :cond_182
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRunningAnimationToLauncher()Z

    move-result v1

    if-nez v1, :cond_1ec

    if-nez v5, :cond_1ec

    if-eqz v0, :cond_18d

    goto :goto_1ec

    :cond_18d
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isGestureBlockedActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_1a4

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto :goto_1f0

    :cond_1a4
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result p1

    if-eqz p1, :cond_1c9

    invoke-direct {p0, p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->useSpecialInputConsumer(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z

    move-result p1

    if-eqz p1, :cond_1c9

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object p3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {p1, p0, p2, p3, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->createInputConsumer(Landroid/content/Context;Lcom/oplus/quickstep/gesture/OplusGestureState;Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/RecentsAnimationDeviceState;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto :goto_1f0

    :cond_1c9
    if-nez v4, :cond_1d7

    invoke-direct {p0, p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInExitFocusMode(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z

    move-result p1

    if-eqz p1, :cond_1d2

    goto :goto_1d7

    :cond_1d2
    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createOtherActivityInputConsumer(Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto :goto_1f0

    :cond_1d7
    :goto_1d7
    sget-object p1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object p3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {p1, p0, p2, p3, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->createInputConsumer(Landroid/content/Context;Lcom/oplus/quickstep/gesture/OplusGestureState;Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/RecentsAnimationDeviceState;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto :goto_1f0

    :cond_1ec
    :goto_1ec
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createOplusOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Z)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    :goto_1f0
    return-object p0
.end method

.method private final newConsumer(Lcom/android/quickstep/GestureState;Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTouchInteractionService"

    const-string v2, "newConsumer"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canStartSystemGesture()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result v4

    const-string v5, ", isValidGestureState="

    if-nez v4, :cond_a8

    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v2}, Lcom/android/quickstep/SystemUiProxy;->getIsStartingMultipleTasks()Z

    move-result v2

    sget-object v4, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

    invoke-virtual {v4, v7}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->forceStartGesture(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v4, v7}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->isFocusedWindowIgnoreHomeMenuKey(Landroid/content/Context;)Z

    move-result v10

    sget-object v11, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v11}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v11}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureDisabled()Z

    move-result v11

    invoke-virtual {v4}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->isAppLunchAnimationRunning()Z

    move-result v4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v4, :cond_55

    invoke-static {}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeNavigationBarDisabled()Z

    move-result v4

    if-eqz v4, :cond_55

    move v4, v12

    goto :goto_56

    :cond_55
    move v4, v13

    :goto_56
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserSetupComplete()Z

    move-result v14

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isDisableGesturesGuideHomeMenuKey()Z

    move-result v15

    invoke-static {}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->getState()I

    move-result v16

    if-nez v16, :cond_6b

    move/from16 v16, v12

    goto :goto_6d

    :cond_6b
    move/from16 v16, v13

    :goto_6d
    if-nez v4, :cond_80

    if-nez v11, :cond_80

    if-nez v6, :cond_77

    if-eqz v3, :cond_80

    if-nez v10, :cond_80

    :cond_77
    if-eqz v14, :cond_80

    if-nez v15, :cond_80

    if-nez v2, :cond_80

    if-nez v16, :cond_80

    goto :goto_81

    :cond_80
    move v12, v13

    :goto_81
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v13

    if-eqz v13, :cond_a9

    const-string v13, "newConsumer(), canStartSystemGesture="

    const-string v9, ", forceStartGesture="

    const-string v7, ", isIgnoreHomeKey="

    invoke-static {v13, v3, v9, v6, v7}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isGestureDisabled="

    const-string v9, ", isNavBarDisabled="

    invoke-static {v6, v10, v7, v11, v9}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v7, ", isUserSetupCompleted="

    invoke-static {v6, v4, v7, v14, v5}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v4, ", isInGesturesGuide="

    const-string v7, ", isStartingMultipleTasks="

    invoke-static {v6, v12, v4, v15, v7}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v6, v2, v0, v1}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    :cond_a8
    move v12, v2

    :cond_a9
    :goto_a9
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_d5

    const-string v2, "newConsumer(), skipCheckGestureAvailable="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isGestureValid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d5
    invoke-virtual {v8, v12}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setGestureValid(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "locked, can start system gesture? "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_f8

    move-object/from16 v7, p0

    invoke-direct {v7, v8}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createOplusDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    goto :goto_fe

    :cond_f8
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    :goto_fe
    return-object v0

    :cond_ff
    move-object/from16 v7, p0

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->isUsedSpecialInputConsumer()Z

    move-result v1

    if-nez v1, :cond_24f

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isCustomizeRecentTaskDisabled()Z

    move-result v1

    if-eqz v1, :cond_119

    goto/16 :goto_24f

    :cond_119
    if-nez v12, :cond_127

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_122

    goto :goto_127

    :cond_122
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    goto :goto_12b

    :cond_127
    :goto_127
    invoke-direct/range {p0 .. p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->newBaseConsumer(Lcom/android/quickstep/GestureState;Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    :goto_12b
    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_139

    invoke-interface {v3}, Lcom/android/quickstep/InputConsumer;->notifyOrientationSetup()V

    :cond_139
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_1e9

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    move-object/from16 v9, p3

    invoke-virtual {v0, v9}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerAssistantAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_162

    new-instance v10, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;

    iget-object v4, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)V

    move-object v3, v10

    :cond_162
    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    const-string v1, "newGestureState.rawActivityInterface"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-eqz v0, :cond_18b

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_18b

    new-instance v0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;

    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-nez v2, :cond_183

    const/4 v2, 0x0

    goto :goto_187

    :cond_183
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v2

    :goto_187
    invoke-direct {v0, v7, v3, v1, v2}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    move-object v3, v0

    :cond_18b
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isBubblesExpanded()Z

    move-result v0

    if-nez v0, :cond_19f

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isSystemUiDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1ae

    :cond_19f
    new-instance v3, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    :cond_1ae
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_1bd

    new-instance v3, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    invoke-direct {v3, v7, v8}, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;)V

    :cond_1bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, v7, v1, v3, v2}, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object v3, v0

    :cond_1d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isAccessibilityMenuAvailable()Z

    move-result v0

    if-eqz v0, :cond_20f

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusAccessibilityInputConsumerImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, v7, v1, v3, v2}, Lcom/android/quickstep/inputconsumers/OplusAccessibilityInputConsumerImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    goto :goto_20e

    :cond_1e9
    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_1f9

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v3

    :cond_1f9
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_20f

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, v7, v1, v3, v2}, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    :goto_20e
    move-object v3, v0

    :cond_20f
    if-nez v12, :cond_24e

    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_24e

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24e

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;

    if-eqz v0, :cond_24e

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isNavbarHidden()Z

    move-result v0

    if-eqz v0, :cond_24e

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->canStartWithNavHidden()Z

    move-result v0

    if-nez v0, :cond_24e

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureDisabled()Z

    move-result v0

    if-nez v0, :cond_24e

    invoke-direct {v7, v7}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->initSystemGestureInfo(Landroid/content/Context;)V

    :cond_24e
    return-object v3

    :cond_24f
    :goto_24f
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->createInputConsumer(Landroid/content/Context;Lcom/oplus/quickstep/gesture/OplusGestureState;Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/RecentsAnimationDeviceState;)Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    return-object v0
.end method

.method private final notifyGestureDisable()V
    .registers 5

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTouchInteractionService"

    const-string v2, "notifyGestureDisable()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "intent.action.GAME_FOCUS_LAUNCH_INTERCEPTED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_22

    goto :goto_2c

    :catch_22
    move-exception p0

    const-string v2, "notifyGestureDisable -- Exception:"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private final onConsumerInactive(Lcom/android/quickstep/InputConsumer;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getActiveConsumerInHierarchy()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    :goto_a
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->reset()V

    :cond_13
    return-void
.end method

.method private final onInputEvent(Landroid/view/InputEvent;)V
    .registers 18

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/view/MotionEvent;

    const-string v8, "OplusBaseTouchInteractionService"

    if-nez v1, :cond_14

    const-string v1, "Unknown event "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    instance-of v2, v1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    if-eqz v2, :cond_27

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.dragndrop.GlobalInputReceiverClient"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    move-object v2, v0

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v1

    if-eqz v1, :cond_32

    return-void

    :cond_32
    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {v7, v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isMotionEventInvalid(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget-object v1, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->canRetryDetect()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_4b

    invoke-direct {v7, v7}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->initSystemGestureInfo(Landroid/content/Context;)V

    :cond_4b
    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void

    :cond_4f
    sget-object v1, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->offsetEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    const-string v0, "TIS"

    const-string v1, "TouchInteractionService.onInputEvent"

    invoke-static {v0, v1, v9}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    const-string v10, "QuickStep"

    if-nez v0, :cond_6e

    const-string v0, "onInputEvent(), mDeviceState user is not unlocked"

    invoke-static {v10, v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6e
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/android/launcher3/util/TraceHelper;->beginFlagsOverride(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    if-nez v13, :cond_2fb

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSwipeUpToAssistantAnimationOptimize()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_96

    sget-object v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->runDeferredCallback()V

    :cond_96
    sget-object v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->clearDeferredCallback()V

    :cond_a1
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-static {v9}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/RotationTouchHelper;->setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_c5

    :cond_ba
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/quickstep/RotationTouchHelper;->setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V

    :goto_c5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_10b

    const-string v0, "onInputEvent(), ACTION_DOWN, x="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isOffsetState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    sget-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->DEFAULT_STATE:Lcom/oplus/quickstep/gesture/OplusGestureState;

    sget-object v3, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iput-object v3, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/quickstep/RotationTouchHelper;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_218

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->canRespondGesture()Z

    move-result v1

    const-string v2, "onInputEvent(), ACTION_DOWN, canRespondGesture="

    invoke-static {v1, v2, v10, v8}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz v2, :cond_1e9

    if-eqz v1, :cond_1e9

    new-instance v0, Lcom/android/quickstep/GestureState;

    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-direct {v0, v1}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/GestureState;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createGestureState(Lcom/android/quickstep/OverviewComponentObserver;)Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_14d

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v2, v3, :cond_14d

    move v2, v11

    goto :goto_14e

    :cond_14d
    const/4 v2, 0x0

    :goto_14e
    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setPreviousGestureToNewTask(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_1a8

    if-eqz v2, :cond_1a8

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v2, v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v2, :cond_1a8

    invoke-virtual {v1, v11}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setContinueLastGesture(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setGestureValid(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getLastGestureConfig()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setLastGestureConfig(Landroid/content/res/Configuration;)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInSplitScreenMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setInSplitScreenMode(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isSupportFloatingWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setSupportFloatingWindow(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getUseSpecialInputConsumer()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setUseSpecialInputConsumer(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInExitFocusMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setInExitFocusMode(Z)V

    :cond_1a8
    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-nez v2, :cond_1ad

    goto :goto_1b0

    :cond_1ad
    invoke-interface {v2}, Lcom/android/quickstep/InputConsumer;->onConsumerAboutToBeSwitched()V

    :goto_1b0
    invoke-direct {v7, v0, v1, v9}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->newConsumer(Lcom/android/quickstep/GestureState;Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    iput-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    instance-of v2, v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    if-eqz v2, :cond_1bd

    check-cast v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    goto :goto_1be

    :cond_1bd
    const/4 v0, 0x0

    :goto_1be
    if-nez v0, :cond_1c2

    const/4 v0, 0x0

    goto :goto_1c5

    :cond_1c2
    invoke-virtual {v0}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->setLayoutRotationIfNeed()V

    :goto_1c5
    if-nez v0, :cond_1e7

    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    instance-of v2, v0, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    if-eqz v2, :cond_1d0

    check-cast v0, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    goto :goto_1d1

    :cond_1d0
    const/4 v0, 0x0

    :goto_1d1
    if-nez v0, :cond_1d5

    const/4 v0, 0x0

    goto :goto_1d9

    :cond_1d5
    invoke-virtual {v0}, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;->getDelegate()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    :goto_1d9
    instance-of v2, v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    if-eqz v2, :cond_1e0

    check-cast v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    goto :goto_1e1

    :cond_1e0
    const/4 v0, 0x0

    :goto_1e1
    if-nez v0, :cond_1e4

    goto :goto_1e7

    :cond_1e4
    invoke-virtual {v0}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->setLayoutRotationIfNeed()V

    :cond_1e7
    :goto_1e7
    move-object v0, v1

    goto :goto_1f2

    :cond_1e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->reset()V

    iput-object v3, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    :goto_1f2
    sget-object v1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-nez v2, :cond_1fa

    const/4 v2, 0x0

    goto :goto_1fe

    :cond_1fa
    invoke-interface {v2}, Lcom/android/quickstep/InputConsumer;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1fe
    const-string v3, "setInputConsumer: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logging/EventLogArray;->addLog(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    iput-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v1, v11}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setNeedInject(Z)V

    goto/16 :goto_2e5

    :cond_218
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_2c1

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v1

    if-eqz v1, :cond_2c1

    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz v1, :cond_25a

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isAssistantActionValid(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_25a

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createGestureState(Lcom/android/quickstep/OverviewComponentObserver;)Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v0

    if-nez v0, :cond_245

    goto :goto_24b

    :cond_245
    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    if-nez v1, :cond_24d

    :goto_24b
    const/4 v1, 0x0

    goto :goto_251

    :cond_24d
    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    :goto_251
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->canTriggerAssistant(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    goto :goto_25b

    :cond_25a
    const/4 v1, 0x0

    :goto_25b
    move-object v15, v0

    if-eqz v1, :cond_272

    new-instance v6, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;

    iget-object v4, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v14, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)V

    iput-object v14, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto :goto_296

    :cond_272
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_294

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v0

    if-nez v0, :cond_294

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, v7, v1, v3, v2}, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    iput-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto :goto_296

    :cond_294
    iput-object v3, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    :goto_296
    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_2bf

    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_2bf

    const-string v0, "check if recents_animation_input_consumer is abnormal"

    invoke-static {v10, v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/quickstep/f0;

    invoke-direct {v3, v7, v0, v1}, Lcom/android/quickstep/f0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;J)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2bf
    move-object v0, v15

    goto :goto_2e5

    :cond_2c1
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2e3

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v1

    if-nez v1, :cond_2e3

    new-instance v1, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    iget-object v4, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    iput-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto :goto_2e5

    :cond_2e3
    iput-object v3, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    :goto_2e5
    iput-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    if-nez v0, :cond_2ed

    const/4 v14, 0x0

    goto :goto_2f1

    :cond_2ed
    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getName()Ljava/lang/String;

    move-result-object v14

    :goto_2f1
    const-string v0, "onInputEvent(), ACTION_DOWN, Consumer="

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v8, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30c

    :cond_2fb
    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v1, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    if-eq v0, v1, :cond_30c

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/quickstep/RotationTouchHelper;->setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V

    :cond_30c
    :goto_30c
    if-eq v13, v11, :cond_311

    const/4 v0, 0x3

    if-ne v13, v0, :cond_329

    :cond_311
    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-nez v0, :cond_316

    goto :goto_325

    :cond_316
    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getActiveConsumerInHierarchy()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    if-nez v0, :cond_31d

    goto :goto_325

    :cond_31d
    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->isConsumerDetachedFromGesture()Z

    move-result v0

    if-nez v0, :cond_325

    move v0, v11

    goto :goto_326

    :cond_325
    :goto_325
    const/4 v0, 0x0

    :goto_326
    if-eqz v0, :cond_329

    goto :goto_32a

    :cond_329
    const/4 v11, 0x0

    :goto_32a
    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    if-nez v0, :cond_32f

    goto :goto_332

    :cond_32f
    invoke-interface {v0, v9}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :goto_332
    sget-object v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;

    invoke-virtual {v0, v9}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->onMotionEvent(Landroid/view/MotionEvent;)V

    if-eqz v11, :cond_33c

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->reset()V

    :cond_33c
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/util/TraceHelper;->endFlagsOverride(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onInputEvent$lambda-10(Lcom/android/quickstep/OplusBaseTouchInteractionService;J)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->recreateInputConsumerIfNeed(JLandroid/os/Handler;)V

    return-void
.end method

.method private static final onOverviewToggle$lambda-8(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_44

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_29

    aget v1, v0, v2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_29

    aget v0, v0, v3

    if-eq v0, v4, :cond_29

    move v2, v3

    :cond_29
    if-eqz v2, :cond_34

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addCommand(I)V

    goto :goto_44

    :cond_34
    new-instance v0, Lcom/android/quickstep/RecentsActivityCommand;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/quickstep/RecentsActivityCommand;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/OverviewComponentObserver;)V

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivityCommand;->run()V

    :cond_44
    :goto_44
    return-void
.end method

.method private final updateConfigurationDiff(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p0

    sget-object p1, Lcom/oplus/quickstep/utils/ConfigurationUtils;->INSTANCE:Lcom/oplus/quickstep/utils/ConfigurationUtils;

    and-int/lit16 p2, p0, 0x1000

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_e

    const/4 p2, 0x1

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->setDensityDefault(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateConfigurationDiff(), diff="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isDensityDefault="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isDensityDefault()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusBaseTouchInteractionService"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final useSpecialInputConsumer(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getUseSpecialInputConsumer()Z

    move-result p0

    return p0

    :cond_b
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "this.packageName"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->canUseGestureInputConsumer(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/quickstep/OverviewComponentObserver;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setUseSpecialInputConsumer(Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_62

    const-string/jumbo v0, "useSpecialInputConsumer(), useSpecialInputConsumer="

    const-string v1, ", runningTaskId="

    invoke-static {v0, p0, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_47

    goto :goto_54

    :cond_47
    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-nez p1, :cond_4e

    goto :goto_54

    :cond_4e
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTouchInteractionService"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    return p0
.end method


# virtual methods
.method public final afterOnCreate()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTouchInteractionService"

    const-string v2, "afterOnCreate()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->init(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->cancelRecentsAnimation(Z)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->updateWindowContext(Landroid/content/Context;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final createOplusGestureState(Lcom/android/quickstep/GestureState;)Lcom/oplus/quickstep/gesture/OplusGestureState;
    .registers 6

    const-string v0, "previousGestureState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-virtual {v2}, Lcom/android/launcher3/logging/EventLogArray;->generateAndSetLogId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;IZ)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updateLastStartedTaskId(I)V

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getPreviouslyAppearedTaskIds()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updatePreviouslyAppearedTaskIds(Ljava/util/Set;)V

    goto :goto_44

    :cond_35
    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p0, v3}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    :goto_44
    return-object v0
.end method

.method public abstract createOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Z)Lcom/android/quickstep/InputConsumer;
.end method

.method public final forceUpdateMonitorIfNeed()Z
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInputMonitorRegistered:Z

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    :goto_18
    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v3

    if-nez v3, :cond_30

    :cond_24
    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result p0

    if-nez p0, :cond_31

    :cond_30
    move v1, v2

    :cond_31
    return v1
.end method

.method public final getMAM()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mAM"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mDeviceState"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mInputConsumer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mOverviewCommandHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mOverviewComponentObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMPhoneGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPhoneGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

    return-object p0
.end method

.method public final getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mResetGestureInputConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mResetGestureInputConsumer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mTaskAnimationManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public initInputMonitor()V
    .registers 6

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getInputMonitor()Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Landroid/view/InputMonitor;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    sget-object v0, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusInputManager;

    new-instance v1, Lcom/android/quickstep/g0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/g0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/OplusInputManager;->setConsumer(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->registerInputEvent()V

    goto :goto_43

    :cond_25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mainChoreographer:Landroid/view/Choreographer;

    if-nez v3, :cond_36

    const-string v3, "mainChoreographer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_37

    :cond_36
    move-object v1, v3

    :goto_37
    new-instance v3, Lcom/android/quickstep/d0;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/quickstep/d0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;I)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :goto_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInputMonitorRegistered:Z

    return-void
.end method

.method public final interceptConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 10

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "OplusBaseTouchInteractionService"

    const-string v3, "QuickStep"

    if-eqz v1, :cond_33

    const-string v1, "onConfigurationChanged(), newRotation = "

    const-string v4, ", orientation="

    invoke-static {v1, v0, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windowConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "resources.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->updateConfigurationDiff(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    if-nez v0, :cond_54

    goto/16 :goto_f9

    :cond_54
    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "applicationContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/common/config/ScreenInfo$Companion;->getRealStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->statusBarHeight:I

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-nez v0, :cond_74

    return v4

    :cond_74
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_7b

    return v4

    :cond_7b
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/android/quickstep/OverviewComponentObserver;->canHandleConfigChanges(Landroid/content/ComponentName;I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_c9

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "onConfigurationChanged(), handle config changes by self, so return -- diff = "

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_c8

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-nez v1, :cond_c8

    sget-object v1, Lcom/oplus/quickstep/utils/ConfigurationUtils;->INSTANCE:Lcom/oplus/quickstep/utils/ConfigurationUtils;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getLastActivityConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v5, "activity.lastActivityConfiguration"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->forceRelaunchLauncher(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_c8

    const-string p1, "onConfigurationChanged(), force relaunch launcher"

    invoke-static {v3, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->preloadOverview(Z)V

    :cond_c8
    return v4

    :cond_c9
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isOldSkinChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_f6

    :cond_f4
    iput-boolean v4, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mForceSendKeyWhenLanguageChange:Z

    :cond_f6
    invoke-virtual {p0, v7}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->preloadOverview(Z)V

    :cond_f9
    :goto_f9
    return v4
.end method

.method public final interceptDisposeEventHandlers()Z
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInputMonitorRegistered:Z

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->unregisterInputEvent()V

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    iput-boolean v2, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInputMonitorRegistered:Z

    return v0
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mainChoreographer:Landroid/view/Choreographer;

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->INSTANCE:Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->registerObserver(Landroid/content/Context;)V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->registerTelephonyCallback()V

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPhoneGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->setMGestureState(Lcom/oplus/quickstep/gesture/OplusGestureState;)V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "getInstance().configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v2, "resources.configuration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->updateConfigurationDiff(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    if-eqz v0, :cond_84

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    sget-object v2, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->SUPER_POWERSAVE_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->setInSuperPowerSaveMode(Z)V

    :cond_84
    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    const-class v1, Landroid/app/StatusBarManager;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->setStatusBarManager(Landroid/app/StatusBarManager;)V

    sget-object v0, Lcom/oplus/quickstep/utils/FingerPrintUtils;->INSTANCE:Lcom/oplus/quickstep/utils/FingerPrintUtils;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/common/config/ScreenInfo$Companion;->getRealStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->statusBarHeight:I

    sget-object v0, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/learning/NotificationHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .registers 10

    const-string v0, "OplusBaseTouchInteractionService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-object v2, Lcom/android/quickstep/OplusBaseTouchInteractionService;->sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-static {}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->destory()V

    sget-object v3, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->INSTANCE:Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;

    invoke-virtual {v3, p0}, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->unregisterObserver(Landroid/content/Context;)V

    sget-object v3, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    invoke-virtual {v3, p0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->unregisterTelephonyCallback()V

    sget-object v3, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->release()V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    const/4 v4, 0x0

    if-eqz v3, :cond_b2

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v3

    if-eqz v3, :cond_b2

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v3

    if-eqz v3, :cond_b2

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_b2

    instance-of v5, v3, Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_60

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/Launcher;

    goto :goto_61

    :cond_60
    move-object v5, v2

    :goto_61
    const/4 v6, 0x1

    if-nez v5, :cond_66

    :cond_64
    move v6, v4

    goto :goto_9f

    :cond_66
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v7, v8, :cond_9c

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    if-nez v5, :cond_7a

    move-object v5, v2

    goto :goto_7e

    :cond_7a
    invoke-virtual {v5}, Lcom/android/launcher3/OplusDragLayer;->getActiveController()Lcom/android/launcher3/util/TouchController;

    move-result-object v5

    :goto_7e
    instance-of v7, v5, Lcom/android/quickstep/touch/SwipeToRecentTouchController;

    if-eqz v7, :cond_85

    check-cast v5, Lcom/android/quickstep/touch/SwipeToRecentTouchController;

    goto :goto_86

    :cond_85
    move-object v5, v2

    :goto_86
    if-nez v5, :cond_8a

    :cond_88
    :goto_88
    move v5, v4

    goto :goto_98

    :cond_8a
    invoke-virtual {v5}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->getHelper()Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    move-result-object v5

    if-nez v5, :cond_91

    goto :goto_88

    :cond_91
    invoke-virtual {v5}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAnimatingToOverView()Z

    move-result v5

    if-ne v5, v6, :cond_88

    move v5, v6

    :goto_98
    if-nez v5, :cond_9c

    move v5, v6

    goto :goto_9d

    :cond_9c
    move v5, v4

    :goto_9d
    if-ne v5, v6, :cond_64

    :goto_9f
    if-eqz v6, :cond_b2

    invoke-virtual {v3}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v5, :cond_ac

    move-object v2, v3

    check-cast v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_ac
    if-nez v2, :cond_af

    goto :goto_b2

    :cond_af
    invoke-virtual {v2, v4, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    :cond_b2
    :goto_b2
    sget-object v1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->release()V

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    if-eqz v1, :cond_da

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    if-eqz v1, :cond_da

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_da

    const-string v1, "QuickStep"

    const-string/jumbo v2, "we must finish recents animation before gesture service destroyed"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    :cond_da
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onOplusNavigationModeChanged(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V
    .registers 7

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOplusNavigationModeChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseTouchInteractionService"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p1, v0, :cond_81

    sget-object p1, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered()Z

    move-result p1

    if-nez p1, :cond_81

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    const/4 v0, 0x0

    if-nez p1, :cond_3b

    :cond_39
    move p1, v0

    goto :goto_43

    :cond_3b
    invoke-interface {p1}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_39

    const/4 p1, 0x1

    :goto_43
    if-eqz p1, :cond_81

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->isDownEventValid()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->getDownEvent()Landroid/view/MotionEvent;

    move-result-object v3

    if-nez v3, :cond_60

    return-void

    :cond_60
    const-string v4, "nav mode changed, so cancel the gesture anim"

    invoke-static {v1, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setNeedInject(Z)V

    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    if-nez p0, :cond_7b

    goto :goto_7e

    :cond_7b
    invoke-interface {p0, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :goto_7e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_81
    return-void
.end method

.method public final onOverviewToggle()V
    .registers 11

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    goto :goto_28

    :cond_19
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_28

    :cond_20
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-ne v0, v2, :cond_28

    move v0, v2

    goto :goto_29

    :cond_28
    :goto_28
    move v0, v1

    :goto_29
    if-eqz v0, :cond_2c

    return-void

    :cond_2c
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "onOverviewToggle(), isScreenPinningActive="

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "QuickStep"

    const-string v4, "OplusBaseTouchInteractionService"

    invoke-static {v3, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-nez v0, :cond_54

    goto :goto_6b

    :cond_54
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isUserActive()Z

    move-result v5

    if-nez v5, :cond_6b

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Lcom/android/launcher3/BaseActivity;->hasSomeInvisibleFlag(I)Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-virtual {v0, v5}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_6b
    :goto_6b
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v0, :cond_7e

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->resetActiveRotation()V

    :cond_7e
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->needIgnoreToRecents()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->isInSuperPowerSaveMode()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/quickstep/OverviewComponentObserver;->isPowerSaveLauncher()Z

    move-result v7

    and-int/2addr v6, v7

    sget-object v7, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v7}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v7}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureDisabled()Z

    move-result v7

    sget-object v8, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v8}, Lcom/android/common/util/AppFeatureUtils;->isCustomizeRecentTaskDisabled()Z

    move-result v8

    if-nez v0, :cond_fd

    if-nez v5, :cond_fd

    if-nez v7, :cond_fd

    if-nez v6, :cond_fd

    if-eqz v8, :cond_ba

    goto :goto_fd

    :cond_ba
    sget-object v0, Lcom/android/common/util/ContextUtils;->INSTANCE:Lcom/android/common/util/ContextUtils;

    invoke-virtual {v0, p0}, Lcom/android/common/util/ContextUtils;->updateDefaultContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_ca

    return-void

    :cond_ca
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->getIsStartingMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_de

    const-string p0, "isStartingMultipleTasks  return"

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_de
    const-string v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/e0;

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/e0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_fd
    :goto_fd
    if-eqz v7, :cond_109

    sget-object v2, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/android/quickstep/e0;

    invoke-direct {v9, p0, v1}, Lcom/android/quickstep/e0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;I)V

    invoke-virtual {v2, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_109
    const-string p0, "interceptOnOverviewToggle: needIgnoreToRecents = "

    const-string v1, ", isInSuperPowerSaveMode = "

    const-string v2, ", isGestureDisabled = "

    invoke-static {p0, v0, v1, v5, v2}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "isLauncherChanging = "

    const-string v1, ", isCustomizeRecentTaskDisabled = "

    invoke-static {p0, v7, v0, v6, v1}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {p0, v8, v3, v4}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract preloadOverview(Z)V
.end method

.method public abstract reset()V
.end method

.method public final setMAM(Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-void
.end method

.method public final setMDeviceState(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-void
.end method

.method public final setMInputConsumer(Lcom/android/systemui/shared/system/InputConsumerController;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    return-void
.end method

.method public final setMOverviewCommandHelper(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    return-void
.end method

.method public final setMOverviewComponentObserver(Lcom/android/quickstep/OverviewComponentObserver;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    return-void
.end method

.method public final setMResetGestureInputConsumer(Lcom/android/quickstep/InputConsumer;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mResetGestureInputConsumer:Lcom/android/quickstep/InputConsumer;

    return-void
.end method

.method public final setMTaskAnimationManager(Lcom/android/quickstep/TaskAnimationManager;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    return-void
.end method
