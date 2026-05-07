.class public Lcom/android/launcher/backup/restore/AppRestoreGuardian;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DELAY_DETECT_AFTER_RESTORE:J = 0x2710L

.field private static final MAX_DETECT_ATTEMPT_COUNT:I = 0xa

.field private static final MAX_DETECT_COUNT:I = 0x3

.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/launcher/backup/restore/AppRestoreGuardian;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppRestoreGuardian"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetectAttemptCount:I

.field private mDetectCount:I

.field private mDetectTask:Ljava/lang/Runnable;

.field private mDetecting:Z

.field private volatile mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mTopApps:[Ljava/lang/String;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/restore/AppRestoreGuardian$1;

    invoke-direct {v0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian$1;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetecting:Z

    iput v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectAttemptCount:I

    iput v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectCount:I

    new-instance v0, Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian$2;-><init>(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)V

    iput-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectTask:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/launcher3/util/Executors;->FETCH_ICON_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mWorkHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mTopApps:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/backup/restore/AppRestoreGuardian$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/backup/restore/AppRestoreGuardian;ZLandroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/CompletableFuture;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->lambda$isPackageDisappear$0(ZLandroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectAttemptCount:I

    return p0
.end method

.method public static synthetic access$108(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)I
    .registers 3

    iget v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectAttemptCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectAttemptCount:I

    return v0
.end method

.method public static synthetic access$200(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectCount:I

    return p0
.end method

.method public static synthetic access$208(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)I
    .registers 3

    iget v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectCount:I

    return v0
.end method

.method public static synthetic access$300(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->detectAvailable()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->startDetect()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/backup/restore/AppRestoreGuardian;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private detectAvailable()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetecting:Z

    const/4 v1, 0x0

    const-string v2, "AppRestoreGuardian"

    if-eqz v0, :cond_e

    const-string/jumbo p0, "startDetect return, detecting.."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_e
    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string/jumbo p0, "startDetect return, launcher is null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    invoke-static {}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->isLauncherRestoreStarted()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo p0, "startDetect return, LauncherRestorePlugin isStated"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_28
    invoke-static {}, Lcom/android/launcher/backup/cloudsync/LauncherCloudSyncAgent;->isCloudRestoreStarted()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo p0, "startDetect return, LauncherCloudSyncAgent isStated"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_35
    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->isAppRestoring()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string/jumbo p0, "startDetect return, isAppRestoring"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4c
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusLauncherModel;->isLoaderTaskRunning()Z

    move-result p0

    if-eqz p0, :cond_5d

    const-string/jumbo p0, "startDetect return, isLoaderTaskRunning"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5d
    const/4 p0, 0x1

    return p0
.end method

.method private findItemInAllApps(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;
    .registers 7

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    :goto_15
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-nez v2, :cond_26

    goto :goto_39

    :cond_26
    invoke-static {v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    return-object v2

    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_3c
    return-object v0
.end method

.method private findItemInWorkspace(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .registers 8

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_24

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-direct {p0, v4, p1, p2}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->findViewInContainer(Landroid/view/ViewGroup;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_21

    return-object v4

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_24
    return-object v1
.end method

.method private findViewFromFolder(Lcom/android/launcher3/folder/FolderIcon;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    return v0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method private findViewInContainer(Landroid/view/ViewGroup;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .registers 9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_39

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->findViewFromFolder(Lcom/android/launcher3/folder/FolderIcon;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v2

    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_36

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p3, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    return-object v2

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/android/launcher/backup/restore/AppRestoreGuardian;
    .registers 1

    sget-object v0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    return-object v0
.end method

.method private getLauncher()Lcom/android/launcher/Launcher;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mLauncherRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    iget-object p0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    const-string v0, "getLauncher e:"

    const-string v2, "AppRestoreGuardian"

    invoke-static {v0, p0, v2}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v1
.end method

.method private isPackageDisappear(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 16

    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/OplusLauncherAppsCompat;->getLauncherAppsActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageDisappear, pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AppRestoreGuardian"

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v1

    invoke-virtual {v1, v8, p2}, Lcom/android/launcher3/OplusAppFilter;->shouldShowInLayout(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_91

    iget-object v1, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v1

    invoke-virtual {v1, v8, p2}, Lcom/android/launcher3/OplusAppFilter;->getNotShowReason(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v5

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1, p2}, Lcom/android/statistics/LauncherStatistics;->statsAppLostDetect(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPackageDisappear, shouldNotShow "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v1, v4}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_91
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v7

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    sget-object v11, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v12, Lcom/android/launcher/backup/restore/a;

    move-object v5, v12

    move-object v6, p0

    move-object v9, p2

    move-object v10, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher/backup/restore/a;-><init>(Lcom/android/launcher/backup/restore/AppRestoreGuardian;ZLandroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_ac
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_ac .. :try_end_b0} :catch_b6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_ac .. :try_end_b0} :catch_b6

    if-nez p0, :cond_b4

    const/4 p0, 0x1

    goto :goto_b5

    :cond_b4
    const/4 p0, 0x0

    :goto_b5
    return p0

    :catch_b6
    move-exception v1

    const-string v5, "findItem Error, "

    invoke-static {v5, v1, v4}, Lcom/android/common/debug/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2c

    :cond_be
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$isPackageDisappear$0(ZLandroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/CompletableFuture;)V
    .registers 5

    if-eqz p1, :cond_7

    invoke-direct {p0, p2, p3}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->findItemInAllApps(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->findItemInWorkspace(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object p0

    :goto_b
    invoke-virtual {p4, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private locateFindViewInContainer(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p6, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_30
    move p1, v0

    :goto_31
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_5f

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->getNonNullComponent(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p6, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_5c
    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    :cond_5f
    move p1, v0

    :goto_60
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_7c

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {p0, p2, p5, p6}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->findViewFromFolder(Lcom/android/launcher3/folder/FolderIcon;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_79

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_79
    add-int/lit8 p1, p1, 0x1

    goto :goto_60

    :cond_7c
    :goto_7c
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_98

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {p0, p1, p5, p6}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->findViewFromFolder(Lcom/android/launcher3/folder/FolderIcon;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_95

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :cond_98
    const/4 p0, 0x0

    return-object p0
.end method

.method private removeViewFormDrawer(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->findViewInContainer(Landroid/view/ViewGroup;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2d

    const-string p1, "AppRestoreGuardian"

    const-string/jumbo p2, "removeViewFormDrawer"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_2d
    return-void
.end method

.method private removeViewFormWorkspace(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_3b

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-direct {p0, v4, p1, p2}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->findViewInContainer(Landroid/view/ViewGroup;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_38

    const-string p0, "AppRestoreGuardian"

    const-string/jumbo p1, "removeViewFormWorkspace"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3b
    return-void
.end method

.method private restartDetect()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetecting:Z

    iput v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectAttemptCount:I

    iput v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectCount:I

    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mWorkHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetectTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startDetect()Z
    .registers 13

    const-string v0, "AppRestoreGuardian"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetecting:Z

    iget-object v3, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mTopApps:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_a
    if-ge v5, v4, :cond_76

    aget-object v6, v3, v5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->isPackageDisappear(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_a4
    .catchall {:try_start_4 .. :try_end_16} :catchall_a2

    const-string v8, "; "

    const-string/jumbo v9, "startDetect, find lost pkg = "

    const-string v10, "hidden_by_bug"

    if-eqz v7, :cond_49

    :try_start_1f
    iget-object v3, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v6, v10, v4}, Lcom/android/statistics/LauncherStatistics;->statsAppLostDetect(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_49
    sget-object v7, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-direct {p0, v6, v7}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->isPackageDisappear(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v11

    if-eqz v11, :cond_73

    iget-object v3, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v3

    invoke-virtual {v3, v6, v10, v7}, Lcom/android/statistics/LauncherStatistics;->statsAppLostDetect(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_76
    move v1, v2

    :goto_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDetect, shouldReload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_9f

    sget-object v3, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->forceReload()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_9f} :catch_a4
    .catchall {:try_start_1f .. :try_end_9f} :catchall_a2

    :cond_9f
    iput-boolean v2, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetecting:Z

    return v1

    :catchall_a2
    move-exception v0

    goto :goto_bd

    :catch_a4
    move-exception v1

    :try_start_a5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDetect error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_a5 .. :try_end_ba} :catchall_a2

    iput-boolean v2, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetecting:Z

    return v2

    :goto_bd
    iput-boolean v2, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mDetecting:Z

    throw v0
.end method


# virtual methods
.method public isExistLauncher(Landroid/content/ComponentName;)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-nez p0, :cond_f

    return v0

    :cond_f
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object p0, p0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    move v1, v0

    :goto_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 p0, 0x1

    return p0

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_4f
    return v0
.end method

.method public locateFindItemInWorkspace(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .registers 19

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v8, 0x0

    :goto_26
    if-ge v8, v2, :cond_83

    aget-object v9, v0, v8

    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_33
    if-ge v11, v10, :cond_80

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_3c

    return-object v1

    :cond_3c
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v14, -0x65

    const/4 v15, 0x3

    const/4 v7, 0x1

    if-ne v13, v14, :cond_68

    iget v12, v12, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v13, 0xca

    if-eq v12, v13, :cond_7d

    if-eq v12, v7, :cond_7d

    if-ne v12, v15, :cond_60

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_60
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_68
    iget v12, v12, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v12, v15, :cond_74

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_74
    if-eq v12, v7, :cond_7d

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    :goto_7d
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    :cond_80
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_83
    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->locateFindViewInContainer(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_90

    return-object v0

    :cond_90
    return-object v1
.end method

.method public onAppRestoreEnd()V
    .registers 3

    const-string v0, "AppRestoreGuardian"

    const-string/jumbo v1, "onAppRestoreEnd"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->restartDetect()V

    return-void
.end method

.method public onLayoutRestoreEnd()V
    .registers 3

    const-string v0, "AppRestoreGuardian"

    const-string/jumbo v1, "onLayoutRestoreEnd"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->restartDetect()V

    return-void
.end method

.method public setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mLauncherRef:Ljava/lang/ref/WeakReference;

    goto :goto_d

    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->mLauncherRef:Ljava/lang/ref/WeakReference;

    :goto_d
    return-void
.end method

.method public testDetect()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->startDetect()Z

    return-void
.end method

.method public testRemovePackage(Landroid/os/UserHandle;)V
    .registers 5

    const-string v0, "AppRestoreGuardian"

    const-string/jumbo v1, "testRemovePackage"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->removeViewFormDrawer(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    goto :goto_22

    :cond_1f
    invoke-direct {p0, v0, p1}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->removeViewFormWorkspace(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    :goto_22
    return-void
.end method
