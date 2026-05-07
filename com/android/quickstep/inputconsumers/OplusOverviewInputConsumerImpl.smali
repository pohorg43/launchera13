.class public final Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;
.super Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TS;>;T:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TS;>;>",
        "Lcom/android/quickstep/inputconsumers/OverviewInputConsumer<",
        "TS;TT;>;"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl$Companion;

.field private static final INVALID_ACTIVITY_TYPE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusOverviewInputConsumerImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private activity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private activityType:I

.field private appBounds:Landroid/graphics/Rect;

.field private deviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field private downPos:Landroid/graphics/PointF;

.field private gestureState:Lcom/android/quickstep/GestureState;

.field private inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field private inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private isPointInValid:Z

.field private isTrackerRecycled:Z

.field private touchSlop:I

.field private final velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->Companion:Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/GestureState;Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/GestureState;",
            "TT;",
            "Lcom/android/systemui/shared/system/InputMonitorCompat;",
            "Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;",
            "Z",
            "Lcom/android/quickstep/RecentsAnimationDeviceState;",
            ")V"
        }
    .end annotation

    const-string v0, "gestureState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceState"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;-><init>(Lcom/android/quickstep/GestureState;Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->gestureState:Lcom/android/quickstep/GestureState;

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iput-object p4, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iput-object p6, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->deviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->activityType:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->appBounds:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->touchSlop:I

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->downPos:Landroid/graphics/PointF;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    const-string p2, "obtain()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->velocityTracker:Landroid/view/VelocityTracker;

    sget-object p2, Lcom/oplus/quickstep/utils/OplusLayoutUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusLayoutUtils;

    iget-object p3, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p2, p3}, Lcom/oplus/quickstep/utils/OplusLayoutUtils;->updateDefaultContext(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->gestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p2

    if-nez p2, :cond_54

    goto :goto_a2

    :cond_54
    invoke-virtual {p2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-nez p2, :cond_5b

    goto :goto_a2

    :cond_5b
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    if-nez p2, :cond_60

    goto :goto_a2

    :cond_60
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-nez p2, :cond_65

    goto :goto_a2

    :cond_65
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_70

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_70
    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->activityType:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_a2

    const-string p2, "init: activityType="

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->activityType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", appBounds="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "QuickStep"

    const-string p3, "OplusOverviewInputConsumerImpl"

    invoke-static {p2, p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a2
    :goto_a2
    sget-object p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setVelocityTracker(Landroid/view/VelocityTracker;)V

    return-void
.end method

.method private final checkPointInValid(Landroid/view/MotionEvent;)Z
    .registers 5

    iget v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->activityType:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_2e

    :cond_1c
    const/4 v2, 0x0

    goto :goto_2e

    :cond_1e
    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    :cond_2e
    :goto_2e
    return v2
.end method

.method private final endTouchTrackingIfNeed(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->isTrackerRecycled:Z

    if-nez v0, :cond_23

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_e

    if-ne p1, v1, :cond_23

    :cond_e
    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->isTrackerRecycled:Z

    :try_start_10
    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_23

    :catch_16
    move-exception p0

    const-string/jumbo p1, "tracker recycle exception: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusOverviewInputConsumerImpl"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method private final proxyTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mStartingInActivityBounds:Z

    if-nez v1, :cond_d

    or-int/lit16 v1, v0, 0x100

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    :cond_d
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mLocationOnScreen:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mTarget:Lcom/android/launcher3/views/BaseDragLayer;

    iget-boolean v3, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mStartingInActivityBounds:Z

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/launcher3/views/BaseDragLayer;->proxyTouchEvent(Landroid/view/MotionEvent;ZZ)Z

    move-result v1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mLocationOnScreen:[I

    aget v2, p0, v2

    int-to-float v2, v2

    aget p0, p0, v4

    int-to-float p0, p0

    invoke-virtual {p1, v2, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    return v1
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->offsetEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const-string v1, "offsetEvent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->proxyTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2b

    :cond_27
    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->proxyTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_2b
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mTargetHandledTouch:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_79

    if-eqz v1, :cond_79

    iput-boolean v2, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mTargetHandledTouch:Z

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OverviewInputConsumer;->mStartingInActivityBounds:Z

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->gestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->closeOverlay()V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_4b

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    if-nez v0, :cond_50

    :cond_4e
    move v0, v3

    goto :goto_57

    :cond_50
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result v0

    if-nez v0, :cond_4e

    move v0, v2

    :goto_57
    if-eqz v0, :cond_5e

    const-string v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    :cond_5e
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string/jumbo v1, "startQuickstep"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logging/EventLogArray;->addLog(Ljava/lang/String;)V

    :cond_66
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz v0, :cond_79

    const-string v0, "Pilfer"

    const-string v1, "pilferPointers"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    :cond_79
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->isPointInValid:Z

    if-eqz v0, :cond_87

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_87

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->endTouchTrackingIfNeed(Landroid/view/MotionEvent;)V

    return-void

    :cond_87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->downPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-nez v0, :cond_9f

    goto :goto_a2

    :cond_9f
    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    :goto_a2
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->checkPointInValid(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b8

    iput-boolean v2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->isPointInValid:Z

    const-string p0, "OplusOverviewInputConsumerImpl"

    const-string p1, "onMotionEvent: point not in apps bounds, so we should not inject event"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b8
    iput-boolean v3, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->isPointInValid:Z

    :cond_ba
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->downPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->downPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v0

    iget v1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->touchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d8

    goto :goto_d9

    :cond_d8
    move v2, v3

    :goto_d9
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v0, p1, v2}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->interceptAndInjectMotionEvent(Landroid/view/MotionEvent;Z)Z

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->endTouchTrackingIfNeed(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final setLayoutRotationIfNeed()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_b

    goto :goto_45

    :cond_b
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->deviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->deviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v2

    const-string v3, "setLayoutRotationIfNeed: touchRotation="

    const-string v4, ", displayRotation="

    invoke-static {v3, v1, v4, v2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusOverviewInputConsumerImpl"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->deviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->deviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/views/RecentsView;->setLayoutRotation(II)V

    :goto_45
    return-void
.end method
