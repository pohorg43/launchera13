.class public Lcom/android/launcher/pkg/PackageDeleteManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;,
        Lcom/android/launcher/pkg/PackageDeleteManager$PackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final DELETE_PACKAGE_DELAY:J = 0x12cL

.field private static final DELETE_PACKAGE_FAIL_CHECK_DELAY:J = 0x1d4c0L

.field private static final DISABLED_PKGS_TITLE:Ljava/lang/String; = "disabled_pkgs:"

.field private static final TAG:Ljava/lang/String; = "PackageDeleteManager"

.field private static final UNINSTALLING_PKGS_FILE_NAME:Ljava/lang/String; = "uninstalling_pkgs"

.field private static volatile sInstance:Lcom/android/launcher/pkg/PackageDeleteManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeleteFailUninstallRunnable:Ljava/lang/Runnable;

.field private mDisablePkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPackageDeleteFail:Z

.field private final mLauncherModel:Lcom/android/launcher3/LauncherModel;

.field private mPackageDeleteObserverUserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallStateTaskHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallingPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher/pkg/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/pkg/a;-><init>(Lcom/android/launcher/pkg/PackageDeleteManager;I)V

    iput-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mDeleteFailUninstallRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mHasPackageDeleteFail:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mDisablePkgs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mPackageDeleteObserverUserMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallStateTaskHashMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mLauncherModel:Lcom/android/launcher3/LauncherModel;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/pkg/PackageDeleteManager;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->lambda$uninstallApp$1(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/pkg/PackageDeleteManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->continueDeletePkgIfNessary()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/pkg/PackageDeleteManager;Ljava/util/HashMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/pkg/PackageDeleteManager;->lambda$uninstallApps$0(Ljava/util/HashMap;)V

    return-void
.end method

.method private checkUninstallFailState()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mLauncherModel:Lcom/android/launcher3/LauncherModel;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mDeleteFailUninstallRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->removeCallback(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mDeleteFailUninstallRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1d4c0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method

.method private commonDeletePackages(Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->saveUninstallingPkgs(Ljava/util/ArrayList;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_71

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_6e

    :cond_19
    const-string v10, "PackageDeleteManager"

    if-nez v0, :cond_3e

    :try_start_1d
    iget-object v4, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v5, v3, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-direct {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->saveUninstallingPkgsToFile()Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "commonDeletePackages. Fail to save file!"

    invoke-static {v10, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "commonDeletePackages -- DeleteIcon: commonDeletePackages. Fail to save file!"

    invoke-static {v10, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->onPackageDeleted(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    goto :goto_6e

    :cond_3e
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    iget-object v5, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object v5, v3

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->findPackageDeleteObserver(Landroid/os/UserHandle;)Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v3, v4, v1, v5}, Lcom/oplus/compat/content/pm/PackageManagerNative;->deletePackageAsUser(Ljava/lang/String;Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;II)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_64} :catch_65

    goto :goto_6e

    :catch_65
    move-exception v4

    const-string v5, "commonDeletePackages. e = "

    invoke-static {v5, v4, v10}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->onPackageDeleted(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_71
    return-void
.end method

.method private continueDeletePkgIfNessary()V
    .registers 11

    invoke-direct {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->loadUninstallingPkgsFromFile()V

    const-string v0, "PackageDeleteManager"

    const-string v1, "continueDeletePkgIfNessary. mUninstallingPkgs = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_fb

    const-string v0, "PackageDeleteManager"

    const-string v2, "continueDeletePkgIfNessary. There is packages not uninstalled. count is "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :try_start_40
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4f} :catch_ec

    move v3, v1

    :goto_50
    :try_start_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v5, v4, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    const-string v7, "PackageDeleteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "continueDeletePkgIfNessary. packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_7e} :catch_e9

    const-wide/16 v7, 0x0

    :try_start_80
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-interface {v2, v5, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_c9

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v2, v5, v7}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_96

    goto :goto_c9

    :cond_96
    invoke-direct {p0, v5, v6}, Lcom/android/launcher/pkg/PackageDeleteManager;->getUninstallTaskState(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;

    move-result-object v4

    if-eqz v4, :cond_9f

    invoke-virtual {v4}, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->reInitFailState()V

    :cond_9f
    const-string v4, "PackageDeleteManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "continueDeletePkgIfNessary. delete packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/launcher/pkg/PackageDeleteManager;->findPackageDeleteObserver(Landroid/os/UserHandle;)Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    move-result-object v4

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v5, v4, v1, v6}, Lcom/oplus/compat/content/pm/PackageManagerNative;->deletePackageAsUser(Ljava/lang/String;Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;II)V

    goto :goto_50

    :cond_c9
    :goto_c9
    iget-object v5, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_ce} :catch_d0

    const/4 v3, 0x1

    goto :goto_50

    :catch_d0
    move-exception v4

    :try_start_d1
    const-string v5, "PackageDeleteManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "continueDeletePkgIfNessary. e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_e7} :catch_e9

    goto/16 :goto_50

    :catch_e9
    move-exception v0

    move v1, v3

    goto :goto_ed

    :catch_ec
    move-exception v0

    :goto_ed
    const-string v2, "PackageDeleteManager"

    const-string v3, "continueDeletePkgIfNessary. e = "

    invoke-static {v3, v0, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v3, v1

    :cond_f5
    if-eqz v3, :cond_ff

    invoke-direct {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->saveUninstallingPkgsToFile()Z

    goto :goto_ff

    :cond_fb
    monitor-enter p0

    :try_start_fc
    iput-boolean v1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mHasPackageDeleteFail:Z

    monitor-exit p0

    :cond_ff
    :goto_ff
    return-void

    :catchall_100
    move-exception v0

    monitor-exit p0
    :try_end_102
    .catchall {:try_start_fc .. :try_end_102} :catchall_100

    throw v0
.end method

.method public static synthetic d(Lcom/android/launcher/pkg/PackageDeleteManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/pkg/PackageDeleteManager;->lambda$uninstallFailToast$4(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/pkg/PackageDeleteManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/pkg/PackageDeleteManager;->lambda$uninstallFailToast$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/pkg/PackageDeleteManager;ZLjava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/pkg/PackageDeleteManager;->lambda$onPackageDeleted$2(ZLjava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method private findPackageDeleteObserver(Landroid/os/UserHandle;)Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mPackageDeleteObserverUserMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Lcom/android/launcher/pkg/PackageDeleteManager$PackageDeleteObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/pkg/PackageDeleteManager$PackageDeleteObserver;-><init>(Lcom/android/launcher/pkg/PackageDeleteManager;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mPackageDeleteObserverUserMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/pkg/PackageDeleteManager;
    .registers 3

    sget-object v0, Lcom/android/launcher/pkg/PackageDeleteManager;->sInstance:Lcom/android/launcher/pkg/PackageDeleteManager;

    if-nez v0, :cond_1b

    const-class v0, Lcom/android/launcher/pkg/PackageDeleteManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/pkg/PackageDeleteManager;->sInstance:Lcom/android/launcher/pkg/PackageDeleteManager;

    if-nez v1, :cond_16

    new-instance v1, Lcom/android/launcher/pkg/PackageDeleteManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher/pkg/PackageDeleteManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/pkg/PackageDeleteManager;->sInstance:Lcom/android/launcher/pkg/PackageDeleteManager;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/android/launcher/pkg/PackageDeleteManager;->sInstance:Lcom/android/launcher/pkg/PackageDeleteManager;

    return-object p0
.end method

.method private getUninstallTaskState(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallStateTaskHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;

    if-nez v1, :cond_21

    goto :goto_12

    :cond_21
    iget-object v2, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mUninstallInfos:Ljava/util/ArrayList;

    if-nez v2, :cond_26

    goto :goto_12

    :cond_26
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v4, v3, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v3, v3, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return-object v1

    :cond_47
    new-instance p1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;

    invoke-direct {p1, p0}, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;-><init>(Lcom/android/launcher/pkg/PackageDeleteManager;)V

    return-object p1
.end method

.method private initUninstallState(Ljava/util/ArrayList;)Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;)",
            "Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallStateTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->initState()V

    return-object v0

    :cond_16
    new-instance v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;

    invoke-direct {v0, p0}, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;-><init>(Lcom/android/launcher/pkg/PackageDeleteManager;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mCurrentUninstallCount:I

    iput v1, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    iput v1, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mHasDonePackageDeleted:I

    iput-boolean v1, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mChanged:Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mTaskKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallStateTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic lambda$onPackageDeleted$2(ZLjava/lang/String;Landroid/os/UserHandle;)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_e

    invoke-direct {p0, p2, v0, p3}, Lcom/android/launcher/pkg/PackageDeleteManager;->setApplicationEnabled(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mLauncherModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/LauncherModel;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_e
    invoke-direct {p0, p2, p3}, Lcom/android/launcher/pkg/PackageDeleteManager;->getUninstallTaskState(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;

    move-result-object v1

    if-nez v1, :cond_15

    return-void

    :cond_15
    iget v2, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mHasDonePackageDeleted:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mHasDonePackageDeleted:I

    if-nez p1, :cond_21

    iget p1, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    add-int/2addr p1, v0

    iput p1, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    :cond_21
    iget p1, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mCurrentUninstallCount:I

    if-ne v2, p1, :cond_2c

    iget p1, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    if-lez p1, :cond_2c

    invoke-direct {p0, v1, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->uninstallFailToast(Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;Ljava/lang/String;)V

    :cond_2c
    iget-object p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v0, p2, p3}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo p2, "onPackageDeleted. changed = "

    const-string p3, "PackageDeleteManager"

    invoke-static {p2, p1, p3}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_43

    iput-boolean p1, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mChanged:Z

    :cond_43
    iget p1, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mHasDonePackageDeleted:I

    iget p2, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mCurrentUninstallCount:I

    if-ne p1, p2, :cond_53

    iget-object p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallStateTaskHashMap:Ljava/util/HashMap;

    iget-object p2, v1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mTaskKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->saveUninstallingPkgsToFile()Z

    :cond_53
    return-void
.end method

.method private synthetic lambda$uninstallApp$1(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8

    const-string v0, "PackageDeleteManager"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v3, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-direct {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->saveUninstallingPkgsToFile()Z

    move-result v2

    if-nez v2, :cond_26

    const-string/jumbo v2, "uninstallApp. Fail to save file!"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "uninstallApp -- DeleteIcon: uninstallApp. Fail to save file!"

    invoke-static {v0, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->onPackageDeleted(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    return-void

    :cond_26
    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v1, v3, v4}, Lcom/oplus/compat/content/pm/IPackageManagerNative;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->findPackageDeleteObserver(Landroid/os/UserHandle;)Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {p1, v2, v1, v3}, Lcom/oplus/compat/content/pm/PackageManagerNative;->deletePackageAsUser(Ljava/lang/String;Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;II)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3f} :catch_40

    goto :goto_6e

    :catch_40
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uninstallApp. e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uninstallApp -- DeleteIcon: uninstallApp. e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/launcher/pkg/PackageDeleteManager;->onPackageDeleted(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :goto_6e
    return-void
.end method

.method private synthetic lambda$uninstallApps$0(Ljava/util/HashMap;)V
    .registers 5

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_27

    goto :goto_8

    :cond_27
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2, v1}, Lcom/android/launcher/pkg/PackageDeleteManager;->commonDeletePackages(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    goto :goto_8

    :cond_31
    return-void
.end method

.method private synthetic lambda$uninstallFailToast$3(Ljava/lang/String;)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    const v0, 0x7f120570

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$uninstallFailToast$4(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_c

    const p1, 0x7f12057b

    goto :goto_f

    :cond_c
    const p1, 0x7f12056c

    :goto_f
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private loadUninstallingPkgsFromFile()V
    .registers 12

    const-string v0, "PackageDeleteManager"

    const-string v1, "loadUninstallingPkgsFromFile"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "uninstalling_pkgs"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-gtz v2, :cond_20

    const-string v2, "loadUninstallingPkgsFromFile. The file is empty."

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1c} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_b1
    .catchall {:try_start_8 .. :try_end_1c} :catchall_af

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :cond_20
    :try_start_20
    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadUninstallingPkgsFromFile readLenght = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_4a
    if-ge v5, v3, :cond_d2

    aget-object v6, v2, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadUninstallingPkgsFromFile. line = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6e

    const-string v2, "loadUninstallingPkgsFromFile. Then disabled apps."

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d2

    :cond_6e
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_ac

    aget-object v7, v6, v4

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v9, Lcom/android/launcher3/util/PackageUserKey;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v9, v7, v10}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v6, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_91
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v9, v7}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    goto :goto_a5

    :cond_a4
    move v8, v4

    :goto_a5
    if-nez v8, :cond_ac

    iget-object v6, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_ac} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_ac} :catch_b1
    .catchall {:try_start_20 .. :try_end_ac} :catchall_af

    :cond_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :catchall_af
    move-exception p0

    goto :goto_d6

    :catch_b1
    move-exception p0

    :try_start_b2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadUninstallingPkgsFromFile. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d2

    :catch_c7
    const-string v2, "loadUninstallingPkgsFromFile. The file is not exist."

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->findDisabledAppToDelete()V

    invoke-direct {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->saveUninstallingPkgsToFile()Z
    :try_end_d2
    .catchall {:try_start_b2 .. :try_end_d2} :catchall_af

    :cond_d2
    :goto_d2
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_d6
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private saveUninstallingPkgs(Ljava/util/ArrayList;Landroid/os/UserHandle;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_28

    :cond_1e
    iget-object v3, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v4, v2, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2b
    invoke-direct {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->saveUninstallingPkgsToFile()Z

    move-result p1

    if-nez p1, :cond_3b

    iget-object p2, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3b
    return p1
.end method

.method private declared-synchronized saveUninstallingPkgsToFile()Z
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "PackageDeleteManager"

    const-string/jumbo v1, "saveToFile"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mHasPackageDeleteFail:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_de

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_e
    iget-object v3, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "uninstalling_pkgs"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/PackageUserKey;

    if-eqz v4, :cond_1d

    iget-object v5, v4, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    if-nez v5, :cond_30

    goto :goto_1d

    :cond_30
    invoke-virtual {v4}, Lcom/android/launcher3/util/PackageUserKey;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    const-string v4, "\n"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    iput-boolean v2, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mHasPackageDeleteFail:Z

    goto :goto_1d

    :cond_4b
    iget-object v3, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mDisablePkgs:Ljava/util/ArrayList;

    if-eqz v3, :cond_8d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8d

    const-string v3, "\ndisabled_pkgs:\n"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v3, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mDisablePkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_66
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v4}, Lcom/android/launcher3/util/PackageUserKey;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    const-string v4, "\n"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    iput-boolean v2, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mHasPackageDeleteFail:Z

    goto :goto_66

    :cond_8d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_90} :catch_96
    .catchall {:try_start_e .. :try_end_90} :catchall_94

    :try_start_90
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_de

    goto :goto_c7

    :catchall_94
    move-exception v0

    goto :goto_da

    :catch_96
    move-exception v3

    :try_start_97
    const-string v4, "PackageDeleteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveToFile. e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/uninstall/SpaceUtils;->getFreeSpace()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_c3

    const-string v3, "PackageDeleteManager"

    const-string/jumbo v4, "saveToFile. getFreeSpace = 0,continue uninstall"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mHasPackageDeleteFail:Z
    :try_end_c2
    .catchall {:try_start_97 .. :try_end_c2} :catchall_94

    move v0, v2

    :cond_c3
    :try_start_c3
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move v2, v0

    :goto_c7
    iget-boolean v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mHasPackageDeleteFail:Z

    if-nez v0, :cond_d8

    const-string v0, "PackageDeleteManager"

    const-string/jumbo v1, "saveUninstallingPkgsToFile. removeTask."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mDeleteFailUninstallRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->removeCallback(Ljava/lang/Runnable;)V
    :try_end_d8
    .catchall {:try_start_c3 .. :try_end_d8} :catchall_de

    :cond_d8
    monitor-exit p0

    return v2

    :goto_da
    :try_start_da
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_de
    .catchall {:try_start_da .. :try_end_de} :catchall_de

    :catchall_de
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setApplicationEnabled(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setApplicationEnabled. packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , userHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageDeleteManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_2d

    const/4 p2, 0x2

    move v4, p2

    goto :goto_2e

    :cond_2d
    move v4, v0

    :goto_2e
    :try_start_2e
    const-string/jumbo p2, "package"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v4, :cond_5b

    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_52} :catch_54

    const/4 v0, 0x1

    goto :goto_5b

    :catch_54
    move-exception p0

    const-string/jumbo p1, "setApplicationEnabled. e = "

    invoke-static {p1, p0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return v0
.end method

.method private uninstallFailToast(Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget v0, p1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mCurrentUninstallCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    iget-object p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/pkg/PackageDeleteManager;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3e

    :cond_23
    if-le v0, v2, :cond_3e

    iget p1, p1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    if-eq p1, v0, :cond_2a

    move v1, v2

    :cond_2a
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lcom/android/common/util/g0;

    invoke-direct {p2, p0, v1}, Lcom/android/common/util/g0;-><init>(Lcom/android/launcher/pkg/PackageDeleteManager;Z)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_3e

    :catch_35
    move-exception p0

    const-string/jumbo p1, "uninstallFailToast. e = "

    const-string p2, "PackageDeleteManager"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method


# virtual methods
.method public findDisabledAppToDelete()V
    .registers 12

    const-string v0, "PackageDeleteManager"

    const-string v1, "findDisabledAppToDelete"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v3}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v4}, Landroid/content/pm/OplusPackageManager;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    const/16 v6, 0x200

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_43
    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    :try_start_4f
    iget-boolean v8, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_43

    sget-boolean v8, Lcom/android/common/config/FeatureOption;->isSupportFreezeApp:Z

    if-eqz v8, :cond_43

    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/OplusPackageManager;->getOplusFreezePackageState(Ljava/lang/String;I)I

    move-result v8

    sget v9, Lcom/oplus/compat/content/pm/PackageManagerNative;->OPLUS_STATE_FREEZE_FREEZED:I

    if-eq v8, v9, :cond_43

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_43

    sget-boolean v8, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v8, :cond_82

    sget-object v8, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v8}, Lcom/android/common/config/FeatureOption;->isExpRegionAppFlag()Z

    move-result v8

    if-nez v8, :cond_82

    iget-object v8, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/common/util/PackageUtils;->isFilterDisableApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_82

    goto :goto_43

    :cond_82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findDisabledAppToDelete:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",freezeState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/content/pm/OplusPackageManager;->getOplusFreezePackageState(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, v7, v5}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_b4} :catch_b5

    goto :goto_43

    :catch_b5
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findDisabledAppToDelete error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_43

    :cond_cf
    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mDisablePkgs:Ljava/util/ArrayList;

    if-nez v0, :cond_da

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mDisablePkgs:Ljava/util/ArrayList;

    :cond_da
    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mDisablePkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public inUninstallList(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallStateTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;

    iget-object p1, p1, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mUninstallInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mHasPackageDeleteFail:Z

    if-nez v0, :cond_e

    const-string v0, "PackageDeleteManager"

    const-string v1, "init. Already inited."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_19

    new-instance v0, Lcom/android/launcher/pkg/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/pkg/a;-><init>(Lcom/android/launcher/pkg/PackageDeleteManager;I)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public isPackageUninstalling(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_17

    iget-object p0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mUninstallingPkgs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public onPackageDeleted(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageDeleted. packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , userHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageDeleteManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string/jumbo p0, "onPackageDeleted. The packageName is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_46

    move p2, v1

    :cond_46
    if-nez p2, :cond_51

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_52

    :cond_51
    move v1, p2

    :goto_52
    new-instance p2, Lcom/android/launcher/pkg/b;

    invoke-direct {p2, p0, v1, p1, p3}, Lcom/android/launcher/pkg/b;-><init>(Lcom/android/launcher/pkg/PackageDeleteManager;ZLjava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {p2}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uninstallApp(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uninstallApp. uninstallInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageDeleteManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_8e

    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/launcher/pkg/PackageDeleteManager;->initUninstallState(Ljava/util/ArrayList;)Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;

    move-result-object v0

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mCurrentUninstallCount:I

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mUninstallInfos:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v2, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeleteIcon: uninstallApp. packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , userHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mLauncherModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/LauncherModel;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->removePackage(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V

    new-instance v1, Lcom/android/launcher/z;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher/pkg/PackageDeleteManager;Ljava/lang/String;Landroid/os/UserHandle;)V

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    if-eqz v0, :cond_8a

    iget-object v0, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/icons/IIconCacheExt;->removeFancyIconAllLocation(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_8a
    invoke-direct {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->checkUninstallFailState()V

    return-void

    :cond_8e
    :goto_8e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uninstallApp. info = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uninstallApps(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_10f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_10f

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/launcher/pkg/PackageDeleteManager;->initUninstallState(Ljava/util/ArrayList;)Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v5, 0x1

    if-eqz v4, :cond_7e

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_7e

    iget-object v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v6, :cond_7e

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_63

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    invoke-virtual {v9, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_5f

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_5f
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_63
    move v5, v2

    :goto_64
    if-nez v5, :cond_71

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    iget-object v5, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mUninstallInfos:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v7, v6, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_7e
    if-eqz v4, :cond_9c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uninstallApp. info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PackageDeleteManager"

    invoke-static {v6, v4}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    :cond_9c
    :goto_9c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    :cond_a0
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_bb

    goto :goto_a8

    :cond_bb
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mLauncherModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher3/LauncherModel;->onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V

    goto :goto_a8

    :cond_d6
    iget v2, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mFailPackageDeletedCount:I

    iput v2, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mHasDonePackageDeleted:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lcom/android/launcher/pkg/PackageDeleteManager$UninstallTaskState;->mCurrentUninstallCount:I

    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/pkg/PackageDeleteManager;Ljava/util/HashMap;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ee
    :goto_ee
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v1, p0, Lcom/android/launcher/pkg/PackageDeleteManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    if-eqz v1, :cond_ee

    iget-object v1, v1, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v1, v0}, Lcom/android/launcher3/icons/IIconCacheExt;->removeFancyIconAllLocation(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_ee

    :cond_10c
    invoke-direct {p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->checkUninstallFailState()V

    :cond_10f
    :goto_10f
    return-void
.end method
