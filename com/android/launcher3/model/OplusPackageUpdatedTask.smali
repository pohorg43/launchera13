.class public Lcom/android/launcher3/model/OplusPackageUpdatedTask;
.super Lcom/android/launcher3/model/PackageUpdatedTask;
.source ""


# static fields
.field private static final PROGRESS_LEVEL:I = 0x64

.field public static final TAG:Ljava/lang/String; = "OplusPackageUpdatedTask"


# direct methods
.method public varargs constructor <init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    return-void
.end method

.method private filterRemoveAppsWhenUpdate(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_9

    :cond_26
    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v2

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_38
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, p3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed remove info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusPackageUpdatedTask"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4c

    :cond_7c
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8b

    new-instance p1, Lcom/android/launcher3/model/p;

    const/4 p3, 0x4

    invoke-direct {p1, p2, p3}, Lcom/android/launcher3/model/p;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    :cond_8b
    return-void
.end method

.method private getShouldAddInDrawerModeWhenUpdate(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_16
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_af

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    const-string v4, "OplusPackageUpdatedTask"

    if-nez v3, :cond_31

    const-string v2, "getShouldAddInDrawerModeWhenUpdate targetComponent is null"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    :cond_31
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.stk"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v5, :cond_47

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isVodafoneCustomizer()Z

    move-result v5

    if-nez v5, :cond_4d

    :cond_47
    const-string v2, "getShouldAddInDrawerModeWhenUpdate stk not allowed to add to workspace when update"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    :cond_4d
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    :cond_5b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v7, :cond_5f

    iget-object v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    const-string v3, "getShouldAddInDrawerModeWhenUpdate ,find same user and pg ,user = "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " component = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_a6

    :cond_a5
    move v3, v0

    :goto_a6
    if-nez v3, :cond_ab

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ab
    :goto_ab
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    :cond_af
    return-object p0
.end method

.method private isInfoUpdated(Landroid/content/Context;Ljava/util/HashSet;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Z)Z"
        }
    .end annotation

    iget-object p0, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz p0, :cond_1e

    iget-object p0, p0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    iget-object p1, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    if-eqz p1, :cond_1e

    iput-object p1, p3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    const/4 p4, 0x1

    :cond_1e
    return p4
.end method

.method private static synthetic lambda$execute$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 4

    const-string v0, "removedComponents add : "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPackageUpdatedTask"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$execute$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppsAddedToWorkspace(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$execute$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$execute$3(Landroid/content/Context;Ljava/util/HashSet;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashMap;Ljava/util/HashSet;Lcom/android/launcher3/model/AllAppsList;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p14

    const/4 v6, 0x0

    move-object/from16 v7, p2

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->isInfoUpdated(Landroid/content/Context;Ljava/util/HashSet;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z

    move-result v7

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    const-string v9, "OplusPackageUpdatedTask"

    if-eqz v8, :cond_2d0

    move-object/from16 v10, p3

    invoke-interface {v10, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v11

    const/4 v12, 0x3

    if-eqz v11, :cond_50

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "forceKeepShortcuts add: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    move-object/from16 v13, p4

    invoke-virtual {v13, v11}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget v11, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-ne v11, v12, :cond_50

    return-void

    :cond_50
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v11

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v11, :cond_1e3

    if-eqz p5, :cond_1e3

    iget v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v4, v14, :cond_8c

    new-instance v4, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v11, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v4, v2, v11}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    new-array v15, v14, [Ljava/lang/String;

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-virtual {v4, v11, v15}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_80

    goto :goto_af

    :cond_80
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5, v4, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    move v4, v14

    move v7, v4

    goto :goto_b2

    :cond_8c
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "."

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "downloadAppClassName"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v4

    iget-object v11, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v8, v11}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    goto :goto_b2

    :cond_af
    :goto_af
    move v4, v6

    goto :goto_b2

    :cond_b1
    move v4, v14

    :goto_b2
    sget-object v11, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v11}, Lcom/android/common/config/FeatureOption;->isDisableDownloadProgress()Z

    move-result v11

    const-string v15, "Restored shortcut no longer valid "

    if-nez v11, :cond_1a5

    const/high16 v11, 0x40000000  # 2.0f

    invoke-virtual {v5, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v12

    if-eqz v12, :cond_e2

    if-nez v4, :cond_e2

    iget-object v12, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v12}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v12

    if-eqz v12, :cond_e2

    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d6

    goto/16 :goto_28d

    :cond_d6
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_28e

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void

    :cond_e2
    invoke-virtual {v5, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v11

    if-eqz v11, :cond_161

    iget-object v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v11}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v11

    if-nez v11, :cond_f8

    iget-object v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v11}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v11

    if-eqz v11, :cond_161

    :cond_f8
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_10c

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v14, :cond_10c

    move v3, v14

    goto :goto_10d

    :cond_10c
    move v3, v6

    :goto_10d
    if-eqz v3, :cond_123

    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_117

    goto/16 :goto_28d

    :cond_117
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_28e

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void

    :cond_123
    const-string v2, ", onlyOneLaunchIcon = "

    if-nez v4, :cond_140

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid package, remove it: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3, v9}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void

    :cond_140
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/ItemInfo;->setToBeInstalledApp()V

    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set state for  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28e

    :cond_161
    if-nez v4, :cond_1a1

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isAutoInstallApp()Z

    move-result v3

    if-eqz v3, :cond_187

    const-string v0, "Target invalid but isAutoInstallApp, updateWorkspaceItemIntent, className: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28e

    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto/16 :goto_28d

    :cond_187
    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a1
    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto/16 :goto_28d

    :cond_1a5
    if-nez v4, :cond_1c1

    invoke-virtual {v5, v12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v3

    if-eqz v3, :cond_1c1

    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b5

    goto/16 :goto_28d

    :cond_1b5
    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_28e

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void

    :cond_1c1
    if-nez v4, :cond_1df

    iget v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1df
    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto/16 :goto_28d

    :cond_1e3
    if-eqz p5, :cond_267

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_267

    :try_start_1ed
    invoke-static/range {p1 .. p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v0

    iget-object v3, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v3}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_1f7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ed .. :try_end_1f7} :catch_1f8

    goto :goto_20e

    :catch_1f8
    move-exception v0

    const-string v3, " Unknown component "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    :goto_20e
    iget-object v3, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v10, v3}, Lcom/android/launcher3/model/AllAppsList;->findAppInfoByPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_21e

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v14, :cond_21e

    move v4, v14

    goto :goto_21f

    :cond_21e
    move v4, v6

    :goto_21f
    if-eqz v0, :cond_238

    if-eqz v4, :cond_238

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_238

    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_238

    move v7, v14

    :cond_238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isTargetValid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", onlyOneStartComponent: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28e

    :cond_267
    if-eqz p5, :cond_28e

    iget v0, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_28e

    iget-object v0, v1, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v10, v0}, Lcom/android/launcher3/model/AllAppsList;->findAppInfoByPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_27d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v14, :cond_27d

    move v0, v14

    goto :goto_27e

    :cond_27d
    move v0, v6

    :goto_27e
    if-eqz v0, :cond_28e

    iget-object v0, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mMarketRecommendAppInfo:Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    if-eqz v0, :cond_287

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->resetMarketRecommendAppInfo()V

    :cond_287
    invoke-virtual {v1, v2, v5, v10}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28e

    :goto_28d
    move v7, v14

    :cond_28e
    :goto_28e
    if-eqz p5, :cond_2bf

    move-object/from16 v2, p10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2ac

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a1

    goto :goto_2ac

    :cond_2a1
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v0

    goto :goto_2ae

    :cond_2ac
    :goto_2ac
    const/16 v0, 0x64

    :goto_2ae
    invoke-virtual {v5, v0, v13}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V

    iget v0, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_2bf

    invoke-virtual/range {p14 .. p14}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v0

    move-object/from16 v2, p11

    invoke-virtual {v2, v5, v0}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    move v7, v14

    :cond_2bf
    iget v0, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v2

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    if-eq v2, v0, :cond_2cc

    move v6, v14

    :cond_2cc
    invoke-direct {v1, v5, v7}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->setPointAheadIconText(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z

    move-result v7

    :cond_2d0
    if-nez v7, :cond_2d4

    if-eqz v6, :cond_2d7

    :cond_2d4
    invoke-virtual/range {p13 .. p14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d7
    if-eqz v7, :cond_2f1

    iget v0, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2f1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/OplusModelWriter;

    if-eqz v1, :cond_2ec

    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/OplusModelWriter;->updateNonPositionAttrInDatabase(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_2f1

    :cond_2ec
    const-string v0, "error in model writer type"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f1
    :goto_2f1
    return-void
.end method

.method private static synthetic lambda$execute$4(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$filterRemoveAppsWhenUpdate$5(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppInfosRemoved(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$removeInvalidWidgetIfNeeded$6(Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    if-nez p0, :cond_2b

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeWidget(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "removeInvalidWidgetIfNeeded item:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusPackageUpdatedTask"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$removeInvalidWidgetIfNeeded$6(Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/model/OplusPackageUpdatedTask;Landroid/content/Context;Ljava/util/HashSet;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashMap;Ljava/util/HashSet;Lcom/android/launcher3/model/AllAppsList;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 15

    invoke-direct/range {p0 .. p14}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$execute$3(Landroid/content/Context;Ljava/util/HashSet;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashMap;Ljava/util/HashSet;Lcom/android/launcher3/model/AllAppsList;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic o(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$execute$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public static synthetic p(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$execute$4(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic q(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$execute$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic r(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$filterRemoveAppsWhenUpdate$5(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic s(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->lambda$execute$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private setPointAheadIconText(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Z
    .registers 5

    iget p0, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v0, 0x1

    const/16 v1, 0xf

    if-ne p0, v1, :cond_c

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    :goto_a
    move p2, v0

    goto :goto_13

    :cond_c
    const/16 v1, 0x10

    if-ne p0, v1, :cond_13

    iput-boolean v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    goto :goto_a

    :cond_13
    :goto_13
    return p2
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 43

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v7

    const-string v1, "OplusPackageUpdatedTask"

    const-string v2, "PackageUpdatedTask: In children mode: "

    const-string v3, ", In loading and binding: "

    invoke-static {v2, v7, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eqz v7, :cond_41

    iget v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-eq v3, v2, :cond_39

    if-ne v3, v1, :cond_41

    :cond_39
    const-string v0, "OplusPackageUpdatedTask"

    const-string v1, "In children mode, don\'t handle OP_ADD or OP_HIDE_CLEAR_CACHE"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_41
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v12

    iget-object v10, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    array-length v9, v10

    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    new-instance v8, Ljava/util/HashSet;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v2

    goto :goto_65

    :cond_5f
    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v8, v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v2

    :goto_65
    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isSupportMultiApp:Z

    if-eqz v3, :cond_79

    sget-object v3, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v3}, Lcom/android/launcher3/pm/UserCache;->isSystemUser()Z

    move-result v3

    if-eqz v3, :cond_79

    const/4 v3, 0x1

    goto :goto_7a

    :cond_79
    const/4 v3, 0x0

    :goto_7a
    move/from16 v16, v3

    if-nez v7, :cond_8a

    if-eqz v16, :cond_8a

    sget-object v3, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-static {v8, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    :cond_8a
    sget-object v3, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v4}, Lcom/android/launcher3/pm/UserCache;->hasWorkProfile()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-virtual {v3, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v4}, Lcom/android/launcher3/pm/UserCache;->getProfileUserHandler()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    :cond_aa
    move-object v6, v2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v2

    move-object/from16 v17, v4

    const-string v4, "OplusPackageUpdatedTask"

    const-string v18, "mOp = "

    move-object/from16 v19, v5

    invoke-static/range {v18 .. v18}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v18, v8

    iget v8, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mUser = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", currUser = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", pkgs = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    packed-switch v4, :pswitch_data_a0e

    move-object/from16 v20, v1

    move-object v0, v2

    move-object/from16 v26, v8

    move v7, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v19, v6

    move-object v6, v5

    packed-switch v4, :pswitch_data_a20

    const/4 v0, 0x4

    move-object/from16 v1, v20

    goto/16 :goto_5f3

    :pswitch_119  #0x7
    new-instance v0, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v0}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    invoke-virtual {v3, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/UserCache;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v13, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_13e

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    goto :goto_144

    :cond_13e
    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    :goto_144
    invoke-virtual {v11, v6, v1}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {v11, v2, v0}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    const/4 v0, 0x4

    move/from16 v20, v0

    move-object/from16 v26, v8

    move v7, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v19, v6

    move-object v6, v5

    :goto_15c
    move-object v5, v1

    goto/16 :goto_5f7

    :pswitch_15f  #0x5, 0x6
    const/4 v0, 0x5

    if-ne v4, v0, :cond_168

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    goto :goto_16d

    :cond_168
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    :goto_16d
    invoke-virtual {v11, v6, v0}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    move-object v1, v0

    move-object/from16 v26, v8

    move v7, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v19, v6

    move-object v6, v5

    goto/16 :goto_5da

    :pswitch_17d  #0x4
    move-object/from16 v20, v1

    goto :goto_1aa

    :pswitch_180  #0x3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_186
    if-ge v3, v9, :cond_1a3

    aget-object v4, v10, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_195

    aget-object v4, v10, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_195
    aget-object v4, v10, v3

    move-object/from16 v20, v1

    iget-object v1, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v4, v1}, Lcom/android/launcher3/dot/DotUtils;->removeItemFromNumberBadgeSupportPackageList(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v20

    goto :goto_186

    :cond_1a3
    move-object/from16 v20, v1

    iget-object v1, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v2, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeIconsForPkgs(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    :goto_1aa
    const/4 v1, 0x0

    :goto_1ab
    if-ge v1, v9, :cond_261

    if-eqz v7, :cond_1cc

    aget-object v2, v10, v1

    invoke-virtual {v0, v2}, Lcom/android/launcher/model/ChildrenModeManager;->inChildrenModeApps(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1cc

    const-string v2, "OplusPackageUpdatedTask"

    const-string v3, "OP_UNAVAILABLE: in children mode apps, skip: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v10, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f9

    :cond_1cc
    aget-object v2, v10, v1

    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v2, v3}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    sget-object v2, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e3

    aget-object v3, v10, v1

    invoke-static {v13, v3}, Lcom/android/launcher/download/DownloadAppUtils;->clearAllDownloadIcons(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1fe

    :cond_1e3
    if-eqz v7, :cond_1fe

    const-string v2, "OplusPackageUpdatedTask"

    const-string v3, "OP_UNAVAILABLE: in children mode, skip: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v10, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f9
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    goto :goto_259

    :cond_1fe
    :goto_1fe
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v3

    aget-object v4, v10, v1

    invoke-virtual {v3, v4}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "OplusPackageUpdatedTask"

    const-string v16, "execute: mAllAppsList.removePackage user = "

    move-object/from16 v21, v5

    invoke-static/range {v16 .. v16}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v22, v6

    iget-object v6, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mult = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_259

    invoke-static {v13}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v4

    aget-object v5, v10, v1

    iget-object v6, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removeProtectedItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_259

    invoke-static {v13}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v4

    aget-object v5, v10, v1

    invoke-virtual {v4, v5}, Lcom/android/launcher/download/DownloadAppsManager;->removePackage(Ljava/lang/String;)V

    if-eqz v3, :cond_259

    invoke-static {v13}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v3

    aget-object v4, v10, v1

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->removeProtectedItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v3, v10, v1

    invoke-virtual {v11, v3, v2}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_259
    :goto_259
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    goto/16 :goto_1ab

    :cond_261
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    iget v0, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_281

    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    move-object v5, v0

    move/from16 v20, v1

    move-object/from16 v26, v8

    move v7, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v6, v21

    move-object/from16 v19, v22

    goto/16 :goto_5f7

    :cond_281
    move v0, v1

    move-object/from16 v26, v8

    move v7, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v6, v21

    move-object/from16 v19, v22

    goto/16 :goto_5ee

    :pswitch_28f  #0x2
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const/16 v20, 0x4

    new-instance v1, Lcom/android/launcher3/model/x;

    const/4 v3, 0x1

    invoke-direct {v1, v8, v3}, Lcom/android/launcher3/model/x;-><init>(Ljava/util/HashSet;I)V

    invoke-virtual {v11, v1}, Lcom/android/launcher3/model/AllAppsList;->trackRemoves(Ljava/util/function/Consumer;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v23

    const/4 v1, 0x0

    move v6, v1

    :goto_2a1
    if-ge v6, v9, :cond_41e

    if-eqz v7, :cond_2e4

    :try_start_2a5
    aget-object v1, v10, v6

    invoke-virtual {v0, v1}, Lcom/android/launcher/model/ChildrenModeManager;->inChildrenModeApps(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e4

    const-string v1, "OplusPackageUpdatedTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_UPDATE: in children mode apps, skip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v1

    aget-object v3, v10, v6

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Lcom/android/launcher/download/DownloadAppsManager;->onPackageUpdateTask(ILjava/lang/String;)V

    move-object/from16 v25, v0

    move-object v0, v2

    move-object/from16 v26, v8

    move-object/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v22

    move-object/from16 v38, v21

    move/from16 v21, v6

    move-object/from16 v6, v38

    goto/16 :goto_3fc

    :cond_2e4
    const/4 v1, 0x2

    aget-object v3, v10, v6

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_321

    aget-object v1, v10, v6

    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v3}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/launcher/NewUpdatedAppsManager;->getInstance()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object v1

    aget-object v3, v10, v6

    invoke-virtual {v1, v3}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v24

    iget-object v3, v15, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    aget-object v4, v10, v6

    iget-object v5, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object v1, v2

    move-object/from16 v25, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v13

    move-object/from16 v26, v8

    move-object/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, v19

    move-object/from16 v27, v21

    move/from16 v21, v6

    move-object/from16 v19, v22

    move/from16 v6, v24

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateHiddenPackage(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    goto/16 :goto_3a1

    :cond_321
    move-object/from16 v25, v0

    move-object v0, v2

    move-object/from16 v26, v8

    move-object/from16 v8, v17

    move-object/from16 v27, v21

    move/from16 v21, v6

    move/from16 v17, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v22

    aget-object v2, v10, v21

    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v2, v3}, Lcom/android/launcher3/model/AllAppsList;->findAppInfoByPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_341

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_342

    :cond_341
    const/4 v3, 0x0

    :goto_342
    aget-object v4, v10, v21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_36c

    const/4 v3, 0x0

    :goto_34e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_36c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_369

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_369
    add-int/lit8 v3, v3, 0x1

    goto :goto_34e

    :cond_36c
    invoke-static {v13}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v2

    aget-object v3, v10, v21

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher/download/DownloadAppsManager;->onPackageUpdateTask(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_385

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v1

    aget-object v2, v10, v21

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    :cond_385
    if-eqz v16, :cond_3bc

    if-eqz v7, :cond_3a4

    const-string v1, "OplusPackageUpdatedTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_UPDATE: in children mode, skip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v10, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a1
    move-object/from16 v6, v27

    goto :goto_3fc

    :cond_3a4
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v1

    aget-object v2, v10, v21

    invoke-virtual {v1, v2}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3bc

    aget-object v1, v10, v21

    sget-object v2, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v1, v10, v21

    invoke-virtual {v11, v13, v1, v2}, Lcom/android/launcher3/model/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    :cond_3bc
    aget-object v1, v10, v21

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v1, v10, v21

    aget-object v2, v10, v21

    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v2, v3}, Lcom/android/launcher3/model/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v6, v27

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_3fc

    new-instance v2, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v3, v10, v21

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v2

    if-eqz v2, :cond_3fc

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v2

    aget-object v3, v10, v21

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->checkNewsPageIsExit(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_3fc
    .catchall {:try_start_2a5 .. :try_end_3fc} :catchall_410

    :cond_3fc
    :goto_3fc
    add-int/lit8 v1, v21, 0x1

    move-object v2, v0

    move-object/from16 v21, v6

    move-object/from16 v22, v19

    move-object/from16 v0, v25

    move v6, v1

    move-object/from16 v19, v9

    move/from16 v9, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v26

    goto/16 :goto_2a1

    :catchall_410
    move-exception v0

    move-object v1, v0

    if-eqz v23, :cond_41d

    :try_start_414
    invoke-interface/range {v23 .. v23}, Lcom/android/launcher3/util/SafeCloseable;->close()V
    :try_end_417
    .catchall {:try_start_414 .. :try_end_417} :catchall_418

    goto :goto_41d

    :catchall_418
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_41d
    :goto_41d
    throw v1

    :cond_41e
    move-object/from16 v26, v8

    move-object/from16 v8, v17

    move-object/from16 v6, v21

    move/from16 v17, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v22

    const/4 v0, 0x2

    if-eqz v23, :cond_430

    invoke-interface/range {v23 .. v23}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    :cond_430
    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    invoke-interface {v1, v0}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    move-object v5, v0

    move/from16 v7, v17

    goto/16 :goto_5f7

    :pswitch_43b  #0x1
    move-object/from16 v26, v8

    move-object/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v6

    move-object v6, v5

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    move/from16 v7, v17

    :goto_44b
    if-ge v0, v7, :cond_4bf

    aget-object v3, v10, v0

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v3, v4}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_463

    aget-object v3, v10, v0

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v4}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_463
    sget-object v3, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v3}, Lcom/android/common/config/FeatureOption;->isDisableDownloadProgress()Z

    move-result v3

    if-nez v3, :cond_47d

    aget-object v3, v10, v0

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v4}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v13}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v3

    aget-object v4, v10, v0

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher/download/DownloadAppsManager;->onPackageUpdateTask(ILjava/lang/String;)V

    goto :goto_47e

    :cond_47d
    const/4 v5, 0x1

    :goto_47e
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v3

    if-eqz v3, :cond_48d

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v3

    aget-object v4, v10, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    :cond_48d
    aget-object v3, v10, v0

    aget-object v4, v10, v0

    iget-object v5, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v4, v5}, Lcom/android/launcher3/model/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v3, v10, v0

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v4}, Lcom/android/launcher3/model/AllAppsList;->findAppInfoByPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4b7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4b7

    aget-object v4, v10, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b7
    aget-object v3, v10, v0

    invoke-static {v3}, Lcom/android/launcher3/dot/DotUtils;->addItemToNumberBadgeSupportPackageList(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_44b

    :cond_4bf
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    invoke-interface {v0, v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    move-object v5, v0

    move/from16 v20, v1

    goto/16 :goto_5f7

    :pswitch_4ca  #0x12
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, v10

    const/4 v2, 0x0

    :goto_4d2
    if-ge v2, v1, :cond_510

    aget-object v3, v10, v2

    iget-object v4, v11, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4dc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    move/from16 v16, v1

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_504

    iget-object v1, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    move-object/from16 v17, v3

    iget-object v3, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_506

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_506

    :cond_504
    move-object/from16 v17, v3

    :cond_506
    :goto_506
    move/from16 v1, v16

    move-object/from16 v3, v17

    goto :goto_4dc

    :cond_50b
    move/from16 v16, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d2

    :cond_510
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_514
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5ed

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v13}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher/pkg/PackageDeleteManager;->uninstallApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    goto :goto_514

    :pswitch_528  #0x11
    const/4 v0, 0x0

    :goto_529
    if-ge v0, v7, :cond_5ed

    aget-object v1, v10, v0

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v1, v10, v0

    iget-object v2, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v1, v2}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_529

    :pswitch_53c  #0x10
    array-length v1, v10

    const/4 v2, 0x0

    :goto_53e
    if-ge v2, v1, :cond_57a

    aget-object v3, v10, v2

    const-string v4, "OplusPackageUpdatedTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    const-string v1, "[OP_ADD_GREEN_POINT_APPS] pkg: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56f

    invoke-virtual {v0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageMultiProtected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_567

    goto :goto_56f

    :cond_567
    move-object v1, v11

    check-cast v1, Lcom/android/launcher3/model/OplusAllAppsList;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/model/OplusAllAppsList;->updateNewUpdatedAppFlag(Ljava/lang/String;Z)V

    goto :goto_575

    :cond_56f
    :goto_56f
    const/4 v1, 0x1

    iget-object v4, v15, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateNewUpdatedAppFlag(Ljava/util/concurrent/Executor;Ljava/lang/String;Z)V

    :goto_575
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v16

    goto :goto_53e

    :cond_57a
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/16 v1, 0x400

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    goto :goto_5d9

    :pswitch_583  #0xf
    array-length v1, v10

    const/4 v2, 0x0

    :goto_585
    if-ge v2, v1, :cond_5d1

    aget-object v3, v10, v2

    const-string v4, "OplusPackageUpdatedTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    const-string v1, "[OP_REMOVE_GREEN_POINT_APPS] pkg: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b6

    invoke-virtual {v0, v3}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageMultiProtected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5ae

    goto :goto_5b6

    :cond_5ae
    move-object v1, v11

    check-cast v1, Lcom/android/launcher3/model/OplusAllAppsList;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/model/OplusAllAppsList;->updateNewUpdatedAppFlag(Ljava/lang/String;Z)V

    goto :goto_5cc

    :cond_5b6
    :goto_5b6
    const/4 v1, 0x0

    iget-object v4, v15, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->updateNewUpdatedAppFlag(Ljava/util/concurrent/Executor;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5cc

    move-object v4, v11

    check-cast v4, Lcom/android/launcher3/model/OplusAllAppsList;

    invoke-virtual {v4, v3, v1}, Lcom/android/launcher3/model/OplusAllAppsList;->updateNewUpdatedAppFlag(Ljava/lang/String;Z)V

    :cond_5cc
    :goto_5cc
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v16

    goto :goto_585

    :cond_5d1
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/16 v1, 0x400

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    :goto_5d9
    move-object v1, v0

    :goto_5da
    const/4 v0, 0x4

    goto :goto_5f3

    :pswitch_5dc  #0xe
    array-length v0, v10

    const/4 v1, 0x0

    :goto_5de
    if-ge v1, v0, :cond_5ed

    aget-object v2, v10, v1

    move-object v3, v11

    check-cast v3, Lcom/android/launcher3/model/OplusAllAppsList;

    iget-object v4, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/model/OplusAllAppsList;->removePackageForHide(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5de

    :cond_5ed
    const/4 v0, 0x4

    :goto_5ee
    move-object/from16 v5, v20

    move/from16 v20, v0

    goto :goto_5f7

    :goto_5f3
    move/from16 v20, v0

    goto/16 :goto_15c

    :goto_5f7
    invoke-static {}, Lcom/android/launcher/DefaultWorkspaceHelper;->getCustomizer()Lcom/android/launcher/operators/Customizer;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/operators/GeneralCotaCustomizer;

    if-eqz v1, :cond_60d

    iget-object v1, v11, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v13, v1}, Lcom/android/launcher/operators/GeneralCotaCustomizer;->isLauncherLayoutAdded(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_60d

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/operators/GeneralCotaCustomizer;

    invoke-virtual {v1, v13}, Lcom/android/launcher/operators/GeneralCotaCustomizer;->resetDatabaseAndReload(Landroid/content/Context;)V

    :cond_60d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v11, Lcom/android/launcher3/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v11, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v6

    iget-object v6, v11, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6b7

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v6

    move/from16 v17, v7

    const-string v7, "OplusPackageUpdatedTask"

    move-object/from16 v16, v10

    const-string v10, "handle added appinfo, inLoaded = "

    invoke-static {v10, v6, v7}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v6, :cond_672

    monitor-enter p2

    :try_start_64b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v7, v14, Lcom/android/launcher3/model/BgDataModel;->mBgDataModelHelper:Lcom/android/launcher/model/BgDataModelHelper;

    iget-object v7, v7, Lcom/android/launcher/model/BgDataModelHelper;->mNoPositionList:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64f

    :cond_66d
    monitor-exit p2

    goto :goto_6bb

    :catchall_66f
    move-exception v0

    monitor-exit p2
    :try_end_671
    .catchall {:try_start_64b .. :try_end_671} :catchall_66f

    throw v0

    :cond_672
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget v7, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_68e

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v7

    if-eqz v7, :cond_68e

    invoke-direct {v15, v13, v8, v1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->getShouldAddInDrawerModeWhenUpdate(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_691

    :cond_68e
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_691
    const-string v1, "OplusPackageUpdatedTask"

    const-string v7, "bindAppsAddedToWorkspace -- shouldAdd.size = "

    invoke-static {v7}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6bb

    new-instance v1, Lcom/android/launcher3/model/p;

    const/4 v7, 0x5

    invoke-direct {v1, v6, v7}, Lcom/android/launcher3/model/p;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v15, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    goto :goto_6bc

    :cond_6b7
    move/from16 v17, v7

    move-object/from16 v16, v10

    :cond_6bb
    :goto_6bb
    const/4 v7, 0x5

    :goto_6bc
    iget-object v1, v11, Lcom/android/launcher3/model/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v11, Lcom/android/launcher3/model/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v11, Lcom/android/launcher3/model/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v6, 0x6

    if-nez v1, :cond_715

    instance-of v1, v0, Lcom/android/launcher/operators/GeneralCustomizer;

    if-eqz v1, :cond_6e3

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLayoutSpCustomize()Z

    move-result v1

    if-eqz v1, :cond_6e3

    check-cast v0, Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-virtual {v0, v4, v13}, Lcom/android/launcher/operators/GeneralCustomizer;->checkUpdateApp(Ljava/util/ArrayList;Landroid/content/Context;)Z

    :cond_6e3
    invoke-virtual {v15, v13, v4}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->loadTitleAndIconIfNeeded(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, v11, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v15, v13, v0}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->loadTitleAndIconIfNeeded(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/android/launcher3/model/p;

    invoke-direct {v0, v4, v6}, Lcom/android/launcher3/model/p;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v15, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6f7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_715

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v13}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->onPackageUpdate(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_6f7

    :cond_715
    iget-object v0, v11, Lcom/android/launcher3/model/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->isSystemUser()Z

    move-result v0

    if-eqz v0, :cond_777

    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    iget-object v1, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_777

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_736
    :goto_736
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_777

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    sget-object v6, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    iget-object v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_736

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_755

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_757

    :cond_755
    const-string v1, ""

    :goto_757
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_736

    const-string v6, "OplusPackageUpdatedTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removedMultiAppPackages add: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_736

    :cond_777
    iget v0, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7e5

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_780
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    :try_start_78d
    invoke-static {v13}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v0

    iget-object v8, v6, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v10, v6, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v10}, Lcom/android/launcher/OplusLauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_799
    .catch Ljava/lang/IllegalArgumentException; {:try_start_78d .. :try_end_799} :catch_79a

    goto :goto_7b2

    :catch_79a
    move-exception v0

    const-string v8, "OplusPackageUpdatedTask"

    const-string v10, " unknown component "

    invoke-static {v10}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7b2
    iget-object v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v8}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v8

    if-nez v8, :cond_7c2

    iget-object v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v8}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v8

    if-eqz v8, :cond_7c4

    :cond_7c2
    if-nez v0, :cond_7e0

    :cond_7c4
    const-string v0, "OplusPackageUpdatedTask"

    const-string v8, "removedComponents --add: "

    invoke-static {v8}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v6, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v8, v26

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7e2

    :cond_7e0
    move-object/from16 v8, v26

    :goto_7e2
    move-object/from16 v26, v8

    goto :goto_780

    :cond_7e5
    move-object/from16 v8, v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindApplicationsIfNeeded()V

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v21, Lcom/android/launcher3/util/IntSet;

    invoke-direct/range {v21 .. v21}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iget v1, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v6, 0x1

    if-eq v1, v6, :cond_816

    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eq v5, v1, :cond_7fe

    goto :goto_816

    :cond_7fe
    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object/from16 v28, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v25, v6

    move-object/from16 v18, v8

    move-object v3, v13

    move-object v6, v15

    move-object/from16 v36, v16

    move/from16 v35, v17

    move v2, v1

    move-object v1, v14

    goto/16 :goto_90d

    :cond_816
    :goto_816
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget v1, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    move-object/from16 v22, v2

    const/4 v2, 0x2

    if-eq v1, v6, :cond_82e

    if-ne v1, v2, :cond_82a

    goto :goto_82e

    :cond_82a
    const/4 v1, 0x0

    move/from16 v23, v1

    goto :goto_830

    :cond_82e
    :goto_82e
    move/from16 v23, v6

    :goto_830
    monitor-enter p2

    :try_start_831
    iget-object v6, v15, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    new-instance v2, Lcom/android/launcher3/model/q0;
    :try_end_835
    .catchall {:try_start_831 .. :try_end_835} :catchall_a07

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v26, 0x5

    move-object v1, v2

    move-object/from16 v29, v2

    move-object/from16 v28, v22

    move-object/from16 v2, p0

    move-object/from16 v30, v3

    move-object v3, v13

    move-object/from16 v31, v4

    move-object/from16 v4, v18

    move-object/from16 v22, v5

    move-object/from16 v5, v19

    move-object/from16 v32, v6

    move-object/from16 v19, v27

    move-object/from16 v6, v21

    move-object/from16 v33, v7

    move/from16 v7, v23

    move-object/from16 v34, v18

    move-object/from16 v18, v8

    move-object v8, v0

    move/from16 v35, v17

    move-object/from16 v36, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v18

    move-object/from16 v11, p3

    move-object/from16 v17, v12

    move-object/from16 v12, v19

    move-object/from16 v37, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v22

    move-object/from16 v15, v16

    :try_start_872
    invoke-direct/range {v1 .. v15}, Lcom/android/launcher3/model/q0;-><init>(Lcom/android/launcher3/model/OplusPackageUpdatedTask;Landroid/content/Context;Ljava/util/HashSet;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashMap;Ljava/util/HashSet;Lcom/android/launcher3/model/AllAppsList;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;)V
    :try_end_875
    .catchall {:try_start_872 .. :try_end_875} :catchall_a03

    move-object/from16 v1, p2

    move-object/from16 v3, v29

    move-object/from16 v2, v32

    :try_start_87b
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v2

    move-object/from16 v4, v16

    move-object/from16 v3, v37

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/appedit/AppCustomizerManager;->reqUpdateWorkspaceItemInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_88f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d6

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_8d6

    iget-object v7, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v34

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d3

    iget v7, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v7, v7, -0xb

    iput v7, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v7, v33

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_8da

    :cond_8d3
    move-object/from16 v7, v33

    goto :goto_8da

    :cond_8d6
    move-object/from16 v7, v33

    move-object/from16 v8, v34

    :goto_8da
    move-object/from16 v33, v7

    move-object/from16 v34, v8

    goto :goto_88f

    :cond_8df
    move-object/from16 v6, p0

    move-object/from16 v7, v33

    const/4 v2, 0x2

    monitor-exit p2
    :try_end_8e5
    .catchall {:try_start_87b .. :try_end_8e5} :catchall_a0b

    invoke-virtual {v6, v4}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8f7

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v0

    const-string v4, "removed because the target component is invalid"

    invoke-virtual {v6, v0, v4}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    :cond_8f7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_908

    new-instance v0, Lcom/android/launcher3/model/p;

    const/4 v4, 0x7

    invoke-direct {v0, v7, v4}, Lcom/android/launcher3/model/p;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v6, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    move v0, v4

    goto :goto_909

    :cond_908
    const/4 v0, 0x7

    :goto_909
    move/from16 v5, v24

    move/from16 v7, v26

    :goto_90d
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget v8, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_96e

    const/16 v10, 0xe

    if-eq v8, v10, :cond_96e

    const/16 v10, 0x11

    if-ne v8, v10, :cond_920

    goto :goto_96e

    :cond_920
    if-ne v8, v2, :cond_969

    move v10, v5

    move/from16 v8, v35

    :goto_925
    if-ge v10, v8, :cond_96b

    invoke-static {v3}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v11

    move-object/from16 v12, v36

    aget-object v13, v12, v10

    iget-object v14, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v13, v14}, Lcom/android/launcher/OplusLauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v11

    if-nez v11, :cond_95d

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->isAppRestoring()Z

    move-result v11

    if-nez v11, :cond_950

    const-string v11, "OplusPackageUpdatedTask"

    const-string v13, "add remove package :"

    invoke-static {v13}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v12, v10

    invoke-static {v13, v14, v11}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v11, v12, v10

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_95d

    :cond_950
    const-string v11, "OplusPackageUpdatedTask"

    const-string v13, "app restoring, ignore remove package :"

    invoke-static {v13}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v12, v10

    invoke-static {v13, v14, v11}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_95d
    :goto_95d
    aget-object v11, v12, v10

    iget-object v13, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v11, v13}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->removeInvalidWidgetIfNeeded(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v36, v12

    goto :goto_925

    :cond_969
    move/from16 v8, v35

    :cond_96b
    move-object/from16 v12, v36

    goto :goto_975

    :cond_96e
    :goto_96e
    move/from16 v8, v35

    move-object/from16 v12, v36

    invoke-static {v4, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_975
    const-string v10, "OplusPackageUpdatedTask"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    const-string v13, "removedPackages: "

    aput-object v13, v11, v5

    const/4 v13, 0x1

    aput-object v4, v11, v13

    const-string v14, ", removedComponents: "

    aput-object v14, v11, v2

    move-object/from16 v2, v18

    aput-object v2, v11, v9

    const-string v9, ", removedMultiAppPackages: "

    aput-object v9, v11, v20

    move-object/from16 v9, v28

    aput-object v9, v11, v7

    const-string v7, ", forceKeepShortcuts: "

    aput-object v7, v11, v25

    aput-object v21, v11, v0

    invoke-static {v10, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9a7

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9df

    :cond_9a7
    iget-object v0, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v4, v0, v13}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object v0

    sget-object v7, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-static {v9, v7, v13}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    iget-object v7, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v2, v7, v13}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;Z)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    const-string v2, "removed because the corresponding package or component is removed"

    invoke-virtual {v6, v0, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v2, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/model/ItemInstallQueue;->removeFromInstallQueue(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    :cond_9df
    move-object/from16 v4, v30

    move-object/from16 v2, v31

    invoke-direct {v6, v3, v4, v2}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->filterRemoveAppsWhenUpdate(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v0, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-ne v0, v13, :cond_a02

    :goto_9ea
    if-ge v5, v8, :cond_9ff

    iget-object v0, v1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    new-instance v2, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v3, v12, v5

    iget-object v4, v6, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    add-int/lit8 v5, v5, 0x1

    goto :goto_9ea

    :cond_9ff
    invoke-virtual {v6, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    :cond_a02
    return-void

    :catchall_a03
    move-exception v0

    move-object/from16 v1, p2

    goto :goto_a09

    :catchall_a07
    move-exception v0

    move-object v1, v14

    :goto_a09
    :try_start_a09
    monitor-exit v1
    :try_end_a0a
    .catchall {:try_start_a09 .. :try_end_a0a} :catchall_a0b

    throw v0

    :catchall_a0b
    move-exception v0

    goto :goto_a09

    nop

    :pswitch_data_a0e
    .packed-switch 0x1
        :pswitch_43b  #00000001
        :pswitch_28f  #00000002
        :pswitch_180  #00000003
        :pswitch_17d  #00000004
        :pswitch_15f  #00000005
        :pswitch_15f  #00000006
        :pswitch_119  #00000007
    .end packed-switch

    :pswitch_data_a20
    .packed-switch 0xe
        :pswitch_5dc  #0000000e
        :pswitch_583  #0000000f
        :pswitch_53c  #00000010
        :pswitch_528  #00000011
        :pswitch_4ca  #00000012
    .end packed-switch
.end method

.method public loadTitleAndIconIfNeeded(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_4

    :cond_21
    return-void
.end method

.method public removeInvalidWidgetIfNeeded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    const/4 v2, 0x0

    instance-of v3, v1, Lcom/android/launcher3/OplusLauncherAppWidgetHost;

    if-eqz v3, :cond_22

    check-cast v1, Lcom/android/launcher3/OplusLauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusLauncherAppWidgetHost;->getAllLauncherAppWidgetHostView()Landroid/util/SparseArray;

    move-result-object v2

    :cond_22
    move-object v7, v2

    if-eqz v7, :cond_75

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2d

    goto :goto_75

    :cond_2d
    new-instance v8, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    move v9, v1

    :goto_3c
    if-ltz v9, :cond_75

    :try_start_3e
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_6b

    invoke-virtual {v6}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-nez v1, :cond_4c

    goto :goto_72

    :cond_4c
    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v3, :cond_51

    goto :goto_72

    :cond_51
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_72

    :cond_5c
    iget-object v10, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v11, Lcom/android/launcher/a0;

    move-object v1, v11

    move-object v2, v8

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/a0;-><init>(Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_72

    :catch_6b
    const-string v1, "OplusPackageUpdatedTask"

    const-string v2, "removeInvalidWidgetIfNeeded()   Array index out of range: 0"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    add-int/lit8 v9, v9, -0x1

    goto :goto_3c

    :cond_75
    :goto_75
    return-void
.end method
