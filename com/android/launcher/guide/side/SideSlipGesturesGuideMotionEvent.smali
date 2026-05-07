.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANIMATION_MIN_SCALE:F = 0.5f

.field private static final FLOAT_EQUALS_NUM:F = 0.001f

.field private static final GESTURES_HOME:I = 0x1

.field private static final GESTURES_LAST_TASK:I = 0x3

.field private static final GESTURES_NONE:I = 0x0

.field private static final GESTURES_RECENTS:I = 0x2

.field private static final GO_HOME_REGION_BOTTOM_INSET_FRACTION:F = 0.2f

.field private static final GO_HOME_REGION_LEFT_INSET_FRACTION:F = 0.2f

.field private static final GO_HOME_REGION_RIGHT_INSET_FRACTION:F = 0.2f

.field private static final GO_HOME_REGION_TOP_INSET_FRACTION:F = 0.0f

.field private static final MIN_DISPLACEMENT:I = 0xc8

.field private static final PORTRAIT_NON_DETECT_SCALE:F = 0.4f

.field private static final SWIPE_DETECTING:I = 0x0

.field private static final SWIPE_FAIL:I = 0x1

.field private static final SWIPE_SUCCESS:I = 0x2

.field private static final SWIPE_TIMEOUT_MS:J = 0x190L

.field private static final TAG:Ljava/lang/String; = "SideSlipGesturesGuideMotionEvent"

.field private static final TIMEOUT:J = 0x1f4L

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mActivePointerId:I

.field private final mBottomRegion:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mDownPos:Landroid/graphics/PointF;

.field private mDownTime:J

.field private mGestureState:I

.field private mGestureThresholdForFling:F

.field private mGoHomeRegion:Landroid/graphics/RectF;

.field private mHadBeenPeeked:Z

.field private mHasIntercepted:Z

.field private mIsReachedUpSlop:Z

.field private mIsRtl:Z

.field private mIsValidTouchEvent:Z

.field private final mLastPos:Landroid/graphics/PointF;

.field private final mLeftSideRegion:Landroid/graphics/RectF;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

.field private mMotionPauseMinDisplacement:F

.field private mOffsetScale:F

.field private mPaddedWindowMoveSlop:Z

.field private mPassedPilferInputSlop:Z

.field private final mRightSideRegion:Landroid/graphics/RectF;

.field private mScale:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSquaredTouchSlop:F

.field private final mSwipeTouchRegion:Landroid/graphics/RectF;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mTouchListener:Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;

.field private mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLeftSideRegion:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mRightSideRegion:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mSwipeTouchRegion:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mBottomRegion:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGoHomeRegion:Landroid/graphics/RectF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mHasIntercepted:Z

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsValidTouchEvent:Z

    new-instance v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$2;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;)V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->init()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mHadBeenPeeked:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;)Lcom/android/quickstep/util/MotionPauseDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureState:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureState:I

    return p1
.end method

.method public static synthetic access$302(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mHasIntercepted:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;)Landroid/view/MotionEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->onGestureStateChange(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private calculateEndTarget(Landroid/graphics/PointF;F)I
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a83

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iget-boolean v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsReachedUpSlop:Z

    const-string v4, "calculateEndTarget isFling:"

    const-string v5, " goingToNewTask:"

    const-string v6, " mSwipeTouchRegion:"

    invoke-static {v4, v0, v5, v3, v6}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mSwipeTouchRegion:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mLastPos.x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mLastPos.y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mHadBeenPeeked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mHadBeenPeeked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " endVelocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " velocity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GesturesGuide"

    const-string v6, "SideSlipGesturesGuideMotionEvent"

    invoke-static {v5, v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mBottomRegion:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_9b

    iget-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsRtl:Z

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    float-to-int p0, p0

    if-ge p1, p0, :cond_95

    goto :goto_96

    :cond_88
    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    float-to-int p0, p0

    if-le p1, p0, :cond_95

    goto :goto_96

    :cond_95
    move v2, v1

    :goto_96
    if-eqz v2, :cond_e6

    if-eqz v3, :cond_e6

    goto :goto_e3

    :cond_9b
    if-nez v0, :cond_a3

    iget-boolean p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mHadBeenPeeked:Z

    if-eqz p0, :cond_e5

    const/4 v1, 0x2

    goto :goto_e6

    :cond_a3
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_e6

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGoHomeRegion:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v6, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_b7

    goto :goto_e5

    :cond_b7
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v6

    invoke-static {v4, v0}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v0

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureThresholdForFling:F

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_d0

    move v1, v2

    :cond_d0
    if-nez v1, :cond_d3

    goto :goto_e3

    :cond_d3
    if-eqz v3, :cond_e5

    iget p0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    if-le p0, p1, :cond_e5

    :goto_e3
    move v1, v5

    goto :goto_e6

    :cond_e5
    :goto_e5
    move v1, v2

    :cond_e6
    :goto_e6
    return v1
.end method

.method private detectHomeRecentSwipe()V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v2, v0, v2

    const-string v3, "SideSlipGesturesGuideMotionEvent"

    const-string v4, "GesturesGuide"

    if-lez v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "swipe fail elapsed:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureState:I

    return-void

    :cond_2a
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43480000  # 200.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_7c

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7f

    :cond_7c
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureState:I

    :cond_7f
    const-string v0, "mGestureState:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureState:I

    invoke-static {v0, p0, v4, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private finishTouchTracking(Landroid/view/MotionEvent;)V
    .registers 5

    const-string p1, "finishTouchTracking mPaddedWindowMoveSlop:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mPaddedWindowMoveSlop:Z

    const-string v1, "GesturesGuide"

    const-string v2, "SideSlipGesturesGuideMotionEvent"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mPaddedWindowMoveSlop:Z

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v1, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->calculateEndTarget(Landroid/graphics/PointF;F)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v0, :cond_4c

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_4c

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->onMotionEventSuccess()V

    goto :goto_6e

    :cond_4c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5a

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->getCurrentState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5a

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->onMotionEventSuccess()V

    goto :goto_6e

    :cond_5a
    if-ne p1, v1, :cond_67

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->getCurrentState()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_67

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->onMotionEventSuccess()V

    goto :goto_6e

    :cond_67
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->resetMotionEventState()V

    goto :goto_6e

    :cond_6b
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->resetMotionEventState()V

    :goto_6e
    return-void
.end method

.method private forceCancelGesture(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->finishTouchTracking(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void
.end method

.method private getCurrentState()I
    .registers 1

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getCurrentGesturesState()I

    move-result p0

    return p0
.end method

.method private getDisplacement(Landroid/view/MotionEvent;)F
    .registers 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p0

    return p1
.end method

.method private handleHomeRecentMotionEvent(Landroid/view/MotionEvent;)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    const-string v1, "SideSlipGesturesGuideMotionEvent"

    const-string v2, "GesturesGuide"

    if-nez v0, :cond_e

    const-string p0, "handleHomeRecentMotionEvent VelocityTracker is null"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->interceptMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mHasIntercepted:Z

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v3

    goto :goto_21

    :cond_20
    :goto_20
    move v0, v4

    :goto_21
    if-eqz v0, :cond_2f

    const-string p1, "handleHomeRecentMotionEvent mVelocityTracker intercept mHasIntercepted:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mHasIntercepted:Z

    invoke-static {p1, p0, v2, v1}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_40

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    :cond_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_15b

    if-eq v0, v4, :cond_13f

    const/4 v6, 0x2

    if-eq v0, v6, :cond_b7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9a

    if-eq v0, v5, :cond_55

    goto/16 :goto_19a

    :cond_55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mActivePointerId:I

    if-ne v1, v2, :cond_19a

    if-nez v0, :cond_64

    move v3, v4

    :cond_64
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mActivePointerId:I

    goto/16 :goto_19a

    :cond_9a
    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mPassedPilferInputSlop:Z

    if-nez v0, :cond_19a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mSwipeTouchRegion:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_19a

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->forceCancelGesture(Landroid/view/MotionEvent;)V

    goto/16 :goto_19a

    :cond_b7
    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_c7

    const-string p0, "handleHomeRecentMotionEvent pointerIndex INVALID_POINTER_ID"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19a

    :cond_c7
    iget-object v5, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->getDisplacement(Landroid/view/MotionEvent;)F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget-boolean v7, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsReachedUpSlop:Z

    if-nez v7, :cond_ed

    iput-boolean v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsReachedUpSlop:Z

    const-string/jumbo v7, "set mIsReachedUpSlop true"

    invoke-static {v2, v1, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ed
    iget-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mPaddedWindowMoveSlop:Z

    if-nez v1, :cond_fd

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mTouchSlop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_fd

    iput-boolean v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mPaddedWindowMoveSlop:Z

    :cond_fd
    iget-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mPassedPilferInputSlop:Z

    if-nez v1, :cond_11c

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v1

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mSquaredTouchSlop:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_11c

    iput-boolean v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mPassedPilferInputSlop:Z

    iget-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mPaddedWindowMoveSlop:Z

    if-nez v1, :cond_11c

    iput-boolean v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mPaddedWindowMoveSlop:Z

    :cond_11c
    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->startMovedAnimation(Landroid/view/MotionEvent;)V

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v2, v5

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12a

    move v1, v4

    goto :goto_12b

    :cond_12a
    move v1, v3

    :goto_12b
    iget-object v5, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    iget v6, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMotionPauseMinDisplacement:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_135

    if-eqz v1, :cond_136

    :cond_135
    move v3, v4

    :cond_136
    invoke-virtual {v5, v3}, Lcom/android/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;I)V

    goto :goto_19a

    :cond_13f
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->finishTouchTracking(Landroid/view/MotionEvent;)V

    iput-boolean v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsReachedUpSlop:Z

    iput-boolean v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mHasIntercepted:Z

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_19a

    :cond_15b
    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->isValidMotionEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsValidTouchEvent:Z

    if-eqz v0, :cond_19a

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownTime:J

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLastPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput-boolean v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mHasIntercepted:Z

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19a
    :goto_19a
    return-void
.end method

.method private init()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b0f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenWidth:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5b

    :cond_4d
    if-ge v0, v3, :cond_5b

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenWidth:I

    :cond_5b
    const v0, 0x3ecccccd  # 0.4f

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenHeight:I

    int-to-float v4, v3

    mul-float/2addr v4, v0

    sub-int/2addr v3, v1

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLeftSideRegion:Landroid/graphics/RectF;

    int-to-float v1, v2

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mRightSideRegion:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenWidth:I

    sub-int v2, v1, v2

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/navigation/NavigationController;->getColorGestureAreaSize(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mSwipeTouchRegion:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenHeight:I

    int-to-float v3, v2

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenWidth:I

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mBottomRegion:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenHeight:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000  # 2.0f

    mul-float/2addr v0, v4

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenWidth:I

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v1, v5, v3, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mTouchSlop:F

    mul-float/2addr v0, v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mSquaredTouchSlop:F

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/quickstep/util/MotionPauseDetector;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    new-instance v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$1;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070873

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMotionPauseMinDisplacement:F

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenWidth:I

    int-to-float v2, v1

    const v3, 0x3e4ccccd  # 0.2f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenHeight:I

    int-to-float v4, v3

    mul-float/2addr v4, v5

    int-to-float v1, v1

    const v5, 0x3f4ccccd  # 0.8f

    mul-float/2addr v1, v5

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGoHomeRegion:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b42

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureThresholdForFling:F

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsRtl:Z

    return-void
.end method

.method private interceptMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_1d

    :cond_a
    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureState:I

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->detectHomeRecentSwipe()V

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->onGestureStateChange(Landroid/view/MotionEvent;)V

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureState:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1d

    return p1

    :cond_1a
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->resetState()V

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return p0
.end method

.method private isValidMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsValidTouchEvent:Z

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getCurrentGesturesState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1b

    goto :goto_53

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mSwipeTouchRegion:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_53

    iput-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsValidTouchEvent:Z

    goto :goto_53

    :cond_2e
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mRightSideRegion:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_53

    iput-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsValidTouchEvent:Z

    goto :goto_53

    :cond_41
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mLeftSideRegion:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_53

    iput-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsValidTouchEvent:Z

    :cond_53
    :goto_53
    return-void
.end method

.method private onGestureStateChange(Landroid/view/MotionEvent;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureState:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->finishTouchTracking(Landroid/view/MotionEvent;)V

    :cond_f
    return-void
.end method

.method private resetMotionEventState()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    new-instance v0, Lcom/android/quickstep/util/MotionPauseDetector;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    new-instance v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$3;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$3;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mTouchListener:Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenWidth:I

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenHeight:I

    invoke-interface {v0, v1, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;->resetState(II)V

    return-void
.end method

.method private resetState()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mGestureState:I

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mHasIntercepted:Z

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsValidTouchEvent:Z

    return-void
.end method

.method private startMovedAnimation(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mDownPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScale:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f  # 0.001f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_37

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mOffsetScale:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_37

    return-void

    :cond_37
    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mScale:F

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mOffsetScale:F

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mTouchListener:Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;

    invoke-interface {p0, v0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;->onTouchMoved(FF)V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getCurrentGesturesState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mIsValidTouchEvent:Z

    if-nez v1, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleMotionEvent invalid motion event! state:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GesturesGuide"

    const-string v0, "SideSlipGesturesGuideMotionEvent"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2c
    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    const/4 v1, 0x4

    if-eq v0, v1, :cond_36

    const/4 v1, 0x5

    if-eq v0, v1, :cond_36

    goto :goto_39

    :cond_36
    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->handleHomeRecentMotionEvent(Landroid/view/MotionEvent;)V

    :goto_39
    const/4 p0, 0x1

    return p0
.end method

.method public onMotionEventSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mTouchListener:Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;

    invoke-interface {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;->onSuccess()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public setGestureGuideTouchListener(Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->mTouchListener:Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;

    return-void
.end method
