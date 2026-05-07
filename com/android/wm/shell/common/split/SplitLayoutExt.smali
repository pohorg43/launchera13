.class public Lcom/android/wm/shell/common/split/SplitLayoutExt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field private mLastImeTargetPosition:I

.field private final mSnapAlgorithmInsets:Landroid/graphics/Rect;

.field private final mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSnapAlgorithmInsets:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mLastImeTargetPosition:I

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    return-void
.end method

.method private static getDisplayInsets(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 3

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getStableInsetsInner(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    if-eqz p2, :cond_3

    return-object p2

    :cond_3
    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->useDisplayStableInsets()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->getDisplayInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p2, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    const/4 p1, 0x3

    const/4 v0, 0x0

    if-eq p0, p1, :cond_2d

    iput v0, p2, Landroid/graphics/Rect;->left:I

    :cond_2d
    iput v0, p2, Landroid/graphics/Rect;->top:I

    return-object p2
.end method

.method private useDisplayStableInsets()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    if-eqz p0, :cond_12

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDeviceSupport()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDisplaySupport()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public atFirstSplitTarget()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividePosition()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public atLastSplitTarget()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividePosition()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    return-object p0
.end method

.method public getDividerCurrentMotionPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_e

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p3

    iget p1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_13

    :cond_e
    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p3

    iget p1, p2, Landroid/graphics/Rect;->top:I

    :goto_13
    sub-int/2addr p0, p1

    return p0
.end method

.method public getDividerInsets(Landroid/content/res/Resources;)I
    .registers 2

    invoke-static {p1}, Lcom/oplus/splitscreen/DividerUtils;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result p0

    return p0
.end method

.method public getDividerSize(Landroid/content/res/Resources;)I
    .registers 2

    invoke-static {p1}, Lcom/oplus/splitscreen/DividerUtils;->getDividerSize(Landroid/content/res/Resources;)I

    move-result p0

    return p0
.end method

.method public getSnapAlgorithmInsets()Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSnapAlgorithmInsets:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getStableInsets(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->getStableInsetsInner(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSnapAlgorithmInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public hookImePositionIfNeeded(IZZZ)I
    .registers 11

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mLastImeTargetPosition:I

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/splitscreen/SplitToggleHelper;->hookImePositionIfNeeded(IIZZZ)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mLastImeTargetPosition:I

    return p1
.end method

.method public hookImeTargetYOffsetWhenBeyondScreen(Lcom/android/wm/shell/common/split/SplitLayout;III)Lcom/android/internal/os/SomeArgs;
    .registers 5

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->hookImeTargetYOffsetWhenBeyondScreen(Lcom/android/wm/shell/common/split/SplitLayout;III)Lcom/android/internal/os/SomeArgs;

    move-result-object p0

    return-object p0
.end method

.method public setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    return-void
.end method

.method public snapToDismissTarget(Z)V
    .registers 3

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividePosition()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToTarget(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_25

    :cond_14
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividePosition()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToTarget(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :goto_25
    return-void
.end method

.method public toggleFirstLastSplitTarget(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->atFirstSplitTarget()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_1f

    :cond_f
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayoutExt;->atLastSplitTarget()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_35

    if-eqz p1, :cond_2d

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividePosition()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->snapToTarget(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_35

    :cond_2d
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(IZ)V

    :cond_35
    :goto_35
    return-void
.end method

.method public updateFoldDividerPositionIfNeed(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .registers 4

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {p1}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(Landroid/content/res/Configuration;)Z

    move-result p1

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {p2}, Lcom/oplus/splitscreen/DividerUtils;->isLargeScreen(Landroid/content/res/Configuration;)Z

    move-result p2

    if-eq p1, p2, :cond_3e

    if-nez p2, :cond_2e

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->isDeviceSupport()Z

    move-result p1

    if-eqz p1, :cond_2e

    if-eqz p3, :cond_23

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_38

    :cond_23
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_38

    :cond_2e
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_38
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayoutExt;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(IZ)V

    :cond_3e
    return-void
.end method
