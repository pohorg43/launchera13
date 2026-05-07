.class final Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/UninstallRemoveAppPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninstallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private final mUninstallAppPanelRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/UninstallRemoveAppPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 4

    const-string v0, "appPanel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->mUninstallAppPanelRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-void
.end method

.method private final uninstallPackages()V
    .registers 13

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->mUninstallAppPanelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/UninstallRemoveAppPanel;

    if-nez p0, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object v0

    :goto_10
    if-eqz v0, :cond_125

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit16 v2, v2, 0x258

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_3d
    const-string v2, "DeleteIcon: confirmUninstall onClick. uninstallInfo = "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UninstallRemoveAppPanel"

    invoke-static {v3, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    move v7, v2

    :cond_60
    :goto_60
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v9}, Lcom/android/launcher/download/InstallState;->isStillInDownloading()Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_b9

    iget-object v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v9}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v9

    if-nez v9, :cond_86

    iget-object v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v9}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v9

    if-eqz v9, :cond_89

    :cond_86
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    sget-object v9, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    iget-object v11, v8, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/launcher/download/DownloadAppsManager;->checkUninstallState(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_60

    iget-object v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-nez v11, :cond_aa

    goto :goto_b5

    :cond_aa
    invoke-virtual {v8}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    :goto_b5
    invoke-static {v0, v9, v10}, Lcom/android/launcher/download/DownloadAppsManager;->deleteDownloadPackageFromLauncher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :cond_b9
    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v9, :cond_dc

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_c7

    goto :goto_d2

    :cond_c7
    invoke-virtual {v8}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    :goto_d2
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v6

    goto :goto_60

    :cond_dc
    const-string v8, "confirmUninstall:onClick ignore for app is installing "

    invoke-static {v3, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_60

    :cond_e3
    if-eqz v7, :cond_104

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher/UninstallRemoveAppPanel;->getUninstallType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, v5, p0}, Lcom/android/statistics/LauncherStatistics;->statsUninstallApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_104
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v6, :cond_118

    invoke-static {v0}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object p0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher/pkg/PackageDeleteManager;->uninstallApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    goto :goto_125

    :cond_118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v6, :cond_125

    invoke-static {v0}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher/pkg/PackageDeleteManager;->uninstallApps(Ljava/util/ArrayList;)V

    :cond_125
    :goto_125
    return-void
.end method

.method private final uninstallSinglePackage()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->mUninstallAppPanelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/UninstallRemoveAppPanel;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "uninstallAppPanel.mUninstallAppInfos[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-direct {p0, v0}, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->uninstallSinglePackage(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_1e
    return-void
.end method

.method private final uninstallSinglePackage(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->mUninstallAppPanelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/UninstallRemoveAppPanel;

    if-eqz p0, :cond_95

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "DeleteIcon: confirmUninstall onClick. uninstallInfo = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UninstallRemoveAppPanel"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isStillInDownloading()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_6a

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isUpgradingType()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_33
    invoke-static {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/pkg/PackageDeleteManager;->uninstallApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_3a
    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/download/DownloadAppsManager;->checkUninstallState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallSource:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_5b

    goto :goto_66

    :cond_5b
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_66
    invoke-static {p0, v0, v2}, Lcom/android/launcher/download/DownloadAppsManager;->deleteDownloadPackageFromLauncher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    :cond_6a
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_90

    invoke-static {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/pkg/PackageDeleteManager;->uninstallApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_8a
    const-string p1, "1"

    invoke-virtual {p0, v2, p1, p1}, Lcom/android/statistics/LauncherStatistics;->statsUninstallApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    :cond_90
    const-string p0, "confirmUninstall:onClick ignore for app is installing. "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    :goto_95
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    const-string/jumbo v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v0, 0x0

    if-nez p1, :cond_3b

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->mUninstallAppPanelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/UninstallRemoveAppPanel;

    if-nez p1, :cond_17

    move-object v1, v0

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object v1

    :goto_1b
    if-eqz v1, :cond_3a

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_28

    goto :goto_3a

    :cond_28
    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_37

    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->uninstallSinglePackage()V

    goto :goto_3a

    :cond_37
    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->uninstallPackages()V

    :cond_3a
    :goto_3a
    return-object v0

    :cond_3b
    invoke-direct {p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;->uninstallSinglePackage(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    return-object v0
.end method
