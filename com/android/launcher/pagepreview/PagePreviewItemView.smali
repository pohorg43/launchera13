.class public Lcom/android/launcher/pagepreview/PagePreviewItemView;
.super Lcom/android/launcher/views/AdaptiveScreenRotateView;
.source ""


# static fields
.field private static final CELL_DRAGENTER_TWOPANEL_ALPHA:I = 0x28

.field private static final CELL_FOCUSED_ALPHA:I = 0xff

.field private static final CELL_NORMAL_ALPHA:I = 0x33

.field private static final CELL_SELECT_STATE_CHANGE_DURATION:I = 0xb4

.field private static final DEBUG_ENABLE:Z = false

.field private static final DELAY_DRAW_DRAG_POSITION:I = 0x12c

.field private static final DRAG_VIEW_ALPHA:I = 0x9a

.field private static final DROP_ANIMATE_TIME:I = 0x12c

.field private static final FINAL_ALPHA:F = 0.3f

.field private static final LAYOUT_SELECT_STATE_CHANGE_DURATION:I = 0xc8

.field private static final LONGPRESSTIME:I = 0x258

.field private static final PREVIEW_ICON_SIZE_FACTOR:F = 0.067f

.field private static final RADIUS_WIDGET_MIN_SPAN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PagePreviewItem"


# instance fields
.field private mCellLayout:Lcom/android/launcher3/OplusCellLayout;

.field private mCellRect:Landroid/graphics/RectF;

.field private mCellRectAlpha:I

.field private mCellRectColor:I

.field private mCellRectSelectColor:I

.field private mCellSelectSwitchingColor:I

.field private mChildCount:I

.field private mCurrentCellCountX:I

.field private mCurrentCellCountY:I

.field private mDropPosRectColor:I

.field private mFullBackground:Landroid/graphics/drawable/Drawable;

.field private mIsEnter:Z

.field private mIsRtl:Z

.field private mIsSelectedState:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final mMinHeightGap:I

.field private final mMinWidthGap:I

.field private final mOrgCellPaddingStart:I

.field private final mOrgCellPaddingTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

.field private mPreviewCellHeight:I

.field private mPreviewCellHeightGap:I

.field private mPreviewCellRadius:I

.field private mPreviewCellWidth:I

.field private mPreviewCellWidthGap:I

.field private mPreviewPaddingStart:I

.field private mPreviewPaddingTop:I

.field private mPreviewWidgetRadius:I

.field private mScreenIndex:I

.field private mTwoPanelDragEnterBackground:Landroid/graphics/drawable/Drawable;

.field private mTwoPanelSelectedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/AdaptiveScreenRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mScreenIndex:I

    iput-boolean p3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsEnter:Z

    iput-boolean p3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsSelectedState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    iput p3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mDropPosRectColor:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectAlpha:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mChildCount:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v2, v0}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mMinWidthGap:I

    invoke-static {v2, v0}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mMinHeightGap:I

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    const v4, 0x3d89374c  # 0.067f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellWidth:I

    iput v2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellHeight:I

    sget-object v2, Lcom/android/launcher3/R$styleable;->PreviewItemCellStyle:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mOrgCellPaddingStart:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mOrgCellPaddingTop:I

    const/4 v1, 0x4

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellRadius:I

    const/4 v1, 0x7

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewWidgetRadius:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput v2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingStart:I

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingTop:I

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    const p2, 0x7f0401f0

    invoke-static {p1, p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mDropPosRectColor:I

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_9f

    const v0, 0x7f060417

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectColor:I

    goto :goto_a8

    :cond_9f
    const v0, 0x7f06040f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectColor:I

    :goto_a8
    invoke-static {p1, p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectSelectColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsRtl:Z

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p2

    if-eqz p2, :cond_120

    new-instance p2, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070758

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p2, p1, p0, p3}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;F)V

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    const p2, 0x7f080749

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mFullBackground:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p2, :cond_13c

    iget-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07075c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->setStrokeWidth(I)V

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result p2

    if-eqz p2, :cond_10d

    const p2, 0x7f08074a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mTwoPanelDragEnterBackground:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08074c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mTwoPanelSelectedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_13c

    :cond_10d
    const p2, 0x7f08074b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mTwoPanelDragEnterBackground:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08074d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mTwoPanelSelectedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_13c

    :cond_120
    new-instance p2, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070757

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p2, p1, p0, p3}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;F)V

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    const p2, 0x7f080748

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mFullBackground:Landroid/graphics/drawable/Drawable;

    :cond_13c
    :goto_13c
    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCurrentCellCountX:I

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCurrentCellCountY:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/animation/ArgbEvaluator;IILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->lambda$switchIconSelectState$0(Landroid/animation/ArgbEvaluator;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/pagepreview/PagePreviewItemView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsEnter:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/pagepreview/PagePreviewItemView;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method private drawDragViewPreviewCell(Landroid/graphics/Canvas;)V
    .registers 14

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    if-eqz v1, :cond_7b

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout;->getDragCell()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v3, v4, :cond_28

    aget v3, v1, v5

    if-ne v3, v4, :cond_2c

    :cond_28
    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getDragTargetCell()[I

    move-result-object v1

    :cond_2c
    iget-object v3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentDragOverlappingLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-ne v3, v0, :cond_7b

    aget v0, v1, v2

    if-eq v0, v4, :cond_7b

    aget v0, v1, v5

    if-eq v0, v4, :cond_7b

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->getDragViewCellSpan()[I

    move-result-object v0

    aget v3, v0, v2

    if-lez v3, :cond_7b

    aget v3, v0, v5

    if-lez v3, :cond_7b

    aget v7, v1, v2

    aget v8, v1, v5

    aget v9, v0, v2

    aget v10, v0, v5

    iget-object v11, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRect:Landroid/graphics/RectF;

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->cellItemToPreviewRect(IIIILandroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mDropPosRectColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0x9a

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    aget v1, v0, v2

    if-le v1, v5, :cond_71

    aget v0, v0, v5

    if-le v0, v5, :cond_71

    iget v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewWidgetRadius:I

    goto :goto_73

    :cond_71
    iget v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellRadius:I

    :goto_73
    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7b
    return-void
.end method

.method private drawPreviewCell(Landroid/graphics/Canvas;)V
    .registers 18

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_181

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    invoke-virtual {v0}, Lcom/android/launcher/SwitchStateRenderer;->getSelectedColor()I

    move-result v0

    iget v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectSelectColor:I

    if-eq v0, v1, :cond_18

    iput v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectSelectColor:I

    :cond_18
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, " mCellRectSelectColor "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectSelectColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagePreviewItem"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v1

    goto :goto_59

    :cond_58
    move-object v9, v0

    :goto_59
    const/4 v0, 0x0

    move v10, v0

    :goto_5b
    if-ge v10, v8, :cond_181

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17b

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_72

    goto/16 :goto_17b

    :cond_72
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-nez v0, :cond_7c

    goto/16 :goto_17b

    :cond_7c
    invoke-virtual {v11}, Landroid/view/View;->isSelected()Z

    move-result v1

    iget-object v2, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->isFolderContentSelected(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v9, :cond_de

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v5, :cond_b1

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_99
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_de

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_99

    move v1, v3

    goto :goto_de

    :cond_b1
    instance-of v5, v4, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v5, :cond_de

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_de

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/BubbleTextView;

    instance-of v13, v12, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v13, :cond_b9

    check-cast v12, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v12}, Lcom/android/launcher3/OplusBubbleTextView;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v12

    if-eqz v12, :cond_b9

    invoke-virtual {v12}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b9

    move v12, v1

    move v13, v3

    goto :goto_e0

    :cond_de
    :goto_de
    move v12, v1

    move v13, v2

    :goto_e0
    iget-object v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/launcher3/card/reorder/CardDragReorder;->isInExtrusionList(Landroid/view/View;)Z

    move-result v1

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-le v4, v3, :cond_f5

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-le v2, v3, :cond_f5

    iget v2, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewWidgetRadius:I

    goto :goto_f7

    :cond_f5
    iget v2, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellRadius:I

    :goto_f7
    move v14, v2

    iget-boolean v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_104

    if-eqz v1, :cond_101

    move v5, v3

    goto :goto_106

    :cond_101
    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_106

    :cond_104
    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    :goto_106
    if-eqz v2, :cond_10f

    if-eqz v1, :cond_10c

    move v2, v3

    goto :goto_112

    :cond_10c
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_111

    :cond_10f
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_111
    move v2, v1

    :goto_112
    iget v15, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v3, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move v1, v5

    move-object v5, v3

    move v3, v4

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->cellItemToPreviewRect(IIIILandroid/graphics/RectF;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->isDragging()Z

    move-result v0

    if-eqz v13, :cond_12f

    if-nez v0, :cond_12f

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPaint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectSelectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_167

    :cond_12f
    instance-of v1, v11, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_14d

    check-cast v11, Lcom/android/launcher3/BubbleTextView;

    iget-object v1, v11, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->isStateSwitchingAnimaRunning()Z

    move-result v1

    if-eqz v1, :cond_14d

    iget-object v1, v6, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher/controller/OplusWorkspaceTouchController;->isSystemAnimClosed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_14d

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPaint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellSelectSwitchingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_167

    :cond_14d
    if-eqz v12, :cond_159

    if-nez v0, :cond_159

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPaint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectSelectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_167

    :cond_159
    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPaint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPaint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_167
    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRect:Landroid/graphics/RectF;

    int-to-float v2, v14

    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_17d

    :cond_17b
    :goto_17b
    move-object/from16 v2, p1

    :goto_17d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5b

    :cond_181
    return-void
.end method

.method private isDragging()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method private synthetic lambda$switchIconSelectState$0(Landroid/animation/ArgbEvaluator;IILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p4, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellSelectSwitchingColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private onDropBatchIcons(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 30

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const-string v9, "PagePreviewItem"

    if-nez v0, :cond_17

    const-string/jumbo v0, "onDropBatchIcons, workspace is null!"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    check-cast v0, Lcom/android/launcher/batchdrag/BatchDragObject;

    iget-object v0, v0, Lcom/android/launcher/batchdrag/BatchDragObject;->batchDragViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v12

    :goto_31
    invoke-interface {v12}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_15c

    invoke-interface {v12}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_51

    invoke-virtual {v13}, Lcom/android/launcher/batchdrag/BatchDragView;->getOriginalView()Landroid/view/View;

    move-result-object v2

    goto :goto_5e

    :cond_51
    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v2, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v3, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v2

    :goto_5e
    move-object v15, v2

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    invoke-virtual {v7, v3, v4, v4}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onDropBatchIcons -- item = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", to = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, v7, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_98

    move-object v0, v7

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->revertTempStateCompletely()V

    iget-object v5, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v5, v3, v15, v1}, Lcom/android/launcher3/OplusCellLayout;->onDropViewToCell(Lcom/android/launcher/Launcher;[ILandroid/view/View;I)V

    :cond_98
    invoke-virtual {v13}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_143

    new-instance v14, Lcom/android/launcher/pagepreview/PagePreviewItemView$3;

    invoke-direct {v14, v6, v15}, Lcom/android/launcher/pagepreview/PagePreviewItemView$3;-><init>(Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v4

    invoke-virtual {v4, v13, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    div-int/2addr v4, v2

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    div-int/2addr v1, v2

    invoke-virtual {v5, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    new-instance v25, Landroid/graphics/RectF;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    const/4 v2, 0x0

    aget v19, v3, v2

    const/4 v4, 0x1

    aget v20, v3, v4

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v18, v1

    move-object/from16 v23, v24

    invoke-virtual/range {v18 .. v23}, Lcom/android/launcher3/OplusCellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    aget v1, v3, v2

    aget v2, v3, v4

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v7, v5

    move-object/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mapRect(IIIILandroid/graphics/RectF;)V

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v19, v0, v1

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v20, v0, v1

    const v0, 0x3e99999a  # 0.3f

    const/high16 v17, 0x3f800000  # 1.0f

    const/high16 v18, 0x3f800000  # 1.0f

    const/16 v21, 0x12c

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000  # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v2, v14

    move-object/from16 v14, v16

    move-object v4, v15

    move-object v15, v7

    move/from16 v16, v0

    move-object/from16 v22, v1

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    invoke-virtual/range {v13 .. v26}, Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_14a

    :cond_143
    move-object v4, v15

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_14a
    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/OplusCellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p1

    goto/16 :goto_31

    :cond_15c
    const-string/jumbo v0, "onDrop BatchIcon"

    const-string v1, ", to PreviewItem."

    invoke-static {v0, v11, v1}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_16e

    const v1, 0x7f120280

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    :cond_16e
    return-void
.end method

.method private updatePageDescription()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_3e

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mChildCount:I

    if-eq v0, v1, :cond_3e

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mChildCount:I

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    const v1, 0x7f12036b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3e

    :cond_25
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    const v1, 0x7f1205b4

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mScreenIndex:I

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private willFull(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3a

    :cond_a
    instance-of v1, p1, Lcom/android/launcher/batchdrag/BatchDragObject;

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    check-cast p1, Lcom/android/launcher/batchdrag/BatchDragObject;

    iget-object p1, p1, Lcom/android/launcher/batchdrag/BatchDragObject;->batchDragViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->getEmptyCells()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p1, p0, :cond_28

    move v0, v2

    :cond_28
    return v0

    :cond_29
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_3a
    :goto_3a
    return v0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    const-string v1, "PagePreviewItem"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    const-string p0, "acceptDrop, cellLayout is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_d
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v4, p1, Lcom/android/launcher/batchdrag/BatchDragObject;

    const/4 v5, 0x1

    if-eqz v4, :cond_29

    move-object v0, p1

    check-cast v0, Lcom/android/launcher/batchdrag/BatchDragObject;

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragObject;->getDragViewCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusCellLayout;->getEmptyCells()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_39

    move v2, v5

    goto :goto_39

    :cond_29
    const/4 v4, 0x0

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v4, v6, v3}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-eqz v0, :cond_38

    move v7, v5

    move v5, v2

    move v2, v7

    goto :goto_39

    :cond_38
    move v5, v2

    :cond_39
    :goto_39
    if-nez v2, :cond_46

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher3/OplusWorkspace;->onNoCellFound(Lcom/android/launcher3/CellLayout;Z)V

    :cond_46
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v3

    const/16 v4, -0xc9

    if-ne v3, v4, :cond_60

    const-string v3, "accept layout is empty screen id, need commit it!"

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    :cond_60
    if-nez v2, :cond_85

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    instance-of p1, p1, Lcom/android/launcher/batchdrag/BatchDragView;

    if-eqz p1, :cond_7c

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsMoveBatchItemToThumbFailedInPagePreviewMode()V

    goto :goto_85

    :cond_7c
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsMoveItemToThumbFailedInPagePreviewMode()V

    :cond_85
    :goto_85
    return v2
.end method

.method public cellItemToPreviewRect(IIIILandroid/graphics/RectF;)V
    .registers 11

    const/4 v0, 0x1

    if-lt p3, v0, :cond_3c

    if-lt p4, v0, :cond_3c

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3c

    if-ne p2, v1, :cond_b

    goto :goto_3c

    :cond_b
    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsRtl:Z

    invoke-static {v1, p1, p3, v2}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p1

    iget v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellWidth:I

    mul-int v2, p3, v1

    sub-int/2addr p3, v0

    iget v3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellWidthGap:I

    mul-int/2addr p3, v3

    add-int/2addr p3, v2

    iget v2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellHeight:I

    mul-int v4, p4, v2

    sub-int/2addr p4, v0

    iget v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellHeightGap:I

    mul-int/2addr p4, v0

    add-int/2addr p4, v4

    iget v4, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingTop:I

    add-int/2addr v2, v0

    mul-int/2addr v2, p2

    add-int/2addr v2, v4

    add-int/2addr p4, v2

    iget p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingStart:I

    add-int/2addr v1, v3

    mul-int/2addr v1, p1

    add-int/2addr v1, p0

    add-int/2addr p3, v1

    int-to-float p0, v1

    int-to-float p1, v2

    int-to-float p2, p3

    int-to-float p3, p4

    invoke-virtual {p5, p0, p1, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public forceSetSelectedWithNoAnimWhenVHRecycled(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->forceSetSelectedWithNoAnimWhenVHRecycled(Z)V

    return-void
.end method

.method public getCellLayout()Lcom/android/launcher3/CellLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    return-object p0
.end method

.method public getScreenIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mScreenIndex:I

    return p0
.end method

.method public isInTouchMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public mapRect(IIIILandroid/graphics/RectF;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->cellItemToPreviewRect(IIIILandroid/graphics/RectF;)V

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->willFull(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mFullBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_45

    :cond_c
    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mTwoPanelDragEnterBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060418

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectColor:I

    const/16 p1, 0x28

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectAlpha:I

    :cond_36
    iget-boolean p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsEnter:Z

    if-nez p1, :cond_45

    const-string p1, "PagePreviewItem"

    const-string/jumbo v0, "onDragEnter invalidate"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_45
    :goto_45
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsEnter:Z

    new-instance v0, Lcom/android/launcher/pagepreview/PagePreviewItemView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/pagepreview/PagePreviewItemView$1;-><init>(Lcom/android/launcher/pagepreview/PagePreviewItemView;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    const-wide/16 v0, 0x32

    invoke-static {p0, p1, v0, v1}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJ)V

    return-void
.end method

.method public onDragExit()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsEnter:Z

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsSelectedState:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mTwoPanelSelectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    const v1, 0x7f060417

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectColor:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectAlpha:I

    const-string v0, "PagePreviewItem"

    const-string/jumbo v1, "onDragExit invalidate"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3b

    :cond_38
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3b
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->drawPreviewCell(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->drawDragViewPreviewCell(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->updatePageDescription()V

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDrop, object = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PagePreviewItem"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-nez p2, :cond_43

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherState;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onDrop, state error! state = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    iget-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    if-nez p2, :cond_4e

    const-string/jumbo p0, "onDrop, target cellLayout is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4e
    instance-of v0, p1, Lcom/android/launcher/batchdrag/BatchDragObject;

    if-eqz v0, :cond_56

    invoke-direct {p0, p2, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->onDropBatchIcons(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_59

    :cond_56
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->onDropToPagePreview(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)Landroid/view/View;

    :goto_59
    return-void
.end method

.method public onDropToPagePreview(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)Landroid/view/View;
    .registers 30

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    iget-object v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const-string v2, "PagePreviewItem"

    const/4 v3, 0x0

    if-nez v1, :cond_18

    const-string/jumbo v0, "onDropToPagePreview, workspace is null!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_18
    iget-object v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object v5

    instance-of v9, v8, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v10, 0x1

    if-eqz v9, :cond_48

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget-object v0, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_41

    sput-boolean v10, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    iget-object v1, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    :cond_41
    const-string/jumbo v0, "onDropToPagePreview, drop widget to preview, continue to handle by ColorWidgetsFullSheet!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_48
    const/4 v9, 0x0

    if-eqz v5, :cond_4e

    iget-object v1, v5, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_86

    :cond_4e
    instance-of v11, v8, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v11, :cond_71

    iget v11, v8, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-gez v11, :cond_71

    move-object v11, v0

    check-cast v11, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v11}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v11

    iput v11, v8, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    move-object v11, v8

    check-cast v11, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-static {v11, v1}, Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object v1

    const-string/jumbo v11, "onDropToPagePreview: cardInfo = "

    const-string v12, "Drag"

    invoke-static {v11, v8, v12}, Lcom/android/common/util/x;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    move-object v11, v1

    move v1, v10

    goto :goto_88

    :cond_71
    instance-of v1, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_85

    const/16 v1, -0x64

    iput v1, v8, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v11, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    move-object v12, v8

    check-cast v12, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1, v11, v12}, Lcom/android/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_86

    :cond_85
    move-object v1, v3

    :goto_86
    move-object v11, v1

    move v1, v9

    :goto_88
    if-nez v11, :cond_91

    const-string/jumbo v0, "onDropToPagePreview, cell is null!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_91
    if-eqz v5, :cond_96

    iget v2, v5, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    goto :goto_97

    :cond_96
    move v2, v10

    :goto_97
    if-eqz v5, :cond_9c

    iget v3, v5, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    goto :goto_9d

    :cond_9c
    move v3, v10

    :goto_9d
    if-eqz v1, :cond_a3

    iget v2, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :cond_a3
    move v5, v3

    move v3, v2

    const/4 v2, 0x2

    new-array v15, v2, [I

    invoke-virtual {v0, v15, v3, v5}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    instance-of v12, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v12, :cond_ba

    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v12}, Lcom/android/launcher3/OplusCellLayout;->revertTempStateCompletely()V

    iget-object v13, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v12, v13, v15, v11, v4}, Lcom/android/launcher3/OplusCellLayout;->onDropViewToCell(Lcom/android/launcher/Launcher;[ILandroid/view/View;I)V

    :cond_ba
    const-string v4, " to PreviewItem. screenId="

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Source="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "onDrop"

    invoke-static {v4, v8, v0}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_1aa

    if-nez v1, :cond_1aa

    new-instance v4, Lcom/android/launcher/pagepreview/PagePreviewItemView$2;

    invoke-direct {v4, v6, v11}, Lcom/android/launcher/pagepreview/PagePreviewItemView$2;-><init>(Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iget-object v12, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v12, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    div-int/2addr v0, v2

    iget-object v12, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    neg-int v12, v12

    div-int/2addr v12, v2

    invoke-virtual {v1, v0, v12}, Landroid/graphics/Rect;->offset(II)V

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    iget-object v12, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    aget v13, v15, v9

    aget v14, v15, v10

    move-object v0, v15

    move v15, v3

    move/from16 v16, v5

    move-object/from16 v17, v18

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/OplusCellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    aget v2, v0, v9

    aget v9, v0, v10

    move-object/from16 v0, p0

    move-object v10, v1

    move v1, v2

    move v2, v9

    move-object v9, v4

    move v4, v5

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mapRect(IIIILandroid/graphics/RectF;)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v20, v0, v1

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v21, v0, v1

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-eqz v0, :cond_186

    new-instance v12, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    iget-object v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v4, 0x0

    iget-object v5, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v0, v12

    move-object v2, v11

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;[ILcom/android/launcher3/dragndrop/DragView;)V

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->animateSurfaceToHide(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    :cond_186
    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v16

    iget-object v0, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const v19, 0x3e99999a  # 0.3f

    const/16 v22, 0x12c

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000  # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v23, v1

    move-object/from16 v24, v9

    invoke-virtual/range {v16 .. v26}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    goto :goto_1cd

    :cond_1aa
    if-eqz v1, :cond_1c8

    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    iget-object v1, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v4, 0x0

    iget-object v5, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v0, v9

    move-object v2, v11

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;[ILcom/android/launcher3/dragndrop/DragView;)V

    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getDragEventHandler()Lcom/android/launcher3/dragndrop/IDragEventHandler;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/android/launcher3/dragndrop/IDragEventHandler;->animateSurfaceToPosition(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    goto :goto_1cd

    :cond_1c8
    iput-boolean v9, v7, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_1cd
    iget-object v0, v6, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/OplusCellLayout;->onDropChild(Landroid/view/View;)V

    iget-object v0, v7, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_1dc

    const v1, 0x7f120280

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    :cond_1dc
    instance-of v0, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_1ea

    iget-object v0, v6, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/statistics/LauncherStatistics;->statsMoveAppToThumbInPagePreviewMode(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_1f9

    :cond_1ea
    instance-of v0, v8, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1f9

    iget-object v0, v6, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    check-cast v8, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v0, v8}, Lcom/android/statistics/LauncherStatistics;->statsMoveWidgetToThumbInPagePreviewMode(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :cond_1f9
    :goto_1f9
    return-object v11
.end method

.method public onLayout(ZIIII)V
    .registers 11

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_8a

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCurrentCellCountX:I

    iget p3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellWidth:I

    mul-int/2addr p3, p2

    :cond_e
    iget p4, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingStart:I

    mul-int/lit8 p5, p4, 0x2

    add-int/2addr p5, p3

    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mMinWidthGap:I

    mul-int v2, v0, v1

    add-int/2addr v2, p5

    const/4 p5, 0x0

    if-le v2, p1, :cond_24

    sub-int/2addr p4, v1

    iput p4, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingStart:I

    if-gez p4, :cond_e

    iput p5, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingStart:I

    :cond_24
    iget p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingStart:I

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    sub-int/2addr p2, p3

    div-int/2addr p2, v0

    const-string p3, "PagePreviewItem"

    if-lez p2, :cond_33

    iput p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellWidthGap:I

    goto :goto_49

    :cond_33
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p4

    if-eqz p4, :cond_49

    const-string/jumbo p4, "onLayout tmpPreviewCellWidthGap: "

    const-string v0, ", mPreviewCellWidth: "

    invoke-static {p4, p2, v0}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p4, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellWidth:I

    const-string v0, ", width: "

    invoke-static {p2, p4, v0, p1, p3}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    :cond_49
    :goto_49
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCurrentCellCountY:I

    iget p4, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellHeight:I

    mul-int/2addr p4, p2

    :cond_52
    iget v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingTop:I

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p4

    add-int/lit8 v2, p2, -0x1

    iget v3, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mMinHeightGap:I

    mul-int v4, v2, v3

    add-int/2addr v4, v1

    if-le v4, p1, :cond_67

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingTop:I

    if-gez v0, :cond_52

    iput p5, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingTop:I

    :cond_67
    iget p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingTop:I

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    sub-int/2addr p2, p4

    div-int/2addr p2, v2

    if-lez p2, :cond_74

    iput p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellHeightGap:I

    goto :goto_8a

    :cond_74
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p4

    if-eqz p4, :cond_8a

    const-string/jumbo p4, "onLayout tmpPreviewCellHeightGap: "

    const-string p5, ", mPreviewCellHeight: "

    invoke-static {p4, p2, p5}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p4, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewCellHeight:I

    const-string p5, ", height: "

    invoke-static {p2, p4, p5, p1, p3}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    :cond_8a
    :goto_8a
    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->onLayout(II)V

    return-void
.end method

.method public onOrientationChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher/views/AdaptiveScreenRotateView;->onOrientationChanged(Z)V

    iget p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mOrgCellPaddingStart:I

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingStart:I

    iget p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mOrgCellPaddingTop:I

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPreviewPaddingTop:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsEnter:Z

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public setCellLayout(Lcom/android/launcher3/CellLayout;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellLayout:Lcom/android/launcher3/OplusCellLayout;

    iput p2, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mScreenIndex:I

    return-void
.end method

.method public setSelected(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsSelectedState:Z

    if-eq v0, p1, :cond_f

    iput-boolean p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsSelectedState:Z

    if-eqz p1, :cond_b

    const/16 v0, 0xff

    goto :goto_d

    :cond_b
    const/16 v0, 0x33

    :goto_d
    iput v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectAlpha:I

    :cond_f
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->setIsNeedStroke(Z)V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->setSelected(Z)V

    return-void
.end method

.method public setTwoPanelSelectedAndStroke(ZZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsSelectedState:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsSelectedState:Z

    :cond_6
    iget-boolean v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mIsEnter:Z

    if-nez v1, :cond_16

    if-eqz p1, :cond_12

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mTwoPanelSelectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16

    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {v1, p2}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->setIsNeedStroke(Z)V

    if-eq v0, p1, :cond_27

    if-nez p1, :cond_20

    goto :goto_27

    :cond_20
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->setSelected(Z)V

    goto :goto_2c

    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->forceSetSelectedWithNoAnimWhenVHRecycled(Z)V

    :goto_2c
    return-void
.end method

.method public switchIconSelectState(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectSelectColor:I

    goto :goto_d

    :cond_b
    iget p1, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectColor:I

    :goto_d
    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectSelectColor:I

    goto :goto_14

    :cond_12
    iget v0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mCellRectColor:I

    :goto_14
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_3a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lw/a;

    invoke-direct {v3, p0, v1, p1, v0}, Lw/a;-><init>(Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/animation/ArgbEvaluator;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_3a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " beyond to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;->mScreenIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
