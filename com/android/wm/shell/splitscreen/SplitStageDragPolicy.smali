.class Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;
    }
.end annotation


# static fields
.field private static final BACK_ALPHA:F = 0.5f

.field private static final BLUR_RADIUS_RATIO:F = 0.1f

.field private static final CROP_ANIMATION_DURATION:I = 0xc8

.field private static final DIM_ANIMATION_DURATION:I = 0x190

.field private static final DIM_HIDE_ALPHA:I = 0x0

.field private static final DIM_SHOW_ALPHA:I = 0x1

.field private static final DIVISION_EQUAL:I = 0x2

.field private static final NON_ANIMATION:I = 0x0

.field private static final PREPARE_ANIMATION:I = 0x1

.field private static final READY_ANIMATION:I = 0x2

.field private static final RELATIVE_LAYER:I = 0x1

.field public static final SPLIT_CORNERRADIUS:F = 40.0f

.field private static final TAG:Ljava/lang/String; = "SplitStageDragPolicy"


# instance fields
.field private mAlreadyHandleUpEvent:Z

.field private mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

.field private final mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mBackSurface:Landroid/view/SurfaceControl;

.field private mCancleCurrentAnimation:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

.field private final mDisplayBounds:Landroid/graphics/Rect;

.field private mDragAnimationState:I

.field private mHeight:I

.field private mInitialMotionStageStartCrop:Landroid/graphics/Rect;

.field private mInitialOffset:Landroid/graphics/PointF;

.field private mIsChildSurfaceValid:Z

.field private mMaintainStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDimLeash:Landroid/view/SurfaceControl;

.field private final mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

.field private mMotionStageLeash:Landroid/view/SurfaceControl;

.field private final mMotionStageStartBounds:Landroid/graphics/Rect;

.field private final mMotionTaskPositioner:Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;

.field private mNextTransferAnimation:Landroid/animation/ValueAnimator;

.field private mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

.field private mNonMotionDimLeash:Landroid/view/SurfaceControl;

.field private final mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

.field private mNonMotionStageLeash:Landroid/view/SurfaceControl;

.field private final mNonMotionStageStartBounds:Landroid/graphics/Rect;

.field private final mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

.field private final mSplitLayoutSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private mVibrator:Lcom/oplus/os/LinearmotorVibrator;

.field private mWidth:I

.field private mZoomCrop:Landroid/graphics/Rect;

.field private mZoomRect:Landroid/graphics/Rect;

.field private mZoomScale:F

.field private mZoomTaskLeash:Landroid/view/SurfaceControl;

.field private mZoomTaskSurface:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Supplier;Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/splitscreen/StageTaskListener;",
            "Lcom/android/wm/shell/splitscreen/StageTaskListener;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            ">;",
            "Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mDragAnimationState:I

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mCancleCurrentAnimation:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialMotionStageStartCrop:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMaintainStateList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mIsChildSurfaceValid:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAlreadyHandleUpEvent:Z

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionTaskPositioner:Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialMotionStageStartCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialMotionStageStartCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->initZoomParams(Landroid/graphics/Rect;)V

    new-instance p1, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;-><init>(Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mContext:Landroid/content/Context;

    const-string p2, "linearmotor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/os/LinearmotorVibrator;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mVibrator:Lcom/oplus/os/LinearmotorVibrator;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomTaskLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mCancleCurrentAnimation:Z

    return p0
.end method

.method public static synthetic access$1302(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mCancleCurrentAnimation:Z

    return p1
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->finishAnimationUnCheck()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    return p0
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startDimAnimation()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->resetDragAnimation(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionDimLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionDimLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialMotionStageStartCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    return p0
.end method

.method private adjustAnimationLayerForSplitToZoom(Landroid/graphics/Rect;F)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->getSurfaceForTask(I)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_8e

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    const v4, 0x7ffffffe

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const v3, 0x7fffffff

    invoke-virtual {v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionDimLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move v4, p2

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/high16 p2, 0x42200000  # 40.0f

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionDimLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_9b

    :cond_8e
    sget-object p1, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    const-string p2, "##### child surface is invalid"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mIsChildSurfaceValid:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->resetDragAnimation(I)V

    :goto_9b
    return-void
.end method

.method private adjustAnimationLayerForSplitToZoomOnFoldDevice(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->getSurfaceForTask(I)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_86

    if-eqz v0, :cond_86

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    const v4, 0x7ffffffe

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const v3, 0x7fffffff

    invoke-virtual {v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionDimLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {v1, v0, v2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move v4, p3

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/high16 p2, 0x42200000  # 40.0f

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionDimLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_93

    :cond_86
    sget-object p1, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    const-string p2, "##### child surface is invalid"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mIsChildSurfaceValid:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->resetDragAnimation(I)V

    :goto_93
    return-void
.end method

.method private adjustDimLayerPosition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;II)V
    .registers 6

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, p4

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    int-to-float p0, p0

    int-to-float p3, p3

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private createDimLeash(Landroid/view/SurfaceControl$Transaction;)Z
    .registers 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v10, -0x3

    invoke-virtual {v0, v10}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v11, "drag-dim:"

    invoke-static {v11}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v12, "createDimLeash"

    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionDimLeash:Landroid/view/SurfaceControl;

    iget v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v3, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->getTopAppPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->initIconDimSurface(Landroid/view/SurfaceControl$Transaction;IILandroid/view/SurfaceControl;Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_6a

    return v13

    :cond_6a
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionDimLeash:Landroid/view/SurfaceControl;

    const v14, 0x7fffffff

    invoke-virtual {v9, v0, v14}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionDimLeash:Landroid/view/SurfaceControl;

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v15}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-static {v11}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionDimLeash:Landroid/view/SurfaceControl;

    iget v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v3, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->getTopAppPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->initIconDimSurface(Landroid/view/SurfaceControl$Transaction;IILandroid/view/SurfaceControl;Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_d9

    return v13

    :cond_d9
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionDimLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v0, v14}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionDimLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v15}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget v0, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    iget v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    const v2, 0x3dcccccd  # 0.1f

    if-le v0, v1, :cond_ef

    int-to-float v0, v0

    goto :goto_f0

    :cond_ef
    int-to-float v0, v1

    :goto_f0
    mul-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v2, "backSurface"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v3, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mBackSurface:Landroid/view/SurfaceControl;

    iget-object v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-interface {v2, v1, v9}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v1, v13}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v15, v15}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mBackSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mBackSurface:Landroid/view/SurfaceControl;

    iget v1, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v2, v8, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-direct {v8, v9, v0, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->initBackSurfaceBuffer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    const/4 v0, 0x1

    return v0
.end method

.method private createStageLeash(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "SplitNonMotionLeash"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "createNonMotionStageLeash"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-interface {v2, v0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    const/high16 v4, 0x42200000  # 40.0f

    invoke-virtual {v0, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    const v5, 0x7ffffffe

    invoke-virtual {v0, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->getSurfaceForTask(I)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "SplitMotionLeash"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "createMotionStageLeash"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-interface {v2, v0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentDragPosition(II)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentDragSurfaceScale(F)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentTargetPosition(II)V

    return-void
.end method

.method private createZoomLeash(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-interface {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->getZoomTaskSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomTaskSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_60

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "ZoomLeash"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "createZoomLeash"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomTaskLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-interface {v1, v0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomTaskSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomTaskLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomTaskLeash:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    const v1, 0x7ffffffe

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    const v0, 0x7ffffffd

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_60
    return-void
.end method

.method private finishAnimationUnCheck()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getBeforeUpState()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_54

    goto :goto_52

    :pswitch_b  #0x5, 0x6
    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    const-string v2, "### finishAnimationUnCheck REPLACE_STATE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->resetDragAnimation(I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->swapSplitStages(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->vibrateWidthSpecilEffectInner(I)V

    goto :goto_52

    :pswitch_25  #0x3, 0x4
    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    const-string v1, "### finishAnimationUnCheck ZOOM_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->prepareToZoomStateOnFoldDevice()V

    goto :goto_52

    :cond_44
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->prepareToZoomState()V

    goto :goto_52

    :pswitch_48  #0x0, 0x1, 0x2
    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    const-string v2, "### finishAnimationUnCheck NORMAL_STATE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->resetDragAnimation(I)V

    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_48  #00000001
        :pswitch_48  #00000002
        :pswitch_25  #00000003
        :pswitch_25  #00000004
        :pswitch_b  #00000005
        :pswitch_b  #00000006
    .end packed-switch
.end method

.method private static getTopActivityName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTopAppPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private initBackSurfaceBuffer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V
    .registers 5

    new-instance p0, Landroid/graphics/Picture;

    invoke-direct {p0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {p0, p3, p4}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p3

    const/high16 p4, -0x1000000

    invoke-virtual {p3, p4}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    sget-object p0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private initIconDimSurface(Landroid/view/SurfaceControl$Transaction;IILandroid/view/SurfaceControl;Ljava/lang/String;IZ)Z
    .registers 11

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0, p5}, Lcom/android/wm/shell/splitscreen/OplusMultiWindowUtils;->getDefaultPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz p7, :cond_2d

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_28

    const p6, -0x969697

    invoke-virtual {v2, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_3e

    :cond_28
    const/4 p6, -0x1

    invoke-virtual {v2, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_3e

    :cond_2d
    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_38

    const p6, -0xf0f8f6

    invoke-virtual {v2, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_3e

    :cond_38
    const p6, -0xf070b

    invoke-virtual {v2, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_3e
    sub-int/2addr p2, p5

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    const/4 p5, 0x0

    invoke-virtual {v2, p0, p2, p3, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object p0

    invoke-virtual {p1, p4, p0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    sget-object p0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {p1, p4, p0}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x1

    return p0
.end method

.method private initZoomParams(Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v1, 0x0

    if-le v0, p1, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomCrop:Landroid/graphics/Rect;

    if-eqz v2, :cond_26

    const v0, 0x3f19999a  # 0.6f

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    int-to-float p0, p1

    const v0, 0x3fb9999a  # 1.45f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {v3, v1, v1, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_34

    :cond_26
    const p1, 0x3f2ac083  # 0.667f

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    int-to-float p0, v0

    const p1, 0x3fd55555

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v3, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_34
    return-void
.end method

.method private initialDragAnimation()Z
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    return v1

    :cond_b
    :goto_b
    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    const-string v2, "initialDragAnimation setWallpaperVisible"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->setWallpaperVisible(Z)V

    const-string v2, "initialDragAnimation setWallpaperVisible over"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->createStageLeash(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->createDimLeash(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->setWallpaperVisible(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    return v1

    :cond_35
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->createZoomLeash(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-interface {v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->cancelDividerFadeAnimator()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->setDividerShown(ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionDimLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->adjustDimLayerPosition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;II)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionDimLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->adjustDimLayerPosition(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;II)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return v6
.end method

.method private prepareToZoomState()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentMovePosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentDragBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentMovePosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentDragBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### zoomInfo zoomCrop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " zoomScale: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    invoke-direct {p0, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->adjustAnimationLayerForSplitToZoom(Landroid/graphics/Rect;F)V

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mIsChildSurfaceValid:Z

    if-nez v0, :cond_6d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mIsChildSurfaceValid:Z

    return-void

    :cond_6d
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    invoke-interface {v0, v1, v2, p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->switchToZoom(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/graphics/Rect;F)V

    return-void
.end method

.method private prepareToZoomStateOnFoldDevice()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentMovePosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentMovePosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentMovePosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentMovePosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    :cond_61
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### OnFoldDevice zoomInfo zoomCrop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " zoomScale: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentDragBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v1, v4

    add-int/2addr v3, v0

    invoke-direct {v5, v4, v0, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    invoke-direct {p0, v5, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->adjustAnimationLayerForSplitToZoomOnFoldDevice(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    move-object v0, v5

    goto :goto_c8

    :cond_bd
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentDragBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    invoke-direct {p0, v1, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->adjustAnimationLayerForSplitToZoomOnFoldDevice(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    :goto_c8
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mIsChildSurfaceValid:Z

    if-nez v1, :cond_d0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mIsChildSurfaceValid:Z

    return-void

    :cond_d0
    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-direct {p0, v0, v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startCropAnimationOnFoldDevice(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_e3

    :cond_da
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentDragBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startCropAnimationOnFoldDevice(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_e3
    return-void
.end method

.method private recordInitialOffset(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getDownTouchPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getDownTouchPosition()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private resetDragAnimation(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->setWallpaperVisible(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v0, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v0, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToSplitContainerLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionDimLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionDimLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonDragTopTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_4c
    const/4 v0, 0x1

    if-eq p1, v0, :cond_ad

    const/4 v2, 0x3

    if-ne p1, v2, :cond_53

    goto :goto_ad

    :cond_53
    const/4 v2, 0x5

    if-ne p1, v2, :cond_d5

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    if-nez v2, :cond_87

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_87

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_d5

    :cond_87
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_d5

    :cond_ad
    :goto_ad
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p1, v0, v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->setDividerShown(ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_d5
    :goto_d5
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomTaskLeash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_ef

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_ef

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomTaskSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p1, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->attachToDisplayArea(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_ef
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->resetDragState()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMaintainStateList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_103
    if-ltz p1, :cond_132

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMaintainStateList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->maintainSplitToZoomTaskState(IZ)V

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unmaintain task:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMaintainStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, -0x1

    goto :goto_103

    :cond_132
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-interface {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->resetDragState()V

    return-void
.end method

.method private startCropAnimationOnFoldDevice(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_4e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->getSurfaceForTask(I)Landroid/view/SurfaceControl;

    move-result-object v8

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v5, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$3;-><init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$4;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$4;-><init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_4e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startDimAnimation()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$6;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$6;-><init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$7;-><init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startNextAnimation()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mCancleCurrentAnimation:Z

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private vibrateWidthSpecilEffectInner(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oplus/splitscreen/SplitScreenVibrator;->vibrateEffectId(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public cancleCurrentAnimation()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->isCurrentAnimationRun()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public finishAnimation()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->isCurrentAnimationRun()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->finishAnimationUnCheck()V

    :cond_9
    return-void
.end method

.method public getMotionStage()Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    return-object p0
.end method

.method public getMotionTopActivityName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->getTopActivityName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMotionTopAppPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->getTopAppPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public isCurrentAnimationRun()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public moveDragLeash(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->getCurrentDragSurfaceScale()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getLastTouchPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getLastTouchPosition()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mInitialOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v0

    sub-float/2addr p1, v2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    float-to-int v0, v1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setCurrentDragPosition(II)V

    :cond_3a
    return-void
.end method

.method public onDown(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getDisplayWidth()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getDisplayHeight()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getZoomInfo()Lcom/android/wm/shell/splitscreen/OplusZoomInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->isFixedOrientationLandscape(Lcom/android/wm/shell/splitscreen/StageTaskListener;)Z

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->getZoomScale(IIZ)F

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomScale:F

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setZoomScale(F)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v4, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->getZoomRect(IIZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mZoomRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setZoomRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mWidth:I

    iget v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setScreenSize(II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->setRecoveryAndReplaceArea(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStageStartBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStageStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p0, v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->setInitialBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onMove(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 6

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mDragAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getYOffsetForIme()I

    move-result v0

    if-eqz v0, :cond_1b

    sget-object p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    const-string p1, "offset for ime, not allow drag"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->isDragging()Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    :cond_22
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mDragAnimationState:I

    if-nez v0, :cond_b7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mDragAnimationState:I

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->initialDragAnimation()Z

    move-result v2

    if-nez v2, :cond_33

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mDragAnimationState:I

    return-void

    :cond_33
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-interface {v2, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->setAnimationState(Z)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->recordInitialOffset(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    iput v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mDragAnimationState:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->vibrateWidthSpecilEffectInner(I)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->maintainSplitToZoomTaskState(IZ)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMaintainStateList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMaintainStateList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->maintainSplitToZoomTaskState(IZ)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMaintainStateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMaintainStateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_98
    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    const-string v2, "maintain tasks:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNonMotionStage:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v3

    invoke-static {v2, v3, v0}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_b7
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mDragAnimationState:I

    if-ne v0, v1, :cond_c0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->handleTouchState(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    :cond_c0
    return-void
.end method

.method public onUp(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 5

    sget-object v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->TAG:Ljava/lang/String;

    const-string v1, "onUp:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAlreadyHandleUpEvent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAlreadyHandleUpEvent:Z

    if-eqz v1, :cond_19

    return-void

    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAlreadyHandleUpEvent:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mDragAnimationState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_28

    goto :goto_2e

    :cond_28
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mAnimationManager:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->handleTouchState(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    return-void

    :cond_2e
    :goto_2e
    const-string p1, "not dragging or not ready"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mSplitDragHandler:Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;

    invoke-interface {p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$SplitDragHandler;->resetDragState()V

    return-void
.end method

.method public startAnimation(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFII)V
    .registers 30

    move-object/from16 v14, p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p11, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    iput-object v15, v14, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p13

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p11

    move/from16 v6, p10

    move/from16 v7, p9

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p5

    move-object/from16 v12, p8

    move-object v14, v13

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;ILandroid/graphics/Point;Landroid/graphics/Point;FFFLandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v15, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    move/from16 v2, p12

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;

    move/from16 v3, p13

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$2;-><init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->startNextAnimation()V

    return-void
.end method

.method public startDimAnimationForDragSplitToZoom()V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/ShellMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$5;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy$5;-><init>(Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public vibrateWidthSpecilEffect(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitStageDragPolicy;->vibrateWidthSpecilEffectInner(I)V

    return-void
.end method
