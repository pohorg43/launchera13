.class public Lcom/android/wm/shell/splitscreen/OplusZoomInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ZOOM_LANDSCAPE_RATIO:F = 1.45f

.field private static final ZOOM_RATIO:F = 1.6666666f

.field private static final ZOOM_SCALE_FOR_FOLDER:F = 0.675f

.field private static final ZOOM_SCALE_FOR_LANDSCAPE:F = 0.6f

.field private static final ZOOM_SCALE_FOR_LANDSCAPE_DEFAULT:F = 0.556f

.field private static final ZOOM_SCALE_FOR_PORTRAIT_DEFAULT:F = 0.667f


# instance fields
.field private mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

.field private mHorizontalAppInHorizontalScreenScale:F

.field private mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

.field private mHorizontalAppInVerticalScreenScale:F

.field private mLongSide:I

.field private mShortSide:I

.field private mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

.field private mVerticalAppInHorizontalScreenScale:F

.field private mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

.field private mVerticalAppInVerticalScreenScale:F


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->initialZoomInfo(II)V

    return-void
.end method

.method private initialZoomInfo(II)V
    .registers 8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mLongSide:I

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isFoldDevice()Z

    move-result p1

    const p2, 0x3fd55555

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isDragonflyDevice()Z

    move-result p1

    if-nez p1, :cond_58

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v2, v1

    div-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    const p1, 0x3f2ccccd  # 0.675f

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenScale:F

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v3, v2

    div-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenScale:F

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v3, v2

    div-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {v1, v0, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenScale:F

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v3, v2

    div-float/2addr v3, p2

    float-to-int p2, v3

    invoke-virtual {v1, v0, v0, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenScale:F

    goto :goto_94

    :cond_58
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v2, v1

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    const p1, 0x3f2ac083  # 0.667f

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenScale:F

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v2, v1

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    const p1, 0x3f0e5604  # 0.556f

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenScale:F

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v3, v2

    const v4, 0x3fb9999a  # 1.45f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const v1, 0x3f19999a  # 0.6f

    iput v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenScale:F

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mShortSide:I

    int-to-float v3, v2

    mul-float/2addr v3, p2

    float-to-int p2, v3

    invoke-virtual {v1, v0, v0, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenScale:F

    :goto_94
    return-void
.end method


# virtual methods
.method public getHorizontalAppInHorizontalScreenBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getHorizontalAppInHorizontalScreenScale()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenScale:F

    return p0
.end method

.method public getHorizontalAppInVerticalScreenBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getHorizontalAppInVerticalScreenScale()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenScale:F

    return p0
.end method

.method public getVerticalAppInHorizontalScreenBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getVerticalAppInHorizontalScreenScale()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenScale:F

    return p0
.end method

.method public getVerticalAppInVerticalScreenBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getVerticalAppInVerticalScreenScale()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenScale:F

    return p0
.end method

.method public getZoomRect(IIZ)Landroid/graphics/Rect;
    .registers 4

    if-gt p1, p2, :cond_a

    if-nez p3, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_a
    if-nez p3, :cond_f

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_f
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getZoomScale(IIZ)F
    .registers 4

    if-gt p1, p2, :cond_a

    if-nez p3, :cond_7

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInVerticalScreenScale:F

    return p0

    :cond_7
    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInVerticalScreenScale:F

    return p0

    :cond_a
    if-nez p3, :cond_f

    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mVerticalAppInHorizontalScreenScale:F

    return p0

    :cond_f
    iget p0, p0, Lcom/android/wm/shell/splitscreen/OplusZoomInfo;->mHorizontalAppInHorizontalScreenScale:F

    return p0
.end method

.method public isFixedOrientationLandscape(Lcom/android/wm/shell/splitscreen/StageTaskListener;)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, -0x2

    if-eqz p1, :cond_41

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_41

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_41

    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    sub-int/2addr v2, p0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_41

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    const/4 v2, -0x1

    if-eqz v1, :cond_31

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_31

    if-eq v1, v2, :cond_31

    goto :goto_32

    :cond_31
    move v1, v0

    :goto_32
    if-ne v1, v0, :cond_40

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq p1, v0, :cond_40

    if-eq p1, v2, :cond_40

    move v0, p1

    goto :goto_41

    :cond_40
    move v0, v1

    :cond_41
    :goto_41
    if-eqz v0, :cond_50

    const/4 p1, 0x6

    if-eq v0, p1, :cond_50

    const/16 p1, 0x8

    if-eq v0, p1, :cond_50

    const/16 p1, 0xb

    if-ne v0, p1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 p0, 0x0

    :cond_50
    :goto_50
    return p0
.end method
