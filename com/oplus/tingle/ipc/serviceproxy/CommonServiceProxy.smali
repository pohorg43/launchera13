.class public Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;
.super Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHED_SERVICE_FETCHER:Ljava/lang/String; = "CachedServiceFetcher"

.field private static final STATIC_APPLICATION_FETCHER:Ljava/lang/String; = "StaticApplicationContextServiceFetcher"

.field private static final STATIC_SERVICE_FETCHER:Ljava/lang/String; = "StaticServiceFetcher"

.field private static final TAG:Ljava/lang/String; = "CommonServiceProxy"

.field private static final TRANSACT_METHOD_NAME:Ljava/lang/String; = "transact"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;-><init>()V

    iput-object p1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->lambda$init$0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private cleanSystemFetcherCache(Landroid/content/Context;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->getFetcher(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "CommonServiceProxy"

    const-string v0, "getFetcher failed."

    invoke-static {p1, v0, p0}, Lcom/oplus/tingle/ipc/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StaticApplicationContextServiceFetcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {p0}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->setStaticApplicationFetcher(Ljava/lang/Object;)V

    return-void

    :cond_2b
    const-string v1, "StaticServiceFetcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {p0}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->setStaticServiceFetcher(Ljava/lang/Object;)V

    return-void

    :cond_37
    const-string v1, "CachedServiceFetcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {p0}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->getCacheIndex(Ljava/lang/Object;)I

    move-result p0

    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_73

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_64

    sget-object v0, Lmirror/android/app/ContextImpl;->mServiceCache:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_70

    :cond_64
    sget-object v0, Lmirror/android/app/ContextImpl;->mServiceCache:Lcom/oplus/utils/reflect/RefObject;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_70
    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_73
    return-void
.end method

.method private static getCacheIndex(Ljava/lang/Object;)I
    .registers 2

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lmirror/android/app/SystemServiceRegistry$CachedServiceFetcher;->getCacheIndex(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_b
    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/oplus/inner/app/SystemServiceRegistryWrapper$CachedServiceFetcherWrapper;->getCacheIndex(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_16
    invoke-static {p0}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->getCacheIndexCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getCacheIndexCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFetcher(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lmirror/android/app/SystemServiceRegistry;->getFetcher(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/oplus/inner/app/SystemServiceRegistryWrapper;->getFetcher(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-static {p0}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->getFetcherCompat(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getFetcherCompat(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

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

    if-eqz p2, :cond_33

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "transact"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->resetServiceCache(Landroid/content/Context;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_2c
    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mSlaveBinder:Lcom/oplus/tingle/ipc/SlaveBinder;

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_33
    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mOriginalService:Ljava/lang/Object;

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static setStaticApplicationFetcher(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-static {p0, v1}, Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher;->setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :cond_b
    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0, v1}, Lcom/oplus/inner/app/SystemServiceRegistryWrapper$StaticServiceFetcherWrapper;->setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :cond_15
    invoke-static {p0}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->setStaticApplicationFetcherCompat(Ljava/lang/Object;)V

    :goto_18
    return-void
.end method

.method private static setStaticApplicationFetcherCompat(Ljava/lang/Object;)V
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static setStaticServiceFetcher(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-static {p0, v1}, Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher;->setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :cond_b
    invoke-static {}, Lcom/oplus/tingle/ipc/utils/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0, v1}, Lcom/oplus/inner/app/SystemServiceRegistryWrapper$StaticServiceFetcherWrapper;->setCachedInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :cond_15
    invoke-static {p0}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->setStaticServiceFetcherCompat(Ljava/lang/Object;)V

    :goto_18
    return-void
.end method

.method private static setStaticServiceFetcherCompat(Ljava/lang/Object;)V
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lmirror/android/os/ServiceManager;->getService:Lcom/oplus/utils/reflect/RefMethod;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mOriginalService:Ljava/lang/Object;

    new-instance v2, Lcom/oplus/tingle/ipc/SlaveBinder;

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {v2, v0}, Lcom/oplus/tingle/ipc/SlaveBinder;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mSlaveBinder:Lcom/oplus/tingle/ipc/SlaveBinder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/wm/shell/startingsurface/a;

    invoke-direct {v2, p0, p1}, Lcom/android/wm/shell/startingsurface/a;-><init>(Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mProxy:Ljava/lang/Object;

    return-void
.end method

.method public resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lmirror/android/os/ServiceManager;->sCache:Lcom/oplus/utils/reflect/RefObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    check-cast p2, Landroid/os/IBinder;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->cleanSystemFetcherCache(Landroid/content/Context;)V

    return-void
.end method
