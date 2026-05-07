.class public Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;
.super Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy<",
        "Landroid/content/pm/IPackageManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final PACKAGE_MANAGER:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "PackageManagerProxy"

.field private static mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;-><init>()V

    const-string v0, "package"

    iput-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->lambda$init$0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

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
.method public getOriginalSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mOriginalService:Ljava/lang/Object;

    new-instance v1, Lcom/oplus/tingle/ipc/SlaveBinder;

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->asBinder()Landroid/os/IBinder;

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

    const-class v3, Landroid/content/pm/IPackageManager;

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/wm/shell/startingsurface/a;

    invoke-direct {v2, p0, p1}, Lcom/android/wm/shell/startingsurface/a;-><init>(Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/IPackageManager;

    iput-object p1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mProxy:Ljava/lang/Object;

    :cond_36
    return-void
.end method

.method public resetBinderOrigin(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PackageManagerProxy"

    const-string v2, "Reset Binder To Origin."

    invoke-static {v1, v2, v0}, Lcom/oplus/tingle/ipc/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5

    sget-object p0, Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mClass:Ljava/lang/Class;

    if-nez p0, :cond_1a

    :try_start_4
    const-string p0, "android.app.ContextImpl"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mClass:Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_1a

    :catch_d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PackageManagerProxy"

    invoke-static {v1, p0, v0}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    :goto_1a
    sget-object p0, Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->mClass:Ljava/lang/Class;

    if-eqz p0, :cond_42

    if-nez p1, :cond_21

    goto :goto_42

    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    sget-object p0, Lmirror/android/app/ContextImpl;->mPackageManager:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3d

    :cond_32
    check-cast p1, Landroid/content/ContextWrapper;

    sget-object p0, Lmirror/android/app/ContextImpl;->mPackageManager:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3d
    sget-object p0, Lmirror/android/app/ActivityThread;->sPackageManager:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {p0, v0, p2}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    :goto_42
    return-void
.end method
