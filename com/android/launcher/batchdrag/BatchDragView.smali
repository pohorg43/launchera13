.class public Lcom/android/launcher/batchdrag/BatchDragView;
.super Lcom/android/launcher3/dragndrop/OplusDragView;
.source ""


# static fields
.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2

.field private static final DEBUG_LAYOUT:Z = false

.field private static final TAG:Ljava/lang/String; = "BatchDragView"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewInitialScrollX:I

.field private mAnimateStartPage:I

.field private mBatchCountRender:Lcom/android/launcher/batchdrag/BatchDragCountRender;

.field private final mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mDragCountParams:Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mIsBatchHead:Z

.field private mOriginalView:Landroid/view/View;

.field private mRectFrom:Landroid/graphics/Rect;

.field private mRectTo:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;IIFFF)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/dragndrop/OplusDragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;IIFFF)V

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mAnchorView:Landroid/view/View;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mAnchorViewInitialScrollX:I

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/batchdrag/BatchDragView;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mRectTo:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/batchdrag/BatchDragView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/batchdrag/BatchDragView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mAnchorViewInitialScrollX:I

    return p0
.end method

.method public static synthetic access$302(Lcom/android/launcher/batchdrag/BatchDragView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private drawCountIfNecessary(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mBatchCountRender:Lcom/android/launcher/batchdrag/BatchDragCountRender;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDragCountParams:Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher/batchdrag/BatchDragCountRender;->draw(Landroid/graphics/Canvas;Landroid/content/Context;Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;)V

    :cond_b
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/batchdrag/BatchDragView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragView;->lambda$animateViewIntoPosition$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$animateViewIntoPosition$0(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_11

    return-void

    :cond_11
    instance-of p0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_26

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->reapplySelectState()V

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const-wide/16 v0, 0xc8

    sget-object p1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v1, p1, v2}, Lcom/android/launcher3/IBubbleTextViewExt;->playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V

    :cond_26
    return-void
.end method

.method private updateRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    iget p1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    sub-int/2addr v2, p2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    sub-int/2addr p0, p2

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-object v0
.end method


# virtual methods
.method public animateView(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)Landroid/animation/ValueAnimator;
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->cancelAnimation()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    if-eqz p6, :cond_15

    invoke-virtual {p6}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mAnchorViewInitialScrollX:I

    :cond_15
    iput-object p6, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mAnchorView:Landroid/view/View;

    new-instance p6, Landroid/animation/ValueAnimator;

    invoke-direct {p6}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p6, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p6, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_44

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher/batchdrag/BatchDragView$2;

    invoke-direct {p2, p0, p4, p5}, Lcom/android/launcher/batchdrag/BatchDragView$2;-><init>(Lcom/android/launcher/batchdrag/BatchDragView;Ljava/lang/Runnable;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    return-object p0

    :array_44
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;ILjava/lang/Runnable;ILandroid/view/View;I)Landroid/animation/ValueAnimator;
    .registers 37

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    iget-object v0, v15, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iput v0, v15, Lcom/android/launcher/batchdrag/BatchDragView;->mAnimateStartPage:I

    iput-object v13, v15, Lcom/android/launcher/batchdrag/BatchDragView;->mRectFrom:Landroid/graphics/Rect;

    iput-object v14, v15, Lcom/android/launcher/batchdrag/BatchDragView;->mRectTo:Landroid/graphics/Rect;

    iget v0, v14, Landroid/graphics/Rect;->left:I

    iget v1, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, v14, Landroid/graphics/Rect;->top:I

    iget v3, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    if-gez p8, :cond_5a

    const v3, 0x7f0b0020

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    cmpg-float v4, v0, v2

    if-gez v4, :cond_4c

    int-to-float v3, v3

    iget-object v4, v15, Lcom/android/launcher/batchdrag/BatchDragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float/2addr v0, v2

    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v3, v0

    :cond_4c
    const v0, 0x7f0b0021

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v17, v0

    goto :goto_5c

    :cond_5a
    move/from16 v17, p8

    :goto_5c
    const/4 v0, 0x0

    if-eqz p10, :cond_61

    if-nez p9, :cond_63

    :cond_61
    iget-object v0, v15, Lcom/android/launcher/batchdrag/BatchDragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    :cond_63
    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v7

    new-instance v19, Lcom/android/launcher/batchdrag/BatchDragView$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p10

    move-object/from16 v4, p9

    move-object/from16 v5, p11

    move/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p3

    move-object/from16 v13, p1

    move/from16 v14, p12

    move-object/from16 v15, p2

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Lcom/android/launcher/batchdrag/BatchDragView$1;-><init>(Lcom/android/launcher/batchdrag/BatchDragView;Lcom/android/launcher/batchdrag/BatchDragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V

    move-object/from16 p1, v19

    move/from16 p2, v17

    move-object/from16 p3, v18

    move-object/from16 p4, p13

    move/from16 p5, p14

    move-object/from16 p6, p15

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)Landroid/animation/ValueAnimator;
    .registers 29

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;I)Landroid/animation/ValueAnimator;
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v16}, Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;ILjava/lang/Runnable;ILandroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public animateViewIntoPosition(Landroid/view/View;ILandroid/view/View;)Landroid/animation/ValueAnimator;
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, p0, v4}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x2

    new-array v7, v6, [F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    iget v9, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    int-to-float v9, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000  # 1.0f

    sub-float v12, v11, v8

    const/high16 v13, 0x40000000  # 2.0f

    invoke-static {v10, v12, v13, v9}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result v9

    const/4 v10, 0x0

    aput v9, v7, v10

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9, v12, v13, v3}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result v3

    const/4 v9, 0x1

    aput v3, v7, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3, v7}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    move-result v2

    mul-float/2addr v2, v8

    aget v3, v7, v10

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-float v8, v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9, v8, v7}, Landroidx/core/animation/b;->a(FFI)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v11, v8

    mul-float/2addr v11, v9

    div-float/2addr v11, v13

    sub-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v9, v2

    div-int/2addr v9, v6

    sub-int/2addr v3, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v5, v3, v7, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v11, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v11, p0, v1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/batchdrag/BatchDragView;Landroid/view/View;)V

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v13}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v4

    move-object v2, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v8

    move v8, v12

    move v12, v13

    move-object v13, v14

    invoke-virtual/range {v0 .. v13}, Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clearAnimatedView()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDropAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragView;->drawCountIfNecessary(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOriginalView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mOriginalView:Landroid/view/View;

    return-object p0
.end method

.method public getRectFrom()Landroid/graphics/Rect;
    .registers 3

    iget v0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mAnimateStartPage:I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    if-ne v0, v1, :cond_13

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mRectFrom:Landroid/graphics/Rect;

    return-object p0

    :cond_13
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mRectFrom:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mAnimateStartPage:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/batchdrag/BatchDragView;->updateRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    return p0
.end method

.method public getRegistrationY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    return p0
.end method

.method public isBatchHead()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mIsBatchHead:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/dragndrop/OplusDragView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mIsBatchHead:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_12
    return-void
.end method

.method public setBatchCountRender(Lcom/android/launcher/batchdrag/BatchDragCountRender;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mBatchCountRender:Lcom/android/launcher/batchdrag/BatchDragCountRender;

    return-void
.end method

.method public setBatchHead(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mIsBatchHead:Z

    return-void
.end method

.method public setDragCountParams(Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mDragCountParams:Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;

    return-void
.end method

.method public setOriginalView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mOriginalView:Landroid/view/View;

    return-void
.end method

.method public setRegistrationX(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    return-void
.end method

.method public setRegistrationY(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    return-void
.end method

.method public showWithoutAnimation(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_40

    :cond_2c
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_40
    :goto_40
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    return-void
.end method

.method public updateRectTo(Landroid/graphics/Rect;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragView;->mRectTo:Landroid/graphics/Rect;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method
