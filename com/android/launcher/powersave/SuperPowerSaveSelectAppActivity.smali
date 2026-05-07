.class public Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;
.super Lcom/android/launcher3/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;


# static fields
.field private static final TAG:Ljava/lang/String; = "SuperPowerSaveSelectAppActivity "


# instance fields
.field private mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

.field private mEnergySaveAppsList:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

.field private mEnergySaveGridAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

.field private mEnergySaveRecyclerView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

.field private mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

.field private final mPersonalMatcher:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuperPowerModeManager:Lcom/android/launcher/powersave/SuperPowerModeManager;

.field private mSuperPowerSaveAppsManager:Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

.field private mSuperPowerSaveSearchContainerLayout:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v0

    sget-object v1, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mPersonalMatcher:Ljava/util/function/Predicate;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerSaveSearchContainerLayout:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerSaveAppsManager:Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

    iput-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerModeManager:Lcom/android/launcher/powersave/SuperPowerModeManager;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->lambda$onAllAppsLoaded$0()V

    return-void
.end method

.method private filterAllApps(Landroid/content/Intent;)[Lcom/android/launcher3/model/data/AppInfo;
    .registers 5

    const-string v0, "FILTER_PACKAGE_LIST"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getBgAllAppsList()Lcom/android/launcher3/model/OplusAllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerSaveAppsManager:Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

    invoke-virtual {v1, p0, v0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->filterApps(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Lcom/android/launcher3/model/data/AppInfo;

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_34
    if-ge p1, v1, :cond_41

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_34

    :cond_41
    sget-object p0, Lcom/android/launcher3/model/data/AppInfo;->COMPONENT_KEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private synthetic lambda$onAllAppsLoaded$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->filterAllApps(Landroid/content/Intent;)[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getBgAllAppsList()Lcom/android/launcher3/model/OplusAllAppsList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/AllAppsList;->getFlags()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideKeyBoard()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerSaveSearchContainerLayout:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveGridAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->isKeyBoardShow()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerSaveSearchContainerLayout:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->hideKeyBoard()V

    :cond_11
    return-void
.end method

.method public onAllAppsLoaded()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/powersave/f;

    invoke-direct {v1, p0}, Lcom/android/launcher/powersave/f;-><init>(Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mSwitchStateRenderer:Lcom/android/launcher/SwitchStateRenderer;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/SwitchStateRenderer;->recreateSelectIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    :cond_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/launcher3/OplusBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerModeManager:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-virtual {p1, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->addModelStateListener(Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "CLICK_X"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "CLICK_Y"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const v3, 0x7f0d01e0

    invoke-virtual {p0, v3, v1}, Lcom/android/launcher3/OplusBaseActivity;->setContentView(IZ)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x7f060423

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    const v1, 0x7f0a04ed

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    iput-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveRecyclerView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    const v1, 0x7f0a04ee

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;

    iput-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerSaveSearchContainerLayout:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;

    new-instance v1, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

    invoke-direct {v1, p0}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerSaveAppsManager:Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;

    new-instance v1, Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-direct {v1}, Lcom/android/launcher3/allapps/AllAppsStore;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->filterAllApps(Landroid/content/Intent;)[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p1

    iget-object v3, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getBgAllAppsList()Lcom/android/launcher3/model/OplusAllAppsList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/model/AllAppsList;->getFlags()I

    move-result v3

    invoke-virtual {v1, p1, v3}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    new-instance p1, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;)V

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveAppsList:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    new-instance v1, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;)V

    iput-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveGridAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->setClickPosition(II)V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveAppsList:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveGridAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    invoke-virtual {p1, v0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->setAdapter(Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;)V

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->setup()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerModeManager:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->removeModelStateListener(Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;)V

    invoke-super {p0}, Lcom/android/launcher3/OplusBaseActivity;->onDestroy()V

    return-void
.end method

.method public setup()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveAppsList:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mPersonalMatcher:Ljava/util/function/Predicate;

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;->updateItemFilter(Ljava/util/function/Predicate;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerSaveSearchContainerLayout:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveAppsList:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->setAllApp(Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mSuperPowerSaveSearchContainerLayout:Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveRecyclerView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/search/SuperPowerSaveSearchContainerLayout;->initialize(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveRecyclerView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveAppsList:Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;

    invoke-virtual {v0, v1}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;->setApps(Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveRecyclerView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveGridAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    invoke-virtual {v1}, Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveRecyclerView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveGridAdapter:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveRecyclerView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveRecyclerView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveRecyclerView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveSelectAppActivity;->mEnergySaveRecyclerView:Lcom/android/launcher/powersave/view/SuperPowerSaveSelectAppRecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
