.class public Lcom/android/launcher3/states/OplusBaseLauncherState;
.super Lcom/android/launcher3/LauncherState;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/states/OplusBaseLauncherState$AlphaScaleAndTranslation;
    }
.end annotation


# static fields
.field public static final ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

.field public static final OPLUS_LAUNCHER_STATE_COUNTS:I = 0x2

.field public static final PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

.field private static final TAG:Ljava/lang/String; = "OplusBaseLauncherState"

.field public static final TOGGLE_BAR:Lcom/android/launcher3/LauncherState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/states/ToggleBarState;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/launcher3/states/ToggleBarState;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    new-instance v0, Lcom/android/launcher3/states/PagePreviewState;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/launcher3/states/PagePreviewState;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    new-instance v0, Lcom/android/launcher3/states/IconFallenDownState;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/android/launcher3/states/IconFallenDownState;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    return-void
.end method

.method private getPagePreviewLayout(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/pagepreview/PagePreviewRoot;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPagePreviewManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLayout()Lcom/android/launcher/pagepreview/PagePreviewRoot;

    move-result-object p0

    return-object p0
.end method

.method private getPagePreviewLayoutHeight(Lcom/android/launcher3/Launcher;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPagePreviewLayout(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/pagepreview/PagePreviewRoot;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_b
    const-string p0, "OplusBaseLauncherState"

    const-string p1, "previewLayout is null;"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public canSnapWorkspacePage(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public getBlur(Landroid/content/Context;)F
    .registers 3

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getBlur(Landroid/content/Context;Z)F

    move-result p0

    return p0
.end method

.method public getBlur(Landroid/content/Context;Z)F
    .registers 3

    if-eqz p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getBlurUnchecked(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getBlurUnchecked(Landroid/content/Context;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getDepthUnchecked(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getCellLayoutBgAlpha(Lcom/android/launcher3/Launcher;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getCellLayoutScaleAndTranslation(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    new-instance p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/high16 p1, 0x3f800000  # 1.0f

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getDelayForOpsBtn()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getHistoryForState(Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;
    .registers 2

    return-object p1
.end method

.method public bridge synthetic getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getHistoryForState(Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;

    move-result-object p0

    return-object p0
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    new-instance p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/high16 p1, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getLauncherRootViewBgAlpha()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPageIndicatorScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    new-instance p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/high16 p1, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getPagePreviewManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/pagepreview/PagePreviewManager;
    .registers 2

    instance-of p0, p1, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_b

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "getPagePreviewManager, must instanceof launcher!"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPagePreviewScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 6

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPagePreviewLayoutHeight(Lcom/android/launcher3/Launcher;)I

    move-result p0

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    if-eqz p1, :cond_22

    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    neg-int p0, p0

    goto :goto_25

    :cond_22
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p1

    :goto_25
    int-to-float p0, p0

    move v3, v2

    move v2, p0

    move p0, v3

    goto :goto_2e

    :cond_2a
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    int-to-float p0, p0

    :goto_2e
    new-instance p1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p1, v0, v2, p0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p1
.end method

.method public getToggleBarManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/togglebar/ToggleBarManager;
    .registers 2

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    return-object p0
.end method

.method public getToggleBarScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarViewHeight()I

    move-result p0

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz v2, :cond_2c

    if-eqz p1, :cond_26

    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    neg-int p0, p0

    goto :goto_29

    :cond_26
    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p1

    :goto_29
    int-to-float p0, p0

    move p1, v1

    goto :goto_32

    :cond_2c
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    int-to-float p0, p0

    move p1, p0

    move p0, v1

    :goto_32
    new-instance v0, Lcom/android/launcher3/states/OplusBaseLauncherState$AlphaScaleAndTranslation;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState$AlphaScaleAndTranslation;-><init>(FFFF)V

    return-object v0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DEVICE_PROFI",
            "LE_CONTEXT:Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;",
            ">(TDEVICE_PROFI",
            "LE_CONTEXT;",
            "Z)I"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed(Lcom/android/launcher3/Launcher;)V
    .registers 7

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/OplusStateManager;->getBackState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    if-eq v1, v3, :cond_26

    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-eq v1, v3, :cond_26

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v1, v3, :cond_24

    goto :goto_26

    :cond_24
    const/4 v3, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v3, 0x1

    :goto_27
    if-nez v3, :cond_40

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v1, v3, :cond_35

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v2, v3, :cond_35

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_40

    :cond_35
    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne v1, v3, :cond_3e

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_3e

    goto :goto_40

    :cond_3e
    move-object v3, v1

    goto :goto_41

    :cond_40
    :goto_40
    move-object v3, v0

    :goto_41
    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v2, v4, :cond_49

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v1, v2, :cond_57

    :cond_49
    if-ne v1, v4, :cond_59

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result p1

    if-nez p1, :cond_59

    :cond_57
    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    :cond_59
    if-ne v3, v0, :cond_5f

    const/4 p1, 0x2

    invoke-virtual {v3, p1}, Lcom/android/launcher3/states/OPlusBaseState;->addActionFlag(I)V

    :cond_5f
    invoke-virtual {p0, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    invoke-virtual {v3}, Lcom/android/launcher3/states/OPlusBaseState;->resetActionFlag()V

    return-void
.end method

.method public onStateDisableTransitionEnd(Lcom/android/launcher3/Launcher;)V
    .registers 2

    return-void
.end method

.method public onStateTransitionEnd(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/BaseState;->onStateTransitionEnd(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    check-cast p1, Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_49

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p0

    if-eqz p0, :cond_26

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_49

    :cond_26
    const-string p0, "OplusBaseLauncherState"

    const-string v0, "onStateTransitionEnd."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result p0

    if-nez p0, :cond_3f

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    :cond_3f
    invoke-static {p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/GameAccelerationBoxHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/GameAccelerationBoxHelper;->sendGameFolderCreatedBroadcastIfNeed(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/common/debug/TraceLog;->traceLayoutAtThisTime()V

    :cond_49
    return-void
.end method

.method public shouldResetWorkspaceTranslationAndScale()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public supportIconSelected(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
