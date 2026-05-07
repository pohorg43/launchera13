.class final Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CHANGE_AREA:I = 0x2

.field private static final DEBUG:Z = false

.field private static final HORIZONTAL_SPLIT:I = 0x2

.field public static final RECOVER_AREA:I = 0x0

.field public static final REPLACE_AREA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SplitControlBarTouchState"

.field private static final TRANSFORM_ZOOM_AREA_HEIGHT_RATIO_FOLDER:F = 0.222f

.field private static final TRANSFORM_ZOOM_AREA_HEIGHT_RATIO_HORIZONTAL:F = 0.311f

.field private static final TRANSFORM_ZOOM_AREA_HEIGHT_RATIO_VERTICAL:F = 0.366f

.field private static final TRANSFORM_ZOOM_AREA_WIDTH_RATIO_FOLDER:F = 0.15f

.field private static final TRANSFORM_ZOOM_AREA_WIDTH_RATIO_HORIZONTAL:F = 0.041f

.field public static final UP_AREA:I = 0x3

.field private static final ZOOMCROP_HORIZONTAL_SCALE_FOLDER:F = 0.288f

.field private static final ZOOMCROP_VERTICAL_SCALE_FOLDER:F = 0.618f

.field private static final ZOOM_LIMIT_SCALE:F = 0.25f

.field private static final ZOOM_SCALE_FOR_FOLDER:F = 0.675f


# instance fields
.field private mActivePointerId:I

.field private mBottomRegion:Landroid/graphics/Rect;

.field private final mDownDelta:Landroid/graphics/PointF;

.field private final mDownTouch:Landroid/graphics/PointF;

.field private mHotAreaChange:Z

.field private mIsDragging:Z

.field private final mLastDelta:Landroid/graphics/PointF;

.field private final mLastTouch:Landroid/graphics/PointF;

.field private mLeftRegion:Landroid/graphics/Rect;

.field private mRecoveryRegion:Landroid/graphics/Rect;

.field private mReplaceRegion:Landroid/graphics/Rect;

.field private mRightRegion:Landroid/graphics/Rect;

.field private mScreenSize:Landroid/graphics/Point;

.field private mSplitToZoomRegion:Landroid/graphics/Rect;

.field private mTouchArea:I

.field private mUpRegion:Landroid/graphics/Rect;

.field private mVerticalState:Z

.field private final mViewConfig:Landroid/view/ViewConfiguration;

.field private mWm:Landroid/view/WindowManager;

.field private mZoomInfo:Lcom/android/wm/shell/splitscreen/OplusZoomInfo;


# direct methods
.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/view/WindowManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mDownTouch:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mDownDelta:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastTouch:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastDelta:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mIsDragging:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mVerticalState:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mScreenSize:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mSplitToZoomRegion:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mRecoveryRegion:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mReplaceRegion:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mUpRegion:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mBottomRegion:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLeftRegion:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mRightRegion:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mHotAreaChange:Z

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mWm:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance p1, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mScreenSize:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p1, v0, p2}, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;-><init>(II)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mZoomInfo:Lcom/android/wm/shell/splitscreen/OplusZoomInfo;

    return-void
.end method

.method private adjustTouchState(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mSplitToZoomRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mTouchArea:I

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mHotAreaChange:Z

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->changeHotArea()V

    goto :goto_28

    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mRecoveryRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mTouchArea:I

    goto :goto_28

    :cond_1e
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mReplaceRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_28

    iput v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mTouchArea:I

    :cond_28
    :goto_28
    return-void
.end method

.method private adjustTransformationArea()V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mScreenSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v2

    const v3, 0x3ebb645a  # 0.366f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_56

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result v2

    if-nez v2, :cond_56

    if-ge v1, v0, :cond_2f

    iput-boolean v4, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mVerticalState:Z

    goto :goto_31

    :cond_2f
    iput-boolean v5, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mVerticalState:Z

    :goto_31
    const v2, 0x3e6353f8  # 0.222f

    int-to-float v4, v0

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mSplitToZoomRegion:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result v2

    if-eqz v2, :cond_90

    mul-float/2addr v4, v3

    float-to-int v2, v4

    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mUpRegion:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mBottomRegion:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mSplitToZoomRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_90

    :cond_56
    if-ge v1, v0, :cond_6f

    iput-boolean v4, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mVerticalState:Z

    int-to-float v2, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mUpRegion:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mBottomRegion:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mSplitToZoomRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_90

    :cond_6f
    iput-boolean v5, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mVerticalState:Z

    const v2, 0x3d27ef9e  # 0.041f

    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v2, v3

    const v3, 0x3e9f3b64  # 0.311f

    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v3, v4

    sub-int v4, v1, v2

    div-int/lit8 v6, v1, 0x2

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLeftRegion:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mRightRegion:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mSplitToZoomRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_90
    :goto_90
    return-void
.end method

.method private changeHotArea()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mHotAreaChange:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mScreenSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const v2, 0x3e6353f8  # 0.222f

    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v2, v3

    const v3, 0x3d27ef9e  # 0.041f

    int-to-float v4, v1

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mSplitToZoomRegion:Landroid/graphics/Rect;

    sub-int/2addr v1, v3

    invoke-virtual {p0, v3, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_37
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SplitControlBarTouchState"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivePointerId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mActivePointerId:I

    const-string v2, "mDownTouch="

    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/common/config/d;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mDownTouch:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDownDelta="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastTouch="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastDelta="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastDelta:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsDragging="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mIsDragging:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDisplayHeight()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mScreenSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public getDisplayWidth()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mScreenSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public getDownTouchDelta()Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mDownDelta:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getDownTouchPosition()Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mDownTouch:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getLastTouchDelta()Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastDelta:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getLastTouchPosition()Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastTouch:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getTouchArea()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mTouchArea:I

    return p0
.end method

.method public getZoomInfo()Lcom/android/wm/shell/splitscreen/OplusZoomInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mZoomInfo:Lcom/android/wm/shell/splitscreen/OplusZoomInfo;

    return-object p0
.end method

.method public isDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mIsDragging:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mScreenSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3e2ccccd  # 0.16875f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v2, "SplitControlBarTouchState"

    if-eqz v0, :cond_126

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v0, v3, :cond_bd

    const/4 v5, 0x2

    if-eq v0, v5, :cond_33

    if-eq v0, v4, :cond_27

    const/4 v3, 0x6

    if-eq v0, v3, :cond_bd

    goto/16 :goto_151

    :cond_27
    const-string p1, "ACTION_CANCEL"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mTouchArea:I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->resetHotAreaState()V

    goto/16 :goto_151

    :cond_33
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_50

    const-string p1, "Invalid active pointer id on MOVE: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_151

    :cond_50
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result v0

    if-nez v0, :cond_78

    int-to-float v0, v1

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_78

    move p1, v0

    :cond_78
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastDelta:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    sub-float v4, v2, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mDownDelta:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    sub-float v4, v2, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mIsDragging:Z

    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ad

    iput-boolean v3, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mIsDragging:Z

    :cond_ad
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mIsDragging:Z

    if-eqz v0, :cond_b6

    float-to-int v0, v2

    float-to-int v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->adjustTouchState(II)V

    :cond_b6
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_151

    :cond_bd
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v5, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mActivePointerId:I

    if-eq v3, v5, :cond_e4

    const-string p1, "Invalid active pointer id on UP: "

    const-string v0, " mActivePointerId:"

    invoke-static {p1, v3, v0}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_151

    :cond_e4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result v0

    if-nez v0, :cond_10c

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result v0

    if-nez v0, :cond_10c

    int-to-float v0, v1

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_10c

    move p1, v0

    :cond_10c
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v0, v3, p1}, Landroid/graphics/PointF;->set(FF)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_UP mActivePointerId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mActivePointerId:I

    invoke-static {p1, v0, v2}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput v4, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mTouchArea:I

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->resetHotAreaState()V

    goto :goto_151

    :cond_126
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mActivePointerId:I

    const-string v1, "Setting active pointer id on DOWN: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mActivePointerId:I

    invoke-static {v1, v3, v2}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->adjustTransformationArea()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mIsDragging:Z

    :goto_151
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mIsDragging:Z

    return-void
.end method

.method public resetHotAreaState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mHotAreaChange:Z

    return-void
.end method

.method public setRecoveryAndReplaceArea(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mRecoveryRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mReplaceRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result p2

    if-eqz p2, :cond_44

    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-nez p2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mRecoveryRegion:Landroid/graphics/Rect;

    if-eqz v1, :cond_33

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mUpRegion:Landroid/graphics/Rect;

    goto :goto_35

    :cond_33
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mBottomRegion:Landroid/graphics/Rect;

    :goto_35
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mReplaceRegion:Landroid/graphics/Rect;

    if-eqz v1, :cond_3f

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mBottomRegion:Landroid/graphics/Rect;

    goto :goto_41

    :cond_3f
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mUpRegion:Landroid/graphics/Rect;

    :goto_41
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_44
    new-instance p2, Landroid/graphics/Rect;

    const v0, 0x3e9374bc  # 0.288f

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mScreenSize:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const v1, 0x3f1e353f  # 0.618f

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-direct {p2, v2, v2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p3, p0, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_b4

    :cond_73
    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mVerticalState:Z

    if-eqz p2, :cond_96

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_7c

    goto :goto_7d

    :cond_7c
    move v1, v2

    :goto_7d
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mRecoveryRegion:Landroid/graphics/Rect;

    if-eqz v1, :cond_84

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mUpRegion:Landroid/graphics/Rect;

    goto :goto_86

    :cond_84
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mBottomRegion:Landroid/graphics/Rect;

    :goto_86
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mReplaceRegion:Landroid/graphics/Rect;

    if-eqz v1, :cond_90

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mBottomRegion:Landroid/graphics/Rect;

    goto :goto_92

    :cond_90
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mUpRegion:Landroid/graphics/Rect;

    :goto_92
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b4

    :cond_96
    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-nez p1, :cond_9b

    goto :goto_9c

    :cond_9b
    move v1, v2

    :goto_9c
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mRecoveryRegion:Landroid/graphics/Rect;

    if-eqz v1, :cond_a3

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLeftRegion:Landroid/graphics/Rect;

    goto :goto_a5

    :cond_a3
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mRightRegion:Landroid/graphics/Rect;

    :goto_a5
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mReplaceRegion:Landroid/graphics/Rect;

    if-eqz v1, :cond_af

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mRightRegion:Landroid/graphics/Rect;

    goto :goto_b1

    :cond_af
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->mLeftRegion:Landroid/graphics/Rect;

    :goto_b1
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_b4
    return-void
.end method
