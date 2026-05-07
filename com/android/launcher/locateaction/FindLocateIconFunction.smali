.class public Lcom/android/launcher/locateaction/FindLocateIconFunction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final END:I = 0x1

.field private static final FOLDER_SNAP_TO_PAGE_DURATION:I = 0x258

.field public static final PAUSE:I = 0x3

.field public static final START:I = 0x0

.field public static final STOP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FindLocateIcon"

.field public static sState:I = -0x1


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$snapToFolderPage$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->openFolder(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->smoothScrollToPosition(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/allapps/AllAppsRecyclerView;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->drawerPosition(Lcom/android/launcher3/allapps/AllAppsRecyclerView;I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/locateaction/FindLocateIconFunction;ILandroidx/recyclerview/widget/LinearLayoutManager;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->drawerViewPosition(ILandroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroidx/recyclerview/widget/LinearLayoutManager;I)Landroid/view/View;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findDrawerItemView(Landroidx/recyclerview/widget/LinearLayoutManager;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToFolderPage(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->animationIcon(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher/locateaction/FindLocateIconFunction;)Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    return-object p0
.end method

.method private animationIcon(Landroid/view/View;)V
    .registers 8

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    const v1, 0x7f010061

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2a

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3  # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f  # 0.67f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Lcom/android/launcher/locateaction/FindLocateIconFunction$8;

    invoke-direct {p1, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$8;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->cancel()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$snapToFolderPage$1(Landroid/view/View;)V

    return-void
.end method

.method private drawerPosition(Lcom/android/launcher3/allapps/AllAppsRecyclerView;I)I
    .registers 4

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_19

    iget p0, p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    :cond_19
    return p2
.end method

.method private drawerViewItem(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)I
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->drawerViewList(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_44

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_44

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_48

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_47
    const/4 v0, -0x1

    :goto_48
    return v0
.end method

.method private drawerViewList(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AllAppsRecyclerView;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private drawerViewPosition(ILandroidx/recyclerview/widget/LinearLayoutManager;)I
    .registers 3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private executeFindIcon(Landroid/view/View;)V
    .registers 5

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/statistics/LauncherStatistics;->setLocateInformation(Lcom/android/launcher3/model/data/ItemInfo;)V

    new-instance v0, Lcom/android/launcher/locateaction/FindLocateIconFunction$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction$7;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->cancel()V

    :goto_1f
    return-void
.end method

.method private findDrawerItemView(Landroidx/recyclerview/widget/LinearLayoutManager;I)Landroid/view/View;
    .registers 3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private findFolderPage(Landroid/view/View;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->folderViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findFolderPosition(Ljava/util/List;)I

    move-result p0

    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result p1

    div-int/2addr p0, p1

    goto :goto_27

    :cond_1a
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result p1

    div-int/2addr p0, p1

    :goto_27
    return p0
.end method

.method private findFolderPosition(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_43

    move v0, v1

    goto :goto_46

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_46
    :goto_46
    return v0
.end method

.method private findFolderPositionView(Landroid/view/View;)Landroid/view/View;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->folderViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findFolderPosition(Ljava/util/List;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    goto :goto_27

    :cond_1d
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    :goto_27
    return-object p0
.end method

.method private findWorkspaceView(Lcom/android/launcher3/OplusWorkspace;I)Landroid/view/View;
    .registers 3

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private folderViews(Landroid/view/View;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_f

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    return-object p0

    :cond_f
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getState()I
    .registers 1

    sget v0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->sState:I

    return v0
.end method

.method private goToState(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/locateaction/FindLocateIconFunction$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction$3;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$snapToFolderPage$0(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$snapToFolderPage$1(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    return-void
.end method

.method private openFolder(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    goto :goto_13

    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    :goto_13
    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isAnimateClosing()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    :cond_28
    new-instance v1, Lcom/android/launcher/locateaction/FindLocateIconFunction$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$5;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V

    return-void
.end method

.method public static setState(I)V
    .registers 1

    sput p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->sState:I

    return-void
.end method

.method private smoothScrollToPosition(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .registers 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->drawerViewItem(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_31

    if-le v2, v1, :cond_1f

    invoke-virtual {p1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->smoothScrollToPosition(I)V

    new-instance v1, Lcom/android/launcher/locateaction/FindLocateIconFunction$4;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$4;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/allapps/AllAppsRecyclerView;ILandroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_34

    :cond_1f
    invoke-direct {p0, v2, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->drawerViewPosition(ILandroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findDrawerItemView(Landroidx/recyclerview/widget/LinearLayoutManager;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    goto :goto_34

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->cancel()V

    goto :goto_34

    :cond_31
    invoke-virtual {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->cancel()V

    :goto_34
    return-void
.end method

.method private snapToFolderPage(Landroid/view/View;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findFolderPage(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findFolderPositionView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    instance-of v2, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v2, :cond_15

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    goto :goto_1d

    :cond_15
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    :goto_1d
    if-eqz v1, :cond_5a

    const/16 v3, 0x258

    if-eqz v2, :cond_47

    if-gtz v0, :cond_30

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-lez v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-direct {p0, v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    goto :goto_5d

    :cond_30
    :goto_30
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-eq v0, v2, :cond_43

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    new-instance v0, Lcom/android/launcher/locateaction/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher/locateaction/a;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    goto :goto_5d

    :cond_43
    invoke-direct {p0, v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    goto :goto_5d

    :cond_47
    if-lez v0, :cond_56

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    new-instance v0, Lcom/android/launcher/locateaction/a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher/locateaction/a;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    goto :goto_5d

    :cond_56
    invoke-direct {p0, v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    goto :goto_5d

    :cond_5a
    invoke-virtual {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->cancel()V

    :goto_5d
    return-void
.end method

.method private snapToPage(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkspaceView(Lcom/android/launcher3/OplusWorkspace;I)Landroid/view/View;

    move-result-object v0

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p2

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    new-instance p2, Lcom/android/launcher/locateaction/FindLocateIconFunction$6;

    invoke-direct {p2, p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$6;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private snapToPageOpenFolder(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 5

    iget p3, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkspaceView(Lcom/android/launcher3/OplusWorkspace;I)Landroid/view/View;

    move-result-object p3

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p2

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    new-instance p2, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;

    invoke-direct {p2, p0, p3}, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz p0, :cond_b

    invoke-interface {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_b
    return-void
.end method

.method public findDrawerView(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz v1, :cond_b

    invoke-interface {v1, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->goToState(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/statemanager/StateManager;)V

    return-void
.end method

.method public findWorkSpaceDeskTopCardView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz v1, :cond_d

    invoke-interface {v1, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToPage(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_10
    return-void
.end method

.method public findWorkSpaceDeskTopView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 6

    if-eqz p1, :cond_2b

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz v1, :cond_d

    invoke-interface {v1, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_d
    const/16 v0, -0x64

    if-ne p3, v0, :cond_15

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToPage(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_2b

    :cond_15
    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkspaceView(Lcom/android/launcher3/OplusWorkspace;I)Landroid/view/View;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/launcher/locateaction/FindLocateIconFunction$1;

    invoke-direct {p3, p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction$1;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method public findWorkSpaceDeskTopWidgetView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz v1, :cond_d

    invoke-interface {v1, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToPage(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_10
    return-void
.end method

.method public findWorkSpaceFolderView(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz v1, :cond_b

    invoke-interface {v1, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToPageOpenFolder(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;I)V

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz p0, :cond_b

    invoke-interface {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_b
    return-void
.end method

.method public onStop()V
    .registers 2

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz p0, :cond_b

    invoke-interface {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_b
    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setOnLocationListener(Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    return-void
.end method
