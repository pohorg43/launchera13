.class public Lcom/oplus/tingle/ipc/serviceproxy/app/NotificationManagerProxy;
.super Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy<",
        "Landroid/app/INotificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;-><init>()V

    const-string v0, "notification"

    iput-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/tingle/ipc/serviceproxy/app/NotificationManagerProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->lambda$init$0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$init$0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p2, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->resetServiceCache(Landroid/content/Context;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mSlaveBinder:Lcom/oplus/tingle/ipc/SlaveBinder;

    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2b
    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 6

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mOriginalService:Ljava/lang/Object;

    new-instance v1, Lcom/oplus/tingle/ipc/SlaveBinder;

    check-cast v0, Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oplus/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mSlaveBinder:Lcom/oplus/tingle/ipc/SlaveBinder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/INotificationManager;

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/wm/shell/startingsurface/a;

    invoke-direct {v2, p0, p1}, Lcom/android/wm/shell/startingsurface/a;-><init>(Lcom/oplus/tingle/ipc/serviceproxy/app/NotificationManagerProxy;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/INotificationManager;

    iput-object p1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mProxy:Ljava/lang/Object;

    return-void
.end method

.method public resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3

    sget-object p0, Lmirror/android/app/NotificationManager;->sService:Lcom/oplus/utils/reflect/RefObject;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
