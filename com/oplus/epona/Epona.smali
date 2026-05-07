.class public Lcom/oplus/epona/Epona;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_CONTROLLER:Lcom/oplus/epona/ipc/local/RemoteTransferController;

.field private static final DEFAULT_PERMISSION:Lcom/oplus/epona/IPermission;

.field private static final TAG:Ljava/lang/String; = "Epona->Epona"

.field private static final mLock:Ljava/lang/Object;

.field private static sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sInstance:Lcom/oplus/epona/Epona;


# instance fields
.field private mActivityStackManager:Lcom/oplus/epona/internal/ActivityStackManager;

.field private mApp:Landroid/app/Application;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/oplus/epona/ipc/local/RemoteTransferController;

.field private mDumpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/epona/Dumper;",
            ">;"
        }
    .end annotation
.end field

.field private mIPCInterceptor:Lcom/oplus/epona/Interceptor;

.field private final mInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/epona/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mPermission:Lcom/oplus/epona/IPermission;

.field private mRepo:Lcom/oplus/epona/Repo;

.field private mRoute:Lcom/oplus/epona/Route;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/epona/ipc/local/DefaultTransferController;

    invoke-direct {v0}, Lcom/oplus/epona/ipc/local/DefaultTransferController;-><init>()V

    sput-object v0, Lcom/oplus/epona/Epona;->DEFAULT_CONTROLLER:Lcom/oplus/epona/ipc/local/RemoteTransferController;

    new-instance v0, Lcom/oplus/epona/PermissionCheck;

    invoke-direct {v0}, Lcom/oplus/epona/PermissionCheck;-><init>()V

    sput-object v0, Lcom/oplus/epona/Epona;->DEFAULT_PERMISSION:Lcom/oplus/epona/IPermission;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/epona/Epona;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/epona/Epona;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mDumpMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mInterceptors:Ljava/util/List;

    sget-object v0, Lcom/oplus/epona/Epona;->DEFAULT_CONTROLLER:Lcom/oplus/epona/ipc/local/RemoteTransferController;

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mController:Lcom/oplus/epona/ipc/local/RemoteTransferController;

    sget-object v0, Lcom/oplus/epona/Epona;->DEFAULT_PERMISSION:Lcom/oplus/epona/IPermission;

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mPermission:Lcom/oplus/epona/IPermission;

    new-instance v0, Lcom/oplus/epona/interceptor/IPCInterceptor;

    invoke-direct {v0}, Lcom/oplus/epona/interceptor/IPCInterceptor;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mIPCInterceptor:Lcom/oplus/epona/Interceptor;

    new-instance v0, Lcom/oplus/epona/internal/ProviderRepo;

    invoke-direct {v0}, Lcom/oplus/epona/internal/ProviderRepo;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    new-instance v0, Lcom/oplus/epona/Route;

    invoke-direct {v0}, Lcom/oplus/epona/Route;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mRoute:Lcom/oplus/epona/Route;

    new-instance v0, Lcom/oplus/epona/internal/ActivityStackManager;

    invoke-direct {v0}, Lcom/oplus/epona/internal/ActivityStackManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/Epona;->mActivityStackManager:Lcom/oplus/epona/internal/ActivityStackManager;

    return-void
.end method

.method public static addDumper(Lcom/oplus/epona/Dumper;)Z
    .registers 3
    .param p0  # Lcom/oplus/epona/Dumper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mDumpMap:Ljava/util/Map;

    if-eqz p0, :cond_1b

    invoke-interface {p0}, Lcom/oplus/epona/Dumper;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-interface {p0}, Lcom/oplus/epona/Dumper;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public static addInterceptor(Lcom/oplus/epona/Interceptor;)Z
    .registers 4
    .param p0  # Lcom/oplus/epona/Interceptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "interceptor cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mInterceptors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "Epona->Epona"

    const-string v2, "interceptor has been add twice"

    invoke-static {v1, v2, v0}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_1c
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private attach(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/epona/Epona;->mContext:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/oplus/epona/Epona;->mApp:Landroid/app/Application;

    goto :goto_13

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/oplus/epona/Epona;->mApp:Landroid/app/Application;

    :goto_13
    iget-object p1, p0, Lcom/oplus/epona/Epona;->mActivityStackManager:Lcom/oplus/epona/internal/ActivityStackManager;

    iget-object p0, p0, Lcom/oplus/epona/Epona;->mApp:Landroid/app/Application;

    invoke-virtual {p1, p0}, Lcom/oplus/epona/internal/ActivityStackManager;->attach(Landroid/app/Application;)V

    return-void
.end method

.method private static autoRegister()V
    .registers 0

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static findComponent(Ljava/lang/String;)Lcom/oplus/epona/DynamicProvider;
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->findProvider(Ljava/lang/String;)Lcom/oplus/epona/DynamicProvider;

    move-result-object p0

    return-object p0
.end method

.method public static findProviderComponent(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->findProviderProviderInfo(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static findRoute(Ljava/lang/String;)Lcom/oplus/epona/route/RouteInfo;
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->findRouteInfo(Ljava/lang/String;)Lcom/oplus/epona/route/RouteInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 1

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mApp:Landroid/app/Application;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .registers 1

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mActivityStackManager:Lcom/oplus/epona/internal/ActivityStackManager;

    invoke-virtual {v0}, Lcom/oplus/epona/internal/ActivityStackManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getDumper(Ljava/lang/String;)Lcom/oplus/epona/Dumper;
    .registers 2

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mDumpMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/Dumper;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIPCInterceptor()Lcom/oplus/epona/Interceptor;
    .registers 1

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mIPCInterceptor:Lcom/oplus/epona/Interceptor;

    return-object v0
.end method

.method private static getInstance()Lcom/oplus/epona/Epona;
    .registers 2

    sget-object v0, Lcom/oplus/epona/Epona;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/epona/Epona;->sInstance:Lcom/oplus/epona/Epona;

    if-nez v1, :cond_e

    new-instance v1, Lcom/oplus/epona/Epona;

    invoke-direct {v1}, Lcom/oplus/epona/Epona;-><init>()V

    sput-object v1, Lcom/oplus/epona/Epona;->sInstance:Lcom/oplus/epona/Epona;

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/oplus/epona/Epona;->sInstance:Lcom/oplus/epona/Epona;

    return-object v0

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static getInterceptors()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/epona/Interceptor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public static getPermissionCheck()Lcom/oplus/epona/IPermission;
    .registers 1

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mPermission:Lcom/oplus/epona/IPermission;

    return-object v0
.end method

.method public static getTransferController()Lcom/oplus/epona/ipc/local/RemoteTransferController;
    .registers 1

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mController:Lcom/oplus/epona/ipc/local/RemoteTransferController;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/oplus/epona/Epona;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oplus/epona/Epona;->attach(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/epona/ipc/remote/Dispatcher;->getInstance()Lcom/oplus/epona/ipc/remote/Dispatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/epona/Epona;->addDumper(Lcom/oplus/epona/Dumper;)Z

    invoke-static {}, Lcom/oplus/utils/Logger;->getInstance()Lcom/oplus/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/Logger;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/epona/Epona;->autoRegister()V

    return-void
.end method

.method public static newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRoute:Lcom/oplus/epona/Route;

    invoke-virtual {v0, p0}, Lcom/oplus/epona/Route;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    return-object p0
.end method

.method public static register(Lcom/oplus/epona/DynamicProvider;)V
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->registerProvider(Lcom/oplus/epona/DynamicProvider;)V

    return-void
.end method

.method public static registerProvider(Lcom/oplus/epona/provider/ProviderInfo;)V
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->registerProviderInfo(Lcom/oplus/epona/provider/ProviderInfo;)V

    return-void
.end method

.method public static registerRoute(Lcom/oplus/epona/route/RouteInfo;)V
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->registerRouteInfo(Lcom/oplus/epona/route/RouteInfo;)V

    return-void
.end method

.method public static setIPCInterceptor(Lcom/oplus/epona/Interceptor;)V
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iput-object p0, v0, Lcom/oplus/epona/Epona;->mIPCInterceptor:Lcom/oplus/epona/Interceptor;

    return-void
.end method

.method public static setPermissionCheck(Lcom/oplus/epona/IPermission;)V
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iput-object p0, v0, Lcom/oplus/epona/Epona;->mPermission:Lcom/oplus/epona/IPermission;

    return-void
.end method

.method public static setTransferController(Lcom/oplus/epona/ipc/local/RemoteTransferController;)V
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iput-object p0, v0, Lcom/oplus/epona/Epona;->mController:Lcom/oplus/epona/ipc/local/RemoteTransferController;

    return-void
.end method

.method public static unRegister(Lcom/oplus/epona/DynamicProvider;)V
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->unRegisterProvider(Lcom/oplus/epona/DynamicProvider;)V

    return-void
.end method

.method public static unRegisterProvider(Lcom/oplus/epona/provider/ProviderInfo;)V
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->unRegisterProviderInfo(Lcom/oplus/epona/provider/ProviderInfo;)V

    return-void
.end method

.method public static unRegisterRoute(Lcom/oplus/epona/route/RouteInfo;)V
    .registers 2

    invoke-static {}, Lcom/oplus/epona/Epona;->getInstance()Lcom/oplus/epona/Epona;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/epona/Epona;->mRepo:Lcom/oplus/epona/Repo;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Repo;->unRegisterRouteInfo(Lcom/oplus/epona/route/RouteInfo;)V

    return-void
.end method
