.class public Lcom/oplus/epona/ipc/remote/Dispatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Dumper;


# static fields
.field private static final TAG:Ljava/lang/String; = "Epona->Dispatcher"

.field private static volatile sInstance:Lcom/oplus/epona/ipc/remote/Dispatcher;


# instance fields
.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTransferBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/epona/ipc/remote/Dispatcher;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/epona/ipc/remote/Dispatcher;->lambda$registerRemoteTransfer$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/epona/ipc/remote/Dispatcher;
    .registers 2

    sget-object v0, Lcom/oplus/epona/ipc/remote/Dispatcher;->sInstance:Lcom/oplus/epona/ipc/remote/Dispatcher;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/epona/ipc/remote/Dispatcher;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/epona/ipc/remote/Dispatcher;->sInstance:Lcom/oplus/epona/ipc/remote/Dispatcher;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/epona/ipc/remote/Dispatcher;

    invoke-direct {v1}, Lcom/oplus/epona/ipc/remote/Dispatcher;-><init>()V

    sput-object v1, Lcom/oplus/epona/ipc/remote/Dispatcher;->sInstance:Lcom/oplus/epona/ipc/remote/Dispatcher;

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
    sget-object v0, Lcom/oplus/epona/ipc/remote/Dispatcher;->sInstance:Lcom/oplus/epona/ipc/remote/Dispatcher;

    return-object v0
.end method

.method private isComponentValid(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$registerRemoteTransfer$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/epona/ipc/remote/Dispatcher;->teardown(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "unregister cached binder: "

    invoke-static {p0, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Epona->Dispatcher"

    invoke-static {p2, p0, p1}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private printRegisterComponentName(Ljava/io/PrintWriter;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oplus/epona/ipc/remote/Dispatcher;->isComponentValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "    -> "

    invoke-static {v1, v0, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_7

    :cond_1f
    return-void
.end method

.method private removeComponent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_d

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private teardown(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateComponent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string p1, "--- dump package register components info ---"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mComponents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/oplus/epona/ipc/remote/Dispatcher;->printRegisterComponentName(Ljava/io/PrintWriter;Ljava/util/List;)V

    goto :goto_f

    :cond_30
    const-string p0, "------------------- end ---------------------"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findRemoteTransfer(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2

    iget-object p0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public key()Ljava/lang/String;
    .registers 1

    const-string p0, "oplus_epona"

    return-object p0
.end method

.method public registerRemoteTransfer(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "Epona->Dispatcher"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Lx1/a;

    invoke-direct {v3, p0, p1, p3}, Lx1/a;-><init>(Lcom/oplus/epona/ipc/remote/Dispatcher;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_1f
    .catchall {:try_start_4 .. :try_end_c} :catchall_1d

    iget-object v3, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    :goto_14
    iget-object v3, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p3}, Lcom/oplus/epona/ipc/remote/Dispatcher;->updateComponent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :catchall_1d
    move-exception v0

    goto :goto_4a

    :catch_1f
    move-exception v3

    :try_start_20
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/oplus/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_1d

    iget-object v3, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_14

    :cond_32
    move v1, v2

    :goto_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "register RemoteTransfer Success: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/oplus/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :goto_4a
    iget-object v1, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p3}, Lcom/oplus/epona/ipc/remote/Dispatcher;->updateComponent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    throw v0
.end method

.method public unRegisterRemoteTransfer(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/epona/ipc/remote/Dispatcher;->mTransferBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/oplus/epona/ipc/remote/Dispatcher;->removeComponent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    move p0, v1

    :goto_14
    const-string v0, "packageName:"

    const-string v2, "unRegister RemoteTransfer component:"

    const-string v3, "unRegister Success:"

    invoke-static {v0, p2, v2, p1, v3}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Epona->Dispatcher"

    invoke-static {v0, p1, p2}, Lcom/oplus/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method
