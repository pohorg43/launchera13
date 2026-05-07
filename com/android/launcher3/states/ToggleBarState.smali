.class public Lcom/android/launcher3/states/ToggleBarState;
.super Lcom/android/launcher3/states/OplusBaseLauncherState;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/states/ToggleBarState$ContainerType;
    }
.end annotation


# static fields
.field private static final DRAGLAYER_BG_ALPHA:I = 0x34

.field private static final STATE_FLAGS:I

.field private static final TAG:Ljava/lang/String; = "ToggleBarState"

.field private static final TOGGLE_BAR_MAIN_UI_ANIMATE_DELAY:I = 0x1f4

.field public static final TOGGLE_BAR_OPS_BTN_DELAY:I = 0xbb

.field private static final TOGGLE_BAR_WP_SCALE_SINGLE_PANEL:F = 0.89f

.field private static final TOGGLE_BAR_WP_SCALE_TWO_PANELS:F = 0.854f


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    or-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_HAS_SYS_UI_SCRIM:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher3/states/ToggleBarState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    sget v0, Lcom/android/launcher3/states/ToggleBarState;->STATE_FLAGS:I

    const/16 v1, 0x64

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/states/OplusBaseLauncherState;-><init>(III)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher/togglebar/ToggleBarManager;Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/states/ToggleBarState;->lambda$onStateEnabled$0(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher/togglebar/ToggleBarManager;Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V

    return-void
.end method

.method private hasUseCacheFlag(Lcom/android/launcher3/statemanager/StatefulActivity;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget p1, Lcom/android/launcher3/LauncherState;->FLAG_OVERVIEW_UI:I

    invoke-interface {p0, p1}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onStateEnabled$0(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher/togglebar/ToggleBarManager;Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p1, p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->onToggleBarStateEnable(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public canSnapWorkspacePage(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->canSnapWorkspacePage()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public getBlurUnchecked(Landroid/content/Context;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/ToggleBarState;->getDepthUnchecked(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getCellLayoutBgAlpha(Lcom/android/launcher3/Launcher;)I
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_b

    const/16 p0, 0x26

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
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

    const/16 p0, 0xbb

    return p0
.end method

.method public getDepthUnchecked(Landroid/content/Context;)F
    .registers 2

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 4

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_c

    const p0, 0x3f5a9fbe  # 0.854f

    goto :goto_f

    :cond_c
    const p0, 0x3f63d70a  # 0.89f

    :goto_f
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070c7e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    goto :goto_26

    :cond_25
    move p1, v1

    :goto_26
    new-instance v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v0
.end method

.method public getLauncherRootViewBgAlpha()I
    .registers 1

    const/16 p0, 0x34

    return p0
.end method

.method public getPageIndicatorScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/ToggleBarState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getToggleBarScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    new-instance p0, Lcom/android/launcher3/states/OplusBaseLauncherState$AlphaScaleAndTranslation;

    const/high16 p1, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0, v0}, Lcom/android/launcher3/states/OplusBaseLauncherState$AlphaScaleAndTranslation;-><init>(FFFF)V

    return-object p0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .registers 3

    const/16 p0, 0x140

    return p0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .registers 2

    const/16 p0, 0x180

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

    new-instance v0, Lcom/android/launcher3/states/ToggleBarState$1;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/states/ToggleBarState$1;-><init>(Lcom/android/launcher3/states/ToggleBarState;Landroid/view/animation/Interpolator;Lcom/android/launcher3/util/IntSet;)V

    return-object v0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_c

    const p0, 0x3f5a9fbe  # 0.854f

    goto :goto_f

    :cond_c
    const p0, 0x3f63d70a  # 0.89f

    :goto_f
    new-instance p1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p1
.end method

.method public onBackPressed(Lcom/android/launcher3/Launcher;)V
    .registers 4

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    invoke-super {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public onStateDisableTransitionEnd(Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->onStateDisableTransitionEnd(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->onToggleBarStateDisableTransitionEnd()V

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

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearStateStack()V

    :cond_14
    return-void
.end method

.method public onStateEnabled(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/BaseState;->onStateEnabled(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v0

    if-eqz v0, :cond_60

    move-object v0, p1

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/launcher3/states/ToggleBarState;->hasUseCacheFlag(Lcom/android/launcher3/statemanager/StatefulActivity;)Z

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "topState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " hasUseCacheFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ToggleBarState"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_43

    if-eqz p0, :cond_43

    const-string p0, " use cache state stack "

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :cond_43
    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearStateStack()V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isChangingFoldState()Z

    move-result p0

    if-eqz p0, :cond_5d

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v2, Lcom/android/launcher/z;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher/togglebar/ToggleBarManager;Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_60

    :cond_5d
    invoke-virtual {v0, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->onToggleBarStateEnable(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public onStateTransitionEnd(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result p0

    if-eqz p0, :cond_17

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->updatePageAlphaValues(Z)V

    :cond_17
    return-void
.end method

.method public supportIconSelected(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getToggleBarManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->supportIconSelected()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method
