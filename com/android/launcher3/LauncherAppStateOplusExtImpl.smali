.class public Lcom/android/launcher3/LauncherAppStateOplusExtImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/core/IExtCreator;
.implements Lcom/android/launcher3/ILauncherAppStateExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/launcher3/ILauncherAppStateExt;",
        ">;",
        "Lcom/android/launcher3/ILauncherAppStateExt;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherAppStateOplusExtImpl"


# instance fields
.field private mThemedIconEnable:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/LauncherAppStateOplusExtImpl;Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->lambda$applyUpdateForAllAppsView$3(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private applyUpdateForAllAppsView(Lcom/android/launcher3/Launcher;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/j0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/j0;-><init>(Lcom/android/launcher3/LauncherAppStateOplusExtImpl;Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private applyUpdateViews(Lcom/android/launcher3/Launcher;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/t0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/t0;-><init>(Lcom/android/launcher3/LauncherAppStateOplusExtImpl;Lcom/android/launcher3/Launcher;Ljava/util/List;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/LauncherAppStateOplusExtImpl;Lcom/android/launcher3/Launcher;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->lambda$applyUpdateViews$2(Lcom/android/launcher3/Launcher;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/LauncherAppStateOplusExtImpl;Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->lambda$refreshThemedIconColorIfNeed$1(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private collectViewsOnThemeColorChanged(Lcom/android/launcher3/Launcher;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_92

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Lcom/android/launcher3/CellLayout;

    if-nez v5, :cond_1b

    goto/16 :goto_8e

    :cond_1b
    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    move v5, v1

    :goto_22
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_8e

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v7, :cond_61

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v8, v4, :cond_61

    invoke-virtual {v7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    if-eqz v8, :cond_61

    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;

    if-nez v9, :cond_5a

    new-instance v9, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;

    iget-object v10, v7, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v9, v8, v10}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {p4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    invoke-virtual {v7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;->addShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    :cond_61
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v7, :cond_7a

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v7, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v7, :cond_8b

    invoke-virtual {v7}, Lcom/android/launcher3/icons/BitmapInfo;->getMono()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_7a

    goto :goto_8b

    :cond_7a
    instance-of v7, v6, Lcom/android/launcher3/BubbleTextView;

    if-nez v7, :cond_82

    instance-of v7, v6, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v7, :cond_8b

    :cond_82
    if-ne v2, v0, :cond_88

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_88
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8b
    :goto_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_8e
    :goto_8e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_92
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    move p1, v1

    :goto_9b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/BubbleTextView;

    if-nez v2, :cond_ad

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_b0

    :cond_ad
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b0
    add-int/lit8 p1, p1, 0x1

    goto :goto_9b

    :cond_b3
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    const/4 p1, 0x2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "collect views to update,first:%d,deferred:%d,deepshortcuts:%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherAppStateOplusExtImpl"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/Launcher;Ljava/lang/String;Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->lambda$refreshThemedIconColorIfNeed$0(Lcom/android/launcher3/Launcher;Ljava/lang/String;Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;)V

    return-void
.end method

.method private isValidActivity(Lcom/android/launcher3/Launcher;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private synthetic lambda$applyUpdateForAllAppsView$3(Lcom/android/launcher3/Launcher;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->isValidActivity(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    const-string v0, "LauncherAppStateOplusExtImpl"

    if-nez p0, :cond_e

    const-string p0, "launcher Activity changed! Ignore update allAppsView"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-nez p0, :cond_1f

    const-string/jumbo p0, "not in drawer mode, ignore updated allAppsView"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    iget-object p0, p1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_36
    return-void
.end method

.method private synthetic lambda$applyUpdateViews$2(Lcom/android/launcher3/Launcher;Ljava/util/List;)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->isValidActivity(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    const-string v0, "LauncherAppStateOplusExtImpl"

    if-nez p0, :cond_e

    const-string p0, "launcher Activity changed! Ignore update views"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    instance-of v1, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_2e

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    goto :goto_12

    :cond_2e
    instance-of v1, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_12

    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v1

    if-nez v1, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyUpdateViews, but previewItemManager==null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_4f
    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewItemManager;->getFirstPageDrawingParams()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_6a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyUpdateViews, but firstPageDrawingParams==null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_6a
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v4

    :goto_6f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9f

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_82

    goto :goto_9f

    :cond_82
    iget-object v6, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v6, :cond_9c

    invoke-virtual {v6}, Lcom/android/launcher3/icons/BitmapInfo;->getMono()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_8d

    goto :goto_9c

    :cond_8d
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v5, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v7}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v5

    iput-object v5, v6, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_9c
    :goto_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    :cond_9f
    :goto_9f
    instance-of v2, p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v2, :cond_c4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_bd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folderIcon update by updatePreview,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bd
    check-cast p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->updatePreview()V

    goto/16 :goto_12

    :cond_c4
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_de

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folderIcon update by forceRecomputePreviewDrawingParams,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_de
    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewItemManager;->forceRecomputePreviewDrawingParams()V

    goto/16 :goto_12

    :cond_e3
    return-void
.end method

.method private static synthetic lambda$refreshThemedIconColorIfNeed$0(Lcom/android/launcher3/Launcher;Ljava/lang/String;Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;)V
    .registers 3

    invoke-virtual {p2, p0}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl$ShortcutUpdateTask;->execute(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private synthetic lambda$refreshThemedIconColorIfNeed$1(Lcom/android/launcher3/Launcher;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->isValidActivity(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const-string p0, "LauncherAppStateOplusExtImpl"

    const-string p1, "Launcher activity is invalided, reload"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-static {}, Lcom/android/launcher3/icons/LauncherIcons;->clearPool()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateIconParams(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_31
    return-void
.end method

.method private refreshThemedIconColorIfNeed()Z
    .registers 9

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->mThemedIconEnable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "curState:%s,newState:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherAppStateOplusExtImpl"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->mThemedIconEnable:Z

    if-eqz v1, :cond_84

    if-nez v0, :cond_2d

    goto :goto_84

    :cond_2d
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->collectViewsOnThemeColorChanged(Lcom/android/launcher3/Launcher;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->applyUpdateViews(Lcom/android/launcher3/Launcher;Ljava/util/List;)V

    new-instance v7, Lcom/android/launcher3/k0;

    invoke-direct {v7, v0}, Lcom/android/launcher3/k0;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->applyUpdateForAllAppsView(Lcom/android/launcher3/Launcher;)V

    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->applyUpdateViews(Lcom/android/launcher3/Launcher;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_73

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_73

    const-string/jumbo p0, "update views empty, reload."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_73
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/j0;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/launcher3/j0;-><init>(Lcom/android/launcher3/LauncherAppStateOplusExtImpl;Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return v4

    :cond_7e
    const-string p0, "launcher activity is null, reload."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_84
    :goto_84
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->mThemedIconEnable:Z

    const-string/jumbo p0, "skip refresh themed icons color, reload model."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/ILauncherAppStateExt;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->mThemedIconEnable:Z

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/ILauncherAppStateExt;

    move-result-object p0

    return-object p0
.end method

.method public onInterceptRefreshAndReloadLauncher()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;->refreshThemedIconColorIfNeed()Z

    move-result p0

    return p0
.end method
