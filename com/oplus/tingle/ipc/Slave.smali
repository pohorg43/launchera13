.class public Lcom/oplus/tingle/ipc/Slave;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Slave"

.field private static mApp:Landroid/app/Application;

.field private static sMaster:Landroid/os/IBinder;

.field private static sProxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/tingle/ipc/Slave;->lambda$getMaster$0()V

    return-void
.end method

.method public static attach(Landroid/content/Context;)V
    .registers 2

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_9

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/oplus/tingle/ipc/Slave;->mApp:Landroid/app/Application;

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/oplus/tingle/ipc/Slave;->mApp:Landroid/app/Application;

    :goto_11
    invoke-static {}, Lcom/oplus/tingle/ipc/Slave;->prepareSystemServiceProxy()V

    return-void
.end method

.method public static cleanSystemService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/oplus/tingle/ipc/Slave;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lcom/oplus/tingle/ipc/Slave;->getMaster(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Slave"

    const-string v0, "Error : Slave cannot connect master."

    invoke-static {p1, v0, p0}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_17
    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;

    invoke-interface {v1, p1}, Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;->canHandle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1, p0}, Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;->cleanSystemService(Landroid/content/Context;)V

    return-void

    :cond_33
    invoke-static {p1}, Lcom/oplus/tingle/ipc/Slave;->createNewCommonProxy(Ljava/lang/String;)Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->cleanSystemService(Landroid/content/Context;)V

    return-void
.end method

.method private static declared-synchronized createNewCommonProxy(Ljava/lang/String;)Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;
    .registers 3

    const-class v0, Lcom/oplus/tingle/ipc/Slave;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;

    invoke-direct {v1, p0}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getMaster(Landroid/content/Context;)Z
    .registers 6

    invoke-static {p0}, Lcom/oplus/tingle/ipc/Engine;->getMasterIBinder(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "Slave"

    const/4 v1, 0x0

    if-eqz p0, :cond_29

    :try_start_9
    sget-object v2, Lcom/oplus/tingle/ipc/a;->a:Lcom/oplus/tingle/ipc/a;

    invoke-interface {p0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_26

    :catch_f
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetMaster linkToDeath Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_26
    sput-object p0, Lcom/oplus/tingle/ipc/Slave;->sMaster:Landroid/os/IBinder;

    goto :goto_33

    :cond_29
    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/tingle/ipc/Slave;->sMaster:Landroid/os/IBinder;

    new-array p0, v1, [Ljava/lang/Object;

    const-string v2, "Get Binder is null, reset sMaster = null."

    invoke-static {v0, v2, p0}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_33
    sget-object p0, Lcom/oplus/tingle/ipc/Slave;->sMaster:Landroid/os/IBinder;

    if-eqz p0, :cond_38

    const/4 v1, 0x1

    :cond_38
    return v1
.end method

.method private static getPackageInstaller(Landroid/content/pm/PackageInstaller;)Landroid/os/IInterface;
    .registers 2

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lmirror/android/pm/PackageInstaller;->mInstaller:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0

    :cond_f
    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/oplus/inner/content/pm/PackageInstallerWrapper;->getPackageInstaller(Landroid/content/pm/PackageInstaller;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {p0}, Lcom/oplus/tingle/ipc/Slave;->getPackageInstallerCompat(Landroid/content/pm/PackageInstaller;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0
.end method

.method private static getPackageInstallerCompat(Landroid/content/pm/PackageInstaller;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSession(Landroid/content/pm/PackageInstaller$Session;)Landroid/os/IInterface;
    .registers 2

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lmirror/android/pm/PackageInstaller$Session;->getSession(Landroid/content/pm/PackageInstaller$Session;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/oplus/inner/content/pm/PackageInstallerWrapper$SessionWrapper;->getSession(Landroid/content/pm/PackageInstaller$Session;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-static {p0}, Lcom/oplus/tingle/ipc/Slave;->getSessionCompat(Landroid/content/pm/PackageInstaller$Session;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0
.end method

.method private static getSessionCompat(Landroid/content/pm/PackageInstaller$Session;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lcom/oplus/tingle/ipc/Slave;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p0}, Lcom/oplus/tingle/ipc/Slave;->getMaster(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Slave"

    const-string v2, "Error : Slave cannot connect master."

    invoke-static {v1, v2, v0}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1b
    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;

    invoke-interface {v1, p1}, Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;->canHandle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1, p0}, Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;->getSystemService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_38
    invoke-static {p1}, Lcom/oplus/tingle/ipc/Slave;->createNewCommonProxy(Ljava/lang/String;)Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->getSystemService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getMaster$0()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/tingle/ipc/Slave;->sMaster:Landroid/os/IBinder;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Slave"

    const-string v2, "sMaster binder died."

    invoke-static {v1, v2, v0}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static pingBinder()Z
    .registers 1

    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sMaster:Landroid/os/IBinder;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    return v0
.end method

.method public static preparePackageInstaller(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "Slave"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/oplus/tingle/ipc/Slave;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {p0}, Lcom/oplus/tingle/ipc/Slave;->getMaster(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string p0, "Error : Slave cannot connect master."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/tingle/ipc/Slave;->getPackageInstaller(Landroid/content/pm/PackageInstaller;)Landroid/os/IInterface;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    instance-of v3, v3, Lcom/oplus/tingle/ipc/SlaveBinder;

    if-eqz v3, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    new-instance v3, Lcom/oplus/tingle/ipc/SlaveBinder;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/oplus/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3}, Lcom/oplus/tingle/ipc/SlaveBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_44

    const-string p0, "Error : SlaveBinder pingBinder failed."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_44
    invoke-static {p0, v3}, Lcom/oplus/tingle/ipc/Slave;->setPackageInstaller(Landroid/content/pm/PackageInstaller;Lcom/oplus/tingle/ipc/SlaveBinder;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_48

    goto :goto_5f

    :catch_48
    move-exception p0

    const-string v2, "preparePackageInstaller failed:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5f
    return v1
.end method

.method public static preparePackageInstallerSession(Landroid/content/pm/PackageInstaller$Session;)Z
    .registers 5

    const-string v0, "Slave"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/oplus/tingle/ipc/Slave;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_11

    const-string p0, "Error : Slave cannot connect master."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_11
    invoke-static {p0}, Lcom/oplus/tingle/ipc/Slave;->getSession(Landroid/content/pm/PackageInstaller$Session;)Landroid/os/IInterface;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    instance-of v3, v3, Lcom/oplus/tingle/ipc/SlaveBinder;

    if-eqz v3, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    new-instance v3, Lcom/oplus/tingle/ipc/SlaveBinder;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/oplus/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3}, Lcom/oplus/tingle/ipc/SlaveBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_36

    const-string p0, "Error : SlaveBinder pingBinder failed."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_36
    invoke-static {p0, v3}, Lcom/oplus/tingle/ipc/Slave;->setSession(Landroid/content/pm/PackageInstaller$Session;Lcom/oplus/tingle/ipc/SlaveBinder;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_3a

    goto :goto_51

    :catch_3a
    move-exception p0

    const-string v2, "preparePackageInstallerSession failed:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_51
    return v1
.end method

.method private static prepareSystemServiceProxy()V
    .registers 2

    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/serviceproxy/app/ActivityManagerProxy;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/serviceproxy/app/ActivityManagerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/serviceproxy/app/NotificationManagerProxy;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/serviceproxy/app/NotificationManagerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    new-instance v1, Lcom/oplus/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static requireMaster()Landroid/os/IBinder;
    .registers 2

    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sMaster:Landroid/os/IBinder;

    if-nez v0, :cond_15

    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->mApp:Landroid/app/Application;

    invoke-static {v0}, Lcom/oplus/tingle/ipc/Slave;->getMaster(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not find master... Try again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sMaster:Landroid/os/IBinder;

    return-object v0
.end method

.method public static resetBinderOrigin(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/oplus/tingle/ipc/Slave;->sProxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;

    invoke-interface {v1, p1}, Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;->canHandle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1, p0}, Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;->resetBinderOrigin(Landroid/content/Context;)V

    :cond_1b
    return-void
.end method

.method private static setPackageInstaller(Landroid/content/pm/PackageInstaller;Lcom/oplus/tingle/ipc/SlaveBinder;)V
    .registers 3

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lmirror/android/pm/PackageInstaller;->mInstaller:Lcom/oplus/utils/reflect/RefObject;

    invoke-static {p1}, Landroid/content/pm/IPackageInstaller$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1d

    :cond_10
    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0, p1}, Lcom/oplus/inner/content/pm/PackageInstallerWrapper;->setPackageInstaller(Landroid/content/pm/PackageInstaller;Landroid/os/IBinder;)V

    goto :goto_1d

    :cond_1a
    invoke-static {p0, p1}, Lcom/oplus/tingle/ipc/Slave;->setPackageInstallerCompat(Landroid/content/pm/PackageInstaller;Lcom/oplus/tingle/ipc/SlaveBinder;)V

    :goto_1d
    return-void
.end method

.method private static setPackageInstallerCompat(Landroid/content/pm/PackageInstaller;Lcom/oplus/tingle/ipc/SlaveBinder;)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static setSession(Landroid/content/pm/PackageInstaller$Session;Lcom/oplus/tingle/ipc/SlaveBinder;)V
    .registers 3

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Lmirror/android/pm/PackageInstaller$Session;->setSession(Landroid/content/pm/PackageInstaller$Session;Landroid/os/IBinder;)V

    goto :goto_17

    :cond_a
    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0, p1}, Lcom/oplus/inner/content/pm/PackageInstallerWrapper$SessionWrapper;->setSession(Landroid/content/pm/PackageInstaller$Session;Landroid/os/IBinder;)V

    goto :goto_17

    :cond_14
    invoke-static {p0, p1}, Lcom/oplus/tingle/ipc/Slave;->setSessionCompat(Landroid/content/pm/PackageInstaller$Session;Lcom/oplus/tingle/ipc/SlaveBinder;)V

    :goto_17
    return-void
.end method

.method private static setSessionCompat(Landroid/content/pm/PackageInstaller$Session;Lcom/oplus/tingle/ipc/SlaveBinder;)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static transactRemote(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/tingle/ipc/Slave;->requireMaster()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    return-void
.end method
