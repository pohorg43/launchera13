.class public Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;
.super Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy<",
        "Landroid/view/IWindowSession;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;-><init>()V

    const-string v0, "window"

    iput-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mShouldUseLock:Z

    return-void
.end method

.method public static synthetic a(Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;->lambda$init$0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$init$0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mSlaveBinder:Lcom/oplus/tingle/ipc/SlaveBinder;

    invoke-static {p0}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mOriginalService:Ljava/lang/Object;

    new-instance v0, Lcom/oplus/tingle/ipc/SlaveBinder;

    check-cast p1, Landroid/view/IWindowSession;

    invoke-interface {p1}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oplus/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mSlaveBinder:Lcom/oplus/tingle/ipc/SlaveBinder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/view/IWindowSession;

    aput-object v2, v0, v1

    new-instance v1, Lcom/nearme/instant/xcard/a;

    invoke-direct {v1, p0}, Lcom/nearme/instant/xcard/a;-><init>(Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;)V

    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/IWindowSession;

    iput-object p1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mProxy:Ljava/lang/Object;

    return-void
.end method

.method public resetBinderOrigin(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Reset Binder To Origin."

    invoke-static {v0, v2, v1}, Lcom/oplus/tingle/ipc/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;->resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3

    sget-object p0, Lmirror/android/view/WindowManagerGlobal;->sWindowSession:Lcom/oplus/utils/reflect/RefObject;

    check-cast p2, Landroid/view/IWindowSession;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
