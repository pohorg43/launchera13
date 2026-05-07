.class Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->showSelectedViews(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;Lcom/android/launcher3/OplusWorkspace;[ILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->lambda$onAddButtonClick$0(Lcom/android/launcher3/OplusWorkspace;[ILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private synthetic lambda$onAddButtonClick$0(Lcom/android/launcher3/OplusWorkspace;[ILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 6

    iget-object p3, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object p3, p3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast p3, Lcom/android/launcher3/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    const/4 p3, 0x0

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsBatchAddAppToWorkspace()V

    return-void
.end method


# virtual methods
.method public onAddButtonClick(Lcom/android/launcher/views/CommonAlertView;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getContainerView()Lcom/android/launcher3/allapps/OplusSelectedContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSelectedContainer;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_60

    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_31
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v5

    sub-int/2addr v5, v2

    aput v5, v3, v4

    new-instance v4, Lcom/android/launcher3/allapps/l;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/launcher3/allapps/l;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;Lcom/android/launcher3/OplusWorkspace;[I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/launcher3/LauncherModel;->batchAndBindAddedWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/LauncherModel$CallbackTask;[I)V

    invoke-virtual {p1, v2}, Lcom/android/launcher/views/CommonAlertView;->animateClose(Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->clearSelectedViews()V

    :cond_60
    :goto_60
    return-void
.end method

.method public onCloseButtonDialogCallBack()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isShowSelectedView()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->clearSelectedViews()V

    :cond_d
    return-void
.end method

.method public onUninstallButtonClick(Lcom/android/launcher/views/CommonAlertView;)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getContainerView()Lcom/android/launcher3/allapps/OplusSelectedContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSelectedContainer;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_9d

    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5a

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v6, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/common/util/PackageUtils;->isCanUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object v6, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v6, v7, v8}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageUserEncrypted(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_54
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_5a
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_78

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_78

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_78

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->showAppEncryptedHintDialog()V

    return-void

    :cond_78
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7f

    return-void

    :cond_7f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_87

    const/4 v0, 0x1

    goto :goto_88

    :cond_87
    move v0, v3

    :goto_88
    new-instance v2, Lcom/android/launcher/UninstallRemoveAppPanel;

    iget-object v4, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    iget-object v4, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/launcher/UninstallRemoveAppPanel;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;

    invoke-direct {v5, p0, v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1$1;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$1;Z)V

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V

    invoke-virtual {p1, v3}, Lcom/android/launcher/views/CommonAlertView;->animateClose(Z)V

    :cond_9d
    :goto_9d
    return-void
.end method
