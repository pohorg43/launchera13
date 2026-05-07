.class public Lcom/android/launcher/shimmer/IconShimmerManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;,
        Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;,
        Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;
    }
.end annotation


# static fields
.field private static final KEY_NEED_SHIMMER_PACKAGES:Ljava/lang/String; = "KEY_NEED_SHIMMER_PACKAGES"

.field public static final MSG_APP_INSTALLED:I = 0x2

.field public static final MSG_APP_UNINSTALL:I = 0x3

.field public static final MSG_DRAWER_BIND_DATA:I = 0x5

.field public static final MSG_DRAWER_CHECK_CUR_PAGE:I = 0xb

.field public static final MSG_HIDDEN_APP_FOLD_OPEN:I = 0x6

.field public static final MSG_LOAD_CACHED_DATA:I = 0x1

.field public static final MSG_SHIMMER_FINISH:I = 0xa

.field public static final MSG_SHIMMER_LAST_INSTALL_ON_CURRENT_PAGE:I = 0x8

.field public static final MSG_SHIMMER_VIEW_SHOW_ANIMATOR_END:I = 0x7

.field public static final MSG_SYSTEM_CLONE_SHIMMER:I = 0xc

.field public static final MSG_TARGET_VIEW_START_SHIMMER:I = 0x9

.field public static final MSG_WORK_SPACE_BIND_DATA:I = 0x4

.field private static final SHIMMER_ANGLE:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "IconShimmerManager"

.field public static final TIME_DELAY_FOLD_OPEN:J = 0x2bcL

.field private static final TIME_DELAY_ICON_EXPOSE_TIME:J = 0x320L

.field private static volatile sInstance:Lcom/android/launcher/shimmer/IconShimmerManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSystemCloneShimmmerShowed:Z

.field private mLastInstalledPackageName:Ljava/lang/String;

.field private mNeedShimmerAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingShimmerEntry:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mShimmerDrawableSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/android/launcher/shimmer/IShimmerView;",
            "Lcom/android/launcher/shimmer/ShimmerDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/common/util/j;

    invoke-direct {v0, p0}, Lcom/android/common/util/j;-><init>(Lcom/android/launcher/shimmer/IconShimmerManager;)V

    iput-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mShimmerDrawableSupplier:Ljava/util/function/Function;

    new-instance v0, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;

    const-string v1, "IconShimmer"

    invoke-static {v1}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/launcher/shimmer/IconShimmerManager$WorkerHandler;-><init>(Landroid/os/Looper;Lcom/android/launcher/shimmer/IconShimmerManager;)V

    iput-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mWorkerHandler:Landroid/os/Handler;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->lambda$handleStartShimmerForLastInstallOnCurPage$0(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/shimmer/IconShimmerManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleLoadDataFromCached()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleShimmerFinished(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/launcher/shimmer/IconShimmerManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleEnterDrawer()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleShimmerForSystemClone(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleAppInstalled(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleAppUninstall(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleWorkspaceBindData(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleDrawerBindData(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/launcher/shimmer/IconShimmerManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleHiddenAppFoldOpen()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleShimmerViewShowAnimatorEnd(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher/shimmer/IconShimmerManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleStartShimmerForLastInstallOnCurPage()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/launcher/shimmer/IconShimmerManager;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleShimmerTargetView(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/shimmer/IconShimmerManager;Lcom/android/launcher/shimmer/IShimmerView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->onShimmerFinished(Lcom/android/launcher/shimmer/IShimmerView;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/shimmer/IconShimmerManager;Lcom/android/launcher/shimmer/IShimmerView;)Lcom/android/launcher/shimmer/ShimmerDrawable;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->createShimmerDrawableSupplier(Lcom/android/launcher/shimmer/IShimmerView;)Lcom/android/launcher/shimmer/ShimmerDrawable;

    move-result-object p0

    return-object p0
.end method

.method private cachedDataOnWorkerThread()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "KEY_NEED_SHIMMER_PACKAGES"

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_33

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_33
    return-void
.end method

.method private clearShimmerViewDataIfHas(Lcom/android/launcher/shimmer/IShimmerView;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->removeShimmerViewIfHas(Lcom/android/launcher/shimmer/IShimmerView;)Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;

    if-eqz v0, :cond_1a

    iget v0, v0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/shimmer/IShimmerView;

    if-nez v1, :cond_26

    return-void

    :cond_26
    if-eqz v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleShimmerFinished(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    :cond_2b
    invoke-interface {v1}, Lcom/android/launcher/shimmer/IShimmerView;->clearShimmerData()V

    return-void
.end method

.method private createShimmerDrawableSupplier(Lcom/android/launcher/shimmer/IShimmerView;)Lcom/android/launcher/shimmer/ShimmerDrawable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/shimmer/IShimmerView;",
            ")",
            "Lcom/android/launcher/shimmer/ShimmerDrawable<",
            "Lcom/android/launcher/shimmer/IShimmerView;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;

    invoke-direct {v0, p1}, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;-><init>(Lcom/android/launcher/shimmer/IShimmerView;)V

    const/16 p1, 0x2d

    invoke-virtual {v0, p1}, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->setAngle(I)Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;

    move-result-object p1

    new-instance v0, Landroidx/core/location/a;

    invoke-direct {v0, p0}, Landroidx/core/location/a;-><init>(Lcom/android/launcher/shimmer/IconShimmerManager;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->setFinishListener(Ljava/util/function/Consumer;)Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/shimmer/ShimmerDrawable$Builder;->build()Lcom/android/launcher/shimmer/ShimmerDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->lambda$handleStartShimmerForLastInstallOnCurPage$1(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/android/launcher/shimmer/IconShimmerManager;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/shimmer/IconShimmerManager;->lambda$handleStartShimmerForLastInstallOnCurPage$2(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/shimmer/IconShimmerManager;
    .registers 2

    sget-object v0, Lcom/android/launcher/shimmer/IconShimmerManager;->sInstance:Lcom/android/launcher/shimmer/IconShimmerManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/shimmer/IconShimmerManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/shimmer/IconShimmerManager;->sInstance:Lcom/android/launcher/shimmer/IconShimmerManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/shimmer/IconShimmerManager;

    invoke-direct {v1}, Lcom/android/launcher/shimmer/IconShimmerManager;-><init>()V

    sput-object v1, Lcom/android/launcher/shimmer/IconShimmerManager;->sInstance:Lcom/android/launcher/shimmer/IconShimmerManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher/shimmer/IconShimmerManager;->sInstance:Lcom/android/launcher/shimmer/IconShimmerManager;

    return-object v0
.end method

.method private getPackageName(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method private handleAppInstalled(Landroid/os/Message;)V
    .registers 7

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_7

    return-void

    :cond_7
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    new-instance v2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;

    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v2, v3, v4}, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;-><init>(J)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mLastInstalledPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->cachedDataOnWorkerThread()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_3d

    :catch_35
    move-exception p0

    const-string p1, "handleAppInstalled:"

    const-string v0, "IconShimmerManager"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private handleAppUninstall(Landroid/os/Message;)V
    .registers 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_16
    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->cachedDataOnWorkerThread()V

    return-void
.end method

.method private handleDrawerBindData(Landroid/os/Message;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleShimmerViewBindData(Landroid/os/Message;Z)V

    return-void
.end method

.method private handleEnterDrawer()V
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->hasAppNeedToShimmer()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_f

    goto :goto_52

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    iget-object v2, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    iget-object v2, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    if-nez v2, :cond_24

    goto :goto_4a

    :cond_24
    iget-object v3, v2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/shimmer/IShimmerView;

    if-eqz v3, :cond_4a

    invoke-interface {v3}, Lcom/android/launcher/shimmer/IShimmerView;->isShimmerViewShowingNow()Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, v2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mLastInstalledPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    move-object v0, v2

    goto :goto_4d

    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_4d
    :goto_4d
    if-eqz v0, :cond_52

    invoke-direct {p0, v0}, Lcom/android/launcher/shimmer/IconShimmerManager;->startShimmerTargetView(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    :cond_52
    :goto_52
    return-void
.end method

.method private handleHiddenAppFoldOpen()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->hasAppNeedToShimmer()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleStartShimmerForLastInstallOnCurPage()V

    :cond_9
    return-void
.end method

.method private handleLoadDataFromCached()V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_NEED_SHIMMER_PACKAGES"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_5f

    :cond_16
    const-wide/16 v1, -0x1

    :try_start_18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_32

    goto :goto_1c

    :cond_32
    iget-object v5, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    new-instance v6, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;

    iget-wide v7, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v6, v7, v8}, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;-><init>(J)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v6, v4, v1

    if-lez v6, :cond_1c

    iput-object v3, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mLastInstalledPackageName:Ljava/lang/String;
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_46} :catch_48

    move-wide v1, v4

    goto :goto_1c

    :catch_48
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLoadDataFromCached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IconShimmerManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private handleShimmerFinished(Landroid/os/Message;)V
    .registers 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher/shimmer/IShimmerView;

    invoke-interface {p1}, Lcom/android/launcher/shimmer/IShimmerView;->clearShimmerData()V

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->removeShimmerViewIfHas(Lcom/android/launcher/shimmer/IShimmerView;)Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleShimmerFinished(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    :cond_18
    return-void
.end method

.method private handleShimmerFinished(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V
    .registers 4

    const-string/jumbo v0, "shimmer finished --> "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconShimmerManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_29
    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->cachedDataOnWorkerThread()V

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsIconShimmer(Ljava/lang/String;)V

    return-void
.end method

.method private handleShimmerForSystemClone(Landroid/os/Message;)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mIsSystemCloneShimmmerShowed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mIsSystemCloneShimmmerShowed:Z

    iget-object v1, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const-string/jumbo v4, "systemclone_icon_shimmer"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1f

    return-void

    :cond_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_65

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-direct {p0, v1}, Lcom/android/launcher/shimmer/IconShimmerManager;->getPackageName(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/common/config/Constants$Packages;->OPLUS_SYSTEMCLONE_PACKAGENAME:Ljava/lang/String;

    if-eqz v1, :cond_56

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewExt;->getShimmerView()Lcom/android/launcher/shimmer/IShimmerView;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/shimmer/IconShimmerManager;->wrapperDataForSystemClone(Lcom/android/launcher/shimmer/IShimmerView;Ljava/lang/String;)Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->startShimmerTargetView(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    :cond_56
    iget-object p1, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {p1, v4, v0, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_65
    return-void
.end method

.method private handleShimmerTargetView(Landroid/os/Message;)V
    .registers 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->startShimmerTargetView(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    return-void
.end method

.method private handleShimmerViewBindData(Landroid/os/Message;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->hasAppNeedToShimmer()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_e

    return-void

    :cond_e
    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_19

    return-void

    :cond_19
    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_59

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-direct {p0, v0}, Lcom/android/launcher/shimmer/IconShimmerManager;->getPackageName(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    return-void

    :cond_34
    iget-object v1, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    if-eqz p2, :cond_46

    iget-object p2, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mLastInstalledPackageName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_50

    :cond_46
    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewExt;->getShimmerView()Lcom/android/launcher/shimmer/IShimmerView;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/shimmer/IconShimmerManager;->prepareToShimmer(Lcom/android/launcher/shimmer/IShimmerView;Ljava/lang/String;)V

    goto :goto_59

    :cond_50
    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewExt;->getShimmerView()Lcom/android/launcher/shimmer/IShimmerView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/shimmer/IconShimmerManager;->clearShimmerViewDataIfHas(Lcom/android/launcher/shimmer/IShimmerView;)V

    :cond_59
    :goto_59
    return-void
.end method

.method private handleShimmerViewShowAnimatorEnd(Landroid/os/Message;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher/shimmer/IconShimmerManager;->hasAppNeedToShimmer()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_30

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher/shimmer/IShimmerView;

    if-nez v0, :cond_17

    return-void

    :cond_17
    check-cast p1, Lcom/android/launcher/shimmer/IShimmerView;

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/launcher/shimmer/IShimmerView;->getIdentity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    if-eqz v0, :cond_30

    invoke-interface {p1}, Lcom/android/launcher/shimmer/IShimmerView;->isShimmerViewShowingNow()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-direct {p0, v0}, Lcom/android/launcher/shimmer/IconShimmerManager;->shimmerViewAfterExposeTimeEnough(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    :cond_30
    return-void
.end method

.method private handleStartShimmerForLastInstallOnCurPage()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_f
    iget-object v2, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    iget-object v2, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    iget-object v3, v2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/shimmer/IShimmerView;

    if-eqz v3, :cond_32

    invoke-interface {v3}, Lcom/android/launcher/shimmer/IShimmerView;->isShimmerViewShowingNow()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_35
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/shimmer/a;->a:Lcom/android/launcher/shimmer/a;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    if-nez v1, :cond_49

    return-void

    :cond_49
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/launcher/shimmer/c;

    invoke-direct {v2, v1}, Lcom/android/launcher/shimmer/c;-><init>(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/launcher/shimmer/b;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher/shimmer/b;-><init>(Lcom/android/launcher/shimmer/IconShimmerManager;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct {p0, v1}, Lcom/android/launcher/shimmer/IconShimmerManager;->startShimmerTargetView(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    return-void
.end method

.method private handleWorkspaceBindData(Landroid/os/Message;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/shimmer/IconShimmerManager;->handleShimmerViewBindData(Landroid/os/Message;Z)V

    return-void
.end method

.method private hasAppNeedToShimmer()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$handleStartShimmerForLastInstallOnCurPage$0(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)I
    .registers 4

    iget-wide v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mInstallTime:J

    iget-wide p0, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mInstallTime:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private static synthetic lambda$handleStartShimmerForLastInstallOnCurPage$1(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)Z
    .registers 2

    iget p1, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mId:I

    iget p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mId:I

    if-eq p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private synthetic lambda$handleStartShimmerForLastInstallOnCurPage$2(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    iget v1, p2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    iget-object p1, p2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method private onShimmerFinished(Lcom/android/launcher/shimmer/IShimmerView;)V
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private prepareToShimmer(Lcom/android/launcher/shimmer/IShimmerView;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/shimmer/IconShimmerManager;->wrapperData(Lcom/android/launcher/shimmer/IShimmerView;Ljava/lang/String;)Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    iget v1, p2, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mId:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/launcher/shimmer/IShimmerView;->isShimmerViewShowingNow()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-direct {p0, p2}, Lcom/android/launcher/shimmer/IconShimmerManager;->shimmerViewAfterExposeTimeEnough(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    :cond_14
    return-void
.end method

.method private removeShimmerViewIfHas(Lcom/android/launcher/shimmer/IShimmerView;)Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_18

    invoke-interface {p1}, Lcom/android/launcher/shimmer/IShimmerView;->getIdentity()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_18

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method private shimmerViewAfterExposeTimeEnough(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mWorkerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private startShimmerTargetView(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;

    if-eqz v0, :cond_48

    iget v0, v0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_48

    iget-object v0, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/shimmer/IShimmerView;

    if-eqz v0, :cond_48

    invoke-interface {v0}, Lcom/android/launcher/shimmer/IShimmerView;->isShimmerViewShowingNow()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;->mStatus:I

    const-string/jumbo v1, "start shimmer: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IconShimmerManager"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mShimmerDrawableSupplier:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Lcom/android/launcher/shimmer/IShimmerView;->startShimmer(Ljava/util/function/Function;)V

    :cond_48
    return-void
.end method

.method private wrapperData(Lcom/android/launcher/shimmer/IShimmerView;Ljava/lang/String;)Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;
    .registers 6

    invoke-interface {p1}, Lcom/android/launcher/shimmer/IShimmerView;->getIdentity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/launcher/shimmer/IShimmerView;->setIdentity(I)V

    :cond_e
    new-instance v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;-><init>(Lcom/android/launcher/shimmer/IconShimmerManager$1;)V

    iput v0, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mId:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;

    iget-wide p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;->mInstallTime:J

    iput-wide p0, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mInstallTime:J

    return-object v1
.end method

.method private wrapperDataForSystemClone(Lcom/android/launcher/shimmer/IShimmerView;Ljava/lang/String;)Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;
    .registers 7

    invoke-interface {p1}, Lcom/android/launcher/shimmer/IShimmerView;->getIdentity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/launcher/shimmer/IShimmerView;->setIdentity(I)V

    :cond_e
    new-instance v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;-><init>(Lcom/android/launcher/shimmer/IconShimmerManager$1;)V

    iput v0, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mId:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mPackageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mInstallTime:J

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mPendingShimmerEntry:Landroid/util/SparseArray;

    iget v2, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mId:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/launcher/shimmer/IShimmerView;->isShimmerViewShowingNow()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-direct {p0, v1}, Lcom/android/launcher/shimmer/IconShimmerManager;->shimmerViewAfterExposeTimeEnough(Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;)V

    :cond_35
    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mNeedShimmerAppMap:Ljava/util/Map;

    new-instance p1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;

    iget-wide v2, v1, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerViewEntry;->mInstallTime:J

    invoke-direct {p1, v2, v3}, Lcom/android/launcher/shimmer/IconShimmerManager$ShimmerStatus;-><init>(J)V

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public checkToShimmer(I)V
    .registers 4

    const-wide/16 v0, 0x320

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/shimmer/IconShimmerManager;->checkToShimmer(IJ)V

    return-void
.end method

.method public checkToShimmer(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public clearCheckShimmer(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mWorkerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher/shimmer/IconShimmerManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
