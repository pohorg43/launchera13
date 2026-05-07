.class Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "com.oplus.assistantscreen.shelf.launcherclient.ILauncherClient"

    return-object p0
.end method

.method public onProfileChanged(ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.oplus.assistantscreen.shelf.launcherclient.ILauncherClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_16

    move v1, v2

    :cond_16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_34

    invoke-static {}, Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub;->getDefaultImpl()Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient;

    move-result-object p0

    if-eqz p0, :cond_34

    invoke-static {}, Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub;->getDefaultImpl()Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient;->onProfileChanged(ZZ)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_38

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_38
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startOpen()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.oplus.assistantscreen.shelf.launcherclient.ILauncherClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_24

    invoke-static {}, Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub;->getDefaultImpl()Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-static {}, Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient$Stub;->getDefaultImpl()Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/assistantscreen/shelf/launcherclient/ILauncherClient;->startOpen()V
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
