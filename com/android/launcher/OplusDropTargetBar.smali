.class public Lcom/android/launcher/OplusDropTargetBar;
.super Lcom/android/launcher3/DropTargetBar;
.source ""

# interfaces
.implements Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusDropTargetBar"


# instance fields
.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/OplusDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/DropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingLeft:I

    iput p2, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingTop:I

    iput p2, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingRight:I

    iput p2, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingBottom:I

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/OplusDropTargetBar;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/OplusDropTargetBar;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/OplusDropTargetBar;->lambda$onChange$0()V

    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget p0, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingBottom:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_14

    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget p0, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingBottom:I

    add-int/2addr p0, v0

    :goto_14
    return p0
.end method

.method private getPaddingTopWithForeground()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget p0, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingTop:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_14

    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget p0, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingTop:I

    add-int/2addr p0, v0

    :goto_14
    return p0
.end method

.method private synthetic lambda$onChange$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/OplusDropTargetBar;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher/OplusDropTargetBar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/OplusDropTargetBar;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    :cond_13
    return-void
.end method

.method private refreshLocation()V
    .registers 14

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b7e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher/OplusDropTargetBar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/common/config/ScreenInfo;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0705f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0705ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070b8d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070b8e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070c34

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070c33

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070c32

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_e3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_ab

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInLongSize()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-virtual {v0, v8, v2, v8, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_f4

    :cond_a3
    invoke-virtual {v0, v8, v10, v8, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_f4

    :cond_a7
    invoke-virtual {v0, v9, v10, v9, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_f4

    :cond_ab
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v8

    if-eqz v8, :cond_c3

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-virtual {v0, v1, v2, v1, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_f4

    :cond_bf
    invoke-virtual {v0, v6, v7, v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_f4

    :cond_c3
    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-eqz v1, :cond_df

    const/4 v2, 0x2

    if-ne v1, v2, :cond_db

    goto :goto_df

    :cond_db
    invoke-virtual {v0, v4, v5, v4, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_f4

    :cond_df
    :goto_df
    invoke-virtual {v0, v3, v5, v3, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_f4

    :cond_e3
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v3

    if-eqz v3, :cond_f1

    invoke-virtual {v0, v1, v2, v1, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_f4

    :cond_f1
    invoke-virtual {v0, v6, v7, v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_f4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public animateToVisibility(Z)V
    .registers 4

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/launcher/OplusDropTargetBar;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eq v0, p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/android/launcher/OplusDropTargetBar;->refreshLocation()V

    :cond_19
    invoke-super {p0, p1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v0

    if-nez v0, :cond_41

    if-eqz p1, :cond_36

    sget-object p1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object p0, p0, Lcom/android/launcher/OplusDropTargetBar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideStatusBar(Landroid/view/Window;)V

    goto :goto_41

    :cond_36
    sget-object p1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object p0, p0, Lcom/android/launcher/OplusDropTargetBar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showStatusBar(Landroid/view/Window;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public getPaddingLeftWithForeground()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget p0, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingLeft:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_14

    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget p0, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingLeft:I

    add-int/2addr p0, v0

    :goto_14
    return p0
.end method

.method public getPaddingRightWithForeground()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget p0, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingRight:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_14

    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget p0, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingRight:I

    add-int/2addr p0, v0

    :goto_14
    return p0
.end method

.method public layoutChildren(IIIIZ)V
    .registers 16

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher/OplusDropTargetBar;->getPaddingLeftWithForeground()I

    move-result v1

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Lcom/android/launcher/OplusDropTargetBar;->getPaddingRightWithForeground()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-direct {p0}, Lcom/android/launcher/OplusDropTargetBar;->getPaddingTopWithForeground()I

    move-result p1

    sub-int/2addr p4, p2

    invoke-direct {p0}, Lcom/android/launcher/OplusDropTargetBar;->getPaddingBottomWithForeground()I

    move-result p2

    sub-int/2addr p4, p2

    const/4 p2, 0x0

    move v2, p2

    :goto_1a
    if-ge v2, v0, :cond_96

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_93

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3e

    const v7, 0x800033

    :cond_3e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v8

    invoke-static {v7, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    and-int/lit8 v7, v7, 0x70

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5d

    const/4 v9, 0x5

    if-eq v8, v9, :cond_54

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v1

    goto :goto_69

    :cond_54
    if-nez p5, :cond_5b

    sub-int v8, p3, v5

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_68

    :cond_5b
    move v8, p2

    goto :goto_69

    :cond_5d
    sub-int v8, p3, v1

    sub-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_68
    sub-int/2addr v8, v9

    :goto_69
    const/16 v9, 0x10

    if-eq v7, v9, :cond_81

    const/16 v9, 0x30

    if-eq v7, v9, :cond_7d

    const/16 v9, 0x50

    if-eq v7, v9, :cond_78

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_7f

    :cond_78
    sub-int v7, p4, v6

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_8c

    :cond_7d
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_7f
    add-int/2addr v4, p1

    goto :goto_8e

    :cond_81
    sub-int v7, p4, p1

    sub-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p1

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_8c
    sub-int v4, v7, v4

    :goto_8e
    add-int/2addr v5, v8

    add-int/2addr v6, v4

    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_96
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/mode/LauncherModeManager;->registerChangeCallback(Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;)V

    return-void
.end method

.method public onChange()V
    .registers 2

    new-instance v0, Lcom/android/launcher/e0;

    invoke-direct {v0, p0}, Lcom/android/launcher/e0;-><init>(Lcom/android/launcher/OplusDropTargetBar;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher/mode/LauncherModeManager;->unregisterChangeCallback(Lcom/android/launcher/mode/LauncherModeManager$LauncherModelChangeCallback;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 12

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher/OplusDropTargetBar;->layoutChildren(IIIIZ)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    if-ne v0, v2, :cond_2b

    if-ne v1, v2, :cond_2b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_2e

    :cond_2b
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/DropTargetBar;->onMeasure(II)V

    :goto_2e
    return-void
.end method

.method public setForegroundGravity(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v0

    const/16 v1, 0x77

    if-ne v0, v1, :cond_2d

    if-eqz p1, :cond_2d

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_36

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingLeft:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingTop:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingRight:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingBottom:I

    goto :goto_36

    :cond_2d
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingLeft:I

    iput p1, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingTop:I

    iput p1, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingRight:I

    iput p1, p0, Lcom/android/launcher/OplusDropTargetBar;->mForegroundPaddingBottom:I

    :cond_36
    :goto_36
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public setup(Lcom/android/launcher3/dragndrop/DragController;)V
    .registers 5

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :goto_18
    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v2, v0

    if-ge v1, v2, :cond_2c

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    return-void

    :cond_2d
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    return-void

    :cond_38
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3f
    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v2, v0

    if-ge v1, v2, :cond_53

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_53
    return-void
.end method
