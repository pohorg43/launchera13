.class public Lcom/oplus/tingle/ipc/Master;
.super Lcom/oplus/tingle/ipc/IMaster$Stub;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Master"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile sInstance:Lcom/oplus/tingle/ipc/Master;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/tingle/ipc/Master;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/IMaster$Stub;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/tingle/ipc/Master;
    .registers 2

    sget-object v0, Lcom/oplus/tingle/ipc/Master;->sInstance:Lcom/oplus/tingle/ipc/Master;

    if-nez v0, :cond_17

    sget-object v0, Lcom/oplus/tingle/ipc/Master;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/tingle/ipc/Master;->sInstance:Lcom/oplus/tingle/ipc/Master;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/tingle/ipc/Master;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/Master;-><init>()V

    sput-object v1, Lcom/oplus/tingle/ipc/Master;->sInstance:Lcom/oplus/tingle/ipc/Master;

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
    sget-object v0, Lcom/oplus/tingle/ipc/Master;->sInstance:Lcom/oplus/tingle/ipc/Master;

    return-object v0
.end method

.method private transactRemote(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    invoke-static {}, Lcom/oplus/shield/PermissionCheck;->getInstance()Lcom/oplus/shield/PermissionCheck;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/shield/PermissionCheck;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/oplus/shield/PermissionCheck;->getInstance()Lcom/oplus/shield/PermissionCheck;

    move-result-object v1

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oplus/shield/PermissionCheck;->verityTingle(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_2c

    :cond_24
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Tingle Authentication Failed."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_4e

    :try_start_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-interface {p0, v0, v1, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_49

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_49
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    :catchall_4e
    move-exception p0

    const-string p1, "appendFrom failed: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Master"

    invoke-static {p2, p0, p1}, Lcom/oplus/tingle/ipc/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getUid()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result p0

    return p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    invoke-static {}, Lcom/oplus/tingle/Constants;->getBinderDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/oplus/tingle/ipc/Master;->transactRemote(Landroid/os/Parcel;Landroid/os/Parcel;I)V

    return v0

    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/tingle/ipc/IMaster$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method
