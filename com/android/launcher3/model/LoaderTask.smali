.class public Lcom/android/launcher3/model/LoaderTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = true

.field public static TAG:Ljava/lang/String; = "LoaderTask"


# instance fields
.field public final mApp:Lcom/android/launcher3/LauncherAppState;

.field public final mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field public final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mDbName:Ljava/lang/String;

.field public mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

.field public final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private mItemsDeleted:Z

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field public final mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

.field private final mPendingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field public final mResults:Lcom/android/launcher3/model/LoaderResults;

.field public final mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

.field public mStopped:Z

.field public final mUserCache:Lcom/android/launcher3/pm/UserCache;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

.field public final mWidgetProvidersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v0}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iput-object p3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iput-object p4, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iput-object p5, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherApps;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    sget-object p2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/pm/UserCache;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    sget-object p2, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/pm/InstallSessionHelper;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/model/data/IconRequestInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$loadAllApps$1(Lcom/android/launcher3/model/data/IconRequestInfo;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$run$0(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .registers 1

    if-eqz p0, :cond_e

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$loadAllApps$1(Lcom/android/launcher3/model/data/IconRequestInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object p1, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/AllAppsList;->updateSectionName(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .registers 2

    return-void
.end method

.method private loadFolderNames()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v1, v1, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/FolderNameProvider;->newInstance(Landroid/content/Context;Ljava/util/List;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/folder/FolderNameProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_16
    :try_start_16
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    new-instance v3, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v5, v4, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-nez v5, :cond_40

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6, v3}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    iput-object v3, v4, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_43
    monitor-exit v1

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_16 .. :try_end_47} :catchall_45

    throw p0
.end method

.method private loadWorkspace(Ljava/util/List;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    return-void
.end method

.method private static logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logWidgetInfo(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v3, "DeviceProfile available width: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", available height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cellLayoutBorderSpacePx Horizontal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cellLayoutBorderSpacePx Vertical: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellSize: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_59
    const-string p0, "Widget dimensions:\n"

    const-string v0, "minResizeWidth: "

    invoke-static {p0, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    const-string v1, "\n"

    const-string v2, "minResizeHeight: "

    invoke-static {p0, v0, v1, v2}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    const-string v2, "defaultWidth: "

    invoke-static {p0, v0, v1, v2}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    const-string v2, "defaultHeight: "

    invoke-static {p0, v0, v1, v2}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_a8

    const-string/jumbo v0, "targetCellWidth: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    const-string/jumbo v2, "targetCellHeight: "

    invoke-static {p0, v0, v1, v2}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    const-string v2, "maxResizeWidth: "

    invoke-static {p0, v0, v1, v2}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    const-string v2, "maxResizeHeight: "

    invoke-static {p0, v0, v1, v2}, Lcom/android/common/util/y;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a8
    sget-object p1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sanitizeData()V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    if-eqz v2, :cond_47

    const-string v2, "delete_empty_folders"

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v3

    :try_start_1e
    array-length v4, v2

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_42

    aget v6, v2, v5

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v8, v7, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_42
    monitor-exit v3

    goto :goto_47

    :catchall_44
    move-exception p0

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_1e .. :try_end_46} :catchall_44

    throw p0

    :cond_47
    :goto_47
    const-string v2, "remove_ghost_widgets"

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    new-instance v1, Lcom/android/launcher3/model/SdCardAvailableReceiver;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-direct {v1, v2, p0}, Lcom/android/launcher3/model/SdCardAvailableReceiver;-><init>(Lcom/android/launcher3/LauncherAppState;Ljava/util/Set;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_79
    return-void
.end method


# virtual methods
.method public loadAllApps()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/model/AllAppsList;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v7, v4, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_37

    goto :goto_6a

    :cond_37
    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v7, v3}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v7

    move v8, v5

    :goto_3e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_66

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/LauncherActivityInfo;

    new-instance v10, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v10, v9, v3, v7}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    new-instance v11, Lcom/android/launcher3/model/data/IconRequestInfo;

    invoke-direct {v11, v10, v9, v5}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    sget-object v12, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_ALL_APPS_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v12}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v12

    xor-int/2addr v12, v6

    invoke-virtual {v11, v10, v9, v12, v6}, Lcom/android/launcher3/model/AllAppsList;->addWithIgnoreNotify(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;ZZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    :cond_66
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_6a
    :goto_6a
    return-object v1

    :cond_6b
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7d
    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v3}, Lcom/android/launcher3/pm/PackageInstallInfo;->fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/pm/PackageInstallInfo;

    move-result-object v3

    sget-object v9, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_ALL_APPS_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v9}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v9

    xor-int/2addr v9, v6

    invoke-virtual {v7, v8, v3, v9}, Lcom/android/launcher3/model/AllAppsList;->addPromiseApp(Landroid/content/Context;Lcom/android/launcher3/pm/PackageInstallInfo;Z)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_7d

    new-instance v7, Lcom/android/launcher3/model/data/IconRequestInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v8

    invoke-direct {v7, v3, v4, v8}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_af
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_ALL_APPS_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_d2

    const-string v0, "LoadAllAppsIconsInBulk"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_bc
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/icons/IconCache;->getTitlesAndIconsInBulk(Ljava/util/List;)V

    new-instance v0, Lcom/android/launcher3/model/o;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/o;-><init>(Lcom/android/launcher3/model/LoaderTask;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V
    :try_end_c9
    .catchall {:try_start_bc .. :try_end_c9} :catchall_cd

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_d2

    :catchall_cd
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_d2
    :goto_d2
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v3}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/PackageManagerHelper;->hasShortcutsPermission(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v6, v2}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.MODIFY_QUIET_MODE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_ff

    move v5, v6

    :cond_ff
    invoke-virtual {v0, v2, v5}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {p0}, Lcom/android/launcher3/model/AllAppsList;->getAndResetChangeFlag()Z

    return-object v1
.end method

.method public loadDeepShortcuts()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AllAppsList;->hasShortcutHostPermission()Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1e

    new-instance v3, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result v4

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->shortcutsLoaded(Z)V

    :cond_57
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    goto :goto_1e

    :cond_61
    return-object v0
.end method

.method public loadWorkspace(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    return-void
.end method

.method public loadWorkspace(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    .registers 40
    .param p4  # Lcom/android/launcher3/model/LoaderMemoryLogger;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v10, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v10, v3}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/android/launcher3/util/PackageManagerHelper;->isSafeMode()Z

    move-result v11

    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v12

    new-instance v13, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v13, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->migrateGridIfNeeded(Landroid/content/Context;)Z

    move-result v5

    const/4 v14, 0x1

    xor-int/2addr v5, v14

    if-eqz v5, :cond_34

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v6, "loadWorkspace: resetting launcher database"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "create_empty_db"

    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_34
    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v6, "loadWorkspace: loading default favorites"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "load_default_favorites"

    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v15, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v15

    :try_start_43
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v5}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v5}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v9

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/launcher3/icons/f;

    invoke-direct {v6, v5, v14}, Lcom/android/launcher3/icons/f;-><init>(Lcom/android/launcher3/icons/IconCache;I)V

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v8, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v7, 0x0

    invoke-direct {v8, v7, v7}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v5, Lcom/android/launcher3/model/FirstScreenBroadcast;

    invoke-direct {v5, v9}, Lcom/android/launcher3/model/FirstScreenBroadcast;-><init>(Ljava/util/HashMap;)V

    iput-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/android/launcher3/model/LoaderCursor;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v5

    move-object/from16 v5, p2

    move-object/from16 v20, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v7, p3

    move-object/from16 v21, v8

    move-object/from16 v8, v17

    move/from16 v17, v12

    move-object v12, v9

    move-object/from16 v9, v18

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    move-object/from16 v7, p2

    invoke-direct {v14, v4, v7, v5, v6}, Lcom/android/launcher3/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;)V

    invoke-virtual {v14}, Landroid/database/CursorWrapper;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_a8

    move-object/from16 v7, v16

    goto :goto_ae

    :cond_a8
    const-string v5, "db_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_ae
    iput-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mDbName:Ljava/lang/String;
    :try_end_b0
    .catchall {:try_start_43 .. :try_end_b0} :catchall_ab5

    :try_start_b0
    const-string v4, "appWidgetId"

    invoke-virtual {v14, v4}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "appWidgetProvider"

    invoke-virtual {v14, v5}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "spanX"

    invoke-virtual {v14, v6}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "spanY"

    invoke-virtual {v14, v7}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "rank"

    invoke-virtual {v14, v8}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "options"

    invoke-virtual {v14, v9}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move/from16 p2, v8

    const-string v8, "appWidgetSource"

    invoke-virtual {v14, v8}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v18, v10

    new-instance v10, Landroid/util/LongSparseArray;

    invoke-direct {v10}, Landroid/util/LongSparseArray;-><init>()V

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    move/from16 p3, v8

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    move/from16 v22, v7

    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v8, v7}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v2}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_fc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    move/from16 v24, v11

    move-object/from16 v25, v12

    invoke-virtual {v8, v7}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v11

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, v7}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_155

    move-object/from16 v26, v2

    new-instance v2, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v2, v3, v7}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result v7

    if-eqz v7, :cond_150

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_130
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_157

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    move-object/from16 v23, v2

    invoke-static {v7}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v2

    move/from16 v27, v8

    move-object/from16 v8, v20

    invoke-virtual {v8, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v8

    move-object/from16 v2, v23

    move/from16 v8, v27

    goto :goto_130

    :cond_150
    move-object/from16 v8, v20

    const/16 v27, 0x0

    goto :goto_15b

    :cond_155
    move-object/from16 v26, v2

    :cond_157
    move/from16 v27, v8

    move-object/from16 v8, v20

    :goto_15b
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v11, v12, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object/from16 v20, v8

    move/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v2, v26

    goto :goto_fc

    :cond_16b
    move/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v8, v20

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_176
    iget-boolean v7, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v7, :cond_9e2

    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->moveToNext()Z

    move-result v7
    :try_end_17e
    .catchall {:try_start_b0 .. :try_end_17e} :catchall_aaf

    if-eqz v7, :cond_9e2

    :try_start_180
    iget-object v7, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_182} :catch_9b9
    .catchall {:try_start_180 .. :try_end_182} :catchall_aaf

    if-nez v7, :cond_1ac

    :try_start_184
    const-string v7, "User has been deleted"

    invoke-virtual {v14, v7}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_189} :catch_18a
    .catchall {:try_start_184 .. :try_end_189} :catchall_aaf

    goto :goto_176

    :catch_18a
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v29, v4

    move/from16 v28, v5

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move-object/from16 v20, v18

    move-object/from16 v8, v21

    const/4 v7, 0x1

    const/4 v11, 0x2

    move/from16 v4, p2

    move-object/from16 v10, p4

    move/from16 v18, v6

    move-object v6, v2

    move-object v2, v0

    move-object/from16 v34, v13

    move-object v13, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v34

    goto/16 :goto_9d9

    :cond_1ac
    :try_start_1ac
    iget v7, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1ae} :catch_9b9
    .catchall {:try_start_1ac .. :try_end_1ae} :catchall_aaf

    const/4 v12, 0x6

    if-eqz v7, :cond_1e0

    const/4 v11, 0x1

    if-eq v7, v11, :cond_1e0

    const/4 v11, 0x3

    if-eq v7, v11, :cond_542

    const/16 v11, 0x63

    if-eq v7, v11, :cond_1f4

    const/4 v11, 0x5

    if-eq v7, v11, :cond_1f4

    if-eq v7, v12, :cond_1e0

    move-object/from16 v12, p1

    move/from16 v29, v4

    move/from16 v28, v5

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move-object/from16 v20, v18

    move-object/from16 v8, v21

    const/4 v7, 0x1

    const/4 v11, 0x2

    move/from16 v4, p2

    move-object/from16 v10, p4

    move/from16 v18, v6

    move-object v6, v2

    move-object/from16 v34, v13

    move-object v13, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v34

    goto/16 :goto_93f

    :cond_1e0
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move/from16 v29, v4

    move/from16 v28, v5

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move-object/from16 v8, v21

    move-object/from16 v3, v25

    move-object/from16 v5, p4

    goto/16 :goto_5b4

    :cond_1f4
    const/16 v11, 0x63

    if-ne v7, v11, :cond_1fa

    const/4 v7, 0x1

    goto :goto_1fb

    :cond_1fa
    const/4 v7, 0x0

    :goto_1fb
    :try_start_1fb
    invoke-virtual {v14, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v11

    invoke-virtual {v14, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v9}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v28
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_207} :catch_520
    .catchall {:try_start_1fb .. :try_end_207} :catchall_aaf

    const/16 v19, 0x1

    and-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_210

    const/16 v28, 0x1

    goto :goto_212

    :cond_210
    const/16 v28, 0x0

    :goto_212
    if-eqz v28, :cond_221

    :try_start_214
    invoke-static {v3}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v28

    if-nez v28, :cond_225

    const-string v7, "Discarding SearchWidget without packagename "

    invoke-virtual {v14, v7}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_21f} :catch_18a
    .catchall {:try_start_214 .. :try_end_21f} :catchall_aaf

    goto/16 :goto_176

    :cond_221
    :try_start_221
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v28
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_225} :catch_520
    .catchall {:try_start_221 .. :try_end_225} :catchall_aaf

    :cond_225
    move/from16 v29, v4

    move-object/from16 v4, v28

    move/from16 v28, v5

    const/4 v5, 0x1

    :try_start_22c
    invoke-virtual {v14, v5}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v30
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_230} :catch_509
    .catchall {:try_start_22c .. :try_end_230} :catchall_aaf

    if-nez v30, :cond_237

    move-object/from16 v30, v2

    const/4 v2, 0x2

    const/4 v5, 0x1

    goto :goto_23b

    :cond_237
    move-object/from16 v30, v2

    const/4 v2, 0x2

    const/4 v5, 0x0

    :goto_23b
    :try_start_23b
    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v31
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_23f} :catch_4ed
    .catchall {:try_start_23b .. :try_end_23f} :catchall_aaf

    if-nez v31, :cond_245

    move-object/from16 v31, v3

    const/4 v2, 0x1

    goto :goto_248

    :cond_245
    move-object/from16 v31, v3

    const/4 v2, 0x0

    :goto_248
    :try_start_248
    new-instance v3, Lcom/android/launcher3/util/ComponentKey;
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_24a} :catch_4d3
    .catchall {:try_start_248 .. :try_end_24a} :catchall_aaf

    move-object/from16 v32, v8

    :try_start_24c
    iget-object v8, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v4, v8}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_257} :catch_4d1
    .catchall {:try_start_24c .. :try_end_257} :catchall_aaf

    if-nez v8, :cond_294

    :try_start_259
    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_25b} :catch_278
    .catchall {:try_start_259 .. :try_end_25b} :catchall_aaf

    move-object/from16 v33, v10

    :try_start_25d
    iget-object v10, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v4, v10}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v10

    invoke-interface {v8, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_266
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_266} :catch_267
    .catchall {:try_start_25d .. :try_end_266} :catchall_aaf

    goto :goto_296

    :catch_267
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object/from16 v10, p4

    move-object v2, v0

    move-object/from16 v20, v18

    move-object/from16 v8, v21

    move-object/from16 v3, v25

    const/4 v7, 0x1

    const/4 v11, 0x2

    goto :goto_28a

    :catch_278
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object v2, v0

    move-object/from16 v33, v10

    move-object/from16 v20, v18

    move-object/from16 v8, v21

    move-object/from16 v3, v25

    const/4 v7, 0x1

    const/4 v11, 0x2

    move-object/from16 v10, p4

    :goto_28a
    move/from16 v18, v6

    move-object/from16 v25, v13

    move-object/from16 v6, v30

    move-object/from16 v13, v31

    goto/16 :goto_9d9

    :cond_294
    move-object/from16 v33, v10

    :goto_296
    :try_start_296
    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v3}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v8
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_2a2} :catch_4ca
    .catchall {:try_start_296 .. :try_end_2a2} :catchall_aaf

    if-nez v24, :cond_2d6

    if-nez v7, :cond_2d6

    if-eqz v2, :cond_2d6

    if-nez v8, :cond_2d6

    :try_start_2aa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting widget that isn\'t installed anymore: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object/from16 v10, p4

    move-object/from16 v20, v18

    move-object/from16 v8, v21

    move-object/from16 v3, v25

    const/4 v7, 0x1

    const/4 v11, 0x2

    move/from16 v18, v6

    move-object/from16 v25, v13

    move-object/from16 v6, v30

    move-object/from16 v13, v31

    goto/16 :goto_93f

    :cond_2d6
    if-eqz v8, :cond_2f5

    new-instance v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v4, v11, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v3, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v3, v3, -0x9

    and-int/lit8 v3, v3, -0x3

    if-nez v2, :cond_2eb

    if-eqz v5, :cond_2eb

    or-int/lit8 v3, v3, 0x4

    :cond_2eb
    iput v3, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_2ed} :catch_267
    .catchall {:try_start_2aa .. :try_end_2ed} :catchall_aaf

    move-object/from16 v8, v21

    move-object/from16 v3, v25

    :goto_2f1
    const/16 v2, 0x20

    goto/16 :goto_383

    :cond_2f5
    :try_start_2f5
    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Widget restore pending id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " appWidgetId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v2, v11, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget v3, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v3, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_32e} :catch_4ca
    .catchall {:try_start_2f5 .. :try_end_32e} :catchall_aaf

    move-object/from16 v8, v21

    :try_start_330
    invoke-virtual {v8, v3, v5}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_333
    .catch Ljava/lang/Exception; {:try_start_330 .. :try_end_333} :catch_4c8
    .catchall {:try_start_330 .. :try_end_333} :catchall_aaf

    move-object/from16 v3, v25

    :try_start_335
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v5, :cond_342

    move-object/from16 v5, v16

    :goto_33f
    const/16 v10, 0x8

    goto :goto_34f

    :cond_342
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v5

    const/high16 v10, 0x42c80000  # 100.0f

    mul-float/2addr v5, v10

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_33f

    :goto_34f
    invoke-virtual {v14, v10}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v21

    if-eqz v21, :cond_356

    goto :goto_376

    :cond_356
    if-eqz v5, :cond_35e

    iget v4, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v4, v10

    iput v4, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_376

    :cond_35e
    if-nez v24, :cond_376

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrestored widget removed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_5bf

    :cond_376
    :goto_376
    if-nez v5, :cond_37a

    const/4 v4, 0x0

    goto :goto_37e

    :cond_37a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_37e
    iput v4, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    move-object v4, v2

    goto/16 :goto_2f1

    :goto_383
    invoke-virtual {v4, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_38f

    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    :cond_38f
    invoke-virtual {v14, v4}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v14, v6}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    iput v2, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I
    :try_end_398
    .catch Ljava/lang/Exception; {:try_start_335 .. :try_end_398} :catch_59e
    .catchall {:try_start_335 .. :try_end_398} :catchall_aaf

    move/from16 v2, v22

    :try_start_39a
    invoke-virtual {v14, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v14, v9}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->options:I

    iget-object v5, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;
    :try_end_3aa
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_3aa} :catch_4c3
    .catchall {:try_start_39a .. :try_end_3aa} :catchall_aaf

    move/from16 v5, p3

    :try_start_3ac
    invoke-virtual {v14, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v10

    iput v10, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-lez v10, :cond_495

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-gtz v10, :cond_3bc

    goto/16 :goto_495

    :cond_3bc
    invoke-virtual {v13, v11}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v10

    if-eqz v10, :cond_430

    iget v11, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I
    :try_end_3c4
    .catch Ljava/lang/Exception; {:try_start_3ac .. :try_end_3c4} :catch_4bc
    .catchall {:try_start_3ac .. :try_end_3c4} :catchall_aaf

    move/from16 v22, v2

    :try_start_3c6
    iget v2, v10, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I
    :try_end_3c8
    .catch Ljava/lang/Exception; {:try_start_3c6 .. :try_end_3c8} :catch_42d
    .catchall {:try_start_3c6 .. :try_end_3c8} :catchall_aaf

    if-lt v11, v2, :cond_3dd

    :try_start_3ca
    iget v2, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v11, v10, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I
    :try_end_3ce
    .catch Ljava/lang/Exception; {:try_start_3ca .. :try_end_3ce} :catch_3d1
    .catchall {:try_start_3ca .. :try_end_3ce} :catchall_aaf

    if-ge v2, v11, :cond_432

    goto :goto_3dd

    :catch_3d1
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object/from16 v10, p4

    move-object v2, v0

    move/from16 p3, v5

    goto/16 :goto_5a6

    :cond_3dd
    :goto_3dd
    :try_start_3dd
    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3e4
    .catch Ljava/lang/Exception; {:try_start_3dd .. :try_end_3e4} :catch_42d
    .catchall {:try_start_3dd .. :try_end_3e4} :catchall_aaf

    move/from16 p3, v5

    :try_start_3e6
    const-string v5, "Widget "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " minSizes not meet: span="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " minSpan="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/android/launcher3/model/LoaderTask;->logWidgetInfo(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_434

    :catch_42d
    move-exception v0

    goto/16 :goto_4bf

    :cond_430
    move/from16 v22, v2

    :cond_432
    move/from16 p3, v5

    :goto_434
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v2

    if-nez v2, :cond_441

    const-string v2, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_5bf

    :cond_441
    if-nez v7, :cond_46e

    iget-object v2, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_455

    iget v5, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    iget v7, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eq v5, v7, :cond_46e

    :cond_455
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    const-string v7, "appWidgetProvider"

    invoke-virtual {v5, v7, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v2

    const-string v5, "restored"

    iget v7, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    :cond_46e
    iget v2, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v2, :cond_488

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v2, v5, v7}, Lcom/android/launcher3/model/WidgetsModel;->newPendingItemInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v2

    iput-object v2, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    :cond_488
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v14, v4, v2}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object/from16 v10, p4

    goto/16 :goto_57f

    :cond_495
    :goto_495
    move/from16 v22, v2

    move/from16 p3, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Widget has invalid size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_5bf

    :catch_4bc
    move-exception v0

    move/from16 v22, v2

    :goto_4bf
    move/from16 p3, v5

    goto/16 :goto_59f

    :catch_4c3
    move-exception v0

    move/from16 v22, v2

    goto/16 :goto_59f

    :catch_4c8
    move-exception v0

    goto :goto_4cd

    :catch_4ca
    move-exception v0

    move-object/from16 v8, v21

    :goto_4cd
    move-object/from16 v3, v25

    goto/16 :goto_59f

    :catch_4d1
    move-exception v0

    goto :goto_4d6

    :catch_4d3
    move-exception v0

    move-object/from16 v32, v8

    :goto_4d6
    move-object/from16 v8, v21

    move-object/from16 v3, v25

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object v2, v0

    move-object/from16 v33, v10

    move-object/from16 v25, v13

    move-object/from16 v20, v18

    move-object/from16 v13, v31

    const/4 v7, 0x1

    const/4 v11, 0x2

    move-object/from16 v10, p4

    goto/16 :goto_5ae

    :catch_4ed
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v32, v8

    move-object/from16 v8, v21

    move-object/from16 v3, v25

    move-object/from16 v12, p1

    move/from16 v4, p2

    move v11, v2

    move-object/from16 v33, v10

    move-object/from16 v25, v13

    move-object/from16 v20, v18

    move-object/from16 v13, v31

    const/4 v7, 0x1

    move-object/from16 v10, p4

    move-object v2, v0

    goto/16 :goto_5ae

    :catch_509
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v32, v8

    move-object/from16 v8, v21

    move-object/from16 v3, v25

    move-object/from16 v12, p1

    move/from16 v4, p2

    move v7, v5

    move-object/from16 v33, v10

    move-object/from16 v25, v13

    move-object/from16 v20, v18

    move-object/from16 v13, v31

    goto :goto_53a

    :catch_520
    move-exception v0

    move-object/from16 v31, v3

    move/from16 v29, v4

    move/from16 v28, v5

    move-object/from16 v32, v8

    move-object/from16 v8, v21

    move-object/from16 v3, v25

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object/from16 v33, v10

    move-object/from16 v25, v13

    move-object/from16 v20, v18

    move-object/from16 v13, v31

    const/4 v7, 0x1

    :goto_53a
    const/4 v11, 0x2

    move-object/from16 v10, p4

    move/from16 v18, v6

    move-object v6, v2

    goto/16 :goto_9d8

    :cond_542
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move/from16 v29, v4

    move/from16 v28, v5

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move-object/from16 v8, v21

    move-object/from16 v3, v25

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v4, v14, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v2, v4}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget v4, v14, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {v14, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;
    :try_end_565
    .catch Ljava/lang/Exception; {:try_start_3e6 .. :try_end_565} :catch_59e
    .catchall {:try_start_3e6 .. :try_end_565} :catchall_aaf

    const/4 v4, 0x1

    :try_start_566
    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I
    :try_end_56a
    .catch Ljava/lang/Exception; {:try_start_566 .. :try_end_56a} :catch_58d
    .catchall {:try_start_566 .. :try_end_56a} :catchall_aaf

    :try_start_56a
    invoke-virtual {v14, v9}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;
    :try_end_575
    .catch Ljava/lang/Exception; {:try_start_56a .. :try_end_575} :catch_59e
    .catchall {:try_start_56a .. :try_end_575} :catchall_aaf

    move-object/from16 v5, p4

    :try_start_577
    invoke-virtual {v14, v2, v4, v5}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    :try_end_57a
    .catch Ljava/lang/Exception; {:try_start_577 .. :try_end_57a} :catch_5d1
    .catchall {:try_start_577 .. :try_end_57a} :catchall_aaf

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object v10, v5

    :goto_57f
    move-object/from16 v25, v13

    move-object/from16 v20, v18

    move-object/from16 v13, v31

    const/4 v7, 0x1

    const/4 v11, 0x2

    move/from16 v18, v6

    move-object/from16 v6, v30

    goto/16 :goto_93f

    :catch_58d
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v10, p4

    move-object v2, v0

    move v7, v4

    move-object/from16 v25, v13

    move-object/from16 v20, v18

    move-object/from16 v13, v31

    const/4 v11, 0x2

    move/from16 v4, p2

    goto :goto_5ae

    :catch_59e
    move-exception v0

    :goto_59f
    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object/from16 v10, p4

    move-object v2, v0

    :goto_5a6
    move-object/from16 v25, v13

    move-object/from16 v20, v18

    move-object/from16 v13, v31

    const/4 v7, 0x1

    const/4 v11, 0x2

    :goto_5ae
    move/from16 v18, v6

    move-object/from16 v6, v30

    goto/16 :goto_9d9

    :goto_5b4
    :try_start_5b4
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v2
    :try_end_5b8
    .catch Ljava/lang/Exception; {:try_start_5b4 .. :try_end_5b8} :catch_9a6
    .catchall {:try_start_5b4 .. :try_end_5b8} :catchall_aaf

    if-nez v2, :cond_5d9

    :try_start_5ba
    const-string v2, "Invalid or null intent"

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_5bf
    .catch Ljava/lang/Exception; {:try_start_5ba .. :try_end_5bf} :catch_5d1
    .catchall {:try_start_5ba .. :try_end_5bf} :catchall_aaf

    :goto_5bf
    move-object/from16 v25, v3

    move-object/from16 v21, v8

    move/from16 v5, v28

    move/from16 v4, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v8, v32

    move-object/from16 v10, v33

    goto/16 :goto_176

    :catch_5d1
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object v2, v0

    move-object v10, v5

    goto :goto_5a6

    :cond_5d9
    :try_start_5d9
    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-wide v10, v14, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(J)Z

    move-result v4

    if-eqz v4, :cond_5e6

    const/16 v10, 0x8

    goto :goto_5e7

    :cond_5e6
    const/4 v10, 0x0

    :goto_5e7
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_5eb
    .catch Ljava/lang/Exception; {:try_start_5d9 .. :try_end_5eb} :catch_9a6
    .catchall {:try_start_5d9 .. :try_end_5eb} :catchall_aaf

    if-nez v4, :cond_5f2

    :try_start_5ed
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7
    :try_end_5f1
    .catch Ljava/lang/Exception; {:try_start_5ed .. :try_end_5f1} :catch_5d1
    .catchall {:try_start_5ed .. :try_end_5f1} :catchall_aaf

    goto :goto_5f6

    :cond_5f2
    :try_start_5f2
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_5f6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_5fa
    .catch Ljava/lang/Exception; {:try_start_5f2 .. :try_end_5fa} :catch_9a6
    .catchall {:try_start_5f2 .. :try_end_5fa} :catchall_aaf

    if-eqz v11, :cond_606

    :try_start_5fc
    iget v11, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-eq v11, v12, :cond_606

    const-string v2, "Only legacy shortcuts can have null package"

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_605
    .catch Ljava/lang/Exception; {:try_start_5fc .. :try_end_605} :catch_5d1
    .catchall {:try_start_5fc .. :try_end_605} :catchall_aaf

    goto :goto_5bf

    :cond_606
    :try_start_606
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_60a
    .catch Ljava/lang/Exception; {:try_start_606 .. :try_end_60a} :catch_9a6
    .catchall {:try_start_606 .. :try_end_60a} :catchall_aaf

    if-nez v11, :cond_619

    :try_start_60c
    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v12, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v11
    :try_end_614
    .catch Ljava/lang/Exception; {:try_start_60c .. :try_end_614} :catch_5d1
    .catchall {:try_start_60c .. :try_end_614} :catchall_aaf

    if-eqz v11, :cond_617

    goto :goto_619

    :cond_617
    const/4 v11, 0x0

    goto :goto_61a

    :cond_619
    :goto_619
    const/4 v11, 0x1

    :goto_61a
    if-eqz v4, :cond_69c

    if-eqz v11, :cond_69c

    :try_start_61e
    iget v12, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    move-object/from16 v21, v2

    const/4 v2, 0x1

    if-eq v12, v2, :cond_69e

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v12, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v12}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v2
    :try_end_62d
    .catch Ljava/lang/Exception; {:try_start_61e .. :try_end_62d} :catch_684
    .catchall {:try_start_61e .. :try_end_62d} :catchall_aaf

    if-eqz v2, :cond_634

    :try_start_62f
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_632
    .catch Ljava/lang/Exception; {:try_start_62f .. :try_end_632} :catch_5d1
    .catchall {:try_start_62f .. :try_end_632} :catchall_aaf

    goto/16 :goto_69e

    :cond_634
    :try_start_634
    iget-object v2, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_636
    .catch Ljava/lang/Exception; {:try_start_634 .. :try_end_636} :catch_684
    .catchall {:try_start_634 .. :try_end_636} :catchall_aaf

    move-object/from16 v4, v18

    :try_start_638
    invoke-virtual {v4, v7, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_65d

    const/4 v12, 0x0

    iput v12, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v12
    :try_end_645
    .catch Ljava/lang/Exception; {:try_start_638 .. :try_end_645} :catch_67e
    .catchall {:try_start_638 .. :try_end_645} :catchall_aaf

    move/from16 v18, v6

    :try_start_647
    const-string v6, "intent"
    :try_end_649
    .catch Ljava/lang/Exception; {:try_start_647 .. :try_end_649} :catch_65b
    .catchall {:try_start_647 .. :try_end_649} :catchall_aaf

    move-object/from16 v25, v13

    const/4 v13, 0x0

    :try_start_64c
    invoke-virtual {v2, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v6, v5}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    goto :goto_6a6

    :catch_65b
    move-exception v0

    goto :goto_681

    :cond_65d
    move/from16 v18, v6

    move-object/from16 v25, v13

    const-string v2, "Unable to find a launch target"

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_666
    .catch Ljava/lang/Exception; {:try_start_64c .. :try_end_666} :catch_752
    .catchall {:try_start_64c .. :try_end_666} :catchall_aaf

    :goto_666
    move-object/from16 v21, v8

    move/from16 v6, v18

    move-object/from16 v13, v25

    move/from16 v5, v28

    move-object/from16 v2, v30

    move-object/from16 v8, v32

    move-object/from16 v10, v33

    :goto_674
    move-object/from16 v25, v3

    move-object/from16 v18, v4

    move/from16 v4, v29

    move-object/from16 v3, v31

    goto/16 :goto_176

    :catch_67e
    move-exception v0

    move/from16 v18, v6

    :goto_681
    move-object/from16 v25, v13

    goto :goto_68b

    :catch_684
    move-exception v0

    move-object/from16 v25, v13

    move-object/from16 v4, v18

    move/from16 v18, v6

    :goto_68b
    move-object/from16 v12, p1

    move-object/from16 v10, p4

    move-object v2, v0

    move-object/from16 v20, v4

    move-object/from16 v6, v30

    move-object/from16 v13, v31

    :goto_696
    const/4 v7, 0x1

    const/4 v11, 0x2

    :goto_698
    move/from16 v4, p2

    goto/16 :goto_9d9

    :cond_69c
    move-object/from16 v21, v2

    :cond_69e
    :goto_69e
    move-object/from16 v25, v13

    move-object/from16 v4, v18

    move/from16 v18, v6

    move-object/from16 v2, v21

    :goto_6a6
    :try_start_6a6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_6aa
    .catch Ljava/lang/Exception; {:try_start_6a6 .. :try_end_6aa} :catch_996
    .catchall {:try_start_6a6 .. :try_end_6aa} :catchall_aaf

    const/4 v6, 0x4

    if-nez v5, :cond_755

    if-nez v11, :cond_755

    :try_start_6af
    iget v5, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v5, :cond_70b

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package not yet restored: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v7, v5}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v14, v6}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_6d6

    goto/16 :goto_755

    :cond_6d6
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f5

    iget v5, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    or-int/2addr v5, v6

    iput v5, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    const-string v12, "restored"

    iget v13, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto :goto_755

    :cond_6f5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrestored app removed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_666

    :cond_70b
    iget-object v5, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v7, v5}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_717

    or-int/lit8 v10, v10, 0x2

    :goto_715
    const/4 v5, 0x1

    goto :goto_756

    :cond_717
    if-nez v17, :cond_73c

    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing pkg, will check later: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    new-instance v12, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v13, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v12, v7, v13}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_715

    :cond_73c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid package removed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_750
    .catch Ljava/lang/Exception; {:try_start_6af .. :try_end_750} :catch_752
    .catchall {:try_start_6af .. :try_end_750} :catchall_aaf

    goto/16 :goto_666

    :catch_752
    move-exception v0

    goto/16 :goto_68b

    :cond_755
    :goto_755
    const/4 v5, 0x0

    :goto_756
    :try_start_756
    iget v12, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_758
    .catch Ljava/lang/Exception; {:try_start_756 .. :try_end_758} :catch_996
    .catchall {:try_start_756 .. :try_end_758} :catchall_aaf

    const/16 v13, 0x8

    and-int/2addr v12, v13

    if-eqz v12, :cond_75e

    const/4 v11, 0x0

    :cond_75e
    if-eqz v11, :cond_763

    :try_start_760
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_763
    .catch Ljava/lang/Exception; {:try_start_760 .. :try_end_763} :catch_752
    .catchall {:try_start_760 .. :try_end_763} :catchall_aaf

    :cond_763
    :try_start_763
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v11

    if-nez v11, :cond_76b

    const/4 v11, 0x1

    goto :goto_76c

    :cond_76b
    const/4 v11, 0x0

    :goto_76c
    iget v12, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_76e
    .catch Ljava/lang/Exception; {:try_start_763 .. :try_end_76e} :catch_996
    .catchall {:try_start_763 .. :try_end_76e} :catchall_aaf

    if-eqz v12, :cond_77c

    :try_start_770
    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5
    :try_end_774
    .catch Ljava/lang/Exception; {:try_start_770 .. :try_end_774} :catch_752
    .catchall {:try_start_770 .. :try_end_774} :catchall_aaf

    :goto_774
    move-object/from16 v12, p1

    move-object/from16 v20, v4

    move-object/from16 v13, v31

    goto/16 :goto_8a4

    :cond_77c
    :try_start_77c
    iget v12, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_77e
    .catch Ljava/lang/Exception; {:try_start_77c .. :try_end_77e} :catch_996
    .catchall {:try_start_77c .. :try_end_77e} :catchall_aaf

    if-nez v12, :cond_790

    :try_start_780
    sget-object v6, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_WORKSPACE_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v6}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v6

    if-nez v6, :cond_78a

    const/4 v6, 0x1

    goto :goto_78b

    :cond_78a
    const/4 v6, 0x0

    :goto_78b
    invoke-virtual {v14, v2, v5, v11, v6}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5
    :try_end_78f
    .catch Ljava/lang/Exception; {:try_start_780 .. :try_end_78f} :catch_752
    .catchall {:try_start_780 .. :try_end_78f} :catchall_aaf

    goto :goto_774

    :cond_790
    const/4 v5, 0x1

    if-ne v12, v5, :cond_84a

    :try_start_793
    iget-object v5, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v2, v5}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v5

    iget-wide v12, v14, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J
    :try_end_79b
    .catch Ljava/lang/Exception; {:try_start_793 .. :try_end_79b} :catch_83c
    .catchall {:try_start_793 .. :try_end_79b} :catchall_aaf

    move-object/from16 v6, v33

    :try_start_79d
    invoke-virtual {v6, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12
    :try_end_7a7
    .catch Ljava/lang/Exception; {:try_start_79d .. :try_end_7a7} :catch_836
    .catchall {:try_start_79d .. :try_end_7a7} :catchall_aaf

    if-eqz v12, :cond_820

    move-object/from16 v12, v32

    :try_start_7ab
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;
    :try_end_7b1
    .catch Ljava/lang/Exception; {:try_start_7ab .. :try_end_7b1} :catch_816
    .catchall {:try_start_7ab .. :try_end_7b1} :catchall_aaf

    if-nez v2, :cond_7da

    :try_start_7b3
    const-string v2, "Pinned shortcut not found"

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_7b8
    .catch Ljava/lang/Exception; {:try_start_7b3 .. :try_end_7b8} :catch_7c6
    .catchall {:try_start_7b3 .. :try_end_7b8} :catchall_aaf

    move-object v10, v6

    move-object/from16 v21, v8

    move-object v8, v12

    move/from16 v6, v18

    move-object/from16 v13, v25

    move/from16 v5, v28

    move-object/from16 v2, v30

    goto/16 :goto_674

    :catch_7c6
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move-object/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v32, v12

    move-object/from16 v6, v30

    move-object/from16 v13, v31

    const/4 v7, 0x1

    const/4 v11, 0x2

    move-object/from16 v12, p1

    goto/16 :goto_698

    :cond_7da
    :try_start_7da
    new-instance v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :try_end_7dc
    .catch Ljava/lang/Exception; {:try_start_7da .. :try_end_7dc} :catch_816
    .catchall {:try_start_7da .. :try_end_7dc} :catchall_aaf

    move-object/from16 v13, v31

    :try_start_7de
    invoke-direct {v5, v2, v13}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V
    :try_end_7e1
    .catch Ljava/lang/Exception; {:try_start_7de .. :try_end_7e1} :catch_810
    .catchall {:try_start_7de .. :try_end_7e1} :catchall_aaf

    move-object/from16 v33, v6

    :try_start_7e3
    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;
    :try_end_7e5
    .catch Ljava/lang/Exception; {:try_start_7e3 .. :try_end_7e5} :catch_80e
    .catchall {:try_start_7e3 .. :try_end_7e5} :catchall_aaf

    move-object/from16 v32, v12

    :try_start_7e7
    new-instance v12, Lcom/android/launcher3/model/e0;

    invoke-direct {v12, v14}, Lcom/android/launcher3/model/e0;-><init>(Lcom/android/launcher3/model/LoaderCursor;)V

    invoke-virtual {v6, v5, v2, v12}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v12, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v6, v12}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_801

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/4 v12, 0x4

    or-int/2addr v6, v12

    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_801
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6
    :try_end_805
    .catch Ljava/lang/Exception; {:try_start_7e7 .. :try_end_805} :catch_80c
    .catchall {:try_start_7e7 .. :try_end_805} :catchall_aaf

    move-object/from16 v12, p1

    :try_start_807
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v6

    goto :goto_832

    :catch_80c
    move-exception v0

    goto :goto_81d

    :catch_80e
    move-exception v0

    goto :goto_813

    :catch_810
    move-exception v0

    move-object/from16 v33, v6

    :goto_813
    move-object/from16 v32, v12

    goto :goto_81d

    :catch_816
    move-exception v0

    move-object/from16 v33, v6

    move-object/from16 v32, v12

    move-object/from16 v13, v31

    :goto_81d
    move-object/from16 v12, p1

    goto :goto_841

    :cond_820
    move-object/from16 v12, p1

    move-object/from16 v33, v6

    move-object/from16 v13, v31

    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/16 v20, 0x20

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I
    :try_end_832
    .catch Ljava/lang/Exception; {:try_start_807 .. :try_end_832} :catch_863
    .catchall {:try_start_807 .. :try_end_832} :catchall_aaf

    :cond_832
    :goto_832
    move-object/from16 v20, v4

    goto/16 :goto_8a4

    :catch_836
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v33, v6

    goto :goto_83f

    :catch_83c
    move-exception v0

    move-object/from16 v12, p1

    :goto_83f
    move-object/from16 v13, v31

    :goto_841
    move-object/from16 v10, p4

    move-object v2, v0

    move-object/from16 v20, v4

    move-object/from16 v6, v30

    goto/16 :goto_696

    :cond_84a
    move-object/from16 v12, p1

    move-object/from16 v13, v31

    :try_start_84e
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_856
    .catch Ljava/lang/Exception; {:try_start_84e .. :try_end_856} :catch_98e
    .catchall {:try_start_84e .. :try_end_856} :catchall_aaf

    if-nez v6, :cond_865

    :try_start_858
    iget-object v6, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v7, v6}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6
    :try_end_85e
    .catch Ljava/lang/Exception; {:try_start_858 .. :try_end_85e} :catch_863
    .catchall {:try_start_858 .. :try_end_85e} :catchall_aaf

    if-eqz v6, :cond_865

    or-int/lit8 v10, v10, 0x4

    goto :goto_865

    :catch_863
    move-exception v0

    goto :goto_841

    :cond_865
    :goto_865
    :try_start_865
    invoke-virtual {v14, v9}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6
    :try_end_86f
    .catch Ljava/lang/Exception; {:try_start_865 .. :try_end_86f} :catch_98e
    .catchall {:try_start_865 .. :try_end_86f} :catchall_aaf

    if-eqz v6, :cond_832

    :try_start_871
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_832

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6
    :try_end_87b
    .catch Ljava/lang/Exception; {:try_start_871 .. :try_end_87b} :catch_899
    .catchall {:try_start_871 .. :try_end_87b} :catchall_aaf

    move-object/from16 v20, v4

    :try_start_87d
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a4

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a4

    const/high16 v4, 0x10200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_896
    .catch Ljava/lang/Exception; {:try_start_87d .. :try_end_896} :catch_897
    .catchall {:try_start_87d .. :try_end_896} :catchall_aaf

    goto :goto_8a4

    :catch_897
    move-exception v0

    goto :goto_89c

    :catch_899
    move-exception v0

    move-object/from16 v20, v4

    :goto_89c
    move/from16 v4, p2

    move-object/from16 v10, p4

    move-object v2, v0

    move-object/from16 v6, v30

    goto :goto_8bf

    :cond_8a4
    :goto_8a4
    if-eqz v5, :cond_97c

    :try_start_8a6
    iget v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I
    :try_end_8a8
    .catch Ljava/lang/Exception; {:try_start_8a6 .. :try_end_8a8} :catch_971
    .catchall {:try_start_8a6 .. :try_end_8a8} :catchall_aaf

    const/4 v6, 0x1

    if-eq v4, v6, :cond_8c3

    :try_start_8ab
    invoke-virtual {v14, v5, v11}, Lcom/android/launcher3/model/LoaderCursor;->createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;

    move-result-object v4
    :try_end_8af
    .catch Ljava/lang/Exception; {:try_start_8ab .. :try_end_8af} :catch_8b7
    .catchall {:try_start_8ab .. :try_end_8af} :catchall_aaf

    move-object/from16 v6, v30

    :try_start_8b1
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8b4
    .catch Ljava/lang/Exception; {:try_start_8b1 .. :try_end_8b4} :catch_8b5
    .catchall {:try_start_8b1 .. :try_end_8b4} :catchall_aaf

    goto :goto_8c5

    :catch_8b5
    move-exception v0

    goto :goto_8ba

    :catch_8b7
    move-exception v0

    move-object/from16 v6, v30

    :goto_8ba
    move/from16 v4, p2

    :goto_8bc
    move-object/from16 v10, p4

    move-object v2, v0

    :goto_8bf
    const/4 v7, 0x1

    const/4 v11, 0x2

    goto/16 :goto_9d9

    :cond_8c3
    move-object/from16 v6, v30

    :goto_8c5
    :try_start_8c5
    invoke-virtual {v14, v5}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iput-object v2, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;
    :try_end_8ca
    .catch Ljava/lang/Exception; {:try_start_8c5 .. :try_end_8ca} :catch_96b
    .catchall {:try_start_8c5 .. :try_end_8ca} :catchall_aaf

    move/from16 v4, p2

    :try_start_8cc
    invoke-virtual {v14, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v11

    iput v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I
    :try_end_8d2
    .catch Ljava/lang/Exception; {:try_start_8cc .. :try_end_8d2} :catch_969
    .catchall {:try_start_8cc .. :try_end_8d2} :catchall_aaf

    const/4 v11, 0x1

    :try_start_8d3
    iput v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I
    :try_end_8d7
    .catch Ljava/lang/Exception; {:try_start_8d3 .. :try_end_8d7} :catch_964
    .catchall {:try_start_8d3 .. :try_end_8d7} :catchall_aaf

    :try_start_8d7
    iget v11, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/2addr v10, v11

    iput v10, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I
    :try_end_8dc
    .catch Ljava/lang/Exception; {:try_start_8d7 .. :try_end_8dc} :catch_969
    .catchall {:try_start_8d7 .. :try_end_8dc} :catchall_aaf

    if-eqz v24, :cond_8ed

    :try_start_8de
    invoke-static {v13, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_8ed

    iget v2, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/4 v10, 0x1

    or-int/2addr v2, v10

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I
    :try_end_8ea
    .catch Ljava/lang/Exception; {:try_start_8de .. :try_end_8ea} :catch_8eb
    .catchall {:try_start_8de .. :try_end_8ea} :catchall_aaf

    goto :goto_8ed

    :catch_8eb
    move-exception v0

    goto :goto_8bc

    :cond_8ed
    :goto_8ed
    :try_start_8ed
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->getLauncherActivityInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2
    :try_end_8f1
    .catch Ljava/lang/Exception; {:try_start_8ed .. :try_end_8f1} :catch_969
    .catchall {:try_start_8ed .. :try_end_8f1} :catchall_aaf

    if-eqz v2, :cond_906

    :try_start_8f3
    invoke-static {v2}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v10
    :try_end_8f7
    .catch Ljava/lang/Exception; {:try_start_8f3 .. :try_end_8f7} :catch_8fe
    .catchall {:try_start_8f3 .. :try_end_8f7} :catchall_aaf

    const/4 v11, 0x2

    :try_start_8f8
    invoke-virtual {v5, v10, v11}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V
    :try_end_8fb
    .catch Ljava/lang/Exception; {:try_start_8f8 .. :try_end_8fb} :catch_8fc
    .catchall {:try_start_8f8 .. :try_end_8fb} :catchall_aaf

    goto :goto_907

    :catch_8fc
    move-exception v0

    goto :goto_900

    :catch_8fe
    move-exception v0

    const/4 v11, 0x2

    :goto_900
    move-object/from16 v10, p4

    move-object v2, v0

    const/4 v7, 0x1

    goto/16 :goto_9d9

    :cond_906
    const/4 v11, 0x2

    :goto_907
    :try_start_907
    iget v10, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_909
    .catch Ljava/lang/Exception; {:try_start_907 .. :try_end_909} :catch_95e
    .catchall {:try_start_907 .. :try_end_909} :catchall_aaf

    if-eqz v10, :cond_937

    :try_start_90b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_937

    iget-object v10, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v7, v10}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInstaller$SessionInfo;
    :try_end_91c
    .catch Ljava/lang/Exception; {:try_start_90b .. :try_end_91c} :catch_934
    .catchall {:try_start_90b .. :try_end_91c} :catchall_aaf

    if-nez v7, :cond_925

    :try_start_91e
    iget v2, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v5, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I
    :try_end_924
    .catch Ljava/lang/Exception; {:try_start_91e .. :try_end_924} :catch_8fc
    .catchall {:try_start_91e .. :try_end_924} :catchall_aaf

    goto :goto_937

    :cond_925
    if-nez v2, :cond_937

    :try_start_927
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v2
    :try_end_92b
    .catch Ljava/lang/Exception; {:try_start_927 .. :try_end_92b} :catch_934
    .catchall {:try_start_927 .. :try_end_92b} :catchall_aaf

    const/high16 v7, 0x42c80000  # 100.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    const/4 v7, 0x1

    :try_start_930
    invoke-virtual {v5, v2, v7}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V

    goto :goto_938

    :catch_934
    move-exception v0

    const/4 v7, 0x1

    goto :goto_95a

    :cond_937
    :goto_937
    const/4 v7, 0x1

    :goto_938
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;
    :try_end_93a
    .catch Ljava/lang/Exception; {:try_start_930 .. :try_end_93a} :catch_959
    .catchall {:try_start_930 .. :try_end_93a} :catchall_aaf

    move-object/from16 v10, p4

    :try_start_93c
    invoke-virtual {v14, v5, v2, v10}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    :goto_93f
    move/from16 p2, v4

    move-object v2, v6

    move-object/from16 v21, v8

    move/from16 v6, v18

    move-object/from16 v18, v20

    move/from16 v5, v28

    move/from16 v4, v29

    move-object/from16 v8, v32

    move-object/from16 v10, v33

    move-object/from16 v34, v25

    move-object/from16 v25, v3

    move-object v3, v13

    move-object/from16 v13, v34

    goto/16 :goto_176

    :catch_959
    move-exception v0

    :goto_95a
    move-object/from16 v10, p4

    goto/16 :goto_9d8

    :catch_95e
    move-exception v0

    move-object/from16 v10, p4

    const/4 v7, 0x1

    goto/16 :goto_9d8

    :catch_964
    move-exception v0

    move-object/from16 v10, p4

    move v7, v11

    goto :goto_979

    :catch_969
    move-exception v0

    goto :goto_96e

    :catch_96b
    move-exception v0

    move/from16 v4, p2

    :goto_96e
    move-object/from16 v10, p4

    goto :goto_978

    :catch_971
    move-exception v0

    move/from16 v4, p2

    move-object/from16 v10, p4

    move-object/from16 v6, v30

    :goto_978
    const/4 v7, 0x1

    :goto_979
    const/4 v11, 0x2

    goto/16 :goto_9d8

    :cond_97c
    move/from16 v4, p2

    move-object/from16 v10, p4

    move-object/from16 v6, v30

    const/4 v7, 0x1

    const/4 v11, 0x2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected null WorkspaceItemInfo"

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_98c
    .catch Ljava/lang/Exception; {:try_start_93c .. :try_end_98c} :catch_98c
    .catchall {:try_start_93c .. :try_end_98c} :catchall_aaf

    :catch_98c
    move-exception v0

    goto :goto_9d8

    :catch_98e
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v20, v4

    move-object/from16 v6, v30

    goto :goto_9a1

    :catch_996
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v10, p4

    move-object/from16 v20, v4

    move-object/from16 v6, v30

    move-object/from16 v13, v31

    :goto_9a1
    const/4 v7, 0x1

    const/4 v11, 0x2

    move/from16 v4, p2

    goto :goto_9d8

    :catch_9a6
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object v10, v5

    move-object/from16 v25, v13

    move-object/from16 v20, v18

    move-object/from16 v13, v31

    const/4 v7, 0x1

    const/4 v11, 0x2

    move/from16 v18, v6

    move-object/from16 v6, v30

    goto :goto_9d8

    :catch_9b9
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v29, v4

    move/from16 v28, v5

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move-object/from16 v20, v18

    move-object/from16 v8, v21

    const/4 v7, 0x1

    const/4 v11, 0x2

    move/from16 v4, p2

    move-object/from16 v10, p4

    move/from16 v18, v6

    move-object v6, v2

    move-object/from16 v34, v13

    move-object v13, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v34

    :goto_9d8
    move-object v2, v0

    :goto_9d9
    :try_start_9d9
    sget-object v5, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v7, "Desktop items loading interrupted"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_93f

    :cond_9e2
    move-object v6, v2

    move-object/from16 v32, v8

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_WORKSPACE_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_a2b

    const-string v2, "LoadWorkspaceIconsInBulk"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_9f2
    .catchall {:try_start_9d9 .. :try_end_9f2} :catchall_aaf

    :try_start_9f2
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/icons/IconCache;->getTitlesAndIconsInBulk(Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9fb
    :goto_9fb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/IconRequestInfo;

    iget-object v4, v3, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v6, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v4}, Lcom/android/launcher3/icons/cache/BaseIconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_9fb

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/data/IconRequestInfo;->loadWorkspaceIcon(Landroid/content/Context;)Z
    :try_end_a20
    .catchall {:try_start_9f2 .. :try_end_a20} :catchall_a25

    goto :goto_9fb

    :cond_a21
    :try_start_a21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_a2b

    :catchall_a25
    move-exception v0

    move-object v1, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1
    :try_end_a2b
    .catchall {:try_start_a21 .. :try_end_a2b} :catchall_aaf

    :cond_a2b
    :goto_a2b
    :try_start_a2b
    invoke-static {v14}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    move-object/from16 v4, v32

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/model/ModelDelegate;->loadItems(Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;)V

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/ModelDelegate;->loadStringCache(Lcom/android/launcher3/model/StringCache;)V

    iget-boolean v2, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v2, :cond_a4b

    iget-object v1, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    monitor-exit v15

    return-void

    :cond_a4b
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->commitDeleted()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    new-instance v2, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aaa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v5, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v5, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_a81
    if-ge v7, v5, :cond_a64

    iget-object v6, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v8

    if-eqz v8, :cond_aa6

    iget v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v8, :cond_aa6

    iget v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v2, v8}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(I)Z

    move-result v8

    if-eqz v8, :cond_aa6

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_aa7

    :cond_aa6
    const/4 v9, 0x0

    :goto_aa7
    add-int/lit8 v7, v7, 0x1

    goto :goto_a81

    :cond_aaa
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->commitRestoredItems()V

    monitor-exit v15

    return-void

    :catchall_aaf
    move-exception v0

    move-object v1, v0

    invoke-static {v14}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    :catchall_ab5
    move-exception v0

    move-object v1, v0

    monitor-exit v15
    :try_end_ab8
    .catchall {:try_start_a2b .. :try_end_ab8} :catchall_ab5

    throw v1
.end method

.method public run()V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1cd

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    sget-object v1, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Landroid/util/TimingLogger;

    sget-object v2, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    const-string v3, "run"

    invoke-direct {v1, v2, v3}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher3/model/LoaderMemoryLogger;

    invoke-direct {v2}, Lcom/android/launcher3/model/LoaderMemoryLogger;-><init>()V

    :try_start_1e
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/launcher3/OplusLauncherModel;->beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    move-result-object v3
    :try_end_28
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1e .. :try_end_28} :catch_1bb
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_1b6
    .catchall {:try_start_1e .. :try_end_28} :catchall_1b4

    :try_start_28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "LoadWorkspace"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_1a8

    :try_start_32
    invoke-direct {p0, v4, v2}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace(Ljava/util/List;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_1a3

    :try_start_35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v5, "loadWorkspace"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mDbName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->sanitizeData()V

    const-string v5, "sanitizeData"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    :cond_58
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher3/model/BaseLoaderResults;->bindWorkspace(Z)V

    const-string v5, "bindWorkspace"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v5}, Lcom/android/launcher3/model/ModelDelegate;->workspaceLoadComplete()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->sendFirstScreenActiveInstallsBroadcast()V

    const-string v5, "sendFirstScreenActiveInstallsBroadcast"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string/jumbo v5, "step 1 complete"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    const-string v5, "LoadAllApps"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_35 .. :try_end_84} :catchall_1a8

    :try_start_84
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->loadAllApps()Ljava/util/List;

    move-result-object v5
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_19e

    :try_start_88
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v7, "loadAllApps"

    invoke-static {v1, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v7}, Lcom/android/launcher3/model/BaseLoaderResults;->bindAllApps()V

    const-string v7, "bindAllApps"

    invoke-static {v1, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/launcher3/model/LoaderTask;->setIgnorePackages(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)V

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherActivityCachingLogic;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/launcher3/model/d0;

    const/4 v11, 0x0

    invoke-direct {v10, v9, v11}, Lcom/android/launcher3/model/d0;-><init>(Lcom/android/launcher3/OplusLauncherModel;I)V

    invoke-virtual {v7, v5, v8, v10}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    const-string/jumbo v5, "update icon cache"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v8

    if-eqz v8, :cond_f1

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    const-string v8, "save shortcuts in icon cache"

    invoke-static {v1, v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    new-instance v8, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v8}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/launcher3/model/d0;

    invoke-direct {v10, v9, v6}, Lcom/android/launcher3/model/d0;-><init>(Lcom/android/launcher3/OplusLauncherModel;I)V

    invoke-virtual {v7, v4, v8, v10}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    :cond_f1
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string/jumbo v4, "step 2 complete"

    invoke-static {v1, v4}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->loadDeepShortcuts()Ljava/util/List;

    move-result-object v4

    const-string v8, "loadDeepShortcuts"

    invoke-static {v1, v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v8}, Lcom/android/launcher3/model/LoaderResults;->bindDeepShortcuts()V

    const-string v8, "bindDeepShortcuts"

    invoke-static {v1, v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_12b

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    const-string v5, "save deep shortcuts in icon cache"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    new-instance v5, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v5}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    sget-object v8, Lcom/android/launcher3/model/j;->b:Lcom/android/launcher3/model/j;

    invoke-virtual {v7, v4, v5, v8}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    :cond_12b
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    const-string/jumbo v4, "step 3 complete"

    invoke-static {v1, v4}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v4

    const-string v5, "load widgets"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v5}, Lcom/android/launcher3/model/LoaderResults;->bindWidgets()V

    const-string v5, "bindWidgets"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    new-instance v5, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8, v6}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;-><init>(Landroid/content/Context;Z)V

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/launcher3/model/d0;

    const/4 v9, 0x2

    invoke-direct {v8, v6, v9}, Lcom/android/launcher3/model/d0;-><init>(Lcom/android/launcher3/OplusLauncherModel;I)V

    invoke-virtual {v7, v4, v5, v8}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    const-string v4, "save widgets in icon cache"

    invoke-static {v1, v4}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_184

    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadFolderNames()V

    :cond_184
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    invoke-virtual {v7}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->finish()V

    const-string v4, "finish icon update"

    invoke-static {v1, v4}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDelegate;->modelLoadComplete()V

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->commit()V

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderMemoryLogger;->clearLogs()V
    :try_end_19a
    .catchall {:try_start_88 .. :try_end_19a} :catchall_1a8

    :try_start_19a
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_19d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_19a .. :try_end_19d} :catch_1bb
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_19d} :catch_1b6
    .catchall {:try_start_19a .. :try_end_19d} :catchall_1b4

    goto :goto_1c0

    :catchall_19e
    move-exception p0

    :try_start_19f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :catchall_1a3
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
    :try_end_1a8
    .catchall {:try_start_19f .. :try_end_1a8} :catchall_1a8

    :catchall_1a8
    move-exception p0

    if-eqz v3, :cond_1b3

    :try_start_1ab
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_1ae
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1af

    goto :goto_1b3

    :catchall_1af
    move-exception v3

    :try_start_1b0
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b3
    :goto_1b3
    throw p0
    :try_end_1b4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1b0 .. :try_end_1b4} :catch_1bb
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b4} :catch_1b6
    .catchall {:try_start_1b0 .. :try_end_1b4} :catchall_1b4

    :catchall_1b4
    move-exception p0

    goto :goto_1c9

    :catch_1b6
    move-exception p0

    :try_start_1b7
    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderMemoryLogger;->printLogs()V

    throw p0

    :catch_1bb
    const-string p0, "Cancelled"

    invoke-static {v1, p0}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V
    :try_end_1c0
    .catchall {:try_start_1b7 .. :try_end_1c0} :catchall_1b4

    :goto_1c0
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void

    :goto_1c9
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    throw p0

    :catchall_1cd
    move-exception v0

    :try_start_1ce
    monitor-exit p0
    :try_end_1cf
    .catchall {:try_start_1ce .. :try_end_1cf} :catchall_1cd

    throw v0
.end method

.method public sendFirstScreenActiveInstallsBroadcast()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1}, Lcom/android/launcher3/model/BgDataModel;->getAllWorkspaceItems()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v2, :cond_16

    goto :goto_21

    :cond_16
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    :goto_21
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v4, v2, v3

    invoke-static {v2}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1, v0, v3}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/model/FirstScreenBroadcast;->sendBroadcasts(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public setIgnorePackages(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_37

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->addPackagesToIgnore(Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_b

    :cond_37
    instance-of v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v2, :cond_b

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->addPackagesToIgnore(Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_b

    :cond_50
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    const-string p0, "LoaderTask-"

    invoke-static {p0, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/model/LoaderTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized stopLocked()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized verifyNotStopped()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Loader stopped"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForIdle()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/BaseLoaderResults;->newIdleLock(Ljava/lang/Object;)Lcom/android/launcher3/util/LooperIdleLock;

    move-result-object v0

    :goto_7
    iget-boolean v1, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v1, :cond_14

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LooperIdleLock;->awaitLocked(J)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    if-eqz v1, :cond_14

    goto :goto_7

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
