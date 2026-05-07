.class public Lcom/android/common/util/DrawAppSortManagerUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawAppSortManagerUtil"

.field private static final sAllAppInstallTimeSortMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAllAppUserFreqSortMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppUserFreqSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppInstallTimeSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->lambda$handleAppInfoClick$0(Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static addOrUpdateAppClickTimesToSp(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;I)V
    .registers 4

    const-string v0, "DrawAppSortManagerUtil"

    if-nez p0, :cond_a

    const-string p0, "addOrUpdateAppClickTimesToSp context is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p1, :cond_12

    const-string p0, "addOrUpdateAppClickTimesToSp componentKey is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/DrawAppSortManagerUtil;->lambda$bindAppAddOrUpdate$1(Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bindAppAddOrUpdate(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_a

    const-string p0, "DrawAppSortManagerUtil"

    const-string p1, "bindAppAddOrUpdate context is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_44

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sget-object v1, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppUserFreqSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/android/common/util/k;->b:Lcom/android/common/util/k;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2}, Lcom/android/common/util/DrawAppSortManagerUtil;->loadFirstInstallTimeFromSystem(Landroid/content/pm/PackageManager;Lcom/android/launcher3/util/ComponentKey;)J

    invoke-static {p0, v2, v1}, Lcom/android/common/util/DrawAppSortManagerUtil;->addOrUpdateAppClickTimesToSp(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;I)V

    goto :goto_1a

    :cond_44
    return-void
.end method

.method public static bindAppRemove(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    iget-object v2, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static {p0, v1}, Lcom/android/common/util/DrawAppSortManagerUtil;->removeAppClickTimeItem(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)V

    sget-object v0, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppInstallTimeSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_2d
    return-void
.end method

.method public static synthetic c(Landroid/content/SharedPreferences;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->lambda$loadAllAppsClickTimes$2(Landroid/content/SharedPreferences;Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/SharedPreferences;Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->lambda$getClickTimes$3(Landroid/content/SharedPreferences;Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/pm/PackageManager;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->lambda$loadAllAppsFirstInstallTime$4(Landroid/content/pm/PackageManager;Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public static getClickTimes(Landroid/content/SharedPreferences;Lcom/android/launcher3/model/data/AppInfo;)I
    .registers 4

    if-eqz p1, :cond_22

    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_22

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v1, :cond_b

    goto :goto_22

    :cond_b
    new-instance p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sget-object v0, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppUserFreqSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/common/util/j;

    invoke-direct {v1, p0}, Lcom/android/common/util/j;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_22
    :goto_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getClickTimes: appInfo="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DrawAppSortManagerUtil"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getFirstInstallTime(Landroid/content/pm/PackageManager;Lcom/android/launcher3/model/data/AppInfo;)J
    .registers 7

    const-wide/16 v0, 0x0

    const-string v2, "DrawAppSortManagerUtil"

    if-nez p1, :cond_c

    const-string p0, "getFirstInstallTime: appInfo is null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_c
    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result v3

    if-eqz v3, :cond_2e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFirstInstallTime: New appInfo="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_2e
    iget-object v3, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_50

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v4, :cond_37

    goto :goto_50

    :cond_37
    new-instance p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {p1, v3, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    sget-object v0, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppInstallTimeSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_4b
    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->loadFirstInstallTimeFromSystem(Landroid/content/pm/PackageManager;Lcom/android/launcher3/util/ComponentKey;)J

    move-result-wide p0

    return-wide p0

    :cond_50
    :goto_50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirstInstallTime: appInfo="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static handleAppInfoClick(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)V
    .registers 6

    const-string v0, "DrawAppSortManagerUtil"

    if-nez p0, :cond_a

    const-string p0, "handleAppInfoClick context is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p1, :cond_12

    const-string p0, "handleAppInfoClick componentKey is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    sget-object v1, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppUserFreqSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/android/common/util/i;->a:Lcom/android/common/util/i;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAppInfoClick times="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/common/util/DrawAppSortManagerUtil;->addOrUpdateAppClickTimesToSp(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;I)V

    return-void
.end method

.method private static synthetic lambda$bindAppAddOrUpdate$1(Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/Integer;
    .registers 1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getClickTimes$3(Landroid/content/SharedPreferences;Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/Integer;
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$handleAppInfoClick$0(Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    const/4 p0, 0x1

    if-nez p1, :cond_4

    goto :goto_9

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    :goto_9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$loadAllAppsClickTimes$2(Landroid/content/SharedPreferences;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->loadClickTimesFromSP(Landroid/content/SharedPreferences;Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method private static synthetic lambda$loadAllAppsFirstInstallTime$4(Landroid/content/pm/PackageManager;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->loadFirstInstallTimeFromSystem(Landroid/content/pm/PackageManager;Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public static loadAllAppsClickTimes(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DrawAppSortManagerUtil"

    if-nez p0, :cond_a

    const-string p0, "loadAllAppsClickTimes context is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p1, :cond_12

    const-string p0, "loadAllAppsClickTimes apps is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    sget-object v0, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppUserFreqSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Landroidx/core/location/a;

    invoke-direct {v0, p0}, Landroidx/core/location/a;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static loadAllAppsFirstInstallTime(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DrawAppSortManagerUtil"

    if-nez p0, :cond_a

    const-string p0, "loadAllAppsFirstInstallTime context is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p1, :cond_12

    const-string p0, "loadAllAppsFirstInstallTime apps is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    sget-object v0, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppInstallTimeSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroidx/core/location/a;

    invoke-direct {v0, p0}, Landroidx/core/location/a;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static loadClickTimesFromSP(Landroid/content/SharedPreferences;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 5

    const-string v0, "DrawAppSortManagerUtil"

    if-eqz p1, :cond_2d

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_2d

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v2, :cond_d

    goto :goto_2d

    :cond_d
    if-nez p0, :cond_15

    const-string p0, "loadClickTimesFromSP prefs is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    new-instance p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {p1, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p1}, Lcom/android/launcher3/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object v0, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppUserFreqSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2d
    :goto_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadClickTimesFromSP: appInfo="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static loadFirstInstallTimeFromSystem(Landroid/content/pm/PackageManager;Lcom/android/launcher3/util/ComponentKey;)J
    .registers 8

    const-wide/16 v0, 0x0

    const-string v2, "DrawAppSortManagerUtil"

    if-nez p0, :cond_c

    const-string p0, "loadFirstInstallTimeFromSystem packageManager is null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_c
    :try_start_c
    iget-object v3, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-wide v3, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sget-object p0, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppInstallTimeSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_22} :catch_23

    return-wide v3

    :catch_23
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFirstInstallTimeFromSystem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private static loadFirstInstallTimeFromSystem(Landroid/content/pm/PackageManager;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 4

    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_14

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v1, :cond_b

    goto :goto_14

    :cond_b
    new-instance p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->loadFirstInstallTimeFromSystem(Landroid/content/pm/PackageManager;Lcom/android/launcher3/util/ComponentKey;)J

    return-void

    :cond_14
    :goto_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadFirstInstallTimeFromSystem: appInfo="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DrawAppSortManagerUtil"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static removeAppClickTimeItem(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)V
    .registers 3

    const-string v0, "DrawAppSortManagerUtil"

    if-nez p0, :cond_b

    const-string/jumbo p0, "removeAppClickTimeItem context is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    if-nez p1, :cond_14

    const-string/jumbo p0, "removeAppClickTimeItem componentKey is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    sget-object v0, Lcom/android/common/util/DrawAppSortManagerUtil;->sAllAppUserFreqSortMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
