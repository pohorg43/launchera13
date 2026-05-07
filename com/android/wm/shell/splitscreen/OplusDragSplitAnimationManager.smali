.class public Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATION_UNIT:I = 0x1

.field public static final DRAG_INITIAL_SCALE:F = 1.0f

.field public static final DRAG_OVER_STATE:I = 0x7

.field private static final INITIAL_SCALE:F = 1.0f

.field public static final INITIAL_STATE:I = 0x0

.field private static final MSG_HANDLE_CHANGESTATE:I = 0x1

.field private static final MSG_HANDLE_TOUCHSTATE:I = 0x0

.field public static final NORMAL_STATE:I = 0x1

.field public static final REPLACE_STATE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "OplusDragSplitAnimationManager"

.field public static final TO_DRAG_OVER_STATE:I = 0x8

.field public static final TO_NORMAL_STATE:I = 0x2

.field public static final TO_REPLACE_STATE:I = 0x6

.field public static final TO_ZOOM_STATE:I = 0x4

.field public static final ZOOM_STATE:I = 0x3


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mBeforeUpState:I

.field private mCurrentAnimationState:I

.field private mCurrentDragBounds:Landroid/graphics/Rect;

.field private mCurrentDragPosition:Landroid/graphics/Point;

.field private mCurrentDragSurfaceScale:F

.field private mCurrentMovePosition:Landroid/graphics/PointF;

.field private mCurrentTargetBounds:Landroid/graphics/Rect;

.field private mCurrentTargetPosition:Landroid/graphics/Point;

.field private mDetermineSupportZoomMode:Z

.field private mDragLeashHandler:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;

.field private mMotionBounds:Landroid/graphics/Rect;

.field private mNonMotionBounds:Landroid/graphics/Rect;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSplitToZoomRect:Landroid/graphics/Rect;

.field private mUnSupportZoomMode:Z

.field private mUserId:I

.field private mZoomRect:Landroid/graphics/Rect;

.field private mZoomScale:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    iput v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mBeforeUpState:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mZoomRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mSplitToZoomRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetPosition:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragPosition:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetBounds:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragSurfaceScale:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentMovePosition:Landroid/graphics/PointF;

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDetermineSupportZoomMode:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mUnSupportZoomMode:Z

    new-instance v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$1;-><init>(Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDragLeashHandler:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mUserId:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->handleTouchStateInner(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->handleChangeStateInner(I)V

    return-void
.end method

.method private allowEnterZoomMode(Ljava/lang/String;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDetermineSupportZoomMode:Z

    if-eqz v0, :cond_7

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mUnSupportZoomMode:Z

    return p0

    :cond_7
    if-eqz p1, :cond_1c

    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mUserId:I

    sget-object v2, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mUnSupportZoomMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDetermineSupportZoomMode:Z

    return p1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private calculateCropChange(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5

    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    if-lez p0, :cond_8

    goto :goto_9

    :cond_8
    neg-int p0, p0

    :goto_9
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_11

    goto :goto_12

    :cond_11
    neg-int v0, v0

    :goto_12
    if-le p0, v0, :cond_15

    goto :goto_16

    :cond_15
    move p0, v0

    :goto_16
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    neg-int v0, v0

    :goto_1f
    if-le p0, v0, :cond_22

    goto :goto_23

    :cond_22
    move p0, v0

    :goto_23
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    if-lez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    neg-int p1, p1

    :goto_2c
    if-le p0, p1, :cond_2f

    goto :goto_30

    :cond_2f
    move p0, p1

    :goto_30
    return p0
.end method

.method private handleChangeStateInner(I)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "transfer to:"

    const-string v4, " mCurrentAnimationState:"

    invoke-static {v3, v1, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    invoke-static {v3, v4, v2}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v3, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    if-eq v1, v3, :cond_24b

    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_1e

    goto/16 :goto_24b

    :cond_1e
    iput v3, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mBeforeUpState:I

    const/4 v4, 0x4

    const/4 v5, 0x7

    if-ne v1, v5, :cond_31

    if-eq v3, v4, :cond_29

    const/4 v6, 0x3

    if-ne v3, v6, :cond_31

    :cond_29
    iput v5, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDragLeashHandler:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;

    invoke-interface {v0}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;->finishAnimation()V

    return-void

    :cond_31
    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDragLeashHandler:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;

    invoke-interface {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;->cancleCurrentAnimation()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v10, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    const/4 v11, 0x2

    if-eq v6, v11, :cond_156

    if-eq v6, v4, :cond_128

    const/4 v4, 0x6

    if-eq v6, v4, :cond_e6

    const/16 v13, 0x8

    if-eq v6, v13, :cond_64

    move/from16 v16, v9

    goto/16 :goto_17f

    :cond_64
    iget v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mBeforeUpState:I

    if-eq v6, v11, :cond_b4

    if-eq v6, v3, :cond_b4

    if-nez v6, :cond_6d

    goto :goto_b4

    :cond_6d
    if-eq v6, v4, :cond_72

    const/4 v4, 0x5

    if-ne v6, v4, :cond_c6

    :cond_72
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_95

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_95

    invoke-virtual {v8, v6, v4}, Landroid/graphics/Point;->set(II)V

    iget v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenWidth:I

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v4, v6

    iget v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenHeight:I

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_c6

    :cond_95
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v6, v4}, Landroid/graphics/Point;->set(II)V

    iget v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenWidth:I

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v4, v6

    iget v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenHeight:I

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v6, v13

    invoke-virtual {v8, v4, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_c6

    :cond_b4
    :goto_b4
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v6, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v6, v4}, Landroid/graphics/Point;->set(II)V

    :cond_c6
    :goto_c6
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v12, v1, v1, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v14, v1, v1, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17d

    :cond_e6
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v12, v1, v1, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v14, v1, v1, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_112

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_112

    invoke-virtual {v8, v4, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_17d

    :cond_112
    iget v1, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenWidth:I

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenHeight:I

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v8, v1, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_17d

    :cond_128
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result v4

    if-eqz v4, :cond_142

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result v4

    if-nez v4, :cond_142

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mSplitToZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_147

    :cond_142
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_147
    iget v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mZoomScale:F

    iget v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenWidth:I

    iget v7, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenHeight:I

    invoke-virtual {v14, v1, v1, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Point;->set(II)V

    move/from16 v16, v4

    goto :goto_17f

    :cond_156
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v12, v1, v1, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v14, v1, v1, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v4, v1}, Landroid/graphics/Point;->set(II)V

    :goto_17d
    move/from16 v16, v7

    :goto_17f
    iget v1, v8, Landroid/graphics/Point;->x:I

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenWidth:I

    div-int/2addr v4, v11

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, v8, Landroid/graphics/Point;->y:I

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenHeight:I

    div-int/2addr v6, v11

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, v10, Landroid/graphics/Point;->x:I

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenWidth:I

    div-int/2addr v6, v11

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, v10, Landroid/graphics/Point;->y:I

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenHeight:I

    div-int/2addr v6, v11

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenWidth:I

    iget v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenHeight:I

    if-le v4, v6, :cond_1da

    goto :goto_1db

    :cond_1da
    move v4, v6

    :goto_1db
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v6}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->calculateCropChange(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v6

    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v14, v6}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->calculateCropChange(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragSurfaceScale:F

    sub-float v4, v16, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v17

    new-instance v1, Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragPosition:Landroid/graphics/Point;

    invoke-direct {v1, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v7, Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetPosition:Landroid/graphics/Point;

    invoke-direct {v7, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v11, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragBounds:Landroid/graphics/Rect;

    invoke-direct {v11, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v13, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetBounds:Landroid/graphics/Rect;

    invoke-direct {v13, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/high16 v4, 0x43960000  # 300.0f

    mul-float v4, v4, v17

    float-to-int v4, v4

    cmpl-float v6, v17, v9

    if-eqz v6, :cond_234

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDragLeashHandler:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;

    iget v15, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragSurfaceScale:F

    iget v0, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    move-object v9, v1

    move/from16 v18, v4

    move/from16 v19, v0

    invoke-interface/range {v6 .. v19}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;->startAnimation(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFII)V

    goto :goto_24b

    :cond_234
    iget v1, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    if-ne v1, v5, :cond_240

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDragLeashHandler:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;

    invoke-interface {v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;->finishAnimation()V

    :cond_240
    const-string v1, "not need animation mCurrentAnimationState="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    invoke-static {v1, v0, v2}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_24b
    :goto_24b
    return-void
.end method

.method private handleTouchStateInner(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v2, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->TAG:Ljava/lang/String;

    const-string v3, "handleTouchStateInner transfer to:"

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getTouchArea()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentAnimationState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    invoke-static {v3, v4, v2}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getTouchArea()I

    move-result p1

    const/4 v2, 0x2

    if-eqz p1, :cond_80

    if-eq p1, v1, :cond_6c

    const/4 v3, 0x3

    if-eq p1, v2, :cond_46

    if-eq p1, v3, :cond_31

    goto :goto_91

    :cond_31
    iget p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    const/4 v1, 0x7

    if-eq p1, v1, :cond_91

    const/16 v2, 0x8

    if-eq p1, v2, :cond_91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_91

    :cond_46
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDragLeashHandler:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;

    if-eqz p1, :cond_91

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;->getMotionTopActivityName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->allowEnterZoomMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_91

    iget p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    if-eq p1, v3, :cond_91

    const/4 v2, 0x4

    if-eq p1, v2, :cond_91

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDragLeashHandler:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;

    invoke-interface {p0, v1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;->vibrateWidthSpecilEffect(I)V

    goto :goto_91

    :cond_6c
    iget p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_91

    const/4 v2, 0x6

    if-eq p1, v2, :cond_91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_91

    :cond_80
    iget p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    if-eq p1, v1, :cond_91

    if-eq p1, v2, :cond_91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_91
    :goto_91
    return-void
.end method


# virtual methods
.method public getBeforeUpState()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mBeforeUpState:I

    return p0
.end method

.method public getCurrentAnimationState()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    return p0
.end method

.method public getCurrentDragBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCurrentDragSurfaceScale()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragSurfaceScale:F

    return p0
.end method

.method public getCurrentMovePosition()Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentMovePosition:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getCurrentTargetBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public handleTouchState(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentMovePosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;->getLastTouchPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDragLeashHandler:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;->moveDragLeash(Lcom/android/wm/shell/splitscreen/SplitControlBarTouchState;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public needHideDimLayer()Z
    .registers 3

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mBeforeUpState:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_10

    const/4 v1, 0x6

    if-eq p0, v1, :cond_10

    if-eq p0, v0, :cond_10

    const/4 v1, 0x5

    if-ne p0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method

.method public resetDragState()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mDragLeashHandler:Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager$DragLeashHandler;

    return-void
.end method

.method public setCurrentAnimationState(I)V
    .registers 4

    sget-object v0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->TAG:Ljava/lang/String;

    const-string v1, "### transferAnimation normal end to:"

    invoke-static {v1, p1, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentAnimationState:I

    return-void
.end method

.method public setCurrentDragBounds(IIII)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setCurrentDragPosition(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragPosition:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setCurrentDragSurfaceScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragSurfaceScale:F

    return-void
.end method

.method public setCurrentTargetBounds(IIII)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setCurrentTargetPosition(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetPosition:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setInitialBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentDragBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mCurrentTargetBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mNonMotionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mSplitToZoomRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setScreenSize(II)V
    .registers 3

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenWidth:I

    iput p2, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mScreenHeight:I

    return-void
.end method

.method public setZoomRect(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setZoomScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusDragSplitAnimationManager;->mZoomScale:F

    return-void
.end method
