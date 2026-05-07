.class public Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MOTION_SURFACE_SHADOW_RADIUS:I = 0x30

.field private static final TAG:Ljava/lang/String; = "SplitMotionTaskPositioner"


# instance fields
.field private final mCornerRadius:I

.field private final mDelta:Landroid/graphics/PointF;

.field private final mLastMotionBounds:Landroid/graphics/Rect;

.field private final mMoveTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mStartBounds:Landroid/graphics/Rect;

.field private final mStartPosition:Landroid/graphics/Point;

.field private mSurface:Landroid/view/SurfaceControl;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mStartBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mStartPosition:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mDelta:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mLastMotionBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mMoveTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/splitscreen/DividerUtils;->getCornerRadius(Landroid/view/Display;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mCornerRadius:I

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->lambda$springBackMotionTask$0(Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->resetSurfaceState()V

    return-void
.end method

.method private handleMoveTask(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_2d

    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mMoveTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mSurface:Landroid/view/SurfaceControl;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v0, 0x42400000  # 48.0f

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mSurface:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mCornerRadius:I

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private synthetic lambda$springBackMotionTask$0(Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p2

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p1

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_3c

    :cond_25
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mMoveTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mSurface:Landroid/view/SurfaceControl;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p2, p0, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private resetSurfaceState()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mMoveTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1c
    return-void
.end method


# virtual methods
.method public getLastMotionBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mLastMotionBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public onDown(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .registers 5

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mSurface:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mStartBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mDelta:Landroid/graphics/PointF;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3}, Landroid/graphics/PointF;->set(FF)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mStartPosition:Landroid/graphics/Point;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mLastMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onMove(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)Landroid/graphics/Rect;
    .registers 8

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->isDragging()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mLastMotionBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_9
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getLastTouchDelta()Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mStartPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mDelta:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v0

    sub-float v1, v5, v1

    add-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    add-float/2addr v0, v4

    iput v0, v2, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mLastMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mTmpBounds:Landroid/graphics/Rect;

    float-to-int v1, v5

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mLastMotionBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->handleMoveTask(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mLastMotionBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mLastMotionBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public onUp(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 2

    return-void
.end method

.method public springBackMotionTask(Landroid/graphics/Rect;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 6

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    if-nez p2, :cond_b

    goto :goto_43

    :cond_b
    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->mLastMotionBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1, p1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/animation/Animation;->initialize(IIII)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_48

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/splitscreen/m0;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/wm/shell/splitscreen/m0;-><init>(Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_43
    :goto_43
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->resetSurfaceState()V

    return-void

    nop

    :array_48
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
