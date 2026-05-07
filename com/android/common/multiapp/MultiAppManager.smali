.class public Lcom/android/common/multiapp/MultiAppManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;
    }
.end annotation


# static fields
.field public static final DEFAULT_USER_HANDLE:Landroid/os/UserHandle;

.field public static final MULTI_USER_HANDLE:Landroid/os/UserHandle;

.field public static final MULTI_USER_ID:I = 0x3e7

.field private static final TAG:Ljava/lang/String; = "MultiAppManager"

.field private static final mMultiAppAddedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/android/common/multiapp/MultiAppManager;


# instance fields
.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRegistered:Z

.field private final mMultiAppUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Lcom/android/common/multiapp/MultiAppManager;->DEFAULT_USER_HANDLE:Landroid/os/UserHandle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/common/multiapp/MultiAppManager;->mMultiAppAddedList:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/multiapp/MultiAppManager;->sInstance:Lcom/android/common/multiapp/MultiAppManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/multiapp/MultiAppManager;->mHasRegistered:Z

    new-instance v0, Lcom/android/common/multiapp/MultiAppManager$1;

    invoke-direct {v0, p0}, Lcom/android/common/multiapp/MultiAppManager$1;-><init>(Lcom/android/common/multiapp/MultiAppManager;)V

    iput-object v0, p0, Lcom/android/common/multiapp/MultiAppManager;->mMultiAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportMultiApp:Z

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    const-string v2, "MultiAppManager: isSupportMultiApp: "

    const-string v3, ", isSystemUser: "

    const-string v4, "MultiAppManager"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    invoke-direct {p0}, Lcom/android/common/multiapp/MultiAppManager;->initMultiAppAddedList()Z

    :cond_27
    invoke-direct {p0}, Lcom/android/common/multiapp/MultiAppManager;->registerReceivers()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/common/multiapp/MultiAppManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/common/multiapp/MultiAppManager;->onMultiPackageAdded(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/common/multiapp/MultiAppManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/common/multiapp/MultiAppManager;->onMultiPackageRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/common/multiapp/MultiAppManager;
    .registers 2

    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->sInstance:Lcom/android/common/multiapp/MultiAppManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/common/multiapp/MultiAppManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/common/multiapp/MultiAppManager;->sInstance:Lcom/android/common/multiapp/MultiAppManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/common/multiapp/MultiAppManager;

    invoke-direct {v1}, Lcom/android/common/multiapp/MultiAppManager;-><init>()V

    sput-object v1, Lcom/android/common/multiapp/MultiAppManager;->sInstance:Lcom/android/common/multiapp/MultiAppManager;

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
    sget-object v0, Lcom/android/common/multiapp/MultiAppManager;->sInstance:Lcom/android/common/multiapp/MultiAppManager;

    return-object v0
.end method

.method private initMultiAppAddedList()Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/multiapp/MultiAppManager;->getMultiAppList(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "MultiAppManager"

    const-string v1, "initMultiAppAddedList. newMultiAppAddedList is null!"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "MultiAppManager"

    const-string v2, "initMultiAppAddedList size = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "MultiAppManager"

    const-string v4, "initMultiAppAddedList package = "

    invoke-static {v4, v2, v3}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_43
    sget-object v1, Lcom/android/common/multiapp/MultiAppManager;->mMultiAppAddedList:Ljava/util/List;

    monitor-enter v1

    :try_start_46
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_5e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1, p0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_5c
    monitor-exit v1

    return v0

    :cond_5e
    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    monitor-exit v1

    return p0

    :catchall_67
    move-exception p0

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_46 .. :try_end_69} :catchall_67

    throw p0
.end method

.method private onMultiPackageAdded(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/common/multiapp/MultiAppManager;->unRegisterReceivers()V

    :cond_5
    invoke-direct {p0}, Lcom/android/common/multiapp/MultiAppManager;->initMultiAppAddedList()Z

    iget-object p2, p0, Lcom/android/common/multiapp/MultiAppManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    const-string v0, "MultiAppManager"

    if-eqz p2, :cond_36

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;

    if-eqz p0, :cond_2f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAddedMultiAppsUpdate. add: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;->onMultiPackageAdded(Ljava/lang/String;)V

    goto :goto_49

    :cond_2f
    const-string/jumbo p0, "onAddedMultiAppsUpdate. multiAppCallbacks is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_36
    const-string/jumbo p1, "onAddedMultiAppsUpdate. mCallbacks = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/common/multiapp/MultiAppManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method private onMultiPackageRemoved(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/common/multiapp/MultiAppManager;->unRegisterReceivers()V

    :cond_5
    invoke-direct {p0}, Lcom/android/common/multiapp/MultiAppManager;->initMultiAppAddedList()Z

    iget-object p2, p0, Lcom/android/common/multiapp/MultiAppManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    const-string v0, "MultiAppManager"

    if-eqz p2, :cond_36

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;

    if-eqz p0, :cond_2f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMultiPackageRemoved. remove: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;->onMultiPackageRemoved(Ljava/lang/String;)V

    goto :goto_49

    :cond_2f
    const-string/jumbo p0, "onMultiPackageRemoved. multiAppCallbacks is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_36
    const-string/jumbo p1, "onMultiPackageRemoved. mCallbacks = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/common/multiapp/MultiAppManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method private registerReceivers()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/common/multiapp/MultiAppManager;->mHasRegistered:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/multiapp/MultiAppManager;->mHasRegistered:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "oplus.intent.action.MULTI_APP_PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "oplus.intent.action.MULTI_APP_PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/common/multiapp/MultiAppManager;->mMultiAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string/jumbo v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2b
    return-void
.end method

.method private unRegisterReceivers()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/multiapp/MultiAppManager;->mHasRegistered:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/multiapp/MultiAppManager;->mHasRegistered:Z

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/common/multiapp/MultiAppManager;->mMultiAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public getAddedMultiApp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/common/multiapp/MultiAppManager;->mMultiAppAddedList:Ljava/util/List;

    monitor-enter p0

    :try_start_3
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "launcherapps"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    const-string p1, "getAppInfo , waste time : "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiAppManager"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/multiapp/OplusMultiAppManager;->getMultiAppUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p0, :cond_4b

    if-eqz p1, :cond_4b

    const/4 v2, 0x0

    :try_start_31
    invoke-virtual {p0, p2, v2, p1}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_35} :catch_36

    goto :goto_4b

    :catch_36
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkPackageExist Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-object v1
.end method

.method public getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/multiapp/OplusMultiAppManager;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMultiAppList(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/multiapp/OplusMultiAppManager;->getMultiAppList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isMultiAppAdded(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    sget-object p0, Lcom/android/common/multiapp/MultiAppManager;->mMultiAppAddedList:Ljava/util/List;

    monitor-enter p0

    :try_start_b
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_14
    monitor-exit p0

    return v0

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw p1
.end method

.method public isMultiAppSupport()Z
    .registers 1

    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppManager;->isMultiAppSupport()Z

    move-result p0

    return p0
.end method

.method public isMultiAppUserHandle(Landroid/os/UserHandle;)Z
    .registers 2

    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/multiapp/OplusMultiAppManager;->isMultiAppUserHandle(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isMultiAppUserId(I)Z
    .registers 2

    const/16 p0, 0x3e7

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onMultiPackageAdded(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/common/multiapp/MultiAppManager;->onMultiPackageAdded(Ljava/lang/String;Z)V

    return-void
.end method

.method public onMultiPackageRemoved(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/common/multiapp/MultiAppManager;->onMultiPackageRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCallBacks(Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;)V
    .registers 4

    if-eqz p1, :cond_9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/common/multiapp/MultiAppManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCallBacks: callbacks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mCallbacks = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/common/multiapp/MultiAppManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiAppManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
