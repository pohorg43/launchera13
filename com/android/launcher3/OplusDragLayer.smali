.class public Lcom/android/launcher3/OplusDragLayer;
.super Lcom/android/launcher3/dragndrop/DragLayer;
.source ""

# interfaces
.implements Lcom/android/launcher3/SystemWindowInsettable;


# static fields
.field public static final HAS_ENTER_LAUNCHER:Ljava/lang/String; = "HasEnterLauncher"

.field private static final TAG:Ljava/lang/String; = "OplusDragLayer"


# instance fields
.field public isLocationIcon:Z

.field private mHasEnterLauncher:Z

.field private mIsBracketSpaceRunning:Z

.field private mLauncherContentAnimForFolder:Landroid/animation/AnimatorSet;

.field private mPageIndicatorTouchHelper:Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;

.field private final mSystemWindowInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusDragLayer;->isLocationIcon:Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusDragLayer;->mSystemWindowInsets:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/android/launcher3/OplusDragLayer;->mIsBracketSpaceRunning:Z

    return-void
.end method

.method public static synthetic f(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/OplusDragLayer;->lambda$animateViewIntoPosition$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/OplusDragLayer;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILjava/lang/Runnable;ILandroid/view/View;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/OplusDragLayer;->lambda$animateViewIntoPosition$1(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILjava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method private hasEnterLauncher()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/OplusDragLayer;->mHasEnterLauncher:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "HasEnterLauncher"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusDragLayer;->mHasEnterLauncher:Z

    return v0
.end method

.method private static synthetic lambda$animateViewIntoPosition$0(Landroid/view/View;)V
    .registers 3

    instance-of v0, p0, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForLongClick()V

    goto :goto_18

    :cond_e
    instance-of v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->resetPressAnimStateForLongClick(Z)V

    :cond_18
    :goto_18
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$animateViewIntoPosition$1(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILjava/lang/Runnable;ILandroid/view/View;)V
    .registers 21

    sget-object v7, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_11:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method private setHasEnterLauncher()V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/OplusDragLayer;->hasEnterLauncher()Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getLauncherFinishBindFlag()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2d

    :cond_f
    const-string v0, "OplusDragLayer"

    const-string/jumbo v1, "setHasEnterLauncher"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HasEnterLauncher"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v2, p0, Lcom/android/launcher3/OplusDragLayer;->mHasEnterLauncher:Z

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .registers 24

    move-object v1, p0

    move v0, p2

    move/from16 v2, p3

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {v3, p2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v1, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v1, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v0

    move v7, v0

    goto :goto_30

    :cond_2e
    move/from16 v7, p9

    :goto_30
    iget-object v0, v1, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->pageScrollsInitialized()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, v1, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v11

    new-instance v12, Lcom/android/launcher3/u0;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/u0;-><init>(Lcom/android/launcher3/OplusDragLayer;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILjava/lang/Runnable;ILandroid/view/View;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto :goto_80

    :cond_6a
    sget-object v8, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_11:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move v6, v7

    move-object v7, v8

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    :goto_80
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v2, :cond_18

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layoutChild(Landroid/view/View;)V

    :cond_18
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v5, p1

    invoke-virtual {v0, v5, v4}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v6

    iget v7, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    int-to-float v7, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000  # 1.0f

    sub-float v10, v9, v6

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v8, v10, v11, v7}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result v7

    const/4 v8, 0x0

    aput v7, v4, v8

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7, v10, v11, v3}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result v3

    const/4 v7, 0x1

    aput v3, v4, v7

    iget-object v3, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    sget-object v10, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v10}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    const/4 v10, 0x0

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher3/CellLayout;

    if-eqz v12, :cond_6b

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/CellLayout;

    :cond_6b
    if-eqz v3, :cond_86

    if-nez v10, :cond_7b

    iget-object v2, v0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->setFinalTransitionTransform()V

    goto :goto_86

    :cond_7b
    iget-object v2, v0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/launcher3/OplusWorkspace;->setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    :cond_86
    :goto_86
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    move-result v2

    if-eqz v3, :cond_ab

    if-nez v10, :cond_a0

    iget-object v3, v0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/OplusWorkspace;->resetTransitionTransform()V

    goto :goto_ab

    :cond_a0
    iget-object v3, v0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/launcher3/OplusWorkspace;->resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    :cond_ab
    :goto_ab
    mul-float/2addr v2, v6

    aget v3, v4, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    instance-of v6, v1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v6, :cond_10c

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/dragndrop/DraggableView;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v6, v10}, Lcom/android/launcher3/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v6, v12

    mul-float/2addr v6, v2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v9, v6

    mul-float/2addr v12, v9

    div-float/2addr v12, v11

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    div-float/2addr v13, v11

    int-to-float v3, v3

    iget v9, v10, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v6

    div-float/2addr v14, v11

    sub-float/2addr v9, v14

    sub-float/2addr v9, v12

    add-float/2addr v9, v3

    float-to-int v3, v9

    int-to-float v4, v4

    iget v9, v10, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v2, v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    div-float/2addr v6, v11

    sub-float/2addr v2, v6

    sub-float/2addr v2, v13

    add-float/2addr v2, v4

    float-to-int v2, v2

    move v15, v3

    move v3, v2

    move v2, v15

    goto :goto_10e

    :cond_10c
    move v2, v3

    move v3, v4

    :goto_10e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v4, :cond_121

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/card/LauncherCardInfo;

    iget-boolean v4, v4, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    if-eqz v4, :cond_121

    goto :goto_122

    :cond_121
    move v8, v7

    :goto_122
    if-eqz v8, :cond_128

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_128
    new-instance v7, Lcom/android/launcher3/h0;

    invoke-direct {v7, v1}, Lcom/android/launcher3/h0;-><init>(Landroid/view/View;)V

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v6

    move v6, v8

    move v8, v9

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/OplusDragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .registers 18

    move-object v0, p0

    move-object v1, p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v4, p1

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v2, 0x2

    new-array v5, v2, [I

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v6

    iget v7, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000  # 1.0f

    sub-float v10, v9, v6

    mul-float/2addr v8, v10

    const/high16 v11, 0x40000000  # 2.0f

    div-float/2addr v8, v11

    float-to-int v8, v8

    add-int/2addr v7, v8

    const/4 v8, 0x0

    aput v7, v5, v8

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    div-float/2addr v7, v11

    float-to-int v7, v7

    add-int/2addr v3, v7

    const/4 v7, 0x1

    aput v3, v5, v7

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v3

    mul-float/2addr v3, v6

    aget v6, v5, v8

    aget v5, v5, v7

    instance-of v7, v1, Landroid/widget/TextView;

    if-eqz v7, :cond_b9

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    div-float v8, v3, v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7, v8, v5}, Landroidx/core/animation/b;->a(FFI)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v9, v8

    mul-float/2addr v9, v7

    div-float/2addr v9, v11

    sub-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v7

    if-eqz v7, :cond_82

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v5, v7

    :cond_82
    instance-of v7, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v7, :cond_a4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v7, v3}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-static {v8, v7, v6}, Landroidx/core/animation/b;->a(FFI)I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v3, v7

    div-int/2addr v3, v2

    add-int/2addr v3, v6

    goto :goto_b6

    :cond_a4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v7, v3

    div-int/2addr v7, v2

    sub-int v3, v6, v7

    :goto_b6
    move v2, v3

    move v3, v5

    goto :goto_118

    :cond_b9
    instance-of v7, v1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v7, :cond_f4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v7, v3, v5}, Landroidx/core/animation/b;->a(FFI)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    div-float/2addr v7, v11

    sub-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v9, v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v9, v7

    div-float/2addr v9, v11

    sub-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v7, v3

    div-int/2addr v7, v2

    sub-int/2addr v6, v7

    goto :goto_116

    :cond_f4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/2addr v7, v2

    sub-int/2addr v5, v7

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v6, v3

    :goto_116
    move v3, v5

    move v2, v6

    :goto_118
    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object/from16 v7, p4

    move v9, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/OplusDragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public canFindActiveController()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/OplusDragLayer;->mPageIndicatorTouchHelper:Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->isIndicatorPressedDragging()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0}, Lcom/android/launcher3/views/BaseDragLayer;->canFindActiveController()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public checkResetBackgroundFlag(Lcom/android/launcher/Launcher;)Z
    .registers 4

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/OplusDragLayer$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/OplusDragLayer$1;-><init>(Lcom/android/launcher3/OplusDragLayer;Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public clearAnimatedViewInject()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_28

    invoke-static {}, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->refreshCurrentEventTime()V

    invoke-static {}, Lcom/oplus/quickstep/utils/InputMonitorRestoreHelper;->maybeInputMonitorInvalidate()V

    :cond_28
    invoke-direct {p0}, Lcom/android/launcher3/OplusDragLayer;->setHasEnterLauncher()V

    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/OplusDragLayer;->mPageIndicatorTouchHelper:Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method public dispatchTouchEventInject(Landroid/view/MotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public getActiveController()Lcom/android/launcher3/util/TouchController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    return-object p0
.end method

.method public getDragAnim()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method public getSystemWindowInsets()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusDragLayer;->mSystemWindowInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hideGaussianBlurViewForFolder(ZZ)V
    .registers 3
    .param p2  # Z
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusDragLayer;->resetGaussianAnimState()V

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLauncherContentAnim(Lcom/android/launcher/Launcher;Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/OplusDragLayer;->mLauncherContentAnimForFolder:Landroid/animation/AnimatorSet;

    goto :goto_44

    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/launcher3/OplusDragLayer;->resetViewsProperty(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    invoke-virtual {p2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    :goto_44
    return-void
.end method

.method public interceptByResizeFrameIfNeeded(Landroid/view/MotionEvent;Lcom/android/launcher3/AbstractFloatingView;)Lcom/android/launcher3/AbstractFloatingView;
    .registers 3

    instance-of p2, p2, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    if-eqz p2, :cond_17

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    const/16 p2, 0x8

    invoke-static {p0, p2}, Lcom/android/launcher3/AbstractFloatingView;->getTopView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-interface {p0, p1}, Lcom/android/launcher3/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/OplusDragLayer;->mPageIndicatorTouchHelper:Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;->isIndicatorPressedDragging()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-boolean v0, p0, Lcom/android/launcher3/OplusDragLayer;->isLocationIcon:Z

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isLoadingViewShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string p0, "OplusDragLayer"

    const-string p1, "Loading view is showing, intercept touch event."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_28
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/4 p1, 0x0

    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_95

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz p2, :cond_91

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_91

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DragLayer.onMeasure(): "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", folderHeight:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", folderWidth:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", folderPadding:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusDragLayer"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    :cond_91
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_4

    :cond_95
    :goto_95
    return-void
.end method

.method public recreateControllers()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->recreateRecentTouController()V

    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    invoke-static {v0}, Lcom/android/launcher/statemanager/OplusUiFactoryInjector;->createTouchControllers(Lcom/android/launcher/Launcher;)[Lcom/android/launcher3/util/TouchController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    if-eqz v1, :cond_39

    array-length p0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, p0, :cond_21

    aget-object v5, v2, v4

    instance-of v5, v5, Lcom/android/launcher/controller/OplusWorkspaceTouchController;

    if-eqz v5, :cond_1e

    const/4 p0, 0x1

    goto :goto_22

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_21
    move p0, v3

    :goto_22
    if-eqz p0, :cond_39

    array-length p0, v1

    :goto_25
    if-ge v3, p0, :cond_39

    aget-object v2, v1, v3

    instance-of v4, v2, Lcom/android/launcher/controller/OplusWorkspaceTouchController;

    if-eqz v4, :cond_36

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    check-cast v2, Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_39
    return-void
.end method

.method public resetGaussianAnimState()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/OplusDragLayer;->mLauncherContentAnimForFolder:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/OplusDragLayer;->mLauncherContentAnimForFolder:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusDragLayer;->mLauncherContentAnimForFolder:Landroid/animation/AnimatorSet;

    :cond_12
    return-void
.end method

.method public resetViewsProperty(Lcom/android/launcher3/Launcher;)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p0, :cond_39

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotY(F)V

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_33

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_33
    invoke-virtual {p0, v1}, Lcom/android/launcher3/OplusHotseat;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    :cond_39
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_5f

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->setVisibility(I)V

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_5b

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/common/config/AnimationConstant;->workspaceScaleRangeForFolderAnim(Lcom/android/launcher3/Launcher;Z)[F

    move-result-object v3

    aget v2, v3, v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_5b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    :cond_5f
    if-eqz v2, :cond_8e

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/states/OplusBaseLauncherState;

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v3, v4, :cond_7b

    invoke-virtual {v3, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPageIndicatorScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    :cond_7b
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v3, v2, :cond_87

    sget-object v2, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v2

    if-eqz v2, :cond_8b

    :cond_87
    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v3, v2, :cond_8e

    :cond_8b
    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->showPageIndicator()V

    :cond_8e
    instance-of p0, p1, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_ad

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_ad

    move-object v2, p1

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarView()Lcom/android/launcher/togglebar/ToggleBarRootView;

    move-result-object v2

    if-eqz v2, :cond_ad

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_ad
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCard()Z

    move-result v2

    if-eqz v2, :cond_cc

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isSupportCardAndWidgetCombine:Z

    if-nez v2, :cond_cc

    move-object v2, p1

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->getCardStoreButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_cc
    if-eqz p0, :cond_e8

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_e8

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLayout()Lcom/android/launcher/pagepreview/PagePreviewRoot;

    move-result-object p0

    if-eqz p0, :cond_e8

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e8
    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_14

    const/high16 p0, 0x3f800000  # 1.0f

    cmpl-float p0, p1, p0

    if-nez p0, :cond_39

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAlpha "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "; caller = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusDragLayer"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public setBracketSpaceRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusDragLayer;->mIsBracketSpaceRunning:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/OplusDragLayer;->mIsBracketSpaceRunning:Z

    if-eqz v0, :cond_f

    if-nez p1, :cond_f

    const-string p0, "OplusDragLayer"

    const-string/jumbo p1, "setVisibility: bracket space running, can\'t change visibility to VISIBLE"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusDragLayer;->mSystemWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusLauncherRootView;->dispatchSystemWidowInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setup(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/Workspace;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->setup(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/Workspace;)V

    new-instance p1, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher3/OplusDragLayer;->mPageIndicatorTouchHelper:Lcom/android/launcher/pageindicators/PageIndicatorTouchHelper;

    return-void
.end method

.method public showGaussianBlurViewForFolder()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusDragLayer;->resetGaussianAnimState()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLauncherContentAnim(Lcom/android/launcher/Launcher;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/OplusDragLayer;->mLauncherContentAnimForFolder:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public updateAnimateViewIntoPositionDestRectInject(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    instance-of p0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_9

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconBounds(Landroid/graphics/Rect;)V

    :cond_9
    return-void
.end method

.method public updateAnimateViewIntoPositionInject(Landroid/view/View;Landroid/view/View;Landroid/graphics/Point;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Point;F)V
    .registers 9

    instance-of p0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_28

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget v0, p5, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v1, p6, v0}, Landroidx/core/animation/b;->a(FFI)I

    move-result v0

    iput v0, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    iput p0, p3, Landroid/graphics/Point;->x:I

    :cond_28
    instance-of p0, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_89

    iget p0, p5, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, p6, p0}, Landroidx/core/animation/b;->a(FFI)I

    move-result p0

    iput p0, p3, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p6

    mul-float/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v1, v0

    sub-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Point;->y:I

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    check-cast p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getFolderIconBounds(Landroid/graphics/Rect;)V

    iget p2, p5, Landroid/graphics/Point;->x:I

    iget p5, p0, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    invoke-static {p6, p5, p2}, Landroidx/core/animation/b;->a(FFI)I

    move-result p2

    iput p2, p3, Landroid/graphics/Point;->x:I

    instance-of p5, p1, Lcom/android/launcher3/Workspace;

    if-eqz p5, :cond_7b

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    mul-float/2addr p1, p0

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1, p0, v0, p2}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Point;->x:I

    goto :goto_89

    :cond_7b
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p2

    iput p0, p3, Landroid/graphics/Point;->x:I

    :cond_89
    :goto_89
    return-void
.end method
