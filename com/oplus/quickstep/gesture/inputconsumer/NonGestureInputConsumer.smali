.class public Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/InputConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$Companion;

.field private static final TAG:Ljava/lang/String; = "NonGestureInputConsumer"


# instance fields
.field private mActivePointerId:I

.field private final mContext:Landroid/content/Context;

.field private final mDownPos:Landroid/graphics/PointF;

.field private final mFlingThreshold:F

.field private mGoingToOverview:Z

.field private mInMistouch:Z

.field private final mLastPos:Landroid/graphics/PointF;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private final mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

.field private final mMotionPauseMinDisplacement:F

.field private mPassedDragSlop:Z

.field private final mSlop:F

.field private mStartDisplacement:F

.field private final mSwipeAction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private recentsAnimationDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->Companion:Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swipeAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mSwipeAction:Ljava/util/function/Consumer;

    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickStepDragSlopPx()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mSlop:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070873

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mMotionPauseMinDisplacement:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070a83

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mFlingThreshold:F

    new-instance p2, Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-direct {p2, p1}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mDownPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mLastPos:Landroid/graphics/PointF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mActivePointerId:I

    new-instance v0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer$1;-><init>(Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;)V

    invoke-virtual {p2, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    sget-object p2, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setHandler(Landroid/os/Handler;)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setVelocityTracker(Landroid/view/VelocityTracker;)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setDisplayRotation(I)V

    return-void
.end method

.method public static final synthetic access$getMMotionPauseDetector$p(Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;)Lcom/android/quickstep/util/MotionPauseDetector;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    return-object p0
.end method

.method public static final synthetic access$getMSwipeAction$p(Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mSwipeAction:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static final synthetic access$setMGoingToOverview$p(Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mGoingToOverview:Z

    return-void
.end method

.method private final endTouchTracking()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :goto_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    return-void
.end method

.method private final isFling()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mFlingThreshold:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method private final onDropEvents(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    goto :goto_19

    :cond_b
    sget-object p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object p1

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-interface {p1, v0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->onGestureEnded(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->endTouchTracking()V

    :goto_19
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "TYPE_NON_GESTURE_HOME"

    return-object p0
.end method

.method public final getRecentsAnimationDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->recentsAnimationDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-object p0
.end method

.method public getType()I
    .registers 1

    const/high16 p0, 0x200000

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 8

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mGoingToOverview:Z

    if-nez v0, :cond_191

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    goto/16 :goto_191

    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mPassedDragSlop:Z

    invoke-virtual {v0, p1, v1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->interceptAndInjectMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v1, "NonGestureInputConsumer"

    const/4 v2, 0x0

    if-nez v0, :cond_65

    iput-boolean v2, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mInMistouch:Z

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->interceptDownEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "onMotionEvent: DOWN, intercepted for mistouc-prevention"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mActivePointerId:I

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void

    :cond_65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_81

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mInMistouch:Z

    if-eqz v0, :cond_81

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "drop motion event except DOWN "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_95

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    :cond_95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_174

    const/4 v3, 0x1

    if-eq v0, v3, :cond_150

    const/4 v4, 0x2

    if-eq v0, v4, :cond_ed

    const/4 v4, 0x3

    if-eq v0, v4, :cond_150

    if-eq v0, v1, :cond_a8

    goto/16 :goto_190

    :cond_a8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mActivePointerId:I

    if-ne v1, v4, :cond_190

    if-nez v0, :cond_b7

    move v2, v3

    :cond_b7
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v3, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mActivePointerId:I

    goto/16 :goto_190

    :cond_ed
    iget v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f7

    return-void

    :cond_f7
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    iget-boolean v4, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mPassedDragSlop:Z

    if-nez v4, :cond_136

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_136

    iput-boolean v3, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mPassedDragSlop:Z

    iput v1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mStartDisplacement:F

    sget-object v4, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v4}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object v5

    invoke-interface {v5}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->interceptMoveEvent()Z

    move-result v5

    if-eqz v5, :cond_12e

    iput-boolean v3, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mInMistouch:Z

    return-void

    :cond_12e
    invoke-virtual {v4}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;->reset$default(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;ZILjava/lang/Object;)V

    :cond_136
    iget-boolean v4, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mPassedDragSlop:Z

    if-eqz v4, :cond_190

    iget v4, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mStartDisplacement:F

    sub-float/2addr v1, v4

    neg-float v1, v1

    iget-object v4, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    iget v5, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mMotionPauseMinDisplacement:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_147

    move v2, v3

    :cond_147
    invoke-virtual {v4, v2}, Lcom/android/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;I)V

    goto :goto_190

    :cond_150
    iget-boolean p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mPassedDragSlop:Z

    if-eqz p1, :cond_170

    iget-boolean p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mGoingToOverview:Z

    if-nez p1, :cond_170

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->isFling()Z

    move-result p1

    if-eqz p1, :cond_170

    sget-object p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object p1

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-interface {p1, v0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->onGestureEnded(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mSwipeAction:Ljava/util/function/Consumer;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_170
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->endTouchTracking()V

    goto :goto_190

    :cond_174
    iput-boolean v2, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mInMistouch:Z

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mActivePointerId:I

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_190
    :goto_190
    return-void

    :cond_191
    :goto_191
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->onDropEvents(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final setRecentsAnimationDeviceState(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/inputconsumer/NonGestureInputConsumer;->recentsAnimationDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-void
.end method
