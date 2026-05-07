.class public Lcom/android/launcher3/states/PagePreviewState;
.super Lcom/android/launcher3/states/OplusBaseLauncherState;
.source ""


# static fields
.field public static final PAGE_PREVIEW:I = 0x65

.field private static final STATE_FLAGS:I

.field private static final WORKSPACE_TOGGLEBAR_SHRINK_FACTOR:F = 0.96166f


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    or-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_HAS_SYS_UI_SCRIM:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher3/states/PagePreviewState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    sget v0, Lcom/android/launcher3/states/PagePreviewState;->STATE_FLAGS:I

    const/16 v1, 0x65

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/states/OplusBaseLauncherState;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getBlurUnchecked(Landroid/content/Context;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/PagePreviewState;->getDepthUnchecked(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getCellLayoutBgAlpha(Lcom/android/launcher3/Launcher;)I
    .registers 2

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    check-cast p0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getCellLayoutBgAlpha(Lcom/android/launcher3/Launcher;)I

    move-result p0

    return p0
.end method

.method public getCellLayoutScaleAndTranslation(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    check-cast p0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getCellLayoutScaleAndTranslation(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getDepthUnchecked(Landroid/content/Context;)F
    .registers 2

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 2

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    check-cast p0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getLauncherRootViewBgAlpha()I
    .registers 1

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    check-cast p0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getLauncherRootViewBgAlpha()I

    move-result p0

    return p0
.end method

.method public getPageIndicatorScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 2

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    check-cast p0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPageIndicatorScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getPagePreviewScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    new-instance p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/high16 p1, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getToggleBarScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 2

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    check-cast p0, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .registers 3

    const/16 p0, 0xfa

    return p0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .registers 2

    const/16 p0, 0x200

    return p0
.end method

.method public getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/states/PagePreviewState$1;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/states/PagePreviewState$1;-><init>(Lcom/android/launcher3/states/PagePreviewState;Landroid/view/animation/Interpolator;Lcom/android/launcher3/util/IntSet;)V

    return-object v0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 2

    sget-object p0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public onStateDisableTransitionEnd(Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->onStateDisableTransitionEnd(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPagePreviewManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onStateDisableTransitionEnd()V

    :cond_c
    return-void
.end method

.method public onStateDisabled(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/BaseState;->onStateDisabled(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    if-eqz v0, :cond_14

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPagePreviewManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onStateDisabled()V

    :cond_14
    return-void
.end method

.method public onStateEnabled(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/BaseState;->onStateEnabled(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    if-eqz v0, :cond_14

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPagePreviewManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onStateEnabled()V

    :cond_14
    return-void
.end method

.method public onStateTransitionEnd(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->onStateTransitionEnd(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPagePreviewManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onStateTransitionEnd()V

    :cond_14
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->updatePageAlphaValues(Z)V

    :cond_1c
    return-void
.end method

.method public supportIconSelected(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
