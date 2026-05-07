.class public Lcom/android/launcher3/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;


# static fields
.field private static final DRAG_NO_SPACE_HIDE_DURATION:I = 0x15e

.field private static final DRAG_NO_SPACE_SHOW_DURATION:I = 0x1a1

.field private static final MAX_ALPHA:I = 0xff

.field public static final TAG:Ljava/lang/String; = "ShortcutAndWidgetContainer"


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mBorderSpace:Landroid/graphics/Point;

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContainerType:I

.field private mCountX:I

.field private mCountY:I

.field private mDragNoSpaceBgAnim:Landroid/animation/Animator;

.field private mInvertIfRtl:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpCellXY:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->lambda$layoutChild$0(Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->lambda$updateBackgroundForDrag$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private injectMeasureChild(Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;Lcom/android/launcher3/OplusDeviceProfile;)V
    .registers 10

    instance-of v0, p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerView;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    const/4 v2, 0x0

    const/high16 v3, 0x40000000  # 2.0f

    const/4 v4, 0x2

    if-eqz v1, :cond_21

    if-eq v1, v4, :cond_1e

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :goto_1c
    float-to-int p2, p2

    goto :goto_70

    :cond_1e
    iget p2, p3, Lcom/android/launcher3/OplusDeviceProfile;->mFolderChildIconPaddingTopPx:I

    goto :goto_70

    :cond_21
    instance-of v1, p1, Lcom/android/launcher/IHorizontalIcon;

    if-eqz v1, :cond_43

    move-object v1, p1

    check-cast v1, Lcom/android/launcher/IHorizontalIcon;

    invoke-interface {v1}, Lcom/android/launcher/IHorizontalIcon;->isLayoutHorizontal()Z

    move-result v5

    if-eqz v5, :cond_43

    iget-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Lcom/android/launcher/IHorizontalIcon;->getIconRect(Landroid/graphics/Rect;)V

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_1c

    :cond_43
    iget v1, p3, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    if-nez v1, :cond_51

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_1c

    :cond_51
    iget v0, p3, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_64

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v1, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, p3, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    div-int/2addr p2, v4

    goto :goto_70

    :cond_64
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v1, p3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, p3, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x3

    mul-int/2addr p2, v4

    :goto_70
    iget p0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-eqz p0, :cond_7d

    if-ne p0, v4, :cond_77

    goto :goto_7d

    :cond_77
    iget p0, p3, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    int-to-float p0, p0

    div-float/2addr p0, v3

    float-to-int p0, p0

    goto :goto_7f

    :cond_7d
    :goto_7d
    iget p0, p3, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    :goto_7f
    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p0, p3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$layoutChild$0(Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .registers 6

    check-cast p1, Lcom/android/launcher3/card/IAreaWidget;

    iget-object p0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/launcher3/card/IAreaWidget;->setScaleToFit(F)V

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v2, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    neg-float v0, v2

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v2, p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    sub-float/2addr v2, p2

    neg-float p0, v2

    div-float/2addr p0, v1

    invoke-interface {p1, v0, p0}, Lcom/android/launcher3/card/IAreaWidget;->setTranslationForCentering(FF)V

    return-void
.end method

.method private synthetic lambda$updateBackgroundForDrag$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public clearFolderLeaveBehind(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    iget p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-ne p1, v0, :cond_16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->clearFolderLeaveBehind()V

    :cond_16
    return-void
.end method

.method public drawFolderLeaveBehindForIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    iget v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/CellLayout;->setFolderLeaveBehindCell(II)V

    :cond_1b
    return-void
.end method

.method public getCellContentHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget p0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    invoke-virtual {v1, p0}, Lcom/android/launcher3/DeviceProfile;->getCellContentHeight(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getCellWidthHeight()[I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .registers 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_34

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ltz v4, :cond_31

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    if-ge v4, v5, :cond_31

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-ltz v5, :cond_31

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    if-lt v5, v6, :cond_22

    goto :goto_31

    :cond_22
    if-gt v4, p1, :cond_31

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v6

    if-ge p1, v4, :cond_31

    if-gt v5, p2, :cond_31

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v5, v3

    if-ge p2, v5, :cond_31

    return-object v2

    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildAt(IIZ)Landroid/view/View;
    .registers 11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_3e

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz p3, :cond_16

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_18

    :cond_16
    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    :goto_18
    if-eqz p3, :cond_1d

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1f

    :cond_1d
    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_1f
    if-ltz v4, :cond_3b

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    if-ge v4, v6, :cond_3b

    if-ltz v5, :cond_3b

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    if-lt v5, v6, :cond_2c

    goto :goto_3b

    :cond_2c
    if-gt v4, p1, :cond_3b

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v6

    if-ge p1, v4, :cond_3b

    if-gt v5, p2, :cond_3b

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v5, v3

    if-ge p2, v5, :cond_3b

    return-object v2

    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public invertLayoutHorizontally()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public layoutChild(Landroid/view/View;)V
    .registers 15

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    instance-of v1, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v1, :cond_46

    new-instance v1, Lcom/android/launcher3/t0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/t0;-><init>(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v4, v3, Lcom/android/launcher3/Launcher;

    if-eqz v4, :cond_22

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->getDismissKeyguardAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    :cond_22
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_43

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v3}, Lcom/android/launcher3/card/IAreaWidget;->isTranslationAnimatorRunning()Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "ShortcutAndWidgetContainer"

    const-string v4, "keyguardAnimSet is running, defer widget scale and center"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher3/ShortcutAndWidgetContainer$1;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer$1;-><init>(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_46

    :cond_43
    invoke-virtual {v1}, Lcom/android/launcher3/t0;->run()V

    :cond_46
    :goto_46
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/CellLayout;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_62

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-static {v3}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v3

    if-eqz v3, :cond_62

    move v3, v4

    goto :goto_63

    :cond_62
    move v3, v5

    :goto_63
    if-eqz v3, :cond_82

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusHotseat;->hasVerticalHotseat()Z

    move-result v3

    if-nez v3, :cond_80

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    goto :goto_82

    :cond_80
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->animY:I

    :cond_82
    :goto_82
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v3, v1

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v6, v2

    invoke-virtual {p1, v1, v2, v3, v6}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    if-eqz p1, :cond_b5

    iput-boolean v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    iget-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    aget p0, p1, v5

    add-int/2addr p0, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int v9, v1, p0

    aget p0, p1, v4

    add-int/2addr p0, v2

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 p1, p1, 0x2

    add-int v10, p1, p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v8, "android.home.drop"

    invoke-virtual/range {v6 .. v12}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_b5
    return-void
.end method

.method public measureChild(Landroid/view/View;)V
    .registers 13

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v9

    instance-of v1, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v1, :cond_2c

    instance-of v1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_15

    goto :goto_2c

    :cond_15
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v7, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, v0, v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->injectMeasureChild(Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;Lcom/android/launcher3/OplusDeviceProfile;)V

    goto :goto_4e

    :cond_2c
    :goto_2c
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/card/IAreaWidget;

    iget-object v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v9, v2}, Lcom/android/launcher3/card/IAreaWidget;->getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v1, v9, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTempRect:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    :goto_4e
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_5
    if-ge p2, p1, :cond_1f

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_1c

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layoutChild(Landroid/view/View;)V

    :cond_1c
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_1f
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    :goto_10
    if-ge p1, v0, :cond_24

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_21

    invoke-virtual {p0, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_24
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_19

    const-string/jumbo v0, "removeViewInLayout: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutAndWidgetContainer"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_10

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_10
    return-void
.end method

.method public setCellDimensions(IIIILandroid/graphics/Point;)V
    .registers 6

    iput p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    iput p3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iput p4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iput-object p5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    return-void
.end method

.method public setInvertIfRtl(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    return-void
.end method

.method public setupLp(Landroid/view/View;)V
    .registers 13

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    instance-of v2, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v2, :cond_29

    instance-of v2, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_16

    goto :goto_29

    :cond_16
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v7, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    goto :goto_49

    :cond_29
    :goto_29
    check-cast p1, Lcom/android/launcher3/card/IAreaWidget;

    iget-object v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {p1, v0, v2}, Lcom/android/launcher3/card/IAreaWidget;->getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object p1, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v7, p1, Landroid/graphics/PointF;->x:F

    iget v8, p1, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    :goto_49
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateBackgroundForDrag(Z)V
    .registers 6

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x7f080545

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-eqz p1, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    move v3, v1

    :goto_20
    aput v3, v0, v2

    const/4 v3, 0x1

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    aput v1, v0, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p1, :cond_38

    const-wide/16 v1, 0x1a1

    goto :goto_3a

    :cond_38
    const-wide/16 v1, 0x15e

    :goto_3a
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_42

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    goto :goto_44

    :cond_42
    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    :goto_44
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/ShortcutAndWidgetContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher3/ShortcutAndWidgetContainer$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer$2;-><init>(Lcom/android/launcher3/ShortcutAndWidgetContainer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mDragNoSpaceBgAnim:Landroid/animation/Animator;

    invoke-static {p1}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mDragNoSpaceBgAnim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mDragNoSpaceBgAnim:Landroid/animation/Animator;

    :cond_67
    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mDragNoSpaceBgAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
