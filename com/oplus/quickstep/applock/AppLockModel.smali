.class public Lcom/oplus/quickstep/applock/AppLockModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/applock/AppLockModel$LockFile;
    }
.end annotation


# static fields
.field private static final RECENT_LOCK_LIST:Ljava/lang/String; = "recent_lock_list"

.field private static final TAG:Ljava/lang/String; = "AppLockModel"

.field public static final USER_MULTIAPP:I = 0x3e7

.field private static final USER_OWNER:I


# instance fields
.field private mBackupLockedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultLockApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFixedLockApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mForbidLockApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIoExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mLockedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    sput v0, Lcom/oplus/quickstep/applock/AppLockModel;->USER_OWNER:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mForbidLockApps:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mIoExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->canInheritanceLockFile()Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_38
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->init()V

    :cond_3b
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->syncLockedAppsToAMS(Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLockModel syncLockedAppsToAMS: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "AppLockModel"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/applock/AppLockModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/applock/AppLockModel;->lambda$saveListToFileAsync$2(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/applock/AppLockModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/applock/AppLockModel;->lambda$updateLockAppsAsync$0(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/applock/AppLockModel;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->lambda$verifyLockedPkgsAsync$1(Landroid/content/Context;)V

    return-void
.end method

.method private canInheritanceLockFile()Z
    .registers 7

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    const-string v1, "locked_apps.xml"

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->inheritanceLockFile(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mForbidLockApps:Ljava/util/List;

    const-string v2, "forbid_lock_apps.xml"

    invoke-direct {p0, v1, v2}, Lcom/oplus/quickstep/applock/AppLockModel;->inheritanceLockFile(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    const-string v3, "fixed_lock_apps.xml"

    invoke-direct {p0, v2, v3}, Lcom/oplus/quickstep/applock/AppLockModel;->inheritanceLockFile(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    const-string v4, "default_locked_apps.xml"

    invoke-direct {p0, v3, v4}, Lcom/oplus/quickstep/applock/AppLockModel;->inheritanceLockFile(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    const-string v5, "backup_locked_apps.xml"

    invoke-direct {p0, v4, v5}, Lcom/oplus/quickstep/applock/AppLockModel;->inheritanceLockFile(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v0, :cond_35

    if-nez v1, :cond_35

    if-nez v2, :cond_35

    if-nez v3, :cond_35

    if-eqz v4, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    :goto_36
    const-string v1, "canInheritanceLockFile: can = "

    const-string v2, " mLockedApps = "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mForbidLockApps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mForbidLockApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mFixedLockApps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDefaultLockApps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mBackupLockedApps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "QuickStep"

    const-string v2, "AppLockModel"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getListFromFile(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->initFile(Ljava/lang/String;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_f
    sget-object p0, Lcom/oplus/quickstep/applock/AppLockModel$LockFile;->PATH:Ljava/lang/String;

    const-string v0, "p"

    invoke-static {p0, p1, v0}, Lcom/oplus/quickstep/utils/OplusFileUtil;->getListFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private inheritanceLockFile(Ljava/util/List;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "AppLockModel"

    const-string v1, "QuickStep"

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->initFile(Ljava/lang/String;)Z

    const-string v2, "/recenttask/"

    invoke-static {v2, p2}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_f
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/oplus/settings/OplusSettings;->readConfig(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "p"

    invoke-static {v4, v5}, Lcom/oplus/quickstep/utils/OplusFileUtil;->readFromFileLocked(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inheritanceLockFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " currentApps.size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_33

    const/4 v7, -0x1

    goto :goto_37

    :cond_33
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    :goto_37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_41} :catch_67
    .catchall {:try_start_f .. :try_end_41} :catchall_65

    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v5, :cond_64

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_64

    :cond_4d
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->saveFile(Ljava/lang/String;)V

    :try_start_53
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    const-string p1, ""

    invoke-static {p0, v2, v3, p1}, Lcom/oplus/settings/OplusSettings;->writeConfigString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5c} :catch_5d

    goto :goto_62

    :catch_5d
    const-string p0, "inheritanceLockFile: writeConfigString IOException"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_62
    const/4 p0, 0x1

    return p0

    :cond_64
    :goto_64
    return v3

    :catchall_65
    move-exception p0

    goto :goto_8c

    :catch_67
    move-exception p0

    :try_start_68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inheritanceLockFile: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_68 .. :try_end_88} :catchall_65

    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v3

    :goto_8c
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private initFile(Ljava/lang/String;)Z
    .registers 4

    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$LockFile;->PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    invoke-static {v0, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3d

    :try_start_1f
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_24

    goto :goto_3d

    :catch_24
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFile:failed create file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "AppLockModel"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return p0
.end method

.method private isExist(Ljava/lang/String;)Z
    .registers 3

    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$LockFile;->PATH:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private isInitialized()Z
    .registers 3

    const-string v0, "locked_apps.xml"

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "forbid_lock_apps.xml"

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "fixed_lock_apps.xml"

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "default_locked_apps.xml"

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "backup_locked_apps.xml"

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->isExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    :goto_2c
    const-string v0, "isInitialized: "

    const-string v1, "AppLockModel"

    invoke-static {v0, p0, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method private isLockedAppInTasks(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$saveListToFileAsync$2(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/applock/AppLockModel;->saveListToFileSync(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$updateLockAppsAsync$0(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLockAppsAsync: defaultLockPkgs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forbidPkgs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", current LockedApps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", current fobidLockApps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mForbidLockApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", current mFixedLockApps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "AppLockModel"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/oplus/quickstep/applock/AppLockModel;->updateDefaultLockedApps(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p2, p3}, Lcom/oplus/quickstep/applock/AppLockModel;->updateForbidApps(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$verifyLockedPkgsAsync$1(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->verifyIllegalPkg(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel$LockFile;->PATH:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    const-string v1, "locked_apps.xml"

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveListToFileSync(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_13
    return-void
.end method

.method private oldLockApps()[Ljava/lang/String;
    .registers 3

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const v0, 0x7f1203dd

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method private saveFile(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_56

    goto :goto_42

    :sswitch_c
    const-string v0, "forbid_lock_apps.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_42

    :cond_15
    const/4 v1, 0x4

    goto :goto_42

    :sswitch_17
    const-string v0, "fixed_lock_apps.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_42

    :cond_20
    const/4 v1, 0x3

    goto :goto_42

    :sswitch_22
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v1, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v0, "default_locked_apps.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_42

    :cond_36
    const/4 v1, 0x1

    goto :goto_42

    :sswitch_38
    const-string v0, "locked_apps.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    packed-switch v1, :pswitch_data_6c

    goto :goto_55

    :pswitch_46  #0x4
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveForbidApps()V

    goto :goto_55

    :pswitch_4a  #0x3
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveFixedApps()V

    goto :goto_55

    :pswitch_4e  #0x1, 0x2
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveDefaultApps()V

    goto :goto_55

    :pswitch_52  #0x0
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveLockedApps()V

    :goto_55
    return-void

    :sswitch_data_56
    .sparse-switch
        -0x3d733bd0 -> :sswitch_38
        -0x3788b1ce -> :sswitch_2d
        0x70 -> :sswitch_22
        0x3b54a5a4 -> :sswitch_17
        0x419cd5c4 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_52  #00000000
        :pswitch_4e  #00000001
        :pswitch_4e  #00000002
        :pswitch_4a  #00000003
        :pswitch_46  #00000004
    .end packed-switch
.end method

.method private saveListToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "saveListToFile path:"

    const-string v0, " name:"

    const-string v1, " list:"

    invoke-static {p0, p1, v0, p2, v1}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "AppLockModel"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_4e

    if-nez p3, :cond_1f

    goto :goto_4e

    :cond_1f
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4b

    :try_start_2a
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_4b

    const-string p1, "saveListToFile: failed create file"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_4b

    :catch_36
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveListToFile: failed create file "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    invoke-static {p0, p3}, Lcom/oplus/quickstep/utils/OplusFileUtil;->writeDataToFile(Ljava/io/File;Ljava/util/List;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method private saveListToFileSync(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveListToFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string p1, "locked_apps.xml"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->syncLockedAppsToAMS(Ljava/util/List;)V

    :cond_13
    return-void
.end method

.method private updateLockAppsAsync(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mIoExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher/c;-><init>(Lcom/oplus/quickstep/applock/AppLockModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateLockedApps(Ljava/util/List;Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockedApps()Ljava/util/List;

    move-result-object v0

    :goto_9
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->updateLockAppsAsync(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    if-eqz p3, :cond_12

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveBackupApps(Ljava/util/List;)V

    goto :goto_15

    :cond_12
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveLockedApps(Ljava/util/List;)V

    :goto_15
    return-void
.end method

.method private verifyIllegalPkg(Landroid/content/Context;Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_118

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_118

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->loadAllInstalledApp(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_118

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_118

    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/common/multiapp/MultiAppManager;->getMultiAppList(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_34

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_34

    :cond_32
    move v6, v0

    goto :goto_35

    :cond_34
    :goto_34
    move v6, v5

    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "#"

    if-eqz v7, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v9, v8, v0

    aget-object v8, v8, v5

    iget-object v10, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_35

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5d

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_5d
    const/16 v10, 0x3e7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    if-nez v6, :cond_71

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    :cond_71
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_75
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->oldLockApps()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f030038

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_90
    :goto_90
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v6, "AppLockModel"

    const-string v7, "QuickStep"

    if-eqz v4, :cond_f0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_90

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_90

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v10, v9, v0

    aget-object v9, v9, v5

    invoke-interface {p0, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_90

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_90

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_90

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "verifyLockedPkgAsync replace: old = "

    const-string v11, " , new = "

    invoke-static {v10, v4, v11, v9}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :cond_f0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "verifyLockedPkgAsync() verifyList "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " excludeList "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_118
    :goto_118
    return v0
.end method


# virtual methods
.method public addLockedApp(Ljava/lang/String;)V
    .registers 5

    const-string v0, "addLockedApps: app:"

    const-string v1, ",mLockedApps:"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "AppLockModel"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveLockedApps()V

    :cond_28
    return-void
.end method

.method public addfixedLockApp(Ljava/lang/String;)V
    .registers 5

    const-string v0, "addfixedLockApp: "

    const-string v1, ",mFixedLockApps:"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "AppLockModel"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveFixedApps()V

    :cond_28
    return-void
.end method

.method public backupLockApps()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveBackupApps()V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveLockedApps()V

    :cond_1c
    return-void
.end method

.method public backupLockAppsAsync()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mIoExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher3/widget/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/a;-><init>(Lcom/oplus/quickstep/applock/AppLockModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public forbidLockAppsContains(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mForbidLockApps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getLockedApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    return-object p0
.end method

.method public getLockedCount()I
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return v1
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    const-string v1, "locked_apps.xml"

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->getListFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mForbidLockApps:Ljava/util/List;

    const-string v1, "forbid_lock_apps.xml"

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->getListFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    const-string v1, "fixed_lock_apps.xml"

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->getListFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    const-string v1, "default_locked_apps.xml"

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->getListFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    const-string v1, "backup_locked_apps.xml"

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->getListFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public isApplocked(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v0, :cond_38

    check-cast p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getSecondaryTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, v2, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->isApplocked(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    if-eqz p1, :cond_37

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-nez v0, :cond_35

    invoke-virtual {p0, v2, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->isApplocked(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_36

    :cond_35
    const/4 v1, 0x1

    :cond_36
    move v0, v1

    :cond_37
    return v0

    :cond_38
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, v0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->isApplocked(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isApplocked(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatedApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isApplocked = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QuickStep"

    const-string v2, "AppLockModel"

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p1

    if-eqz p1, :cond_52

    const-string p1, "mDefaultLockApps:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mFixedLockApps = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mForbidLockApps = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mForbidLockApps:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    return v0
.end method

.method public isApplocked(Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->toFormatLockedAppStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->isApplocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDefaultLockApp(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDefaultLockApp(Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->toFormatLockedAppStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadAllInstalledApp(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_48

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "loadAllInstalledApp() allPackages.size = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "AppLockModel"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_32
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_32

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_32

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_48
    return-object p0
.end method

.method public lockApp(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->addLockedApp(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->addfixedLockApp(Ljava/lang/String;)V

    return-void
.end method

.method public removeAllLockedAppsExceptDefults()V
    .registers 6

    const-string v0, "removeAllLockedAppsExceptDefults: defaultLockAppsSize"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "AppLockModel"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    iget-object v4, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_47
    const-string v0, "checkAndUnlockRemovedApps: clear all lockedApp"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveLockedApps()V

    return-void
.end method

.method public removeBackupLockedApp(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "removeBackupLockedApp: "

    const-string v1, "QuickStep"

    const-string v2, "AppLockModel"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveBackupApps()V

    :cond_19
    return-void
.end method

.method public removeLockApp(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "removeLockApp: "

    const-string v1, "QuickStep"

    const-string v2, "AppLockModel"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveLockedApps()V

    :cond_19
    return-void
.end method

.method public removeLockedAppsNotInTasks(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeLockedAppsNotInTasks tasks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "AppLockModel"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    iget-object v6, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_1e

    :cond_3f
    invoke-direct {p0, p1, v5, v4}, Lcom/oplus/quickstep/applock/AppLockModel;->isLockedAppInTasks(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUnlockRemovedApps: remove lockedApp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_5d
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveLockedApps()V

    return-void
.end method

.method public restoreLockApps()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveLockedApps()V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveBackupApps()V

    :cond_1a
    return-void
.end method

.method public saveBackupApps()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mBackupLockedApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveBackupApps(Ljava/util/List;)V

    return-void
.end method

.method public saveBackupApps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$LockFile;->PATH:Ljava/lang/String;

    const-string v1, "backup_locked_apps.xml"

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveListToFileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public saveDefaultApps()V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$LockFile;->PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    const-string v2, "default_locked_apps.xml"

    invoke-virtual {p0, v0, v2, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveListToFileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public saveFixedApps()V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$LockFile;->PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    const-string v2, "fixed_lock_apps.xml"

    invoke-virtual {p0, v0, v2, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveListToFileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public saveForbidApps()V
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$LockFile;->PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mForbidLockApps:Ljava/util/List;

    const-string v2, "forbid_lock_apps.xml"

    invoke-virtual {p0, v0, v2, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveListToFileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public saveListToFileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mIoExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher/c;-><init>(Lcom/oplus/quickstep/applock/AppLockModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveLockedApps()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mLockedApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveLockedApps(Ljava/util/List;)V

    return-void
.end method

.method public saveLockedApps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$LockFile;->PATH:Ljava/lang/String;

    const-string v1, "locked_apps.xml"

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveListToFileAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public syncLockedAppsToAMS(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "recent_lock_list"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/oplus/util/OplusCommonConfig;->getInstance()Lcom/oplus/util/OplusCommonConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lcom/oplus/util/OplusCommonConfig;->putConfigInfo(Ljava/lang/String;Landroid/os/Bundle;I)Z

    return-void
.end method

.method public toFormatLockedAppStr(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateBackupLockedApps(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->updateLockedApps(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public updateDefaultLockedApps(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_69

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_2c
    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    sget v1, Lcom/oplus/quickstep/applock/AppLockModel;->USER_OWNER:I

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->toFormatLockedAppStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_4f
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mFixedLockApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_60
    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mDefaultLockApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_66
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveDefaultApps()V

    :cond_69
    return-void
.end method

.method public updateForbidApps(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3e

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mForbidLockApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mForbidLockApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_28
    sget v1, Lcom/oplus/quickstep/applock/AppLockModel;->USER_OWNER:I

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->toFormatLockedAppStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v1, 0x3e7

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->toFormatLockedAppStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3b
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveForbidApps()V

    :cond_3e
    return-void
.end method

.method public updateLockedApps(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->updateLockedApps(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public updateLockedAppsByDefaultLock(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->updateLockedApps(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public updateLockedAppsByForbidLock(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->updateLockedApps(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public verifyLockedPkgsAsync(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mIoExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/quickstep/applock/AppLockModel;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
