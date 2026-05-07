.class public Lcom/android/launcher/model/ChildrenModeLoaderTask;
.super Lcom/android/launcher3/model/LoaderTask;
.source ""


# instance fields
.field private mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

.field private final mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/util/GridOccupancy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V

    new-instance p1, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {p1}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/model/ChildrenModeLoaderTask;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/model/ChildrenModeLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    const-string p1, "ChildrenMode"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method private checkAndAddItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    .registers 5

    iget-object v0, p3, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v0, v0, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-direct {p0, p2, v0}, Lcom/android/launcher/model/ChildrenModeLoaderTask;->checkItemPlacement(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/IntArray;)Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v0, "checkAndAddItem: "

    invoke-static {v0, p2, p0}, Lcom/android/common/util/x;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_2c

    :cond_16
    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Item position overlap: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private checkItemPlacement(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/IntArray;)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x64

    const/4 v4, 0x1

    if-ne v2, v3, :cond_106

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    move-object/from16 v5, p2

    invoke-virtual {v5, v2}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_17

    return v5

    :cond_17
    iget-object v2, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    iget v6, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const-string v9, ":"

    const-string v10, "-"

    const-string v11, " into cell ("

    const-string v12, "Error loading shortcut "

    const-string v13, ","

    if-ne v8, v3, :cond_3d

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v3, :cond_d0

    :cond_3d
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ltz v3, :cond_d0

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v8, v14

    if-gt v8, v6, :cond_d0

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v3, v8

    if-le v3, v2, :cond_4f

    goto/16 :goto_d0

    :cond_4f
    iget-object v3, v0, Lcom/android/launcher/model/ChildrenModeLoaderTask;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v3

    if-nez v3, :cond_76

    new-instance v3, Lcom/android/launcher3/util/GridOccupancy;

    add-int/2addr v6, v4

    add-int/2addr v2, v4

    invoke-direct {v3, v6, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-nez v2, :cond_6f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v14, v3

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_6f
    iget-object v2, v0, Lcom/android/launcher/model/ChildrenModeLoaderTask;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_76
    iget-object v0, v0, Lcom/android/launcher/model/ChildrenModeLoaderTask;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v2, v3, v6, v8}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    return v4

    :cond_92
    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const-string v3, ") already occupied"

    invoke-static {v2, v1, v3, v0}, Landroidx/core/widget/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_d0
    :goto_d0
    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const-string v4, ") out of screen bounds ( "

    const-string/jumbo v7, "x"

    invoke-static {v3, v1, v4, v6, v7}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ")"

    invoke-static {v3, v2, v1, v0}, Landroidx/core/widget/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_106
    return v4
.end method

.method private getAppShortcutInfo(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, -0x64

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const/4 v0, 0x1

    iput v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    invoke-static {}, Lcom/android/launcher/NewUpdatedAppsManager;->getInstance()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    :cond_42
    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-static {v1, p2}, Lcom/android/launcher3/model/data/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V

    iget-object p0, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_62

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_62

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object p2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_198

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Landroid/util/TimingLogger;

    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "run"

    invoke-direct {v3, v0, v4}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1c
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusLauncherModel;->beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    move-result-object v4
    :try_end_26
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1c .. :try_end_26} :catch_184
    .catchall {:try_start_1c .. :try_end_26} :catchall_182

    :try_start_26
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v5
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_174

    :try_start_29
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/AppLimitedStartUpManager;->initLimitAppList()V

    invoke-static {v0}, Lcom/android/launcher/LaunchComponentAliasVerifier;->verify(Landroid/content/Context;)V

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/OplusLauncherModel;

    if-eqz v7, :cond_4c

    invoke-virtual {v6}, Lcom/android/launcher3/OplusLauncherModel;->getNewUpdatedAppsManager()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher/model/ChildrenModeLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-virtual {v6}, Lcom/android/launcher/NewUpdatedAppsManager;->loadNewUpdatedAppPkgNames()V

    :cond_4c
    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/model/ChildrenModeManager;->getChildrenModeApps()Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v7, "prepare"

    invoke-virtual {v3, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v7

    iget v8, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v9, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v8, v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int v10, v9, v8

    rem-int/2addr v9, v8

    if-eqz v9, :cond_72

    add-int/lit8 v10, v10, 0x1

    :cond_72
    new-instance v8, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v8}, Lcom/android/launcher3/util/IntArray;-><init>()V

    const/4 v11, 0x0

    :goto_78
    if-ge v11, v10, :cond_80

    invoke-virtual {v8, v11}, Lcom/android/launcher3/util/IntArray;->add(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_78

    :cond_80
    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v11}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v11, v11, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v11, v11, Lcom/android/launcher/model/BgDataModelHelper;->workspaceScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v11, v8}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v11, 0x1

    invoke-static {v0, v8, v11}, Lcom/android/launcher3/model/OplusBaseLoaderTask;->clearIconDbIfThemeChanged(Landroid/content/Context;Lcom/android/launcher3/icons/IconCache;Z)Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/android/launcher/LaunchComponentAliasVerifier;->loadAllApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_a6
    :goto_a6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v14}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a6

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a6

    invoke-direct {v1, v0, v14}, Lcom/android/launcher/model/ChildrenModeLoaderTask;->getAppShortcutInfo(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_d1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget-object v8, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v6, :cond_156

    sget-object v8, Lcom/android/common/sort/AppNameComparator;->COMPLEX_COMPARATOR:Lcom/android/common/sort/AppNameComparator;

    invoke-static {v12, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v8, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v7, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 v13, 0x0

    :goto_f8
    if-ge v13, v10, :cond_156

    const/4 v14, 0x0

    :goto_fb
    if-ge v14, v8, :cond_150

    const/4 v15, 0x0

    :goto_fe
    if-ge v15, v7, :cond_148

    mul-int v16, v13, v8

    mul-int v16, v16, v7

    mul-int v17, v14, v7

    add-int v17, v17, v16

    add-int v9, v17, v15

    if-ge v9, v6, :cond_148

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput v9, v11, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput v13, v11, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v15, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v14, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    move/from16 v17, v6

    iget-object v6, v1, Lcom/android/launcher/model/ChildrenModeLoaderTask;->mNewUpdatedAppsManager:Lcom/android/launcher/NewUpdatedAppsManager;

    if-nez v9, :cond_133

    invoke-virtual {v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    goto :goto_137

    :cond_133
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :goto_137
    invoke-virtual {v6, v9}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v11, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v1, v0, v11, v6}, Lcom/android/launcher/model/ChildrenModeLoaderTask;->checkAndAddItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v17

    const/4 v11, 0x1

    goto :goto_fe

    :cond_148
    move/from16 v17, v6

    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v17

    const/4 v11, 0x1

    goto :goto_fb

    :cond_150
    move/from16 v17, v6

    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x1

    goto :goto_f8

    :cond_156
    monitor-exit v5
    :try_end_157
    .catchall {:try_start_29 .. :try_end_157} :catchall_171

    :try_start_157
    const-string v0, "load screens"

    invoke-virtual {v3, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/BaseLoaderResults;->bindWorkspace(Z)V

    const-string v0, "bind workspaces"

    invoke-virtual {v3, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->commit()V
    :try_end_16d
    .catchall {:try_start_157 .. :try_end_16d} :catchall_174

    :try_start_16d
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_170
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16d .. :try_end_170} :catch_184
    .catchall {:try_start_16d .. :try_end_170} :catchall_182

    goto :goto_18b

    :catchall_171
    move-exception v0

    :try_start_172
    monitor-exit v5
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    :try_start_173
    throw v0
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_174

    :catchall_174
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_181

    :try_start_178
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_17b
    .catchall {:try_start_178 .. :try_end_17b} :catchall_17c

    goto :goto_181

    :catchall_17c
    move-exception v0

    move-object v4, v0

    :try_start_17e
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_181
    :goto_181
    throw v1
    :try_end_182
    .catch Ljava/util/concurrent/CancellationException; {:try_start_17e .. :try_end_182} :catch_184
    .catchall {:try_start_17e .. :try_end_182} :catchall_182

    :catchall_182
    move-exception v0

    goto :goto_194

    :catch_184
    :try_start_184
    sget-object v0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v1, "Cancelled"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18b
    .catchall {:try_start_184 .. :try_end_18b} :catchall_182

    :goto_18b
    invoke-virtual {v3}, Landroid/util/TimingLogger;->dumpToLog()V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void

    :goto_194
    invoke-virtual {v3}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v0

    :catchall_198
    move-exception v0

    :try_start_199
    monitor-exit p0
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_198

    throw v0
.end method
