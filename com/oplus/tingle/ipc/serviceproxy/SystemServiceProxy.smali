.class public abstract Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oplus/tingle/ipc/serviceproxy/ISystemServiceProxy;"
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public mLocalKey:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mOriginalService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mProxy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mServiceName:Ljava/lang/String;

.field public mShouldUseLock:Z

.field public mSlaveBinder:Lcom/oplus/tingle/ipc/SlaveBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mShouldUseLock:Z

    return-void
.end method

.method private setServiceToProxyInternal(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mSlaveBinder:Lcom/oplus/tingle/ipc/SlaveBinder;

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->init(Landroid/content/Context;)V

    goto :goto_16

    :cond_13
    invoke-virtual {p0, p1}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->init(Landroid/content/Context;)V

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLocalKey:Ljava/lang/ThreadLocal;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mProxy:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->resetServiceCache(Landroid/content/Context;Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw p1
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public cleanSystemService(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->setServiceToProxyInternal(Landroid/content/Context;)V

    return-void
.end method

.method public getOriginalSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSystemService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->setServiceToProxyInternal(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->getOriginalSystemService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public resetBinderOrigin(Landroid/content/Context;)V
    .registers 4

    sget-object p1, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->TAG:Ljava/lang/String;

    const-string v0, "Default Service ["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mServiceName:Ljava/lang/String;

    const-string v1, "] do not need reset IBinder to origin."

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/oplus/tingle/ipc/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public abstract resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
.end method

.method public resetServiceCache(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mShouldUseLock:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V

    return-void

    :cond_8
    instance-of v0, p2, Ljava/lang/reflect/Proxy;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_11
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_45

    :catch_15
    move-exception p1

    sget-object p2, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOCK Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_45

    :cond_35
    :try_start_35
    invoke-virtual {p0, p1, p2}, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->resetCacheInternal(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_46

    iget-object p1, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_45
    :goto_45
    return-void

    :catchall_46
    move-exception p1

    iget-object p2, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_54

    iget-object p0, p0, Lcom/oplus/tingle/ipc/serviceproxy/SystemServiceProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_54
    throw p1
.end method
