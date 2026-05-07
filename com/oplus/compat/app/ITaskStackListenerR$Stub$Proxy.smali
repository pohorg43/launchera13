.class Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/compat/app/ITaskStackListenerR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/ITaskStackListenerR$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/oplus/compat/app/ITaskStackListenerR;


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.app.ITaskStackListener"

    return-object p0
.end method

.method public onActivityDismissingDockedStack()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_25

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityDismissingDockedStack()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_29

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_29
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityForcedResizable(Ljava/lang/String;II)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_32

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_32
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_35

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_39

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_39
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_36

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_36

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3a
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_31

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityPinned(Ljava/lang/String;III)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_35

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_35
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2c

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityRequestedOrientationChanged(II)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_30

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    if-eqz p2, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_23

    move v3, v1

    goto :goto_24

    :cond_23
    move v3, v2

    :goto_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_2a

    move v2, v1

    :cond_2a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_48

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_48

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_4c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_4c
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onActivityRotation(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_29

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityRotation(I)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onActivityUnpinned()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_25

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityUnpinned()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_29

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_29
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_37

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onRecentTaskListFrozenChanged(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_2e

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onRecentTaskListFrozenChanged(Z)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_32

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_32
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onRecentTaskListUpdated()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x16

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_26

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onRecentTaskListUpdated()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2a
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onSingleTaskDisplayDrawn(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_29

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onSingleTaskDisplayDrawn(I)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onSingleTaskDisplayEmpty(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_29

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onSingleTaskDisplayEmpty(I)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2c

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_30

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_36

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_36

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskCreated(ILandroid/content/ComponentName;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3a
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_37

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskDisplayChanged(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2c

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskDisplayChanged(II)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_30

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskFocusChanged(IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    if-eqz p2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_31

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskFocusChanged(IZ)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_35

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_35
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_37

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskProfileLocked(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2c

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskProfileLocked(II)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_30

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_37

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskRemoved(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_29

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_29

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskRemoved(I)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskRequestedOrientationChanged(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2c

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskRequestedOrientationChanged(II)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_30

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_30
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskSnapshotChanged(ILcom/oplus/compat/app/TaskSnapshotNative;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Lcom/oplus/compat/app/TaskSnapshotNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_36

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_36

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskSnapshotChanged(ILcom/oplus/compat/app/TaskSnapshotNative;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3a
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onTaskStackChanged()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.ITaskStackListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_24

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-static {}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskStackChanged()V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_28

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
