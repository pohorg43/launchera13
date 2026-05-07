.class Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "com.oplus.ovoicemanager.service.IOVoiceSkillService"

    return-object p0
.end method

.method public onResult(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.oplus.ovoicemanager.service.IOVoiceSkillService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_35

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->onResult(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_46

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_46

    if-eqz p0, :cond_3f

    const/4 v3, 0x1

    :cond_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_46
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerActionExecutionListener(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoicemanager/service/ISkillListener;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.oplus.ovoicemanager.service.IOVoiceSkillService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_1a

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3d

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    if-eqz p0, :cond_3d

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->registerActionExecutionListener(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoicemanager/service/ISkillListener;)Z

    move-result p0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_4e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_4e

    if-eqz p0, :cond_47

    const/4 v3, 0x1

    :cond_47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_4e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerListener(Ljava/lang/String;Lcom/oplus/ovoicemanager/service/ISkillListener;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.oplus.ovoicemanager.service.IOVoiceSkillService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_17

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3a

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    if-eqz p0, :cond_3a

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->registerListener(Ljava/lang/String;Lcom/oplus/ovoicemanager/service/ISkillListener;)Z

    move-result p0
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_4b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4b

    if-eqz p0, :cond_44

    move v2, v3

    :cond_44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_4b
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.oplus.ovoicemanager.service.IOVoiceSkillService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1b

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3c

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    if-eqz p0, :cond_3c

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->registerPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result p0
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_4e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_4e

    if-eqz p0, :cond_46

    goto :goto_47

    :cond_46
    move v2, v3

    :goto_47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_4e
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterActionExecutionListener(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.oplus.ovoicemanager.service.IOVoiceSkillService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_32

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    if-eqz p0, :cond_32

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->unregisterActionExecutionListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_43

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_43

    if-eqz p0, :cond_3c

    const/4 v3, 0x1

    :cond_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_43
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterActionExecutionListenerByAppID(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.oplus.ovoicemanager.service.IOVoiceSkillService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2f

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-static {}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService$Stub;->getDefaultImpl()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->unregisterActionExecutionListenerByAppID(Ljava/lang/String;)Z

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_40

    if-eqz p0, :cond_39

    const/4 v3, 0x1

    :cond_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_40
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
