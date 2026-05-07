.class public Lcom/android/launcher/WorkspaceInjector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_DISTANCE_FOLDER_CREATION_FACTOR_PHONE:F = 0.55f

.field private static final MAX_DISTANCE_FOLDER_CREATION_FACTOR_PHONE_FOR_HOTSEAT:F = 0.35f

.field private static final MAX_DISTANCE_FOLDER_CREATION_FACTOR_PHONE_FOR_HOTSEAT_LANDSCAPE:F = 0.3f

.field private static final MAX_DISTANCE_FOLDER_CREATION_FACTOR_PHONE_LANDSCAPE:F = 0.45f

.field private static final MAX_DISTANCE_FOLDER_CREATION_FACTOR_TABLET:F = 0.75f

.field private static final MAX_DISTANCE_FOR_BIG_FOLDER:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "WorkspaceInjector"


# instance fields
.field private mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/WorkspaceInjector;->lambda$createUserFolderIfNecessaryInject$0(Lcom/android/launcher3/folder/FolderIcon;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/WorkspaceInjector;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method private static synthetic lambda$createUserFolderIfNecessaryInject$0(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 2

    sget-object v0, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->longClickFolderTip(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void
.end method


# virtual methods
.method public beginDragSharedInject(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, "WorkspaceInjector"

    if-nez v0, :cond_13

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "mLauncher is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-string p1, "mLauncher is null!"

    invoke-static {v1, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_13
    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_83

    :cond_25
    iget-boolean v0, p3, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v0, :cond_83

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/aer/ProvisionManager;->isWorkFolder(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_43

    const-string/jumbo v3, "no popup for work folder"

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :cond_43
    invoke-static {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->showForIcon(Landroid/view/View;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    :goto_47
    if-nez v0, :cond_56

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p2}, Lcom/android/launcher/download/InstallState;->isInstallingState()Z

    move-result p2

    if-eqz p2, :cond_56

    iget-object p2, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    :cond_56
    if-eqz v0, :cond_60

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object p0

    iput-object p0, p3, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    goto :goto_83

    :cond_60
    if-eqz v2, :cond_6a

    new-instance p2, Lcom/android/launcher/WorkspaceInjector$1;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/WorkspaceInjector$1;-><init>(Lcom/android/launcher/WorkspaceInjector;Landroid/view/View;)V

    iput-object p2, p3, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    goto :goto_83

    :cond_6a
    iget-object p2, p3, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-nez p2, :cond_83

    iget-object p2, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p2, :cond_83

    instance-of p1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_83

    new-instance p1, Lcom/android/launcher/WorkspaceInjector$2;

    invoke-direct {p1, p0}, Lcom/android/launcher/WorkspaceInjector$2;-><init>(Lcom/android/launcher/WorkspaceInjector;)V

    iput-object p1, p3, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    :cond_83
    :goto_83
    return-void
.end method

.method public createUserFolderIfNecessaryInject(ILcom/android/launcher3/CellLayout;[ILandroid/view/View;ILcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->selectView(Landroid/view/View;)V

    :cond_1c
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4f

    invoke-virtual/range {p7 .. p7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v5, v1, v4}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v6, v0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    aget v10, p3, v3

    aget v11, p3, v2

    move-object v7, p2

    move v8, p1

    move/from16 v9, p5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;IIIILjava/lang/String;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    goto :goto_5d

    :cond_4f
    iget-object v1, v0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    aget v5, p3, v3

    aget v6, p3, v2

    move-object v2, p2

    move v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;IIII)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    :goto_5d
    new-instance v1, Lcom/android/launcher/e0;

    invoke-direct {v1, v0}, Lcom/android/launcher/e0;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public getMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getDragOverFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_17

    const/high16 p0, 0x40000000  # 2.0f

    return p0

    :cond_17
    iget-boolean p0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p0, :cond_2a

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_2a

    const/high16 p0, 0x3f400000  # 0.75f

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float p1, p1

    mul-float/2addr p1, p0

    return p1

    :cond_2a
    iget-boolean p0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_42

    invoke-static {p1}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const p0, 0x3e99999a  # 0.3f

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    goto :goto_3f

    :cond_3a
    const p0, 0x3ee66666  # 0.45f

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    :goto_3f
    int-to-float p1, p1

    mul-float/2addr p1, p0

    return p1

    :cond_42
    invoke-static {p1}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result p0

    if-eqz p0, :cond_4e

    const p0, 0x3eb33333  # 0.35f

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    goto :goto_53

    :cond_4e
    const p0, 0x3f0ccccd  # 0.55f

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    :goto_53
    int-to-float p1, p1

    mul-float/2addr p1, p0

    return p1
.end method

.method public init(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public manageFolderFeedbackInject(Landroid/view/View;)Lcom/android/launcher3/folder/PreviewBackground;
    .registers 10

    new-instance v7, Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-direct {v7}, Lcom/android/launcher3/folder/OplusPreviewBackground;-><init>()V

    if-nez p1, :cond_32

    iget-object p1, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    sub-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    move v4, p1

    move v6, v0

    move v5, v2

    goto :goto_41

    :cond_32
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    move v6, p1

    move v4, v0

    move v5, v1

    :goto_41
    iget-object v2, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/folder/OplusPreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;III)V

    return-object v7
.end method

.method public willAddBatchIconToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;I)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1a

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_19

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v1, :cond_1a

    :cond_19
    return v0

    :cond_1a
    instance-of v1, p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v1, :cond_36

    check-cast p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->acceptBatchDrop(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    invoke-virtual {p2, p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->isNotOverMaxItems(I)Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p0, p0, Lcom/android/launcher/WorkspaceInjector;->mLauncher:Lcom/android/launcher/Launcher;

    const p1, 0x7f12020c

    invoke-static {p0, p1}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_36
    return v0
.end method
