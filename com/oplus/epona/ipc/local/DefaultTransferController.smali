.class public Lcom/oplus/epona/ipc/local/DefaultTransferController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/ipc/local/RemoteTransferController;


# static fields
.field private static final TAG:Ljava/lang/String; = "Epona->DefaultTransferController"


# instance fields
.field private final mBinderCache:Lcom/oplus/epona/internal/BinderCache;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/epona/internal/BinderCache;->getInstance()Lcom/oplus/epona/internal/BinderCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/epona/ipc/local/DefaultTransferController;->mBinderCache:Lcom/oplus/epona/internal/BinderCache;

    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6

    iget-object v0, p0, Lcom/oplus/epona/ipc/local/DefaultTransferController;->mBinderCache:Lcom/oplus/epona/internal/BinderCache;

    invoke-virtual {v0, p1}, Lcom/oplus/epona/internal/BinderCache;->get(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_42

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oplus.appplatform"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/oplus/epona/ipc/remote/Dispatcher;->getInstance()Lcom/oplus/epona/ipc/remote/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/epona/ipc/remote/Dispatcher;->findRemoteTransfer(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_2d

    :cond_21
    invoke-static {v1, p1}, Lcom/oplus/epona/utils/ProviderUtils;->findRemoteBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2d

    const-string v0, "com.oplus.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    :cond_2d
    :goto_2d
    if-eqz v0, :cond_35

    iget-object p0, p0, Lcom/oplus/epona/ipc/local/DefaultTransferController;->mBinderCache:Lcom/oplus/epona/internal/BinderCache;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/epona/internal/BinderCache;->put(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_42

    :cond_35
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    const-string p1, "Epona->DefaultTransferController"

    const-string v1, "Get remote binder null. ComponentName : %s"

    invoke-static {p1, v1, p0}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_42
    :goto_42
    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 7

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.appplatform"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/oplus/epona/ipc/remote/Dispatcher;->getInstance()Lcom/oplus/epona/ipc/remote/Dispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p3, v1}, Lcom/oplus/epona/ipc/remote/Dispatcher;->registerRemoteTransfer(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result p0

    goto :goto_39

    :cond_1a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.oplus.epona.Dispatcher.TRANSFER_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.oplus.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p3, "com.oplus.epona.Dispatcher.REGISTER_TRANSFER"

    invoke-static {p0, p3, v0}, Lcom/oplus/epona/utils/ProviderUtils;->callRemoteDispatcherProvider(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_38

    const-string p3, "REGISTER_TRANSFER_RESULT"

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_39

    :cond_38
    move p0, v2

    :goto_39
    if-nez p0, :cond_52

    const-string p0, "Register "

    const-string p3, "==>"

    const-string v0, " failed for \""

    invoke-static {p0, p1, p3, p2, v0}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\" is already registered"

    invoke-static {p0, p1, p2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Epona->DefaultTransferController"

    invoke-static {p2, p0, p1}, Lcom/oplus/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_52
    return-void
.end method
