.class public final Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALLBACKS:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$DEFAULT_CALLBACKS$1;

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_LEFT:I = 0x4

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGesturesDetectUti"

.field private static callbacks:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;

.field private static canRetryDetect:Z

.field private static detectCancelled:Z

.field private static detecting:Z

.field private static downTime:J

.field private static downX:F

.field private static downY:F

.field private static mActivePointerId:I

.field private static realSize:Landroid/graphics/Point;

.field private static swipeDistanceThreshold:I

.field private static swipeState:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;

    new-instance v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$DEFAULT_CALLBACKS$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$DEFAULT_CALLBACKS$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->DEFAULT_CALLBACKS:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$DEFAULT_CALLBACKS$1;

    sput-object v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->callbacks:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;

    const/4 v0, -0x1

    sput v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->mActivePointerId:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->realSize:Landroid/graphics/Point;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final detectSwipe(JFF)I
    .registers 11

    sget p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->downX:F

    sget v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->downY:F

    sget-wide v1, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->downTime:J

    sub-long/2addr p1, v1

    sget v1, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->swipeDistanceThreshold:I

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    const-wide/16 v3, 0x1f4

    if-gtz v2, :cond_1c

    int-to-float v2, v1

    add-float/2addr v2, v0

    cmpl-float v2, p4, v2

    if-lez v2, :cond_1c

    cmp-long v2, p1, v3

    if-gez v2, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    sget-object v2, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->realSize:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_32

    int-to-float v5, v1

    sub-float/2addr v0, v5

    cmpg-float p4, p4, v0

    if-gez p4, :cond_32

    cmp-long p4, p1, v3

    if-gez p4, :cond_32

    const/4 p0, 0x2

    return p0

    :cond_32
    iget p4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p4, v1

    int-to-float p4, p4

    cmpl-float p4, p0, p4

    if-ltz p4, :cond_47

    int-to-float p4, v1

    sub-float p4, p0, p4

    cmpg-float p4, p3, p4

    if-gez p4, :cond_47

    cmp-long p4, p1, v3

    if-gez p4, :cond_47

    const/4 p0, 0x3

    return p0

    :cond_47
    int-to-float p4, v1

    cmpg-float p4, p0, p4

    if-gtz p4, :cond_58

    int-to-float p4, v1

    add-float/2addr p0, p4

    cmpl-float p0, p3, p0

    if-lez p0, :cond_58

    cmp-long p0, p1, v3

    if-gez p0, :cond_58

    const/4 p0, 0x4

    return p0

    :cond_58
    const/4 p0, 0x0

    return p0
.end method

.method private final detectSwipe(Landroid/view/MotionEvent;)I
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_22

    move v2, v1

    :goto_8
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->detectSwipe(JFF)I

    move-result v2

    if-eqz v2, :cond_1d

    return v2

    :cond_1d
    if-lt v3, v0, :cond_20

    goto :goto_22

    :cond_20
    move v2, v3

    goto :goto_8

    :cond_22
    :goto_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->detectSwipe(JFF)I

    move-result p0

    if-eqz p0, :cond_35

    return p0

    :cond_35
    return v1
.end method

.method public static synthetic init$default(Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;Landroid/graphics/Point;IZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->init(Landroid/graphics/Point;IZ)V

    return-void
.end method

.method private final reset()V
    .registers 3

    const-string p0, "QuickStep"

    const-string v0, "SystemGesturesDetectUti"

    const-string v1, "reset()"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->detecting:Z

    const/4 v0, 0x0

    sput v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->downX:F

    sput v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->downY:F

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->downTime:J

    sput p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->swipeDistanceThreshold:I

    const/4 v0, -0x1

    sput v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->mActivePointerId:I

    sput p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->swipeState:I

    sget-object p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->DEFAULT_CALLBACKS:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$DEFAULT_CALLBACKS$1;

    sput-object p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->callbacks:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;

    return-void
.end method

.method private final resetAll()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->reset()V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->canRetryDetect:Z

    sput-boolean p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->detectCancelled:Z

    return-void
.end method


# virtual methods
.method public final canRetryDetect()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->canRetryDetect:Z

    if-eqz p0, :cond_a

    sget-boolean p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->detectCancelled:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final init(Landroid/graphics/Point;IZ)V
    .registers 5

    const-string p0, "size"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->realSize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Point;->set(II)V

    sput p2, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->swipeDistanceThreshold:I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->detecting:Z

    sput-boolean p3, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->canRetryDetect:Z

    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->detecting:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_57

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_20

    if-eq v0, v2, :cond_1a

    goto :goto_76

    :cond_1a
    sput-boolean v1, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->detectCancelled:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->reset()V

    goto :goto_76

    :cond_20
    sget v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_56

    sget v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->swipeState:I

    if-eqz v0, :cond_2e

    goto :goto_56

    :cond_2e
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result p0

    sput p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->swipeState:I

    if-eq p0, v1, :cond_50

    if-eq p0, v3, :cond_4a

    if-eq p0, v2, :cond_44

    const/4 p1, 0x4

    if-eq p0, p1, :cond_3e

    goto :goto_76

    :cond_3e
    sget-object p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->callbacks:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;

    invoke-interface {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;->onSwipeFromLeft()V

    goto :goto_76

    :cond_44
    sget-object p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->callbacks:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;

    invoke-interface {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;->onSwipeFromRight()V

    goto :goto_76

    :cond_4a
    sget-object p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->callbacks:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;

    invoke-interface {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;->onSwipeFromBottom()V

    goto :goto_76

    :cond_50
    sget-object p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->callbacks:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;

    invoke-interface {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;->onSwipeFromTop()V

    goto :goto_76

    :cond_56
    :goto_56
    return-void

    :cond_57
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->resetAll()V

    goto :goto_76

    :cond_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    sput p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    sput p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->downY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    sput-wide v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->downTime:J

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    sput p1, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->mActivePointerId:I

    sput-boolean p0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->detectCancelled:Z

    :goto_76
    return-void
.end method

.method public final setCallbacks(Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;)V
    .registers 2

    const-string p0, "callbacks"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->callbacks:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;

    return-void
.end method
