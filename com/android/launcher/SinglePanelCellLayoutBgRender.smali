.class public final Lcom/android/launcher/SinglePanelCellLayoutBgRender;
.super Lcom/android/launcher/AbsCellLayoutBgRender;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/SinglePanelCellLayoutBgRender$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/SinglePanelCellLayoutBgRender$Companion;

.field private static final DRAG_BG_SHOW_THRESHOLD:I = 0x3

.field private static final DURATION:J = 0x1c2L

.field private static final MAX_ALPHA:I = 0x33


# instance fields
.field private mBackgroundAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/SinglePanelCellLayoutBgRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/SinglePanelCellLayoutBgRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/SinglePanelCellLayoutBgRender;->Companion:Lcom/android/launcher/SinglePanelCellLayoutBgRender$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/AbsCellLayoutBgRender;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;)V

    return-void
.end method


# virtual methods
.method public animateBackground(ZZZ)V
    .registers 7

    const/16 v0, 0x33

    if-nez p2, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    if-ne p2, v0, :cond_10

    if-nez p1, :cond_12

    :cond_10
    if-eqz p3, :cond_13

    :cond_12
    return-void

    :cond_13
    const/4 p2, 0x2

    new-array p3, p2, [I

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    move v2, v1

    goto :goto_1c

    :cond_1b
    move v2, v0

    :goto_1c
    aput v2, p3, v1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    const/4 p1, 0x1

    aput v0, p3, p1

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMPaint()Landroid/graphics/Paint;

    move-result-object v0

    aget v2, p3, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher/SinglePanelCellLayoutBgRender;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/launcher/SinglePanelCellLayoutBgRender;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_3b

    goto :goto_3e

    :cond_3b
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_3e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/SinglePanelCellLayoutBgRender;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    :cond_41
    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMCellLayout()Lcom/android/launcher3/OplusCellLayout;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/AbsCellLayoutBgRender;->PAINT_ALPHA:Landroid/util/IntProperty;

    new-array p2, p2, [I

    aget v2, p3, v1

    aput v2, p2, v1

    aget p3, p3, p1

    aput p3, p2, p1

    invoke-static {p0, v0, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x1c2

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public cancelAnimation()V
    .registers 1

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;I)I
    .registers 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/SinglePanelCellLayoutBgRender;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher/Launcher;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4e

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusDragLayer;->getDragAnim()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_4c

    goto :goto_4a

    :cond_3c
    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4c

    :goto_4a
    move v2, v3

    goto :goto_4d

    :cond_4c
    move v2, v4

    :goto_4d
    or-int/2addr v1, v2

    :cond_4e
    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v2

    or-int/2addr v1, v2

    if-nez v1, :cond_5f

    if-eqz v0, :cond_114

    :cond_5f
    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMCellLayout()Lcom/android/launcher3/OplusCellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    if-eqz v1, :cond_114

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMCellLayout()Lcom/android/launcher3/OplusCellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    sub-float/2addr v1, v2

    const/16 v2, 0x33

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->isFolderOpenInDragging()Z

    move-result v5

    if-eqz v5, :cond_90

    return v4

    :cond_90
    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher/Launcher;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayoutIndex()I

    move-result v5

    if-ne v5, p2, :cond_a9

    return v4

    :cond_a9
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMCellLayout()Lcom/android/launcher3/OplusCellLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    if-eq p2, v2, :cond_d4

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMCellLayout()Lcom/android/launcher3/OplusCellLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    const v2, 0x3d0b4396  # 0.034f

    mul-float/2addr p2, v2

    invoke-static {p2}, Li1/j;->o(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_d4
    const/4 p2, 0x3

    if-le v1, p2, :cond_114

    if-nez v0, :cond_e0

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->setAlpha(I)V

    :cond_e0
    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->getAlpha()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMCellLayout()Lcom/android/launcher3/OplusCellLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float v5, p2

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMCellLayout()Lcom/android/launcher3/OplusCellLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    int-to-float v6, p2

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMRadius()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMRadius()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getMPaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return v1

    :cond_114
    return v4
.end method

.method public isAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/SinglePanelCellLayoutBgRender;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-static {p0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p0

    return p0
.end method
