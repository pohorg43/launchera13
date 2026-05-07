.class public Lcom/oplus/epona/ipc/local/RemoteTransfer;
.super Lcom/oplus/epona/IRemoteTransfer$Stub;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Epona->RemoteTransfer"

.field private static volatile sInstance:Lcom/oplus/epona/ipc/local/RemoteTransfer;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/epona/IRemoteTransfer$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/epona/ITransferCallback;Lcom/oplus/epona/Response;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/epona/ipc/local/RemoteTransfer;->lambda$asyncCall$0(Lcom/oplus/epona/ITransferCallback;Lcom/oplus/epona/Response;)V

    return-void
.end method

.method public static getInstance()Lcom/oplus/epona/ipc/local/RemoteTransfer;
    .registers 2

    sget-object v0, Lcom/oplus/epona/ipc/local/RemoteTransfer;->sInstance:Lcom/oplus/epona/ipc/local/RemoteTransfer;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/epona/ipc/local/RemoteTransfer;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/epona/ipc/local/RemoteTransfer;->sInstance:Lcom/oplus/epona/ipc/local/RemoteTransfer;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/epona/ipc/local/RemoteTransfer;

    invoke-direct {v1}, Lcom/oplus/epona/ipc/local/RemoteTransfer;-><init>()V

    sput-object v1, Lcom/oplus/epona/ipc/local/RemoteTransfer;->sInstance:Lcom/oplus/epona/ipc/local/RemoteTransfer;

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
    sget-object v0, Lcom/oplus/epona/ipc/local/RemoteTransfer;->sInstance:Lcom/oplus/epona/ipc/local/RemoteTransfer;

    return-object v0
.end method

.method private static synthetic lambda$asyncCall$0(Lcom/oplus/epona/ITransferCallback;Lcom/oplus/epona/Response;)V
    .registers 3

    :try_start_0
    invoke-interface {p0, p1}, Lcom/oplus/epona/ITransferCallback;->onReceive(Lcom/oplus/epona/Response;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_16

    :catch_4
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "Epona->RemoteTransfer"

    const-string v0, "failed to asyncCall and exception is %s"

    invoke-static {p0, v0, p1}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_16
    return-void
.end method


# virtual methods
.method public asyncCall(Lcom/oplus/epona/Request;Lcom/oplus/epona/ITransferCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    new-instance p1, Landroidx/core/view/a;

    invoke-direct {p1, p2}, Landroidx/core/view/a;-><init>(Lcom/oplus/epona/ITransferCallback;)V

    invoke-virtual {p0, p1}, Lcom/oplus/epona/internal/RealCall;->asyncExecute(Lcom/oplus/epona/Call$Callback;)V

    return-void
.end method

.method public call(Lcom/oplus/epona/Request;)Lcom/oplus/epona/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/epona/IRemoteTransfer$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    const-string p1, "onTransact Exception: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Epona->RemoteTransfer"

    invoke-static {p3, p1, p2}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method
