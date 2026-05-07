.class public Lcom/android/launcher/statemanager/OplusUiFactoryInjector;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTouchControllers(Lcom/android/launcher/Launcher;)[Lcom/android/launcher3/util/TouchController;
    .registers 5

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-array p0, v1, [Lcom/android/launcher3/util/TouchController;

    return-object p0

    :cond_e
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v3, :cond_3e

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v3, :cond_3e

    new-instance v3, Lcom/android/launcher/controller/OplusWorkspaceTouchController;

    invoke-direct {v3, p0}, Lcom/android/launcher/controller/OplusWorkspaceTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/launcher/controller/OplusStatusBarTouchController;

    invoke-direct {v3, p0}, Lcom/android/launcher/controller/OplusStatusBarTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v3

    if-eqz v3, :cond_61

    new-instance v3, Lcom/android/launcher3/pullup/PullUpSearchTouchController;

    invoke-direct {v3, p0}, Lcom/android/launcher3/pullup/PullUpSearchTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    sget-object v3, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v3, :cond_ae

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    if-eqz v0, :cond_7e

    new-instance v0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_7e
    new-instance v0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;

    invoke-direct {v0, p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_86
    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher/controller/SinglePageAlignTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher/controller/SinglePageAlignTouchController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/launcher3/popup/newwindowpc/NewWindowTouchController;

    invoke-direct {p0}, Lcom/android/launcher3/popup/newwindowpc/NewWindowTouchController;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    :cond_ae
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_fe

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    :cond_cb
    new-instance v3, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;

    invoke-direct {v3, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/OplusPortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getIconFallenStatesTouchController()Lcom/android/launcher/touch/IconFallenStatesTouchController;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/launcher/controller/SinglePageAlignTouchController;

    invoke-direct {v3, p0}, Lcom/android/launcher/controller/SinglePageAlignTouchController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/launcher3/popup/newwindowpc/NewWindowTouchController;

    invoke-direct {v3}, Lcom/android/launcher3/popup/newwindowpc/NewWindowTouchController;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v0, :cond_fe

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/oplus/quickstep/gesture/touchcontroller/TwoButtonPortraitStatesTouchController;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/gesture/touchcontroller/TwoButtonPortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fe
    :goto_fe
    new-array p0, v1, [Lcom/android/launcher3/util/TouchController;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/launcher3/util/TouchController;

    return-object p0
.end method

.method public static getStateHandlers(Lcom/android/launcher/Launcher;)[Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_61

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher/SwitchStateTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher/SwitchStateTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    invoke-direct {v1, p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;

    invoke-direct {v1, p0}, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher/togglebar/controller/ToggleBarTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher/togglebar/controller/ToggleBarTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher/pageindicators/WorkspacePageIndicatorTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher/pageindicators/WorkspacePageIndicatorTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/DragLayerStateTranslationAnimation;

    invoke-direct {v1, p0}, Lcom/android/launcher3/DragLayerStateTranslationAnimation;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v1

    if-eqz v1, :cond_d4

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/controler/TaskViewTransitionController;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/controler/TaskViewTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    :cond_61
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher/togglebar/controller/ToggleBarTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher/togglebar/controller/ToggleBarTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher/pagepreview/PagePreviewTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher/pagepreview/PagePreviewTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher/SwitchStateTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher/SwitchStateTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher/controller/HotseatTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher/controller/HotseatTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    invoke-direct {v1, p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;

    invoke-direct {v1, p0}, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher/pageindicators/WorkspacePageIndicatorTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher/pageindicators/WorkspacePageIndicatorTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/folder/FolderTransitionController;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/FolderTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/launcher3/DragLayerStateTranslationAnimation;

    invoke-direct {v1, p0}, Lcom/android/launcher3/DragLayerStateTranslationAnimation;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v1

    if-eqz v1, :cond_d4

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/controler/TaskViewTransitionController;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/controler/TaskViewTransitionController;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d4
    :goto_d4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    return-object p0
.end method
